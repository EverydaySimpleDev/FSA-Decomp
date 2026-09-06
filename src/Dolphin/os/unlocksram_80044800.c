#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/exi.h"

extern SramControlBlock Scb;
extern void WriteSramCallback(register s32 channel, register OSContext* context);

//80044800
ASM BOOL UnlockSram(register BOOL commit, register u32 offset)
{
    nofralloc
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(r1)
    lis     r3, Scb@ha
    stwu    r1, -0x30(r1)
    stmw    r27, 0x1c(r1)
    addi    r31, r3, Scb@l
    beq     L_80044B14
    cmplwi  r4, 0x0
    bne     L_800449D4
    lbz     r3, 0x13(r31)
    clrlwi  r0, r3, 30
    cmplwi  r0, 0x2
    ble     L_80044840
    clrrwi  r0, r3, 2
    stb     r0, 0x13(r31)
L_80044840:
    li      r0, 0x0
    sth     r0, 0x2(r31)
    addi    r5, r31, 0x14
    addi    r6, r31, 0xc
    addi    r3, r5, 0x1
    sth     r0, 0x0(r31)
    subf    r3, r6, r3
    cmplw   r6, r5
    srwi    r3, r3, 1
    bge     L_800449D4
    srwi.   r0, r3, 3
    mtctr   r0
    beq     L_800449A4
L_80044874:
    lhz     r5, 0x0(r31)
    lhz     r0, 0x0(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x0(r6)
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x2(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x2(r6)
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x4(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x4(r6)
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x6(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x6(r6)
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x8(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x8(r6)
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0xa(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0xa(r6)
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0xc(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0xc(r6)
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0xe(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0xe(r6)
    addi    r6, r6, 0x10
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    bdnz    L_80044874
    andi.   r3, r3, 0x7
    beq     L_800449D4
L_800449A4:
    mtctr   r3
L_800449A8:
    lhz     r5, 0x0(r31)
    lhz     r0, 0x0(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x0(r6)
    addi    r6, r6, 0x2
    lhz     r5, 0x2(r31)
    nor     r0, r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    bdnz    L_800449A8
L_800449D4:
    addi    r30, r31, 0x40
    lwz     r0, 0x40(r31)
    cmplw   r4, r0
    bge     L_800449E8
    stw     r4, 0x0(r30)
L_800449E8:
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x14
    bgt     L_80044A1C
    addi    r4, r31, 0x14
    lhz     r3, 0x3c(r31)
    rlwinm  r0, r3, 0, 17, 21
    cmplwi  r0, 0x5000
    beq     L_80044A14
    rlwinm  r0, r3, 0, 24, 25
    cmplwi  r0, 0xc0
    bne     L_80044A1C
L_80044A14:
    li      r0, 0x0
    sth     r0, 0x28(r4)
L_80044A1C:
    lwz     r29, 0x0(r30)
    lis     r3, WriteSramCallback@ha
    addi    r5, r3, WriteSramCallback@l
    subfic  r27, r29, 0x40
    add     r28, r31, r29
    li      r3, 0x0
    li      r4, 0x1
    bl      EXILock
    cmpwi   r3, 0x0
    bne     L_80044A4C
    li      r0, 0x0
    b       L_80044AFC
L_80044A4C:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x3
    bl      EXISelect
    cmpwi   r3, 0x0
    bne     L_80044A74
    li      r3, 0x0
    bl      EXIUnlock
    li      r0, 0x0
    b       L_80044AFC
L_80044A74:
    slwi    r3, r29, 6
    addi    r0, r3, 0x100
    oris    r0, r0, 0xa000
    stw     r0, 0x10(r1)
    addi    r4, r1, 0x10
    li      r3, 0x0
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r29, r0, 5
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r4, r28, 0x0
    addi    r5, r27, 0x0
    or      r29, r29, r0
    li      r3, 0x0
    li      r6, 0x1
    bl      EXIImmEx
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r29, r29, r0
    li      r3, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r29, r29, r0
    li      r3, 0x0
    bl      EXIUnlock
    cntlzw  r0, r29
    srwi    r0, r0, 5
L_80044AFC:
    stw     r0, 0x4c(r31)
    lwz     r0, 0x4c(r31)
    cmpwi   r0, 0x0
    beq     L_80044B14
    li      r0, 0x40
    stw     r0, 0x0(r30)
L_80044B14:
    li      r0, 0x0
    stw     r0, 0x48(r31)
    lwz     r3, 0x44(r31)
    bl      OSRestoreInterrupts
    lwz     r3, 0x4c(r31)
    lmw     r27, 0x1c(r1)
    lwz     r0, 0x34(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}
