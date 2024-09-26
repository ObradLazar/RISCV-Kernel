#ifndef KERNEL_THREAD_HPP
#define KERNEL_THREAD_HPP

#include "../lib/mem.h"
//#include "riscv.hpp"
#include "scheduler.hpp"
#include "syscall_c.hpp"

class kernelThread{

public:
    static kernelThread *running;   //current running

    using Body = void(*)(void *);     //possible void(*)(void *)

    static int createThread(
                kernelThread **handle,
                Body body,
                void *args,
                uint64 *stack);
    static int threadExit();
    static void dispatchThread();
    static int startThread(kernelThread *handle);
    static void yield();
    static int deleteThread(kernelThread *handle);

    ~kernelThread(){
        //MemoryAllocator::getInstance().mem_free(stack);
        //mem_free(stack);
        delete stack;
    };

    struct Context{
        uint64 ra;
        uint64 sp;
    };

    static void contextSwitch(Context *oldContext, Context *runningContext);
    static void threadWrapper();

    //  GETTERS & SETTERS  //

    bool isReady() const {
        return ready;
    }

    void setReady(bool ready) {
        kernelThread::ready = ready;
    }

    bool isBlocked() const {
        return blocked;
    }

    void setBlocked(bool blocked) {
        kernelThread::blocked = blocked;
    }

    bool isFinished() const {
        return finished;
    }

    void setFinished(bool finished) {
        kernelThread::finished = finished;
    }

    Context context;

private:

    //CLASS FIELDS
    uint64 *stack;
    Body body;
    void *arguments;

    bool ready;
    bool blocked;
    bool finished;

    friend class Riscv;

    explicit kernelThread(Body body, void *args, uint64 *stack){
        this->arguments = args;
        this->body = body;

        if (body != nullptr){
            this->stack = stack;
        } else{
            this->stack = nullptr;
        }

        this->finished = false;
        this->blocked = false;
        this->ready = true;

        context.ra = (uint64) &threadWrapper;
        if(stack != nullptr){
            context.sp = (uint64) &(this->stack[DEFAULT_STACK_SIZE]);
        } else {
            context.sp = 0;
        }

        if (body != nullptr){
                this->setReady(true);
                Scheduler::putInScheduler(this);
        }
    }

};


#endif //KERNEL_THREAD_HPP