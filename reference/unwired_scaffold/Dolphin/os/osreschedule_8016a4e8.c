#include "Dolphin/os.h"

extern u32 RunQueueHint;
extern OSThread* SelectThread(register BOOL yield);

//8016A4E8
ASM void __OSReschedule(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     done
    li      r3, 0x0
    bl      SelectThread
done:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

//8016A518
ASM void OSYieldThread(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    li      r3, 0x1
    bl      SelectThread
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
