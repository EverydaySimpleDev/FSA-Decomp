#include "Dolphin/gx.h"

//801873E4
ASM void GXSetNumTexGens(register u8 count)
{
    nofralloc
    lwz     r6, __GXData
    clrlwi  r5, r3, 24
    li      r4, 0x10
    lwz     r0, 0x204(r6)
    rlwimi  r0, r3, 0, 28, 31
    lis     r3, 0xcc01
    stw     r0, 0x204(r6)
    li      r0, 0x103f
    stb     r4, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r5, -0x8000(r3)
    lwz     r0, 0x5ac(r6)
    ori     r0, r0, 0x4
    stw     r0, 0x5ac(r6)
    blr
}
