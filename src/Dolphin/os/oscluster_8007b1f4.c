#include "types.h"

extern f32 lbl_8045E120;
extern f32 lbl_80498B60;
extern f32 lbl_8052E7E4;
extern f32 lbl_8052E808;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053B6D8;

extern void DCInvalidateRange(void);
extern void OSInitMessageQueue(void);
extern void OSLockMutex(void);
extern void OSReceiveMessage(void);
extern void OSReport(void);
extern void OSSendMessage(void);
extern void OSUnlockMutex(void);
extern void dtor_80084580(void);
extern void fn_80040F90(void);
extern void fn_80051B58(void);
extern void fn_8007E20C(void);
extern void fn_800838F4(void);
extern void fn_8008440C(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80086F58(void);
extern void fn_80087298(void);
extern void fn_8008A324(void);

ASM void fn_8007B1F4(void);
ASM void fn_8007B248(void);
ASM void fn_8007B268(void);
ASM void fn_8007B418(void);
ASM void fn_8007B490(void);
ASM void fn_8007B538(void);
ASM void fn_8007B5A8(void);

ASM void fn_8007B1F4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_8007B22C
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007B22C
    mr r3, r30
    bl dtor_80084580
L_8007B22C:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B248(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_8007B418
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B268(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r8, lbl_8052E808@ha
    lis r9, lbl_8045E120@ha
    stw r0, 0x34(r1)
    addi r0, r8, lbl_8052E808@l
    stmw r25, 0x14(r1)
    mr r25, r3
    mr r27, r4
    mr r28, r5
    mr r29, r6
    mr r30, r7
    mr r3, r0
    addi r31, r9, lbl_8045E120@l
    bl OSLockMutex
    lis r3, lbl_8052E808@ha
    addi r3, r3, lbl_8052E808@l
    bl OSLockMutex
    clrlwi. r0, r27, 27
    opword  0x4082000C  // bne .L_8007B2C0
    clrlwi. r0, r28, 27
    opword  0x4182005C  // beq .L_8007B318
L_8007B2C0:
    mr r4, r25
    addi r3, r31, 0x0
    crclr 6
    bl OSReport
    mr r4, r27
    addi r3, r31, 0x10
    crclr 6
    bl OSReport
    mr r4, r28
    addi r3, r31, 0x20
    crclr 6
    bl OSReport
    mr r4, r29
    addi r3, r31, 0x34
    crclr 6
    bl OSReport
    addi r3, r31, 0x44
    addi r6, r31, 0x58
    li r4, 0x6c
    opword  0x38A28738  // li r5, lbl_8053B6D8@sda21
    crclr 6
    bl fn_8008A324
L_8007B318:
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    li r3, 0x8
    li r5, -0x4
    bl fn_8008440C
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    mr r26, r3
    li r3, 0x98
    li r5, -0x4
    bl fn_8008440C
    mr. r31, r3
    opword  0x4182000C  // beq .L_8007B34C
    bl fn_8007B538
    mr r31, r3
L_8007B34C:
    stw r25, 0x40(r31)
    lis r3, lbl_80498B60@ha
    li r6, 0x0
    li r0, 0x1
    stw r27, 0x48(r31)
    addi r3, r3, lbl_80498B60@l
    mr r4, r26
    li r5, 0x1
    stw r28, 0x4c(r31)
    stw r30, 0x50(r31)
    stw r29, 0x44(r31)
    stw r6, 0x58(r31)
    stw r0, 0x0(r26)
    stw r31, 0x4(r26)
    bl OSSendMessage
    lwz r0, 0x58(r31)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_8007B3A4
    lis r3, lbl_8052E7E4@ha
    addi r4, r31, 0x20
    addi r3, r3, lbl_8052E7E4@l
    bl fn_80086F58
L_8007B3A4:
    lis r3, lbl_8052E808@ha
    addi r3, r3, lbl_8052E808@l
    bl OSUnlockMutex
    lis r3, lbl_8052E808@ha
    addi r3, r3, lbl_8052E808@l
    bl OSLockMutex
    addi r3, r31, 0x68
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    lis r3, lbl_8052E7E4@ha
    addi r4, r31, 0x20
    addi r3, r3, lbl_8052E7E4@l
    bl fn_80087298
    lis r3, lbl_8052E808@ha
    addi r3, r3, lbl_8052E808@l
    bl OSUnlockMutex
    mr r3, r31
    li r4, 0x1
    bl fn_8007B5A8
    lis r3, lbl_8052E808@ha
    addi r3, r3, lbl_8052E808@l
    bl OSUnlockMutex
    lmw r25, 0x14(r1)
    li r3, 0x1
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007B418(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r0, 0x40(r3)
    cmpwi r0, 0x1
    opword  0x40820014  // bne .L_8007B448
    lwz r3, 0x4c(r31)
    lwz r4, 0x44(r31)
    bl DCInvalidateRange
    opword  0x48000010  // b .L_8007B454
L_8007B448:
    lwz r3, 0x48(r31)
    lwz r4, 0x44(r31)
    bl fn_80040F90
L_8007B454:
    lis r3, fn_8007B490@ha
    lwz r5, 0x40(r31)
    addi r10, r3, fn_8007B490@l
    lwz r7, 0x48(r31)
    lwz r8, 0x4c(r31)
    mr r3, r31
    lwz r9, 0x44(r31)
    li r4, 0x0
    li r6, 0x0
    bl fn_80051B58
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B490(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r0, 0x40(r3)
    cmpwi r0, 0x1
    opword  0x40820010  // bne .L_8007B4BC
    lwz r3, 0x4c(r31)
    lwz r4, 0x44(r31)
    bl DCInvalidateRange
L_8007B4BC:
    lwz r0, 0x60(r31)
    cmpwi r0, 0x0
    opword  0x41820018  // beq .L_8007B4DC
    cmpwi r0, 0x2
    opword  0x40820058  // bne .L_8007B524
    lwz r3, 0x64(r31)
    bl fn_8007E20C
    opword  0x4800004C  // b .L_8007B524
L_8007B4DC:
    lwz r12, 0x58(r31)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8007B4F8
    mr r3, r31
    mtctr r12
    bctrl
    opword  0x48000030  // b .L_8007B524
L_8007B4F8:
    lwz r3, 0x5c(r31)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_8007B514
    mr r4, r31
    li r5, 0x0
    bl OSSendMessage
    opword  0x48000014  // b .L_8007B524
L_8007B514:
    mr r4, r31
    addi r3, r31, 0x68
    li r5, 0x0
    bl OSSendMessage
L_8007B524:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B538(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    mr r4, r31
    addi r3, r4, 0x20
    bl fn_80086E2C
    mr r4, r31
    addi r3, r31, 0x30
    bl fn_80086E2C
    addi r3, r31, 0x68
    addi r4, r31, 0x88
    li r5, 0x1
    bl OSInitMessageQueue
    li r0, 0x0
    mr r3, r31
    stw r0, 0x58(r31)
    stw r0, 0x5c(r31)
    stw r0, 0x60(r31)
    stw r0, 0x8c(r31)
    stw r0, 0x90(r31)
    stw r0, 0x94(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B5A8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820070  // beq .L_8007B634
    lwz r3, 0x8c(r30)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8007B5D8
    bl dtor_80084580
L_8007B5D8:
    lwz r3, 0x90(r30)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8007B5E8
    bl dtor_80084580
L_8007B5E8:
    lwz r3, 0x94(r30)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007B5FC
    li r4, 0x0
    bl fn_800838F4
L_8007B5FC:
    addic. r0, r30, 0x30
    opword  0x41820010  // beq .L_8007B610
    addi r3, r30, 0x30
    li r4, 0x0
    bl fn_80086E44
L_8007B610:
    addic. r0, r30, 0x20
    opword  0x41820010  // beq .L_8007B624
    addi r3, r30, 0x20
    li r4, 0x0
    bl fn_80086E44
L_8007B624:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007B634
    mr r3, r30
    bl dtor_80084580
L_8007B634:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

