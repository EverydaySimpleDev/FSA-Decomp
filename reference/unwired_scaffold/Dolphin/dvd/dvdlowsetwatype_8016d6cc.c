#include "Dolphin/os.h"
#include "Dolphin/hw_regs.h"

static u32 WorkAroundType;
static u32 WorkAroundSeekLocation;

//8016D6CC
ASM void __DVDLowSetWAType(register u32 type, register u32 location)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, location, 0x0
    stw     r30, 0x10(r1)
    addi    r30, type, 0x0
    bl      OSDisableInterrupts
    stw     r30, WorkAroundType
    stw     r31, WorkAroundSeekLocation
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
