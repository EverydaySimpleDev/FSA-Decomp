#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/hw_regs.h"

vu32 ResetOccurred;
OSTime LastResetEnd;

//8016D5E0
ASM void DVDLowReset(void)
{
    nofralloc
    mflr    r0
    lis     r4, 0xcc00
    stw     r0, 0x4(r1)
    li      r0, 0x2
    stwu    r1, -0x20(r1)
    stmw    r26, 0x8(r1)
    addi    r31, r4, 0x3000
    stw     r0, 0x6004(r4)
    lwz     r30, 0x3024(r4)
    rlwinm  r0, r30, 0, 30, 28
    ori     r0, r0, 0x1
    stwu    r0, 0x24(r31)
    bl      __OSGetSystemTime
    lis     r5, 0x8000
    lwz     r0, 0xf8(r5)
    lis     r5, 0x431c
    subi    r5, r5, 0x217d
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0xc
    addi    r26, r4, 0x0
    addi    r27, r3, 0x0
    srwi    r28, r0, 3
    li      r29, 0x0
loop:
    bl      __OSGetSystemTime
    subfc   r5, r26, r4
    subfe   r0, r27, r3
    xoris   r4, r0, 0x8000
    xoris   r3, r29, 0x8000
    subfc   r0, r28, r5
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    bne     loop
    ori     r0, r30, 0x5
    stw     r0, 0x0(r31)
    li      r0, 0x1
    stw     r0, ResetOccurred
    bl      __OSGetSystemTime
    stw     r4, LastResetEnd+0x4
    stw     r3, LastResetEnd
    lmw     r26, 0x8(r1)
    lwz     r0, 0x24(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
