#include "types.h"
#include "Dolphin/os.h"

extern SramControlBlock Scb;
extern BOOL UnlockSram(register BOOL commit, register u32 offset);

//80044B94
ASM u32 OSGetSoundMode(void)
{
    nofralloc
    mflr    r0
    lis     r3, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    addi    r31, r3, Scb@l
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044BCC
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       L_80044BD8
L_80044BCC:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
L_80044BD8:
    lbz     r0, 0x13(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq     L_80044BEC
    li      r31, 0x1
    b       L_80044BF0
L_80044BEC:
    li      r31, 0x0
L_80044BF0:
    li      r3, 0x0
    li      r4, 0x0
    bl      UnlockSram
    mr      r3, r31
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//80044C14
ASM void OSSetSoundMode(register u32 mode)
{
    nofralloc
    mflr    r0
    lis     r4, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    addi    r31, r4, Scb@l
    stw     r30, 0x18(r1)
    clrlslwi r30, r3, 31, 2
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044C54
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       L_80044C60
L_80044C54:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
L_80044C60:
    lbz     r3, 0x13(r31)
    rlwinm  r0, r3, 0, 29, 29
    cmplw   r30, r0
    bne     L_80044C80
    li      r3, 0x0
    li      r4, 0x0
    bl      UnlockSram
    b       L_80044CA0
L_80044C80:
    rlwinm  r0, r3, 0, 30, 28
    stb     r0, 0x13(r31)
    li      r3, 0x1
    li      r4, 0x0
    lbz     r0, 0x13(r31)
    or      r0, r0, r30
    stb     r0, 0x13(r31)
    bl      UnlockSram
L_80044CA0:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//80044CB8
ASM u32 OSGetProgressiveMode(void)
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
    beq     L_80044CF0
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       L_80044CFC
L_80044CF0:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
L_80044CFC:
    lbz     r0, 0x13(r31)
    li      r3, 0x0
    li      r4, 0x0
    extrwi  r31, r0, 1, 24
    bl      UnlockSram
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80044D28
ASM void OSSetProgressiveMode(register u32 mode)
{
    nofralloc
    mflr    r0
    lis     r4, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    addi    r31, r4, Scb@l
    stw     r30, 0x18(r1)
    clrlslwi r30, r3, 31, 7
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044D68
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       L_80044D74
L_80044D68:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
L_80044D74:
    lbz     r3, 0x13(r31)
    rlwinm  r0, r3, 0, 24, 24
    cmplw   r30, r0
    bne     L_80044D94
    li      r3, 0x0
    li      r4, 0x0
    bl      UnlockSram
    b       L_80044DB4
L_80044D94:
    rlwinm  r0, r3, 0, 25, 23
    stb     r0, 0x13(r31)
    li      r3, 0x1
    li      r4, 0x0
    lbz     r0, 0x13(r31)
    or      r0, r0, r30
    stb     r0, 0x13(r31)
    bl      UnlockSram
L_80044DB4:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
