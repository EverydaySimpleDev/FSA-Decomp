#include "types.h"
#include "Dolphin/os.h"

extern vs32 Reschedule;

//80045254
ASM s32 OSDisableScheduler(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    lwz     r4, Reschedule
    addi    r0, r4, 0x1
    stw     r0, Reschedule
    mr      r31, r4
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}

//80045294
ASM s32 OSEnableScheduler(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    lwz     r4, Reschedule
    subi    r0, r4, 0x1
    stw     r0, Reschedule
    mr      r31, r4
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
