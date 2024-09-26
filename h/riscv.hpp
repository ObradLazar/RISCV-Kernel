#ifndef RISCV_HPP
#define RISCV_HPP

#include "../lib/hw.h"
#include "kernelThread.hpp"
#include "kernelSemaphore.hpp"
#include "printMethods.hpp"
#include "../lib/console.h"
#include "memoryAllocator.hpp"

class Riscv{

public:

    static void popAllRegisters();
    static void pushAllRegisters();

    //cant be inline / must jump!!!
    static void popSppSpie();


    //method for ecall and passing the arguments
    static void ecallWithFourArguments(uint64 a0,
                                   uint64 a1,
                                   uint64 a2,
                                   uint64 a3,
                                   uint64 a4);

    static void ecallWithThreeArguments(uint64 a0,
                                        uint64 a1,
                                        uint64 a2,
                                        uint64 a3);

    static void ecallWithTwoArguments(uint64 a0,
                                      uint64 a1,
                                      uint64 a2);

    static void ecallWithOneArgument(uint64 a0,
                                     uint64 a1);

    static void ecallWithoutArguments(uint64 a0);

    //pushing reg a0 to context
    static void pushReturnValueToStack(uint64 retVal);

    //reading and writing registers for arguments, code and return values
    static uint64 r_a0();
    static void w_a0(uint64 value);
    static uint64 r_a1();
    static void w_a1(uint64 value);
    static uint64 r_a2();
    static void w_a2(uint64 value);
    static uint64 r_a3();
    static void w_a3(uint64 value);
    static uint64 r_a4();
    static void w_a4(uint64 value);

    //getting return value from method
    static uint64 getReturnValue();

    //sepc register / previous PC value
    static uint64 r_sepc();
    static void w_sepc(uint64 sepc);

    //sstatus register
    static uint64 r_sstatus();
    static void w_sstatus(uint64 sstatus);

    //stvec / adress of interrupt
    static uint64 r_stvec();
    static void w_stvec(uint64 stvec);

    //read cause reg
    static uint64 r_scause();

    //mask for sip register
    enum BitMaskSIP{
        SIP_SSIP = (1 << 1),        //software interrupt
        SIP_STIP = (1 << 5),        //timer interrupt
        SIP_SEIP = (1 << 9)         //external interrupt
    };

    //mask for sstatus register
    enum BitMaskSSTATUS{
        SSTATUS_SIE = (1 << 1),     //disable external interrupt (0)
        SSTATUS_SPIE = (1 << 5),    //previous value of SPP
        SSTATUS_SPP = (1 << 8)      //privilige in which interrupt happend
    };

    //sip - interrupt register
    static uint64 r_sip();
    static void w_sip(uint64 sip);

    //masking bits in sip and sstatus register - S - set / C - clear
    static void ms_sip(uint64 mask);
    static void mc_sip(uint64 mask);

    static void ms_sstatus(uint64 mask);
    static void mc_sstatus(uint64 mask);

    //supervisorTrap
    static void supervisorTrap();

private:

    static void supervisorTrapHandler();

};

//inline definitions of methods above

inline void Riscv::ms_sip(uint64 mask){
    __asm__ volatile ("csrs sip, %[mask]" :: [mask] "r" (mask));
};
inline void Riscv::ms_sstatus(uint64 mask){
    __asm__ volatile ("csrs sstatus, %[mask]" :: [mask] "r" (mask));
};
inline void Riscv::mc_sip(uint64 mask){
    __asm__ volatile ("csrc sip, %[mask]" :: [mask] "r" (mask));
};
inline void Riscv::mc_sstatus(uint64 mask){
    __asm__ volatile ("csrc sstatus, %[mask]" :: [mask] "r" (mask));
};



inline void Riscv::w_sip(uint64 sip){
    __asm__ volatile ("csrw sip, %[sip]" :: [sip] "r" (sip));
};
inline uint64 Riscv::r_sip(){
    uint64 sip;
    __asm__ volatile ("csrr %[sip], sip" : [sip] "=r" (sip));
    return sip;
};

inline void Riscv::pushReturnValueToStack(uint64 retVal) {
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
};

inline void Riscv::w_stvec(uint64 stvec){
    __asm__ volatile ("csrw stvec, %[stvec]" :: [stvec] "r" (stvec));
};
inline uint64 Riscv::r_stvec(){
    uint64 stvec;
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r" (stvec));
    return stvec;
};

inline void Riscv::w_sstatus(uint64 sstatus){
    __asm__ volatile ("csrw sstatus, %[sstatus]" :: [sstatus] "r" (sstatus));
};
inline uint64 Riscv::r_sstatus(){
    uint64 sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r" (sstatus));
    return sstatus;
};

inline void Riscv::w_sepc(uint64 sepc){
    __asm__ volatile ("csrw sepc, %[sepc]" :: [sepc] "r" (sepc));
};
inline uint64 Riscv::r_sepc(){
    uint64 sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r" (sepc));
    return sepc;
};

inline uint64 Riscv::r_scause(){
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r" (scause));
    return scause;
};

//registers a0 - a4
inline uint64 Riscv::r_a0(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r" (registerValue));
    return registerValue;
};
inline uint64 Riscv::r_a1(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a1], a1" : [a1] "=r" (registerValue));
    return registerValue;
};
inline uint64 Riscv::r_a2(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a2], a2" : [a2] "=r" (registerValue));
    return registerValue;
};
inline uint64 Riscv::r_a3(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a3], a3" : [a3] "=r" (registerValue));
    return registerValue;
};
inline uint64 Riscv::r_a4(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a4], a4" : [a4] "=r" (registerValue));
    return registerValue;
};

inline void Riscv::w_a0(uint64 a0){
    __asm__ volatile ("mv a0, %[a0]" :: [a0] "r" (a0));
};
inline void Riscv::w_a1(uint64 a1){
    __asm__ volatile ("mv a1, %[a1]" :: [a1] "r" (a1));
};
inline void Riscv::w_a2(uint64 a2){
    __asm__ volatile ("mv a2, %[a2]" :: [a2] "r" (a2));
};
inline void Riscv::w_a3(uint64 a3){
    __asm__ volatile ("mv a3, %[a3]" :: [a3] "r" (a3));
};
inline void Riscv::w_a4(uint64 a4){
    __asm__ volatile ("mv a4, %[a4]" :: [a4] "r" (a4));
};

inline uint64 Riscv::getReturnValue(){
    uint64 volatile retValue;
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    return retValue;
}

#endif //RISCV_HPP