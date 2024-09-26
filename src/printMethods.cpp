//
// Created by os on 5/30/24.
//
#include "../h/printMethods.hpp"
#include "../lib/console.h"

void printStr(char const *string){
    while(*string != '\0'){
        __putc(*string);
        string++;
    }
}

void printInteger(uint64 integer){
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    //if it is negative
    if(integer < 0){
        neg = 1;
        x = -integer;
    } else{
        x = integer;
    }

    i = 0 ;
    do{
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);

    if(neg){
        buf[i++] = '-';
    }

    while(--i >= 0){
        __putc(buf[i]);
    }

}
