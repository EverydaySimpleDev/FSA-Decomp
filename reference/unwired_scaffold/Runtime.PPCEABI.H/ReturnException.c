#include <types.h>

extern char lbl_8020D998[0x10];

//80150F38
void* ReturnException(void)
{
    return lbl_8020D998;
}
