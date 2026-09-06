#include "types.h"

extern f32 lbl_80499028;
extern f32 lbl_80499090;
extern f32 lbl_804BA004;
extern f32 lbl_8052E82C;
extern f32 lbl_80539D68;
extern f32 lbl_80539D6C;
extern f32 lbl_8053A7A0;
extern f32 lbl_8053A800;
extern f32 lbl_8053A804;
extern f32 lbl_8053A808;
extern f32 lbl_8053A80C;
extern f32 lbl_8053A810;
extern f32 lbl_8053A814;
extern f32 lbl_8053A818;
extern f32 lbl_8053A81C;
extern f32 lbl_8053A820;
extern f32 lbl_8053A824;
extern f32 lbl_8053A828;
extern f32 lbl_8053A82C;
extern f32 lbl_8053A830;
extern f32 lbl_8053A834;
extern f32 lbl_8053A838;
extern f32 lbl_8053A83C;
extern f32 lbl_8053A840;
extern f32 lbl_8053A844;
extern f32 lbl_8053A8A8;

extern void DCInvalidateRange(void);
extern void OSDisableInterrupts(void);
extern void OSGetCurrentThread(void);
extern void OSInitMutex(void);
extern void OSLockMutex(void);
extern void OSRestoreInterrupts(void);
extern void OSUnlockMutex(void);
extern void dtor_80084580(void);
extern void fn_80048874(void);
extern void fn_8004C228(void);
extern void fn_8007B030(void);
extern void fn_8007B268(void);
extern void fn_8007BA74(void);
extern void fn_8007BB3C(void);
extern void fn_8007E5F0(void);
extern void fn_8007E7E0(void);
extern void fn_8007E904(void);
extern void fn_8007EA84(void);
extern void fn_800838C8(void);
extern void fn_800838F4(void);
extern void fn_8008440C(void);
extern void fn_80086A9C(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80086F58(void);
extern void fn_80087298(void);
extern void fn_800874D0(void);
extern void memcpy(void);

ASM void fn_8007ED18(void);
ASM void fn_8007ED6C(void);
ASM void fn_8007EE08(void);
ASM void fn_8007EEAC(void);
ASM void fn_8007EF58(void);
ASM void fn_8007F2B4(void);
ASM void fn_8007F324(void);
ASM void fn_8007F404(void);
ASM void fn_8007F444(void);
ASM void fn_8007F4D0(void);
ASM void fn_8007F648(void);
ASM void fn_8007F8C8(void);
ASM void fn_8007F97C(void);
ASM void fn_8007FA68(void);

ASM void fn_8007ED18(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_8007ED50
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007ED50
    mr r3, r30
    bl dtor_80084580
L_8007ED50:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007ED6C(void)
{
    nofralloc
    stwu r1, -0x120(r1)
    mflr r0
    stw r0, 0x124(r1)
    stmw r26, 0x108(r1)
    mr r26, r3
    mr r27, r4
    mr r28, r5
    mr r29, r6
    mr r30, r7
    mr r31, r8
    addi r3, r1, 0x8
    bl fn_8007E7E0
    mr r4, r26
    addi r3, r1, 0x8
    bl fn_8007EA84
    clrlwi. r0, r3, 24
    opword  0x40820018  // bne .L_8007EDC4
    addi r3, r1, 0x8
    li r4, -0x1
    bl fn_8007E904
    li r3, 0x0
    opword  0x48000034  // b .L_8007EDF4
L_8007EDC4:
    mr r4, r27
    mr r5, r28
    mr r6, r29
    mr r7, r30
    mr r8, r31
    addi r3, r1, 0x8
    bl fn_8007EE08
    mr r31, r3
    addi r3, r1, 0x8
    li r4, -0x1
    bl fn_8007E904
    mr r3, r31
L_8007EDF4:
    lmw r26, 0x108(r1)
    lwz r0, 0x124(r1)
    mtlr r0
    addi r1, r1, 0x120
    blr
}

ASM void fn_8007EE08(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r9, r8
    stw r0, 0x14(r1)
    mr r0, r7
    mr r7, r6
    li r6, 0x0
    stw r31, 0xc(r1)
    mr r8, r0
    stw r30, 0x8(r1)
    mr r30, r4
    bl fn_8007EEAC
    li r4, 0x0
    mr r31, r3
    bl fn_8007F324
    lwz r0, 0x48(r31)
    cmpwi r0, 0x0
    opword  0x40800018  // bge .L_8007EE64
    mr r3, r31
    li r4, 0x1
    bl fn_8007F444
    li r3, 0x0
    opword  0x48000034  // b .L_8007EE94
L_8007EE64:
    cmplwi r30, 0x0
    opword  0x41820018  // beq .L_8007EE80
    mr r3, r31
    li r4, 0x1
    bl fn_8007F444
    li r3, -0x1
    opword  0x48000018  // b .L_8007EE94
L_8007EE80:
    lwz r30, 0x30(r31)
    mr r3, r31
    li r4, 0x1
    bl fn_8007F444
    mr r3, r30
L_8007EE94:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007EEAC(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r24, 0x10(r1)
    mr r25, r4
    mr r24, r3
    mr r26, r5
    mr r27, r6
    mr r28, r7
    mr r29, r8
    mr r30, r9
    li r3, 0x54
    li r5, -0x4
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    bl fn_8008440C
    mr. r31, r3
    opword  0x4182000C  // beq .L_8007EEF8
    bl fn_8007F404
    mr r31, r3
L_8007EEF8:
    stw r24, 0x28(r31)
    li r0, 0x0
    mr r3, r31
    stw r25, 0x2c(r31)
    stw r0, 0x30(r31)
    stw r26, 0x34(r31)
    stw r27, 0x38(r31)
    stw r28, 0x3c(r31)
    stw r29, 0x40(r31)
    stw r30, 0x44(r31)
    bl fn_8007EF58
    cmplwi r3, 0x0
    opword  0x40820018  // bne .L_8007EF40
    mr r3, r31
    li r4, 0x1
    bl fn_8007F444
    li r3, 0x0
    opword  0x48000008  // b .L_8007EF44
L_8007EF40:
    mr r3, r31
L_8007EF44:
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007EF58(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stmw r25, 0x54(r1)
    mr r31, r3
    li r28, 0x1
    li r26, 0x0
    lwz r27, 0x28(r3)
    addi r3, r27, 0x34
    bl OSLockMutex
    lwz r3, 0x44(r31)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007EF94
    li r0, 0x0
    stw r0, 0x0(r3)
L_8007EF94:
    lwz r0, 0x50(r27)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8007EFA8
    li r28, 0x0
    opword  0x480002DC  // b .L_8007F280
L_8007EFA8:
    bl OSGetCurrentThread
    stw r3, 0x50(r27)
    li r3, 0x10
    li r5, -0x4
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    bl fn_8008440C
    mr. r30, r3
    opword  0x41820010  // beq .L_8007EFD4
    mr r4, r27
    bl fn_800874D0
    mr r30, r3
L_8007EFD4:
    stw r30, 0x54(r27)
    mr r3, r27
    lwz r12, 0x0(r27)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x40(r31)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_8007F004
    cmplw r3, r0
    opword  0x40810008  // ble .L_8007F004
    mr r3, r0
L_8007F004:
    lwz r0, 0x34(r31)
    addi r3, r3, 0x1f
    clrrwi r29, r3, 5
    cmpwi r0, 0x1
    opword  0x408200C8  // bne .L_8007F0DC
    addi r0, r1, 0x27
    clrrwi r25, r0, 5
L_8007F020:
    mr r4, r25
    addi r3, r27, 0x5c
    li r5, 0x20
    li r6, 0x0
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800040  // bge .L_8007F07C
    opword  0x880D81A8  // lbz r0, lbl_80539D68@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082002C  // bne .L_8007F074
    cmplwi r30, 0x0
    opword  0x4182001C  // beq .L_8007F06C
    mr r3, r30
    li r4, 0x1
    lwz r12, 0x0(r30)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007F06C:
    li r3, 0x0
    opword  0x48000230  // b .L_8007F2A0
L_8007F074:
    bl fn_8004C228
    opword  0x4BFFFFA8  // b .L_8007F020
L_8007F07C:
    mr r3, r25
    li r4, 0x20
    bl DCInvalidateRange
    mr r3, r25
    bl fn_8007E5F0
    cmpwi r3, 0x3
    opword  0x40820008  // bne .L_8007F09C
    li r3, 0x0
L_8007F09C:
    lbz r0, 0x5(r25)
    mr r26, r3
    lwz r5, 0x40(r31)
    lbz r3, 0x4(r25)
    slwi r0, r0, 16
    lbz r4, 0x6(r25)
    cmplwi r5, 0x0
    rlwimi r0, r3, 24, 0, 7
    lbz r3, 0x7(r25)
    rlwimi r0, r4, 8, 16, 23
    or r0, r3, r0
    mr r25, r0
    opword  0x41820010  // beq .L_8007F0DC
    cmplw r0, r5
    opword  0x40810008  // ble .L_8007F0DC
    mr r25, r5
L_8007F0DC:
    cmpwi r26, 0x0
    opword  0x4082000C  // bne .L_8007F0EC
    li r0, 0x0
    stw r0, 0x34(r31)
L_8007F0EC:
    lwz r0, 0x34(r31)
    cmpwi r0, 0x1
    opword  0x40820080  // bne .L_8007F174
    lwz r0, 0x2c(r31)
    cmplwi r0, 0x0
    opword  0x40820044  // bne .L_8007F144
    lwz r0, 0x30(r31)
    cmplwi r0, 0x0
    opword  0x40820038  // bne .L_8007F144
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    mr r4, r25
    li r5, 0x0
    lwz r3, 0x94(r3)
    bl fn_8007B030
    stw r3, 0x30(r31)
    lwz r3, 0x30(r31)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007F13C
    lwz r0, 0x14(r3)
    stw r0, 0x2c(r31)
L_8007F13C:
    lwz r0, 0x30(r31)
    stw r0, 0x4c(r27)
L_8007F144:
    lwz r3, 0x30(r31)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007F158
    lwz r0, 0x14(r3)
    stw r0, 0x2c(r31)
L_8007F158:
    lwz r0, 0x2c(r31)
    cmplwi r0, 0x0
    opword  0x40820074  // bne .L_8007F1D4
    li r0, 0x0
    li r3, 0x0
    stw r0, 0x50(r27)
    opword  0x48000130  // b .L_8007F2A0
L_8007F174:
    lwz r0, 0x2c(r31)
    cmplwi r0, 0x0
    opword  0x40820028  // bne .L_8007F1A4
    lwz r0, 0x30(r31)
    cmplwi r0, 0x0
    opword  0x4082001C  // bne .L_8007F1A4
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    mr r4, r29
    li r5, 0x0
    lwz r3, 0x94(r3)
    bl fn_8007B030
    stw r3, 0x30(r31)
L_8007F1A4:
    lwz r3, 0x30(r31)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007F1B8
    lwz r0, 0x14(r3)
    stw r0, 0x2c(r31)
L_8007F1B8:
    lwz r0, 0x2c(r31)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8007F1D4
    li r0, 0x0
    li r3, 0x0
    stw r0, 0x50(r27)
    opword  0x480000D0  // b .L_8007F2A0
L_8007F1D4:
    cmpwi r26, 0x0
    opword  0x40820024  // bne .L_8007F1FC
    lwz r6, 0x3c(r31)
    mr r3, r30
    lwz r4, 0x2c(r31)
    lwz r7, 0x44(r31)
    subf r5, r6, r29
    bl fn_8007BA74
    stw r3, 0x50(r31)
    opword  0x4800005C  // b .L_8007F254
L_8007F1FC:
    cmpwi r26, 0x1
    opword  0x40820024  // bne .L_8007F224
    lwz r6, 0x3c(r31)
    mr r3, r30
    lwz r4, 0x2c(r31)
    lwz r7, 0x44(r31)
    subf r5, r6, r29
    bl fn_8007BA74
    stw r3, 0x50(r31)
    opword  0x48000034  // b .L_8007F254
L_8007F224:
    cmpwi r26, 0x2
    opword  0x4082002C  // bne .L_8007F254
    li r0, 0x0
    mr r5, r29
    stw r0, 0x50(r31)
    mr r6, r25
    li r8, 0x0
    lwz r3, 0x28(r31)
    lwz r4, 0x2c(r31)
    lwz r7, 0x3c(r31)
    lwz r9, 0x44(r31)
    bl fn_8007F4D0
L_8007F254:
    lwz r12, 0x38(r31)
    cmplwi r12, 0x0
    opword  0x40820018  // bne .L_8007F274
    lis r3, lbl_8052E82C@ha
    mr r4, r31
    addi r3, r3, lbl_8052E82C@l
    bl fn_80086F58
    opword  0x48000010  // b .L_8007F280
L_8007F274:
    mr r3, r31
    mtctr r12
    bctrl
L_8007F280:
    addi r3, r27, 0x34
    bl OSUnlockMutex
    clrlwi r0, r28, 24
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_8007F29C
    mr r3, r31
    opword  0x48000008  // b .L_8007F2A0
L_8007F29C:
    li r3, 0x0
L_8007F2A0:
    lmw r25, 0x54(r1)
    lwz r0, 0x74(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_8007F2B4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820038  // beq .L_8007F308
    lis r4, lbl_80499090@ha
    addi r0, r4, lbl_80499090@l
    stw r0, 0x0(r30)
    opword  0x41820018  // beq .L_8007F2F8
    lis r5, lbl_80499028@ha
    li r4, 0x0
    addi r0, r5, lbl_80499028@l
    stw r0, 0x0(r30)
    bl fn_80086A9C
L_8007F2F8:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007F308
    mr r3, r30
    bl dtor_80084580
L_8007F308:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007F324(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r31, 0x28(r3)
    addi r3, r31, 0x34
    bl OSLockMutex
    lwz r3, 0x50(r29)
    cmplwi r3, 0x0
    opword  0x4182003C  // beq .L_8007F394
    mr r4, r30
    bl fn_8007BB3C
    cntlzw r0, r3
    cmpwi r30, 0x0
    extrwi r0, r0, 1, 26
    neg r0, r0
    stw r0, 0x48(r29)
    opword  0x4182001C  // beq .L_8007F394
    cmplwi r3, 0x0
    opword  0x40820014  // bne .L_8007F394
    addi r3, r31, 0x34
    bl OSUnlockMutex
    li r3, 0x0
    opword  0x48000058  // b .L_8007F3E8
L_8007F394:
    lis r3, lbl_8052E82C@ha
    mr r4, r29
    addi r3, r3, lbl_8052E82C@l
    bl fn_80087298
    lwz r3, 0x50(r29)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8007F3B4
    bl dtor_80084580
L_8007F3B4:
    lwz r3, 0x54(r31)
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_8007F3D4
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007F3D4:
    li r0, 0x0
    addi r3, r31, 0x34
    stw r0, 0x50(r31)
    bl OSUnlockMutex
    li r3, 0x1
L_8007F3E8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007F404(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    mr r4, r31
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r31
    stw r0, 0x48(r31)
    stb r0, 0x4c(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007F444(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820054  // beq .L_8007F4B4
    lbz r0, 0x4c(r30)
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_8007F490
    lwz r3, 0x28(r30)
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_8007F490
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007F490:
    cmplwi r30, 0x0
    opword  0x41820010  // beq .L_8007F4A4
    mr r3, r30
    li r4, 0x0
    bl fn_80086E44
L_8007F4A4:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007F4B4
    mr r3, r30
    bl dtor_80084580
L_8007F4B4:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007F4D0(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r24, 0x10(r1)
    mr r25, r3
    mr r26, r4
    mr r27, r5
    mr r28, r6
    mr r29, r7
    mr r30, r8
    mr r31, r9
    bl OSDisableInterrupts
    opword  0x880D8C7C  // lbz r0, lbl_8053A83C@sda21(r0)
    mr r24, r3
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_8007F524
    lis r3, lbl_804BA004@ha
    addi r3, r3, lbl_804BA004@l
    bl OSInitMutex
    li r0, 0x1
    opword  0x980D8C7C  // stb r0, lbl_8053A83C@sda21(r0)
L_8007F524:
    mr r3, r24
    bl OSRestoreInterrupts
    lis r3, lbl_804BA004@ha
    addi r3, r3, lbl_804BA004@l
    bl OSLockMutex
    opword  0x830D81AC  // lwz r24, lbl_80539D6C@sda21(r0)
    li r5, 0x20
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r24
    bl fn_800838C8
    mr r4, r3
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    add r0, r4, r24
    opword  0x908D8C40  // stw r4, lbl_8053A800@sda21(r0)
    li r4, 0x1120
    li r5, 0x0
    opword  0x900D8C44  // stw r0, lbl_8053A804@sda21(r0)
    bl fn_800838C8
    mr r6, r3
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    addi r0, r6, 0x1120
    opword  0x90CD8C48  // stw r6, lbl_8053A808@sda21(r0)
    li r4, 0x100
    li r5, 0x20
    opword  0x900D8C4C  // stw r0, lbl_8053A80C@sda21(r0)
    opword  0x90CD8C50  // stw r6, lbl_8053A810@sda21(r0)
    bl fn_800838C8
    subf r4, r30, r27
    addi r5, r3, 0x100
    li r0, 0x0
    cmplwi r31, 0x0
    opword  0x906D8C54  // stw r3, lbl_8053A814@sda21(r0)
    opword  0x90AD8C58  // stw r5, lbl_8053A818@sda21(r0)
    opword  0x906D8C5C  // stw r3, lbl_8053A81C@sda21(r0)
    opword  0x932D8C6C  // stw r25, lbl_8053A82C@sda21(r0)
    opword  0x93CD8C60  // stw r30, lbl_8053A820@sda21(r0)
    opword  0x908D8C64  // stw r4, lbl_8053A824@sda21(r0)
    opword  0x93AD8C70  // stw r29, lbl_8053A830@sda21(r0)
    opword  0x900D8C74  // stw r0, lbl_8053A834@sda21(r0)
    opword  0x938D8C78  // stw r28, lbl_8053A838@sda21(r0)
    opword  0x4182000C  // beq .L_8007F5D0
    mr r3, r31
    opword  0x48000008  // b .L_8007F5D4
L_8007F5D0:
    opword  0x386D8C84  // li r3, lbl_8053A844@sda21
L_8007F5D4:
    opword  0x906D8C80  // stw r3, lbl_8053A840@sda21(r0)
    li r0, 0x0
    stw r0, 0x0(r3)
    bl fn_8007F8C8
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_8007F5FC
    mr r4, r26
    bl fn_8007F648
    mr r25, r3
    opword  0x48000008  // b .L_8007F600
L_8007F5FC:
    li r25, -0x1
L_8007F600:
    opword  0x806D8C40  // lwz r3, lbl_8053A800@sda21(r0)
    li r4, 0x0
    bl fn_800838F4
    opword  0x806D8C48  // lwz r3, lbl_8053A808@sda21(r0)
    li r4, 0x0
    bl fn_800838F4
    opword  0x806D8C54  // lwz r3, lbl_8053A814@sda21(r0)
    li r4, 0x0
    bl fn_800838F4
    lis r3, lbl_804BA004@ha
    addi r3, r3, lbl_804BA004@l
    bl OSUnlockMutex
    mr r3, r25
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007F648(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r23, 0xc(r1)
    mr r24, r4
    mr r25, r24
    li r29, 0x0
    li r28, 0x0
    li r26, 0x0
    lbz r0, 0x0(r3)
    cmpwi r0, 0x59
    opword  0x40820028  // bne .L_8007F69C
    lbz r0, 0x1(r3)
    cmpwi r0, 0x61
    opword  0x4082001C  // bne .L_8007F69C
    lbz r0, 0x2(r3)
    cmpwi r0, 0x7a
    opword  0x40820010  // bne .L_8007F69C
    lbz r0, 0x3(r3)
    cmpwi r0, 0x30
    opword  0x4182000C  // beq .L_8007F6A4
L_8007F69C:
    li r3, -0x1
    opword  0x48000214  // b .L_8007F8B4
L_8007F6A4:
    opword  0x80AD8C70  // lwz r5, lbl_8053A830@sda21(r0)
    lwz r4, 0x4(r3)
    opword  0x800D8C78  // lwz r0, lbl_8053A838@sda21(r0)
    subf r4, r5, r4
    add r31, r24, r4
    add r0, r24, r0
    cmplw r31, r0
    opword  0x40810008  // ble .L_8007F6C8
    mr r31, r0
L_8007F6C8:
    addi r23, r3, 0x10
L_8007F6CC:
    cmpwi r29, 0x0
    opword  0x40820034  // bne .L_8007F704
    opword  0x800D8C68  // lwz r0, lbl_8053A828@sda21(r0)
    cmplw r23, r0
    opword  0x4081001C  // ble .L_8007F6F8
    opword  0x800D8C64  // lwz r0, lbl_8053A824@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_8007F6F8
    mr r3, r23
    bl fn_8007F97C
    mr r23, r3
L_8007F6F8:
    lbz r28, 0x0(r23)
    li r29, 0x8
    addi r23, r23, 0x1
L_8007F704:
    rlwinm. r0, r28, 0, 24, 24
    opword  0x41820094  // beq .L_8007F79C
    opword  0x806D8C74  // lwz r3, lbl_8053A834@sda21(r0)
    opword  0x800D8C70  // lwz r0, lbl_8053A830@sda21(r0)
    cmplw r3, r0
    opword  0x41800044  // blt .L_8007F75C
    opword  0x806D8C5C  // lwz r3, lbl_8053A81C@sda21(r0)
    addi r24, r24, 0x1
    lbz r4, 0x0(r23)
    addi r26, r26, 0x1
    addi r0, r3, 0x1
    opword  0x900D8C5C  // stw r0, lbl_8053A81C@sda21(r0)
    stb r4, 0x0(r3)
    opword  0x806D8C5C  // lwz r3, lbl_8053A81C@sda21(r0)
    opword  0x800D8C58  // lwz r0, lbl_8053A818@sda21(r0)
    cmplw r3, r0
    opword  0x40820010  // bne .L_8007F754
    mr r3, r25
    bl fn_8007FA68
    add r25, r25, r3
L_8007F754:
    cmplw r24, r31
    opword  0x41820148  // beq .L_8007F8A0
L_8007F75C:
    opword  0x806D8C50  // lwz r3, lbl_8053A810@sda21(r0)
    lbz r4, 0x0(r23)
    addi r0, r3, 0x1
    opword  0x900D8C50  // stw r0, lbl_8053A810@sda21(r0)
    stb r4, 0x0(r3)
    opword  0x806D8C50  // lwz r3, lbl_8053A810@sda21(r0)
    opword  0x800D8C4C  // lwz r0, lbl_8053A80C@sda21(r0)
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8007F788
    opword  0x800D8C48  // lwz r0, lbl_8053A808@sda21(r0)
    opword  0x900D8C50  // stw r0, lbl_8053A810@sda21(r0)
L_8007F788:
    opword  0x806D8C74  // lwz r3, lbl_8053A834@sda21(r0)
    addi r23, r23, 0x1
    addi r0, r3, 0x1
    opword  0x900D8C74  // stw r0, lbl_8053A834@sda21(r0)
    opword  0x480000F8  // b .L_8007F890
L_8007F79C:
    lbz r5, 0x0(r23)
    lbz r3, 0x1(r23)
    addi r23, r23, 0x2
    opword  0x800D8C50  // lwz r0, lbl_8053A810@sda21(r0)
    rlwimi r3, r5, 8, 20, 23
    opword  0x808D8C48  // lwz r4, lbl_8053A808@sda21(r0)
    srawi r27, r5, 4
    subf r3, r3, r0
    subi r30, r3, 0x1
    cmplw r30, r4
    opword  0x40800010  // bge .L_8007F7D4
    opword  0x800D8C4C  // lwz r0, lbl_8053A80C@sda21(r0)
    subf r0, r4, r0
    add r30, r30, r0
L_8007F7D4:
    cmpwi r27, 0x0
    opword  0x40820014  // bne .L_8007F7EC
    lbz r3, 0x0(r23)
    addi r23, r23, 0x1
    addi r27, r3, 0x12
    opword  0x48000008  // b .L_8007F7F0
L_8007F7EC:
    addi r27, r27, 0x2
L_8007F7F0:
    opword  0x806D8C74  // lwz r3, lbl_8053A834@sda21(r0)
    opword  0x800D8C70  // lwz r0, lbl_8053A830@sda21(r0)
    cmplw r3, r0
    opword  0x41800044  // blt .L_8007F840
    opword  0x806D8C5C  // lwz r3, lbl_8053A81C@sda21(r0)
    addi r24, r24, 0x1
    lbz r4, 0x0(r30)
    addi r26, r26, 0x1
    addi r0, r3, 0x1
    opword  0x900D8C5C  // stw r0, lbl_8053A81C@sda21(r0)
    stb r4, 0x0(r3)
    opword  0x806D8C5C  // lwz r3, lbl_8053A81C@sda21(r0)
    opword  0x800D8C58  // lwz r0, lbl_8053A818@sda21(r0)
    cmplw r3, r0
    opword  0x40820010  // bne .L_8007F838
    mr r3, r25
    bl fn_8007FA68
    add r25, r25, r3
L_8007F838:
    cmplw r24, r31
    opword  0x41820054  // beq .L_8007F890
L_8007F840:
    opword  0x806D8C50  // lwz r3, lbl_8053A810@sda21(r0)
    lbz r4, 0x0(r30)
    addi r0, r3, 0x1
    opword  0x900D8C50  // stw r0, lbl_8053A810@sda21(r0)
    stb r4, 0x0(r3)
    opword  0x800D8C50  // lwz r0, lbl_8053A810@sda21(r0)
    opword  0x806D8C4C  // lwz r3, lbl_8053A80C@sda21(r0)
    cmplw r0, r3
    opword  0x4082000C  // bne .L_8007F86C
    opword  0x800D8C48  // lwz r0, lbl_8053A808@sda21(r0)
    opword  0x900D8C50  // stw r0, lbl_8053A810@sda21(r0)
L_8007F86C:
    addi r30, r30, 0x1
    cmplw r30, r3
    opword  0x40820008  // bne .L_8007F87C
    opword  0x83CD8C48  // lwz r30, lbl_8053A808@sda21(r0)
L_8007F87C:
    opword  0x806D8C74  // lwz r3, lbl_8053A834@sda21(r0)
    subic. r27, r27, 0x1
    addi r0, r3, 0x1
    opword  0x900D8C74  // stw r0, lbl_8053A834@sda21(r0)
    opword  0x4082FF64  // bne .L_8007F7F0
L_8007F890:
    cmplw r24, r31
    slwi r28, r28, 1
    subi r29, r29, 0x1
    opword  0x4180FE30  // blt .L_8007F6CC
L_8007F8A0:
    mr r3, r25
    bl fn_8007FA68
    opword  0x808D8C80  // lwz r4, lbl_8053A840@sda21(r0)
    li r3, 0x0
    stw r26, 0x0(r4)
L_8007F8B4:
    lmw r23, 0xc(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007F8C8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    opword  0x808D8C44  // lwz r4, lbl_8053A804@sda21(r0)
    opword  0x806D8C40  // lwz r3, lbl_8053A800@sda21(r0)
    subi r0, r4, 0x19
    opword  0x80AD8C64  // lwz r5, lbl_8053A824@sda21(r0)
    subf r4, r3, r4
    opword  0x900D8C68  // stw r0, lbl_8053A828@sda21(r0)
    cmplw r5, r4
    mr r30, r3
    mr r31, r4
    opword  0x40800008  // bge .L_8007F908
    mr r31, r5
L_8007F908:
    opword  0x806D8C6C  // lwz r3, lbl_8053A82C@sda21(r0)
    mr r4, r30
    mr r5, r31
    li r6, 0x0
    addi r3, r3, 0x5c
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800020  // bge .L_8007F948
    opword  0x880D81A8  // lbz r0, lbl_80539D68@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8007F940
    li r3, 0x0
    opword  0x48000028  // b .L_8007F964
L_8007F940:
    bl fn_8004C228
    opword  0x4BFFFFC4  // b .L_8007F908
L_8007F948:
    opword  0x808D8C60  // lwz r4, lbl_8053A820@sda21(r0)
    mr r3, r30
    opword  0x800D8C64  // lwz r0, lbl_8053A824@sda21(r0)
    add r4, r4, r31
    subf r0, r31, r0
    opword  0x908D8C60  // stw r4, lbl_8053A820@sda21(r0)
    opword  0x900D8C64  // stw r0, lbl_8053A824@sda21(r0)
L_8007F964:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007F97C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r4, r3
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    opword  0x800D8C44  // lwz r0, lbl_8053A804@sda21(r0)
    subf r30, r4, r0
    clrlwi. r5, r30, 27
    opword  0x41820014  // beq .L_8007F9B8
    opword  0x806D8C40  // lwz r3, lbl_8053A800@sda21(r0)
    addi r0, r3, 0x20
    subf r29, r5, r0
    opword  0x48000008  // b .L_8007F9BC
L_8007F9B8:
    opword  0x83AD8C40  // lwz r29, lbl_8053A800@sda21(r0)
L_8007F9BC:
    mr r3, r29
    mr r5, r30
    bl memcpy
    opword  0x800D8C44  // lwz r0, lbl_8053A804@sda21(r0)
    add r30, r29, r30
    opword  0x806D8C64  // lwz r3, lbl_8053A824@sda21(r0)
    subf r31, r30, r0
    cmplw r31, r3
    opword  0x40810008  // ble .L_8007F9E4
    mr r31, r3
L_8007F9E4:
    opword  0x806D8C6C  // lwz r3, lbl_8053A82C@sda21(r0)
    mr r4, r30
    opword  0x80CD8C60  // lwz r6, lbl_8053A820@sda21(r0)
    mr r5, r31
    addi r3, r3, 0x5c
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800020  // bge .L_8007FA24
    opword  0x880D81A8  // lbz r0, lbl_80539D68@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8007FA1C
    li r3, 0x0
    opword  0x48000034  // b .L_8007FA4C
L_8007FA1C:
    bl fn_8004C228
    opword  0x4BFFFFC4  // b .L_8007F9E4
L_8007FA24:
    opword  0x800D8C64  // lwz r0, lbl_8053A824@sda21(r0)
    opword  0x806D8C60  // lwz r3, lbl_8053A820@sda21(r0)
    subf. r0, r31, r0
    add r3, r3, r31
    opword  0x906D8C60  // stw r3, lbl_8053A820@sda21(r0)
    opword  0x900D8C64  // stw r0, lbl_8053A824@sda21(r0)
    opword  0x4082000C  // bne .L_8007FA48
    add r0, r30, r31
    opword  0x900D8C68  // stw r0, lbl_8053A828@sda21(r0)
L_8007FA48:
    mr r3, r29
L_8007FA4C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007FA68(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x800D8C5C  // lwz r0, lbl_8053A81C@sda21(r0)
    opword  0x808D8C54  // lwz r4, lbl_8053A814@sda21(r0)
    cmplw r0, r4
    opword  0x4082000C  // bne .L_8007FA90
    li r3, 0x0
    opword  0x48000030  // b .L_8007FABC
L_8007FA90:
    subf r5, r4, r0
    li r7, 0x0
    addi r0, r5, 0x1f
    clrrwi r31, r0, 5
    mr r5, r3
    li r3, 0x0
    mr r6, r31
    bl fn_8007B268
    opword  0x800D8C54  // lwz r0, lbl_8053A814@sda21(r0)
    mr r3, r31
    opword  0x900D8C5C  // stw r0, lbl_8053A81C@sda21(r0)
L_8007FABC:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

