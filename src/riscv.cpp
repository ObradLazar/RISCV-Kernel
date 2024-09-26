#include "../h/riscv.hpp"

void Riscv::popSppSpie(){
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
};

//  -----ECALL-----

void Riscv::ecallWithFourArguments(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) {
    __asm__ volatile("ecall");
};
void Riscv::ecallWithThreeArguments(uint64 a0, uint64 a1, uint64 a2, uint64 a3) {
    __asm__ volatile("ecall");
};
void Riscv::ecallWithTwoArguments(uint64 a0, uint64 a1, uint64 a2) {
    __asm__ volatile("ecall");
};
void Riscv::ecallWithOneArgument(uint64 a0, uint64 a1) {
    __asm__ volatile("ecall");
};
void Riscv::ecallWithoutArguments(uint64 a0) {
    __asm__ volatile("ecall");
};

extern "C" void Riscv::supervisorTrapHandler(){

    uint64 arg0 = Riscv::r_a0();
    uint64 arg1 = Riscv::r_a1();
    uint64 arg2 = Riscv::r_a2();
    uint64 arg3 = Riscv::r_a3();
    uint64 arg4 = Riscv::r_a4();

    uint64 scause = r_scause();

    //if ecall happen from user or privilige
    if(scause == 0x8 || scause == 0x9){

        //uint64 a0 = r_a0();
        uint64 sstatus = r_sstatus();
        uint64 sepc = r_sepc() + 4;

        switch(arg0){
            case 0x01:
            {
                void* ptr = MemoryAllocator::getInstance().mem_alloc((size_t)arg1);
                Riscv::pushReturnValueToStack((uint64)ptr);
            }
            break;
            case 0x02:
            {
                int ret = MemoryAllocator::getInstance().mem_free((void*)arg1);
                Riscv::pushReturnValueToStack(ret);
            }
            break;
            case 0x11:  //THREAD_CREATE
            {

                //kernelThread **argument1 = (kernelThread **) r_a1();    //HANDLE
                //uint64 argument2 = r_a2();                              //ROUTINE
                //uint64 argument3 = r_a3();                              //ARG
                //uint64 argument4 = r_a4();                              //STACK
                kernelThread **hadnle = (kernelThread**)arg1;

                 kernelThread::createThread(    //write thread handle!
                        hadnle,
                        (kernelThread::Body) arg2,
                        (void *) arg3,
                        (uint64 *) arg4);

                //Nema ret vec se smesta na stack!
                if(*hadnle == nullptr){
                    Riscv::pushReturnValueToStack(-1);  //is nullptr
                }else{
                    Riscv::pushReturnValueToStack(0);   //not nullptr
                }
            }
                break;
            case 0x12:  //THREAD_EXIT   / returns int
            {
                int retVal = kernelThread::threadExit();
                Riscv::pushReturnValueToStack(retVal);
            }
                break;
            case 0x13:   //THREAD_DISPATCH
            {
                kernelThread::dispatchThread();
            }
                break;
            case 0x14:  //THREAD_START / returns int
            {
                //kernelThread *handle = (kernelThread*)Riscv::r_a1();
                kernelThread *handle = (kernelThread*)arg1;
                int retVal = kernelThread::startThread(handle);
                Riscv::pushReturnValueToStack(retVal);
            }
            break;
            case 0x21:  //SEM_OPEN
            {
                kernelSemaphore **handle = (kernelSemaphore**)arg1;

                int retValue = kernelSemaphore::createSemaphore(handle, (unsigned)arg2);

                Riscv::pushReturnValueToStack(retValue);

            }
            break;
            case 0x22: //SEM_CLOSE
            {
                kernelSemaphore *handle = (kernelSemaphore*)arg1;

                int retVal = handle->deleteSemaphore(handle);

                Riscv::pushReturnValueToStack(retVal);
            }
            break;
            case 0x23: //SEM_WAIT
            {
                kernelSemaphore *handle = (kernelSemaphore*)arg1;

                int retVal = handle->wait();

                Riscv::pushReturnValueToStack(retVal);
            }
            break;
            case 0x24: //SEM_SIGNAL
            {
                kernelSemaphore *handle = (kernelSemaphore*)arg1;

                int retVal = handle->signal();

                Riscv::pushReturnValueToStack(retVal);
            }
            break;
            case 0x26: //SEM_TRYWAIT
            {
                kernelSemaphore *handle = (kernelSemaphore*)arg1;

                int retVal = handle->tryWait();

                Riscv::pushReturnValueToStack(retVal);
            }
            break;
            case 0x41:   //GETC
            {
                char c = __getc();
                Riscv::pushReturnValueToStack(c);
            }
            break;
            case 0x42:  //PUTC
            {
                char c = (char)arg1;
                __putc(c);
            }
            break;
            case 0x50:
            {
                uint64 statusReg = r_sstatus();
                statusReg &= ~(1<<8);
                w_sstatus(statusReg);
                Riscv::w_sepc(sepc);
                return;
            }
            break;
            default:
                printStr("Vrednost AO: ");
                printInteger(arg0);
                printStr("\n");
                break;
        }

        Riscv::w_sstatus(sstatus);
        Riscv::w_sepc(sepc);

    } else if(scause == 0x8000000000000001UL){
        //interrupted
        mc_sip(SIP_SSIP);
    }else if(scause == 0x8000000000000009UL){
        console_handler();
        mc_sip(SIP_SSIP);
    }else{
        //unexpected error
        //print scause, sepc and stval
        //uint64 sepc = Riscv::r_sepc();
        printStr("Scause: ");
        printInteger((uint64)scause);
        printStr("\n");
        printStr("Sepc: ");
        printInteger((uint64) r_sepc());
        printStr("\n");
        printStr("Sstatus: ");
        printInteger((uint64) r_sstatus());
        printStr("\n");
        printStr("A0: ");
        printInteger((uint64) arg0);
        printStr("\n");
        printStr("\n");
    }

}