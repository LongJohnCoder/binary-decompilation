#include <stdio.h>
#include <string.h>
#include "State.h"

extern "C" void sub_1(RegState *);

unsigned long getNextPC(void) {
    return 0;
}

int doDemo1(int k) {
    RegState        rState;
    unsigned long   stack[4096*10];

    memset(&rState, 0, sizeof(rState));

    //set up the stack 
    rState.RSP = (uint64_t) &stack[4096*9];
    rState.RAX = k;

    sub_1(&rState);

    return rState.RAX;
}

int main(int argc, char *argv[]) {

    int k = doDemo1(1);

    printf("0x%X -> 0x%X\n", 1, k);

    return 0;
}
