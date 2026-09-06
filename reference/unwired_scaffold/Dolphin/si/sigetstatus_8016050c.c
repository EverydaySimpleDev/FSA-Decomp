#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"

extern u32 Type[SI_MAX_CHAN];

//8016050C
ASM u32 SIGetStatus(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, chan
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    subfic  r0, r30, 0x3
    lwz     r31, 0x6438(r4)
    slwi    r0, r0, 3
    srw     r31, r31, r0
    rlwinm. r0, r31, 0, 28, 28
    beq     done
    lis     r4, Type@ha
    slwi    r5, r30, 2
    addi    r0, r4, Type@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 24, 24
    bne     done
    li      r0, 0x8
    stw     r0, 0x0(r4)
done:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80160588
ASM void SISetCommand(register s32 chan, register u32 command)
{
    nofralloc
    mulli   r0, chan, 0xc
    lis     r3, 0xcc00
    addi    r3, r3, 0x6400
    stwx    command, r3, r0
    blr
}
