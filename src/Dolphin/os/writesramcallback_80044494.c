#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/exi.h"

extern SramControlBlock Scb;

extern void WriteSramCallback(register s32 channel, register OSContext* context);
extern BOOL WriteSram(register void* buffer, register u32 offset, register u32 size);

//80044494
ASM void WriteSramCallback(register s32 channel, register OSContext* context)
{
    nofralloc
    mflr    r0
    lis     r3, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, r3, Scb@l
    stw     r30, 0x10(r1)
    addi    r30, r31, 0x40
    lwz     r4, 0x40(r31)
    add     r3, r31, r4
    subfic  r5, r4, 0x40
    bl      WriteSram
    stw     r3, 0x4c(r31)
    lwz     r0, 0x4c(r31)
    cmpwi   r0, 0x0
    beq     L_800444DC
    li      r0, 0x40
    stw     r0, 0x0(r30)
L_800444DC:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//800444F4
ASM BOOL WriteSram(register void* buffer, register u32 offset, register u32 size)
{
    nofralloc
    mflr    r0
    lis     r6, WriteSramCallback@ha
    stw     r0, 0x4(r1)
    addi    r0, r6, WriteSramCallback@l
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    addi    r31, r4, 0x0
    li      r4, 0x1
    stw     r30, 0x20(r1)
    addi    r30, r5, 0x0
    mr      r5, r0
    stw     r29, 0x1c(r1)
    addi    r29, r3, 0x0
    li      r3, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne     L_80044540
    li      r3, 0x0
    b       L_800445F0
L_80044540:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x3
    bl      EXISelect
    cmpwi   r3, 0x0
    bne     L_80044568
    li      r3, 0x0
    bl      EXIUnlock
    li      r3, 0x0
    b       L_800445F0
L_80044568:
    slwi    r31, r31, 6
    addi    r0, r31, 0x100
    oris    r0, r0, 0xa000
    stw     r0, 0x14(r1)
    addi    r4, r1, 0x14
    li      r3, 0x0
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r31, r0, 5
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    or      r31, r31, r0
    li      r3, 0x0
    li      r6, 0x1
    bl      EXIImmEx
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIUnlock
    cntlzw  r0, r31
    srwi    r3, r0, 5
L_800445F0:
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//8004460C
ASM void __OSInitSram(void)
{
    nofralloc
    mflr    r0
    lis     r3, Scb@ha
    stw     r0, 0x4(r1)
    li      r4, 0x40
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    li      r31, 0x0
    stw     r30, 0x10(r1)
    addi    r30, r3, Scb@l
    addi    r3, r30, 0x0
    stw     r31, 0x44(r30)
    stw     r31, 0x48(r30)
    bl      DCInvalidateRange
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne     L_8004465C
    b       L_8004471C
L_8004465C:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x3
    bl      EXISelect
    cmpwi   r3, 0x0
    bne     L_80044680
    li      r3, 0x0
    bl      EXIUnlock
    b       L_8004471C
L_80044680:
    lis     r3, 0x2000
    addi    r0, r3, 0x100
    stw     r0, 0x8(r1)
    addi    r4, r1, 0x8
    li      r3, 0x0
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r31, r0, 5
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r4, r30, 0x0
    or      r31, r31, r0
    li      r3, 0x0
    li      r5, 0x40
    li      r6, 0x0
    li      r7, 0x0
    bl      EXIDma
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIUnlock
    cntlzw  r0, r31
    srwi    r31, r0, 5
L_8004471C:
    stw     r31, 0x4c(r30)
    li      r0, 0x40
    stw     r0, 0x40(r30)
    bl      OSGetGbsMode
    bl      OSSetGbsMode
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80044748
ASM OSSram* __OSLockSram(void)
{
    nofralloc
    mflr    r0
    lis     r3, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    addi    r31, r3, Scb@l
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_80044780
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       L_8004478C
L_80044780:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
L_8004478C:
    mr      r3, r31
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}

//800447A4
ASM OSSramEx* __OSLockSramEx(void)
{
    nofralloc
    mflr    r0
    lis     r3, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    addi    r31, r3, Scb@l
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     L_800447DC
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       L_800447EC
L_800447DC:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r3, r31, 0x14
    stw     r0, 0x0(r4)
L_800447EC:
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
