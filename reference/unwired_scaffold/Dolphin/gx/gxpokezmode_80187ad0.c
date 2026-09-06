#include "Dolphin/gx.h"

//80187AD0
ASM void GXPokeZMode(register GXBool doCompare, register GXCompare func, register GXBool doUpdate)
{
    nofralloc
    clrlwi  r0, r3, 24
    lwz     r3, __peReg
    li      r6, 0x0
    rlwimi  r6, r0, 0, 31, 31
    rlwimi  r6, r4, 1, 28, 30
    rlwimi  r6, r5, 4, 27, 27
    sth     r6, 0x0(r3)
    blr
}
