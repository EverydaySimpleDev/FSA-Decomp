#include "Dolphin/gx.h"

//801879CC
ASM void GXPokeAlphaMode(register GXCompare func, register u8 threshold)
{
    nofralloc
    lwz     r5, __peReg
    clrlwi  r0, r4, 24
    rlwimi  r0, r3, 8, 0, 23
    sth     r0, 0x6(r5)
    blr
}
