#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"

extern SIControl Si;

//801605AC
ASM u32 SISetXY(register u32 x, register u32 y)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    slwi    r0, y, 8
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    slwi    r31, x, 16
    or      r31, r31, r0
    bl      OSDisableInterrupts
    lis     r4, Si@ha
    addi    r4, r4, Si@l
    lwz     r0, 0x4(r4)
    addi    r5, r4, 0x4
    lis     r4, 0xcc00
    rlwinm  r0, r0, 0, 24, 5
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    or      r0, r0, r31
    stw     r0, 0x0(r5)
    lwz     r31, 0x0(r5)
    stw     r31, 0x6430(r4)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80160618
ASM u32 SIEnablePolling(register u32 poll)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr.     r31, poll
    bne     dopoll
    lis     r3, Si@ha
    addi    r3, r3, Si@l
    lwz     r3, 0x4(r3)
    b       done
dopoll:
    bl      OSDisableInterrupts
    lis     r4, Si@ha
    addi    r4, r4, Si@l
    srwi    r31, r31, 24
    lwz     r0, 0x4(r4)
    addi    r5, r4, 0x4
    extrwi  r4, r31, 4, 24
    andc    r0, r0, r4
    stw     r0, 0x0(r5)
    oris    r0, r4, 0x3ff
    ori     r0, r0, 0xfff0
    and     r31, r31, r0
    lwz     r0, 0x0(r5)
    rlwinm  r31, r31, 0, 24, 5
    or      r0, r0, r31
    stw     r0, 0x0(r5)
    lis     r4, 0xcc00
    addi    r4, r4, 0x6400
    lwz     r31, 0x0(r5)
    lis     r0, 0x8000
    stw     r0, 0x38(r4)
    stw     r31, 0x30(r4)
    bl      OSRestoreInterrupts
    mr      r3, r31
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//801606B4
ASM u32 SIDisablePolling(register u32 poll)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr.     r31, poll
    bne     dopoll
    lis     r3, Si@ha
    addi    r3, r3, Si@l
    lwz     r3, 0x4(r3)
    b       done
dopoll:
    bl      OSDisableInterrupts
    lis     r4, Si@ha
    addi    r4, r4, Si@l
    lwz     r0, 0x4(r4)
    rlwinm  r31, r31, 8, 24, 27
    addi    r5, r4, 0x4
    lis     r4, 0xcc00
    andc    r31, r0, r31
    stw     r31, 0x6430(r4)
    stw     r31, 0x0(r5)
    bl      OSRestoreInterrupts
    mr      r3, r31
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
