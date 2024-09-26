
# Project: Implementation of System Support for Memory, Threads, and Semaphores

## Project Description

This project implements basic system functionalities for working with memory, threads, and semaphores, including relevant system calls and context synchronization during calls. The purpose of this project is to simulate essential operating system mechanisms at a low level.

## Features

### 1. Memory Allocation
- **Description**: Implementation of functions for memory allocation and deallocation.
- **System Calls**:
  - `mem_alloc`
  - `mem_free`

### 2. Threads
- **Description**: Creating, destroying, and context switching between threads. Context switching occurs only during system calls.
- **System Calls**:
  - `thread_create`
  - `thread_exit`
  - `thread_dispatch`

### 3. Semaphores
- **Description**: Implementation of semaphores for synchronization between threads, including all basic operations.
- **System Calls**:
  - `sem_open`
  - `sem_close`
  - `sem_wait`
  - `sem_trywait`
  - `sem_signal`

## Wrappers in C and C++ API

For each kernel class (memory management, threads, semaphores), wrapper classes are implemented in both the **C API** and the **C++ API**. These wrapper classes provide an interface that allows easier interaction with the underlying kernel functions:

- **C API**: Wrapper functions are designed to provide a simple and direct interface to interact with kernel functionalities.
- **C++ API**: Wrapper classes are implemented with object-oriented principles, providing a higher level of abstraction and ease of use through class encapsulation, constructors, destructors, and methods that map to the respective system calls.

## Project Structure

src/ - Source files

kernelSemaphore.cpp - Source implementation for semaphore management
kernelThread.cpp - Source implementation for thread management
memoryAllocator.cpp - Source implementation for memory management and allocation
printMethods.cpp - Source code for print utilities used in debugging
riscv.cpp - Source code for RISC-V architecture-specific operations
scheduler.cpp - Source code for thread scheduling and dispatching
syscall_c.cpp - Source implementation of system calls in the C API
syscall_cpp.cpp - Source implementation of system calls in the C++ API
supervisorTrap.S
registerPushPop.S
contextSwitch.S

h/ - Header files

kernelSemaphore.h - Header for semaphore management
kernelThread.h - Header for thread management
list.h - Header for list structures
memoryAllocator.h - Header for memory management and allocation
printMethods.h - Header for debugging print utilities
riscv.h - Header for RISC-V architecture-specific operations
scheduler.h - Header for thread scheduling
syscall_c.h - Header for C API system calls
syscall_cpp.h - Header for C++ API system calls
tests/ - Unit tests for functionality verification

## Compilation Instructions

This project is intended to be run on a **Linux Ubuntu** operating system. To compile and run the project, use the following command:

```bash
make qemu
```

## Authors

- Author Name: Lazar Obradovic
- Year: 2024
