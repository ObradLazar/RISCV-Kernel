#ifndef MEMORYALLOCATOR
#define MEMORYALLOCATOR

#include "../lib/hw.h"

class MemoryAllocator{

private:

    MemoryAllocator();
    ~MemoryAllocator()=default;

    struct FreeMemoryBlock{
        FreeMemoryBlock *next;
        FreeMemoryBlock *prev;
        size_t size;
        bool free = true;
    };

    FreeMemoryBlock *freeMemoryHead;

    //static MemoryAllocator *instance;

    int tryToJoin(FreeMemoryBlock* freeBlock);

public:

    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
        return instance;
    };

    void* mem_alloc(size_t size);
    int mem_free(void*);

};

//MemoryAllocator *MemoryAllocator::instance = nullptr;



#endif //MEMORYALLOCATOR