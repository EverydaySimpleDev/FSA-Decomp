#include "Dolphin/gx.h"
#include "Dolphin/PPCArch.h"

extern void __GXSetDirtyState(void);

//801874B4
ASM void GXFlush(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lwz     r3, __GXData
    lwz     r0, 0x5ac(r3)
    cmplwi  r0, 0x0
    beq     skip
    bl      __GXSetDirtyState
skip:
    li      r0, 0x0
    lis     r3, 0xcc01
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    bl      PPCSync
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
