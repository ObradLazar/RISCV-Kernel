
#include "../h/kernelThread.hpp"

kernelThread *kernelThread::running = nullptr;

int kernelThread::createThread(kernelThread **handle, Body body, void *args, uint64 *stack) {
   *handle = new kernelThread(body, args, stack);
   if(handle == nullptr){
       return -1;
   }else{
       return 0;
   }
};

void kernelThread::threadWrapper(){
    Riscv::popSppSpie();
    running->body(running->arguments);
    running->setFinished(true);
    Riscv::ecallWithoutArguments(0x13);
    //kernelThread::dispatchThread();
};

void kernelThread::yield() {
    Riscv::pushAllRegisters();
    kernelThread::dispatchThread();
    Riscv::popAllRegisters();
};

void kernelThread::dispatchThread(){
    kernelThread *oldThread = running;
    if(!oldThread->isBlocked()){
        if(!oldThread->isFinished()){
            oldThread->setReady(true);
            Scheduler::putInScheduler(oldThread);
        }
    }
    running = Scheduler::getFromScheduler();
    kernelThread::contextSwitch(&oldThread->context, &running->context);
};

int kernelThread::threadExit() {
    running->setReady(false);
    running->setFinished(true);
    running->setBlocked(false);
    kernelThread::dispatchThread();
    return 0;
};

int kernelThread::deleteThread(kernelThread *handle) {
    kernelThread::threadExit();
    delete handle;
    return 0;
};

int kernelThread::startThread(kernelThread *handle) {
    if(handle->isFinished()){
        return -1;
    }else{
        handle->setBlocked(false);  //IN SEMAPHORE
        handle->setReady(true);
        //Scheduler::putInScheduler(handle);
        return 0;
    }
};
