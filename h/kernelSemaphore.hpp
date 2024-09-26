#ifndef KERNELSEMAPHORE_HPP
#define KERNELSEMAPHORE_HPP

#include "list.hpp"
//#include "kernelThread.hpp"
#include "scheduler.hpp"

class kernelThread;

class kernelSemaphore{

private:

    kernelSemaphore(unsigned init = 1) {
        semValue = (int)init;
    };

public:

    int semValue;

    List<kernelThread> blockedThreads;

    static int createSemaphore(kernelSemaphore **handle, unsigned init);
    static int deleteSemaphore(kernelSemaphore* handle);
    
    int wait();
    int signal();
    int tryWait();

};

#endif //KERNELSEMAPHORE_HPP