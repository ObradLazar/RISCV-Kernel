#include "../h/kernelSemaphore.hpp"
#include "../h/kernelThread.hpp"

int kernelSemaphore::createSemaphore(kernelSemaphore** handle, unsigned init){
    *handle = new kernelSemaphore(init);
    if(handle == nullptr) return -1;
    else return 0;
};

int kernelSemaphore::deleteSemaphore(kernelSemaphore *handle){
    if(handle == nullptr){
        return -1;
    }

    while(handle->semValue < 0){
        kernelThread *blocked = handle->blockedThreads.removeFirst();
        //blocked->startThread(blocked);
        blocked->setBlocked(false);
        blocked->setReady(true);
        Scheduler::putInScheduler(blocked);
        handle->semValue++;
    }

    MemoryAllocator::getInstance().mem_free(handle);

    return 0;
};

int kernelSemaphore::signal(){
    ++semValue;
    if(semValue <= 0){
        //UNBLOCK THREAD
        kernelThread *blocked = blockedThreads.removeFirst();
        if(blocked == nullptr) return -1;
        //blocked->startThread(blocked);
        blocked->setBlocked(false);
        blocked->setReady(true);
        Scheduler::putInScheduler(blocked);
    }
    return 0;
};

int kernelSemaphore::wait(){
    this->semValue--;
    if(semValue < 0){
        //BLOCK
        kernelThread::running->setReady(false);
        kernelThread::running->setBlocked(true);
        blockedThreads.addLast(kernelThread::running);

        /*
        kernelThread::running = Scheduler::getFromScheduler();
        kernelThread::running->setReady(true);
        kernelThread::contextSwitch(&current->context, &kernelThread::running->context);
        */
        kernelThread::dispatchThread();
    }
    return 0;
};

int kernelSemaphore::tryWait(){
    if(semValue >= 1){
        --semValue;
        return 1;
        //SUCCESS
    }else{
        return 0;
        //ALREADY TAKEN
    }
};