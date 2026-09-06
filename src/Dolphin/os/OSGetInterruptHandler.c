#include <types.h>

extern void** InterruptHandlerTable;

//80166EB8
void* __OSGetInterruptHandler(s32 interrupt)
{
    return InterruptHandlerTable[(s16)interrupt];
}
