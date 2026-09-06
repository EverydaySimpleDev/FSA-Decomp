#include "Dolphin/gx.h"
#include "Dolphin/os.h"
#include "Dolphin/PPCArch.h"

extern void __GXSetDirtyState(void);
extern void GXFlush(void);
GXBool DrawDone;
OSThreadQueue FinishQueue;

//80187844
ASM void GXSetDrawDone(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    bl      OSDisableInterrupts
    li      r0, 0x61
    lwz     r4, __GXData
    lis     r6, 0xcc01
    lis     r5, 0x4500
    stb     r0, -0x8000(r6)
    addi    r0, r5, 0x2
    stw     r0, -0x8000(r6)
    mr      r30, r3
    lwz     r0, 0x5ac(r4)
    cmplwi  r0, 0x0
    beq     skip
    bl      __GXSetDirtyState
skip:
    li      r31, 0x0
    lis     r3, 0xcc01
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    bl      PPCSync
    stb     r31, DrawDone
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
