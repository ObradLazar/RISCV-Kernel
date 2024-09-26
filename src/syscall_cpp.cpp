//
// Created by os on 5/30/24.
//
#include "../h/syscall_cpp.hpp"

using size_t = decltype(sizeof (0));

//  ---DELETE---
void operator delete(void *p) noexcept {
    mem_free(p);
};

void operator delete[](void *p) noexcept {
    mem_free(p);
};
//  ---NEW---
void *operator new(size_t n){
    return mem_alloc(n);
};

void *operator new[](size_t n){
    return mem_alloc(n);
}

//  ---THREAD---

Thread::Thread(void (*body)(void*), void *arg) {
    myHandle = nullptr;
    thread_create(&myHandle, body, arg);    //mozda u thread_start
};

void Thread::dispatch() {
    thread_dispatch();
};

Thread::~Thread(){
    //thread_exit();
    delete myHandle;
};

int Thread::start() {
    thread_start(this->myHandle); //potentially create
    return 0;
};

void Thread::functionWrapper(void *thread) {
    if(thread != nullptr){
        ((Thread*)thread)->run();
    }
};

Thread::Thread() {
    myHandle = nullptr;
    thread_create(&myHandle, &functionWrapper, (void *)this);
};

Semaphore::Semaphore(unsigned init){
    this->myHandle = nullptr;
    sem_open(&myHandle, init);
};

Semaphore::~Semaphore(){
    sem_close(this->myHandle);
};

int Semaphore::signal(){
    int retVal = sem_signal(this->myHandle);
    return retVal;
};

int Semaphore::wait(){
    int retVal = sem_wait(this->myHandle);
    return retVal;
};

int Semaphore::tryWait(){
    int retVal = sem_trywait(this->myHandle);
    return retVal;
};

char Console::getc() {
    return ::getc();
};

void Console::putc(char c) {
    ::putc(c);
};