#include "types.h"
#include "Dolphin/os.h"

extern SramControlBlock Scb;
extern BOOL UnlockSram(register BOOL commit, register u32 offset);

//80044DCC
ASM u16 OSGetWirelessID(register s32 channel)
{
    nofralloc
    mflr    r0
    lis     r4, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    addi    r31, r4, Scb@l
    stw     r30, 0x18(r1)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044E0C
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       L_80044E1C
L_80044E0C:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r3, r31, 0x14
    stw     r0, 0x0(r4)
L_80044E1C:
    slwi    r0, r30, 1
    add     r3, r3, r0
    lhz     r31, 0x1c(r3)
    li      r3, 0x0
    li      r4, 0x14
    bl      UnlockSram
    mr      r3, r31
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//80044E50
ASM void OSSetWirelessID(register s32 channel, register u16 id)
{
    nofralloc
    mflr    r0
    lis     r5, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    addi    r31, r5, Scb@l
    stw     r30, 0x20(r1)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(r1)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044E98
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       L_80044EA8
L_80044E98:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r3, r31, 0x14
    stw     r0, 0x0(r4)
L_80044EA8:
    slwi    r0, r29, 1
    add     r4, r3, r0
    lhzu    r3, 0x1c(r4)
    clrlwi  r0, r30, 16
    cmplw   r3, r0
    beq     L_80044ED4
    sth     r30, 0x0(r4)
    li      r3, 0x1
    li      r4, 0x14
    bl      UnlockSram
    b       L_80044EE0
L_80044ED4:
    li      r3, 0x0
    li      r4, 0x14
    bl      UnlockSram
L_80044EE0:
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//80044EFC
ASM u16 OSGetGbsMode(void)
{
    nofralloc
    mflr    r0
    lis     r3, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, r3, Scb@l
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044F34
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       L_80044F44
L_80044F34:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r3, r31, 0x14
    stw     r0, 0x0(r4)
L_80044F44:
    lhz     r31, 0x28(r3)
    li      r3, 0x0
    li      r4, 0x14
    bl      UnlockSram
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80044F6C
ASM void OSSetGbsMode(register u16 mode)
{
    nofralloc
    mflr    r0
    clrlwi  r4, r3, 16
    stw     r0, 0x4(r1)
    rlwinm  r0, r3, 0, 17, 21
    cmplwi  r0, 0x5000
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    addi    r30, r3, 0x0
    lis     r3, Scb@ha
    addi    r31, r3, Scb@l
    beq     L_80044FA8
    rlwinm  r0, r4, 0, 24, 25
    cmplwi  r0, 0xc0
    bne     L_80044FAC
L_80044FA8:
    li      r30, 0x0
L_80044FAC:
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r5, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044FCC
    bl      OSRestoreInterrupts
    li      r4, 0x0
    b       L_80044FDC
L_80044FCC:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r4, r31, 0x14
    stw     r0, 0x0(r5)
L_80044FDC:
    lhz     r0, 0x28(r4)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    bne     L_80044FFC
    li      r3, 0x0
    li      r4, 0x14
    bl      UnlockSram
    b       L_8004500C
L_80044FFC:
    sth     r30, 0x28(r4)
    li      r3, 0x1
    li      r4, 0x14
    bl      UnlockSram
L_8004500C:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
