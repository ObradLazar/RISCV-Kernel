#ifndef SYSCALL_C
#define SYSCALL_C

#include "../lib/hw.h"
#include "../lib/mem.h"
#include "../h/riscv.hpp"

//  0x01
void* mem_alloc(size_t s);

//  0x02
int mem_free(void* ptr);

//  0x11
class kernelThread;
typedef kernelThread* thread_t;

int thread_create(
            thread_t *handle,
            void(*start_routine)(void*),
            void* arg
        );

//  0x12
int thread_exit();

//  0x13
void thread_dispatch();

//  0x14
int thread_start(kernelThread *handle);


//  SEMAPHORE

//  0x21
class kernelSemaphore;
typedef kernelSemaphore* sem_t;

int sem_open(
            sem_t* handle,
            unsigned init
        );

//  0x22
int sem_close(sem_t handle);

//  0x23
int sem_wait(sem_t id);

//  0x24
int sem_signal(sem_t id);

/*
 * ASYNCH!!!
//  0x25
int sem_timedwait(
            sem_t id,
            time_t timeout
        );

*/

//  0x26
int sem_trywait(sem_t id);

/*
 * ASYNCH
//  0x31
typedef unsigned long time_t;
int time_sleep();

*/


//  CONSOLE

//  0x41
const int EOF = -1;
char getc();

//  0x42
void putc(char);



#endif //SYSCALL_C