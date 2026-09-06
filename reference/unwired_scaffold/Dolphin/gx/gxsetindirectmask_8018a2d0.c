#include "types.h"

extern void* __GXData;

//8018A2D0
ASM void __GXSetIndirectMask(register u32 mask)
{
    nofralloc
    lwz     r7, __GXData
    li      r5, 0x61
    lis     r4, 0xcc01
    lwz     r6, 0x124(r7)
    rlwimi  r6, mask, 0, 24, 31
    li      r0, 0x0
    stw     r6, 0x124(r7)
    stb     r5, -0x8000(r4)
    lwz     r3, 0x124(r7)
    stw     r3, -0x8000(r4)
    sth     r0, 0x2(r7)
    blr
}

//8018A300
ASM void __GXFlushTextureState(void)
{
    nofralloc
    li      r0, 0x61
    lwz     r4, __GXData
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r3, 0x124(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr
}
