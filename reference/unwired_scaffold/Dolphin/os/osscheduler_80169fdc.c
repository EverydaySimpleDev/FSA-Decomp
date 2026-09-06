#include <types.h>
#include "Dolphin/OS/OSInterrupt.h"

extern s32 Reschedule;

//80169FDC
ASM s32 OSDisableScheduler(void)
{
#ifdef __MWERKS__ // clang-format off
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
#endif // clang-format on
}

//8016A01C
ASM s32 OSEnableScheduler(void)
{
#ifdef __MWERKS__ // clang-format off
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
#endif // clang-format on
}
