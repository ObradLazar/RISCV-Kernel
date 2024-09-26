#include "../h/memoryAllocator.hpp"


MemoryAllocator::MemoryAllocator(){
    freeMemoryHead = (FreeMemoryBlock*)HEAP_START_ADDR;
    freeMemoryHead->size = (size_t)(HEAP_END_ADDR) - (size_t)(HEAP_START_ADDR) - sizeof(MemoryAllocator);
    freeMemoryHead->free = true;
    freeMemoryHead->next = nullptr;
    freeMemoryHead->prev = nullptr;
};

void *MemoryAllocator::mem_alloc(size_t size){
    
    //prebaci u velicinu u bajtovima
    size_t sizeInBytes = size * MEM_BLOCK_SIZE;
/*
    size_t sizeInBytes = (size/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    if(size % MEM_BLOCK_SIZE != 0){
        sizeInBytes += MEM_BLOCK_SIZE;
    }
*/
    //provera
    if(sizeInBytes == 0){
        return nullptr;
    }

    if(sizeInBytes > (size_t)(HEAP_END_ADDR) - ((size_t)(HEAP_START_ADDR) + sizeof(MemoryAllocator))){
        return nullptr;
    }

    FreeMemoryBlock* current = freeMemoryHead;

    while(current){
        if(current->size >= sizeInBytes && current->free == true){
            break;
        }else{
            current = current->next;
        }
        
    }

    if(current == nullptr) return nullptr;

    //proveri da li je zauzet ceo blok
    if(current->size <= sizeInBytes + MEM_BLOCK_SIZE + sizeof(FreeMemoryBlock)){
        //JESTE ZAUZETO CELO
        current->free = false;
    }else{
        //NIJE ZAUZETO CELO
        FreeMemoryBlock* newFreeBlock = (FreeMemoryBlock*)((size_t)current + sizeInBytes + sizeof(FreeMemoryBlock));
        newFreeBlock->next = current->next;
        newFreeBlock->prev = current;
        newFreeBlock->free = true;
        newFreeBlock->size = current->size - sizeInBytes - sizeof(FreeMemoryBlock);
        if(current->next){
            newFreeBlock->next->prev = newFreeBlock;
        }
        current->next = newFreeBlock;
        current->size = sizeInBytes;
        current->free = false;
    }

    return (void*)((size_t)current + sizeof(FreeMemoryBlock));
};

//  K2 sempte,bar 2015
// mem_free + tryToJoin

int MemoryAllocator::tryToJoin(FreeMemoryBlock* freeBlock){
    if(freeBlock->free == false){
        return 0;
    }
    if(freeBlock == nullptr){
        return 0;
    }
    if(freeBlock->next == nullptr){
        return 0;
    }
    if(freeBlock->next->free == true){
        freeBlock->size += freeBlock->next->size + sizeof(FreeMemoryBlock);
        freeBlock->next = freeBlock->next->next;
        if(freeBlock->next){
            freeBlock->next->prev = freeBlock;
        }
        //freeBlock->next = nullptr;
        //freeBlock->prev = nullptr;
        return 0;
    }
    return -1;
    
};


int MemoryAllocator::mem_free(void* ptr){

    //check everything
    if(ptr == nullptr) return -1;
    if((size_t)ptr > (size_t)HEAP_END_ADDR) return -1;
    if((size_t)ptr < (size_t)HEAP_START_ADDR) return -1;
    
    FreeMemoryBlock* addr = (FreeMemoryBlock*)((size_t)ptr - sizeof(FreeMemoryBlock));

    if(freeMemoryHead == nullptr){
        freeMemoryHead = addr;
        return 0;
    }

    FreeMemoryBlock* temp = freeMemoryHead;

    while(temp && temp < addr){
        temp = temp->next;
    }

    if(temp->free == true){
        return -1;
    }
    //insert new free mem block after cur;

    temp->free = true;

    //try to join
    if(temp->next){
        tryToJoin(temp);
    }
    if(temp->prev) {
        tryToJoin(temp->prev);
    }

    return 0;
}

