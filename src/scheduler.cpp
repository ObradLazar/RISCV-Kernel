//
// Created by os on 5/30/24.
//
#include "../h/scheduler.hpp"

List<kernelThread> Scheduler::readyThreadQueue;

kernelThread *Scheduler::getFromScheduler() {
    return readyThreadQueue.removeFirst();
}

void Scheduler::putInScheduler(kernelThread *thread) {
    readyThreadQueue.addLast(thread);
}
