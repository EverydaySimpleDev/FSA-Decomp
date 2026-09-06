#include "Dolphin/gx.h"

//801879E0
ASM void GXPokeAlphaRead(register GXAlphaReadMode mode)
{
    nofralloc
    li      r5, 0x0
    lwz     r4, __peReg
    rlwimi  r5, r3, 0, 30, 31
    li      r0, 0x1
    addi    r3, r5, 0x0
    rlwimi  r3, r0, 2, 29, 29
    sth     r3, 0x8(r4)
    blr
}
