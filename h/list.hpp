#ifndef LIST_HPP
#define LIST_HPP

#include "memoryAllocator.hpp"

template<typename T>
class List{

private:

    struct Elem{
        T* data;
        Elem* next;

        Elem(T* data, Elem* next){
            this->data = data;
            this->next = next;
        }
    };

    Elem* head;
    Elem* tail;

public:

    List(){
        head = nullptr;
        tail = nullptr;
    }

    void addFirst(T* data){
        Elem *newElem = new Elem(data, head);
        head = newElem;
        if(tail == nullptr){
            tail = newElem;
        }
    }

    void addLast(T* data){
        //Elem *newElem = new Elem(data, nullptr);
        size_t size = sizeof(Elem)/MEM_BLOCK_SIZE;
        if(sizeof(Elem)%MEM_BLOCK_SIZE != 0){
            size++;
        }
        Elem *newElem = (Elem*)(MemoryAllocator::getInstance().mem_alloc(size));
        newElem->next = nullptr;
        newElem->data = data;
        if(tail == nullptr){
            tail = newElem;
            head = newElem;
        }else{
            tail->next = newElem;
            tail = newElem;
        }
    }

    T* removeFirst(){
        if(head == nullptr) return nullptr;
        Elem *elem = head;
        head = head->next;
        if(head == nullptr){
            tail = nullptr;
        }
        T *ret = elem->data;
        //delete elem;
        MemoryAllocator::getInstance().mem_free(elem);
        return ret;
    }

    T *peekFirst(){
        if(head == nullptr){
            return nullptr;
        }
        return head->data;
    }

    T *removeLast(){
        if(head == nullptr){
            return nullptr;         //if head = 0 -> tail = 0
        }

        Elem *prev = head;
        for(Elem *curr = head;curr != tail && curr->next != tail; curr = curr->next){
            prev = curr;
        }

        Elem *elem = tail;
        if(prev){
            prev->next = nullptr;
        } else {
            head = nullptr;
        }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekLast(){
        if(head == nullptr){
            return 0;
        } else {
            return tail->data;
        }
    }

    //ADDED

    int countList() {
        int count = 0;
        Elem* current = head;

        while (current != nullptr) {
            count++;
            current = current->next;
        }

        return count;
    }

    //find element in list
    Elem* findInList(const T& data) const {
        for (Elem* current = head; current != nullptr; current = current->next) {
            if (*(current->data) == data) {
                return current;
            }
        }
        return nullptr;
    }

    //list to array
    T* operator[](int index) {
        Elem* current = head;
        for (int i = 0; i < index && current != nullptr; i++) {
            current = current->next;
        }
        return current ? current->data : nullptr;
    }

};

#endif //LIST_HPP