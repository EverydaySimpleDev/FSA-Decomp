#include "Dolphin/gx.h"

//80187A94
ASM void GXPokeDstAlpha(register GXBool doEnable, register u8 alpha)
{
    nofralloc
    clrlwi  r0, r4, 24
    lwz     r4, __peReg
    li      r5, 0x0
    rlwimi  r5, r0, 0, 24, 31
    clrlwi  r0, r3, 24
    addi    r3, r5, 0x0
    rlwimi  r3, r0, 8, 23, 23
    sth     r3, 0x4(r4)
    blr
}
