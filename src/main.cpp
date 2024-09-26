#include "../h/kernelThread.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
//#include "../javniTestovi/userMain.cpp"

extern void userMain();

void userMainWrapper(void *arg){
    userMain();
}

void main () {

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    //MAIN nit
    kernelThread* mainThread;
    kernelThread::createThread(
            &mainThread,
            nullptr,
            nullptr,
            nullptr);
    kernelThread::running = mainThread;

    /*uint64* stack_ptr = (uint64*) MemoryAllocator::getInstance().mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    //USERMAIN nit
    kernelThread* userMainThread;
    kernelThread::createThread(
            &userMainThread,
            userMainWrapper,
            nullptr,
            stack_ptr);
*/
    Riscv::ecallWithoutArguments(0x50);

    kernelThread* userMainThread;
    thread_create(&userMainThread,userMainWrapper,nullptr);


    while(!userMainThread->isFinished()){
        //printStr("\nPonovo u main-u\n\n");
        thread_dispatch();
    }
    
    printStr("Dosao do kraja!\n");

    //return 0;

    delete mainThread;

};
