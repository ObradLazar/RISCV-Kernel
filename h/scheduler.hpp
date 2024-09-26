#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "list.hpp"

class kernelThread;

class Scheduler{

private:
    static List<kernelThread> readyThreadQueue;

public:
    static kernelThread* getFromScheduler();
    static void putInScheduler(kernelThread* thread);

};


#endif //SCHEDULER_HPP