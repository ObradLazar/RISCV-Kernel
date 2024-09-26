//
// Created by os on 5/30/24.
//

#include "../h/syscall_c.hpp"

/*
 * SYSCALL CODES
 *
 * 0x01 mem_alloc
 * 0x02 mem_free
 *
 * 0x11 thread_create       //Done
 * 0x12 thread_exit         //Done
 * 0x13 thread_dispatch     //Done
 * 0x14 thread_start        //Done
 *
 * 0x21 sem_open
 * 0x22 sem_close
 * 0x23 sem_wait
 * 0x24 sem_signal
 * 0x25 sem_timedwait
 * 0x26 sem_trywait
 *
 * 0x31 time_sleep
 *
 * 0x41 putc
 * 0x42 getc
 */

//-----CONSOLE-----

//  0x01
void* mem_alloc(size_t s){

    size_t numBlocks = (s + 16)/MEM_BLOCK_SIZE;
    if(s % MEM_BLOCK_SIZE != 0){
        numBlocks++;
    }

    Riscv::ecallWithOneArgument(0x01,(uint64)numBlocks);

    return (void *)Riscv::getReturnValue();
};

//  0x02

int mem_free(void* ptr){

    Riscv::ecallWithOneArgument(0x02, (uint64)ptr);

    return (int)Riscv::getReturnValue();
};

//-----THREAD-----//

//  0x11    Thread constructor with args
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    void *stackPtr = nullptr;
    if(start_routine) {
        stackPtr = (uint64*)mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    }

    Riscv::ecallWithFourArguments(0x11, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stackPtr);

    return (int)Riscv::getReturnValue();
};

//  0x12
int thread_exit(){
    Riscv::ecallWithoutArguments(0x12);
    return (int)Riscv::getReturnValue();
};

//  0x13
void thread_dispatch(){
    Riscv::ecallWithoutArguments(0x13);
};

//  0x14
int thread_start(kernelThread *handle){
    Riscv::ecallWithOneArgument(0x14,(uint64)handle);
    return (int)Riscv::getReturnValue();
};


//-----SEMAPHORE-----//

//  0x21
int sem_open(sem_t* handle, unsigned init){

    //if(*handle != nullptr) return -1;

    Riscv::ecallWithTwoArguments(0x21,(uint64)handle,(uint64)init);

    return (int)Riscv::getReturnValue();

};

//  0x22
int sem_close(sem_t handle){

    Riscv::ecallWithOneArgument(0x22, (uint64)handle);

    return (int)Riscv::getReturnValue();

};

//  0x23
int sem_wait(sem_t id){

    if(id == nullptr) return -1;

    Riscv::ecallWithOneArgument(0x23, (uint64)id);

    return (int)Riscv::getReturnValue();

};

//  0x24
int sem_signal(sem_t id){

    if(id == nullptr) return -1;

    Riscv::ecallWithOneArgument(0x24,(uint64)id);

    return (int)Riscv::getReturnValue();

};

//  0x26
int sem_trywait(sem_t id){

    if(id == nullptr) return -1;

    Riscv::ecallWithOneArgument(0x26, (uint64)id);

    return (int)Riscv::getReturnValue();
};

//-----CONSOLE-----//

//  0x41
char getc(){
    Riscv::ecallWithoutArguments(0x41);
    return (char)Riscv::getReturnValue();
};

void putc(char c){
    Riscv::ecallWithOneArgument(0x42, (uint64)c);
};

