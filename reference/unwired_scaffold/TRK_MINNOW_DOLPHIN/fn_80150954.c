#include <types.h>

//80150954
u32 fn_80150954(void* state)
{
    return *(u32*)((char*)state + 0x10);
}
