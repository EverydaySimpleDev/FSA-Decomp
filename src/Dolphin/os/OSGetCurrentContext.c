#include <types.h>

//80163864
void* OSGetCurrentContext(void)
{
    return *(void**)0x800000D4;
}
