#include <types.h>

extern void* __OSArenaLo;

//80162CA8
ASM void* OSAllocFromArenaLo(unsigned long size, unsigned long align)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    lwz     r0, __OSArenaLo
    subi    r4, r4, 0x1
    nor     r5, r4, r4
    add     r0, r0, r4
    and     r6, r5, r0
    add     r0, r6, r3
    add     r0, r0, r4
    and     r0, r5, r0
    stw     r0, __OSArenaLo
    mr      r3, r6
    blr
#endif // clang-format on
}
