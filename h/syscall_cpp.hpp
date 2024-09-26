#ifndef SYSCALL_CPP
#define SYSCALL_CPP

#include "syscall_c.hpp"
/*
void* ::operator new (size_t);
void ::operator delete(void*);
*/

void *operator new(size_t);
void *operator new[](size_t);

void operator delete(void*) noexcept;
void operator delete[](void*) noexcept;


class Thread{
public:
    Thread(void (*body)(void*), void *arg);
    virtual ~Thread();

    int start();

    static void dispatch();

    //function wrapper
    static void functionWrapper(void *object);

    //ASYNCH
    //static int sleep(time_t);

protected:
    Thread();
    virtual void run(){}

private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;
};

class Semaphore{
public:
    Semaphore(unsigned init = 1);
    virtual ~Semaphore();

    int wait();
    int signal();
    int tryWait();

    //ASYNCH
    //int timedWait(time_t);

private:
    sem_t myHandle;

};
/*
class PeriodicThread : public  Thread{
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}

private:
    time_t period;

};
*/
class Console{
public:
    static char getc();
    static void putc (char);
};



#endif //SYSCALL_CPP

