#include "types.h"

extern f32 lbl_8045E228;
extern f32 lbl_8045E2A0;
extern f32 lbl_80498D88;
extern f32 lbl_804BA02C;
extern f32 lbl_8052E844;
extern f32 lbl_80539D70;
extern f32 lbl_80539D74;
extern f32 lbl_8053A848;
extern f32 lbl_8053A84C;
extern f32 lbl_8053A850;
extern f32 lbl_8053A854;
extern f32 lbl_8053A858;
extern f32 lbl_8053A85C;
extern f32 lbl_8053A860;
extern f32 lbl_8053A864;
extern f32 lbl_8053A868;
extern f32 lbl_8053A86C;
extern f32 lbl_8053A870;
extern f32 lbl_8053A874;
extern f32 lbl_8053A878;
extern f32 lbl_8053A87C;
extern f32 lbl_8053A880;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053B6F8;
extern f32 lbl_8053B700;

extern void DCInvalidateRange(void);
extern void OSDisableInterrupts(void);
extern void OSInitMutex(void);
extern void OSLockMutex(void);
extern void OSRestoreInterrupts(void);
extern void OSUnlockMutex(void);
extern void dtor_80084580(void);
extern void fn_80040FEC(void);
extern void fn_80048874(void);
extern void fn_8004C228(void);
extern void AbsS32(void);
extern void fn_8007BC7C(void);
extern void fn_8007BD24(void);
extern void fn_8007C640(void);
extern void fn_8007E23C(void);
extern void fn_8007E5F0(void);
extern void fn_8007E7E0(void);
extern void fn_8007E854(void);
extern void fn_8007E904(void);
extern void fn_8007EA0C(void);
extern void fn_8007EA84(void);
extern void fn_80083868(void);
extern void fn_800838C8(void);
extern void fn_800838F4(void);
extern void fn_8008393C(void);
extern void fn_800842AC(void);
extern void fn_8008440C(void);
extern void fn_80086EDC(void);
extern void fn_80087010(void);
extern void fn_80087298(void);
extern void fn_8008A324(void);
extern void memcpy(void);
extern void memset(void);

ASM void fn_8007FB14(void);
ASM void fn_8007FB68(void);
ASM void fn_8007FC18(void);
ASM void fn_8007FD44(void);
ASM void fn_8007FFF0(void);
ASM void fn_80080118(void);
ASM void fn_80080214(void);
ASM void fn_80080414(void);
ASM void fn_80080630(void);
ASM void fn_80080774(void);
ASM void fn_80080828(void);
ASM void fn_800808DC(void);
ASM void fn_80080DA8(void);
ASM void fn_80080F1C(void);
ASM void fn_800811D4(void);
ASM void fn_800812A8(void);
ASM void fn_800813B4(void);

ASM void fn_8007FB14(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_8007FB4C
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007FB4C
    mr r3, r30
    bl dtor_80084580
L_8007FB4C:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007FB68(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    li r5, 0x3
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8007BC7C
    lis r4, lbl_80498D88@ha
    mr r3, r29
    addi r0, r4, lbl_80498D88@l
    mr r4, r30
    stw r0, 0x0(r29)
    stw r31, 0x60(r29)
    bl fn_8007FD44
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_8007FBC0
    mr r3, r29
    opword  0x48000040  // b .L_8007FBFC
L_8007FBC0:
    lis r4, 0x5241
    lis r3, lbl_8052E844@ha
    addi r0, r4, 0x5243
    stw r0, 0x2c(r29)
    addi r4, r29, 0x18
    addi r3, r3, lbl_8052E844@l
    lwz r5, 0x48(r29)
    lwz r6, 0x54(r29)
    lwz r0, 0x4(r5)
    add r0, r6, r0
    stw r0, 0x28(r29)
    bl fn_80087010
    li r0, 0x1
    mr r3, r29
    stb r0, 0x30(r29)
L_8007FBFC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007FC18(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr. r31, r3
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r4
    opword  0x418200E4  // beq .L_8007FD20
    lis r3, lbl_80498D88@ha
    addi r0, r3, lbl_80498D88@l
    stw r0, 0x0(r31)
    lbz r0, 0x30(r31)
    cmplwi r0, 0x1
    opword  0x408200B0  // bne .L_8007FD04
    lwz r0, 0x44(r31)
    cmplwi r0, 0x0
    opword  0x4182004C  // beq .L_8007FCAC
    lwz r30, 0x4c(r31)
    li r29, 0x0
    opword  0x48000020  // b .L_8007FC8C
L_8007FC70:
    lwz r3, 0x10(r30)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007FC84
    lwz r4, 0x38(r31)
    bl fn_800838F4
L_8007FC84:
    addi r30, r30, 0x14
    addi r29, r29, 0x1
L_8007FC8C:
    lwz r3, 0x44(r31)
    lwz r0, 0x8(r3)
    cmplw r29, r0
    opword  0x4180FFD8  // blt .L_8007FC70
    lwz r4, 0x38(r31)
    bl fn_800838F4
    li r0, 0x0
    stw r0, 0x44(r31)
L_8007FCAC:
    lwz r3, 0x50(r31)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_8007FCC8
    li r4, 0x0
    bl fn_800838F4
    li r0, 0x0
    stw r0, 0x50(r31)
L_8007FCC8:
    lwz r3, 0x68(r31)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007FCEC
    opword  0x41820018  // beq .L_8007FCEC
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007FCEC:
    lis r3, lbl_8052E844@ha
    addi r4, r31, 0x18
    addi r3, r3, lbl_8052E844@l
    bl fn_80087298
    li r0, 0x0
    stb r0, 0x30(r31)
L_8007FD04:
    mr r3, r31
    li r4, 0x0
    bl fn_8007BD24
    extsh. r0, r28
    opword  0x4081000C  // ble .L_8007FD20
    mr r3, r31
    bl dtor_80084580
L_8007FD20:
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007FD44(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    li r5, 0x0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    stw r28, 0x10(r1)
    mr r28, r4
    stw r0, 0x44(r3)
    li r3, 0xf8
    stw r0, 0x64(r29)
    stw r0, 0x48(r29)
    stw r0, 0x4c(r29)
    stw r0, 0x54(r29)
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_8007FDA4
    mr r4, r28
    bl fn_8007E854
    mr r0, r3
L_8007FDA4:
    stw r0, 0x68(r29)
    lwz r0, 0x68(r29)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8007FDC4
    li r0, 0x0
    li r3, 0x0
    stb r0, 0x3c(r29)
    opword  0x48000210  // b .L_8007FFD0
L_8007FDC4:
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    li r4, 0x20
    li r5, 0x20
    bl fn_800838C8
    mr. r30, r3
    opword  0x40820010  // bne .L_8007FDE8
    li r0, 0x0
    stb r0, 0x3c(r29)
    opword  0x4800019C  // b .L_8007FF80
L_8007FDE8:
    li r0, 0x0
    mr r3, r28
    stw r0, 0x8(r1)
    mr r4, r30
    addi r10, r29, 0x5c
    li r5, 0x1
    li r6, 0x20
    li r7, 0x0
    li r8, 0x1
    li r9, 0x0
    bl fn_80080828
    mr r3, r30
    li r4, 0x20
    bl DCInvalidateRange
    lwz r0, 0x60(r29)
    li r31, -0x20
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_8007FE34
    li r31, 0x20
L_8007FE34:
    lwz r3, 0xc(r30)
    mr r4, r31
    lwz r5, 0x38(r29)
    bl fn_80083868
    stw r3, 0x44(r29)
    lwz r4, 0x44(r29)
    cmplwi r4, 0x0
    opword  0x40820010  // bne .L_8007FE60
    li r0, 0x0
    stb r0, 0x3c(r29)
    opword  0x48000124  // b .L_8007FF80
L_8007FE60:
    li r0, 0x0
    mr r3, r28
    stw r0, 0x8(r1)
    li r5, 0x1
    li r7, 0x0
    li r8, 0x1
    lwz r6, 0xc(r30)
    li r9, 0x20
    li r10, 0x0
    bl fn_80080828
    lwz r3, 0x44(r29)
    lwz r4, 0xc(r30)
    bl DCInvalidateRange
    lwz r4, 0x44(r29)
    li r0, 0x0
    li r5, 0x0
    lwz r3, 0x4(r4)
    add r3, r4, r3
    stw r3, 0x48(r29)
    lwz r4, 0x44(r29)
    lwz r3, 0xc(r4)
    add r3, r4, r3
    stw r3, 0x4c(r29)
    lwz r4, 0x44(r29)
    lwz r3, 0x14(r4)
    add r3, r4, r3
    stw r3, 0x54(r29)
    stw r0, 0x50(r29)
    lwz r3, 0x44(r29)
    lwz r4, 0x4c(r29)
    lwz r0, 0x8(r3)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x40810028  // ble .L_8007FF0C
L_8007FEE8:
    lwz r3, 0x4(r4)
    extrwi. r0, r3, 1, 7
    srwi r3, r3, 24
    opword  0x41820010  // beq .L_8007FF04
    rlwinm r0, r3, 0, 29, 29
    or r0, r5, r0
    clrlwi r5, r0, 24
L_8007FF04:
    addi r4, r4, 0x14
    opword  0x4200FFE0  // bdnz .L_8007FEE8
L_8007FF0C:
    clrlwi. r0, r5, 24
    opword  0x41820060  // beq .L_8007FF70
    mr r3, r31
    bl AbsS32
    lwz r4, 0x44(r29)
    lwz r5, 0x38(r29)
    lwz r0, 0x8(r4)
    mr r4, r3
    slwi r3, r0, 2
    bl fn_80083868
    stw r3, 0x50(r29)
    lwz r3, 0x50(r29)
    cmplwi r3, 0x0
    opword  0x4082001C  // bne .L_8007FF5C
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    lwz r4, 0x44(r29)
    bl fn_8008393C
    li r0, 0x0
    stb r0, 0x3c(r29)
    opword  0x48000028  // b .L_8007FF80
L_8007FF5C:
    lwz r5, 0x44(r29)
    li r4, 0x0
    lwz r0, 0x8(r5)
    slwi r5, r0, 2
    bl memset
L_8007FF70:
    lwz r3, 0x8(r30)
    lwz r0, 0xc(r30)
    add r0, r3, r0
    stw r0, 0x64(r29)
L_8007FF80:
    cmplwi r30, 0x0
    opword  0x41820010  // beq .L_8007FF94
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r30
    bl fn_8008393C
L_8007FF94:
    lbz r0, 0x3c(r29)
    cmplwi r0, 0x0
    opword  0x40820030  // bne .L_8007FFCC
    lwz r3, 0x68(r29)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007FFC4
    opword  0x41820018  // beq .L_8007FFC4
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007FFC4:
    li r3, 0x0
    opword  0x48000008  // b .L_8007FFD0
L_8007FFCC:
    li r3, 0x1
L_8007FFD0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007FFF0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr. r30, r5
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    opword  0x40820008  // bne .L_80080020
    addi r30, r1, 0xc
L_80080020:
    lwz r3, 0x4(r29)
    rlwinm. r0, r3, 8, 29, 29
    srwi r3, r3, 24
    opword  0x4082000C  // bne .L_80080038
    li r31, 0x0
    opword  0x48000018  // b .L_8008004C
L_80080038:
    rlwinm. r0, r3, 0, 24, 24
    opword  0x4182000C  // beq .L_80080048
    li r31, 0x2
    opword  0x48000008  // b .L_8008004C
L_80080048:
    li r31, 0x1
L_8008004C:
    lwz r0, 0x10(r29)
    cmplwi r0, 0x0
    opword  0x40820070  // bne .L_800800C4
    lwz r4, 0x64(r28)
    mr r7, r31
    lwz r0, 0x8(r29)
    addi r9, r1, 0x8
    lwz r3, 0x40(r28)
    lwz r5, 0xc(r29)
    add r4, r4, r0
    lwz r6, 0x38(r28)
    lwz r8, 0x5c(r28)
    bl fn_80080414
    cmplwi r3, 0x0
    stw r3, 0x0(r30)
    opword  0x4082000C  // bne .L_80080094
    li r3, 0x0
    opword  0x48000068  // b .L_800800F8
L_80080094:
    lwz r0, 0x8(r1)
    cmpwi r31, 0x2
    stw r0, 0x10(r29)
    opword  0x40820054  // bne .L_800800F4
    mr r3, r28
    mr r4, r29
    lwz r12, 0x0(r28)
    lwz r5, 0x0(r30)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    opword  0x48000034  // b .L_800800F4
L_800800C4:
    cmpwi r31, 0x2
    opword  0x40820024  // bne .L_800800EC
    mr r3, r28
    mr r4, r29
    lwz r12, 0x0(r28)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    stw r3, 0x0(r30)
    opword  0x4800000C  // b .L_800800F4
L_800800EC:
    lwz r0, 0xc(r29)
    stw r0, 0x0(r30)
L_800800F4:
    lwz r3, 0x10(r29)
L_800800F8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80080118(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r9, r3
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r29, r6
    mr r27, r4
    mr r28, r5
    mr r30, r7
    lwz r3, 0x4(r6)
    lwz r6, 0xc(r6)
    rlwinm. r0, r3, 8, 29, 29
    mr r31, r6
    srwi r0, r3, 24
    opword  0x4082000C  // bne .L_8008015C
    li r8, 0x0
    opword  0x48000018  // b .L_80080170
L_8008015C:
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182000C  // beq .L_8008016C
    li r8, 0x2
    opword  0x48000008  // b .L_80080170
L_8008016C:
    li r8, 0x1
L_80080170:
    lwz r0, 0x10(r29)
    cmplwi r0, 0x0
    opword  0x40820030  // bne .L_800801A8
    lwz r4, 0x64(r9)
    mr r5, r6
    lwz r0, 0x8(r29)
    mr r6, r27
    lwz r3, 0x40(r9)
    clrrwi r7, r28, 5
    lwz r9, 0x5c(r9)
    add r4, r4, r0
    bl fn_80080214
    mr r31, r3
    opword  0x4800004C  // b .L_800801F0
L_800801A8:
    cmpwi r8, 0x2
    opword  0x40820028  // bne .L_800801D4
    mr r3, r9
    mr r4, r29
    lwz r12, 0x0(r9)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800801D4
    mr r31, r3
L_800801D4:
    cmplw r31, r28
    opword  0x40810008  // ble .L_800801E0
    mr r31, r28
L_800801E0:
    lwz r4, 0x10(r29)
    mr r3, r27
    mr r5, r31
    bl fn_800842AC
L_800801F0:
    cmplwi r30, 0x0
    opword  0x41820008  // beq .L_800801FC
    stw r31, 0x0(r30)
L_800801FC:
    mr r3, r27
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80080214(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    cmpwi r9, 0x1
    stw r0, 0x74(r1)
    stmw r25, 0x54(r1)
    mr r25, r5
    addi r0, r25, 0x1f
    lis r5, lbl_8045E228@ha
    mr r29, r3
    mr r30, r4
    mr r31, r6
    addi r28, r5, lbl_8045E228@l
    clrrwi r27, r0, 5
    clrrwi r26, r7, 5
    opword  0x41820180  // beq .L_800803CC
    opword  0x40800010  // bge .L_80080260
    cmpwi r9, 0x0
    opword  0x40800014  // bge .L_8008026C
    opword  0x48000188  // b .L_800803E4
L_80080260:
    cmpwi r9, 0x3
    opword  0x40800180  // bge .L_800803E4
    opword  0x48000118  // b .L_80080380
L_8008026C:
    cmpwi r8, 0x0
    opword  0x41820014  // beq .L_80080284
    opword  0x4180010C  // blt .L_80080380
    cmpwi r8, 0x3
    opword  0x40800104  // bge .L_80080380
    opword  0x48000050  // b .L_800802D0
L_80080284:
    cmplw r27, r26
    opword  0x40810008  // ble .L_80080290
    mr r27, r26
L_80080290:
    li r0, 0x0
    mr r3, r29
    stw r0, 0x8(r1)
    mr r4, r31
    mr r6, r27
    mr r9, r30
    li r5, 0x0
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r31
    mr r4, r27
    bl DCInvalidateRange
    mr r3, r27
    opword  0x48000134  // b .L_80080400
L_800802D0:
    addi r4, r1, 0x2f
    li r0, 0x0
    clrrwi r27, r4, 5
    stw r0, 0x8(r1)
    mr r4, r27
    mr r9, r30
    li r5, 0x2
    li r6, 0x20
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r27
    li r4, 0x20
    bl DCInvalidateRange
    lbz r0, 0x5(r27)
    lbz r3, 0x4(r27)
    slwi r0, r0, 16
    lbz r4, 0x6(r27)
    rlwimi r0, r3, 24, 0, 7
    lbz r5, 0x7(r27)
    rlwimi r0, r4, 8, 16, 23
    or r28, r5, r0
    addi r0, r28, 0x1f
    clrrwi r27, r0, 5
    cmplw r27, r26
    opword  0x40810008  // ble .L_80080340
    mr r27, r26
L_80080340:
    li r0, 0x0
    mr r3, r29
    stw r0, 0x8(r1)
    mr r4, r31
    mr r6, r27
    mr r9, r30
    li r5, 0x1
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r31
    mr r4, r27
    bl DCInvalidateRange
    mr r3, r28
    opword  0x48000084  // b .L_80080400
L_80080380:
    cmplw r25, r26
    opword  0x40810008  // ble .L_8008038C
    mr r25, r26
L_8008038C:
    li r0, 0x0
    mr r3, r29
    stw r0, 0x8(r1)
    mr r4, r31
    mr r6, r25
    mr r9, r30
    li r5, 0x1
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r31
    mr r4, r25
    bl DCInvalidateRange
    mr r3, r25
    opword  0x48000038  // b .L_80080400
L_800803CC:
    addi r3, r28, 0x0
    addi r6, r28, 0x14
    li r4, 0x289
    opword  0x38A28758  // li r5, lbl_8053B6F8@sda21
    crclr 6
    bl fn_8008A324
L_800803E4:
    addi r3, r28, 0x0
    addi r6, r28, 0x3c
    li r4, 0x28d
    opword  0x38A28758  // li r5, lbl_8053B6F8@sda21
    crclr 6
    bl fn_8008A324
    li r3, 0x0
L_80080400:
    lmw r25, 0x54(r1)
    lwz r0, 0x74(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_80080414(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    cmpwi r8, 0x1
    stw r0, 0x74(r1)
    stmw r25, 0x54(r1)
    mr r25, r5
    addi r0, r25, 0x1f
    lis r5, lbl_8045E228@ha
    mr r29, r3
    mr r30, r4
    mr r26, r6
    mr r31, r9
    addi r28, r5, lbl_8045E228@l
    clrrwi r27, r0, 5
    opword  0x4182019C  // beq .L_800805E8
    opword  0x40800010  // bge .L_80080460
    cmpwi r8, 0x0
    opword  0x40800014  // bge .L_8008046C
    opword  0x480001A4  // b .L_80080600
L_80080460:
    cmpwi r8, 0x3
    opword  0x4080019C  // bge .L_80080600
    opword  0x48000128  // b .L_80080590
L_8008046C:
    cmpwi r7, 0x0
    opword  0x41820014  // beq .L_80080484
    opword  0x4180011C  // blt .L_80080590
    cmpwi r7, 0x3
    opword  0x40800114  // bge .L_80080590
    opword  0x4800005C  // b .L_800804DC
L_80080484:
    mr r3, r27
    mr r5, r26
    li r4, 0x20
    bl fn_80083868
    li r0, 0x0
    mr r28, r3
    stw r0, 0x8(r1)
    mr r3, r29
    mr r4, r28
    mr r6, r27
    mr r9, r30
    li r5, 0x0
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r28
    mr r4, r27
    bl DCInvalidateRange
    stw r28, 0x0(r31)
    mr r3, r27
    opword  0x48000144  // b .L_8008061C
L_800804DC:
    addi r4, r1, 0x2f
    li r0, 0x0
    clrrwi r27, r4, 5
    stw r0, 0x8(r1)
    mr r4, r27
    mr r9, r30
    li r5, 0x2
    li r6, 0x20
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r27
    li r4, 0x20
    bl DCInvalidateRange
    lbz r0, 0x5(r27)
    mr r5, r26
    lbz r3, 0x4(r27)
    li r4, 0x20
    slwi r0, r0, 16
    lbz r6, 0x6(r27)
    rlwimi r0, r3, 24, 0, 7
    lbz r7, 0x7(r27)
    rlwimi r0, r6, 8, 16, 23
    or r28, r7, r0
    mr r3, r28
    bl fn_80083868
    li r0, 0x0
    mr r27, r3
    stw r0, 0x8(r1)
    mr r3, r29
    mr r4, r27
    mr r6, r28
    mr r9, r30
    li r5, 0x1
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r27
    mr r4, r28
    bl DCInvalidateRange
    stw r27, 0x0(r31)
    mr r3, r28
    opword  0x48000090  // b .L_8008061C
L_80080590:
    mr r3, r27
    mr r5, r26
    li r4, 0x20
    bl fn_80083868
    li r0, 0x0
    mr r28, r3
    stw r0, 0x8(r1)
    mr r3, r29
    mr r4, r28
    mr r6, r25
    mr r9, r30
    li r5, 0x1
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r28
    mr r4, r25
    bl DCInvalidateRange
    stw r28, 0x0(r31)
    mr r3, r27
    opword  0x48000038  // b .L_8008061C
L_800805E8:
    addi r3, r28, 0x0
    addi r6, r28, 0x50
    li r4, 0x2f2
    opword  0x38A28758  // li r5, lbl_8053B6F8@sda21
    crclr 6
    bl fn_8008A324
L_80080600:
    addi r3, r28, 0x0
    addi r6, r28, 0x3c
    li r4, 0x2f6
    opword  0x38A28758  // li r5, lbl_8053B6F8@sda21
    crclr 6
    bl fn_8008A324
    li r3, 0x0
L_8008061C:
    lmw r25, 0x54(r1)
    lwz r0, 0x74(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_80080630(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    lwz r0, 0x50(r3)
    stw r31, 0x5c(r1)
    cmplwi r0, 0x0
    stw r30, 0x58(r1)
    mr r30, r4
    stw r29, 0x54(r1)
    mr r29, r3
    opword  0x40820018  // bne .L_80080670
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    opword  0x480000EC  // b .L_80080758
L_80080670:
    bl fn_8007C640
    mr. r31, r3
    opword  0x4082000C  // bne .L_80080684
    li r3, -0x1
    opword  0x480000D8  // b .L_80080758
L_80080684:
    lwz r0, 0x4(r31)
    rlwinm. r0, r0, 8, 29, 29
    opword  0x40820020  // bne .L_800806AC
    mr r3, r29
    mr r4, r30
    lwz r12, 0x0(r29)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    opword  0x480000B0  // b .L_80080758
L_800806AC:
    mr r3, r29
    mr r4, r31
    lwz r12, 0x0(r29)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800806D0
    opword  0x4800008C  // b .L_80080758
L_800806D0:
    li r0, 0x0
    addi r3, r1, 0x2f
    stw r0, 0x8(r1)
    clrrwi r30, r3, 5
    lwz r7, 0x64(r29)
    mr r4, r30
    lwz r0, 0x8(r31)
    li r5, 0x2
    lwz r3, 0x40(r29)
    li r6, 0x20
    add r9, r7, r0
    li r7, 0x0
    li r8, 0x1
    li r10, 0x0
    bl fn_80080828
    mr r3, r30
    li r4, 0x20
    bl DCInvalidateRange
    lbz r0, 0x5(r30)
    mr r4, r31
    lwz r12, 0x0(r29)
    mr r3, r29
    lbz r5, 0x4(r30)
    slwi r0, r0, 16
    lbz r6, 0x6(r30)
    rlwimi r0, r5, 24, 0, 7
    lbz r5, 0x7(r30)
    rlwimi r0, r6, 8, 16, 23
    lwz r12, 0x48(r12)
    or r31, r5, r0
    mr r5, r31
    mtctr r12
    bctrl
    mr r3, r31
L_80080758:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_80080774(void)
{
    nofralloc
    stwu r1, -0x130(r1)
    mflr r0
    stw r0, 0x134(r1)
    stmw r23, 0x10c(r1)
    mr r23, r3
    lwz r31, 0x138(r1)
    mr r24, r4
    mr r25, r5
    mr r26, r6
    mr r27, r7
    mr r28, r8
    mr r29, r9
    mr r30, r10
    addi r3, r1, 0x10
    bl fn_8007E7E0
    mr r4, r23
    addi r3, r1, 0x10
    bl fn_8007EA0C
    clrlwi. r0, r3, 24
    opword  0x40820018  // bne .L_800807D8
    addi r3, r1, 0x10
    li r4, -0x1
    bl fn_8007E904
    li r3, 0x0
    opword  0x48000040  // b .L_80080814
L_800807D8:
    stw r31, 0x8(r1)
    mr r4, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    mr r9, r29
    mr r10, r30
    addi r3, r1, 0x10
    bl fn_800808DC
    mr r31, r3
    addi r3, r1, 0x10
    li r4, -0x1
    bl fn_8007E904
    mr r3, r31
L_80080814:
    lmw r23, 0x10c(r1)
    lwz r0, 0x134(r1)
    mtlr r0
    addi r1, r1, 0x130
    blr
}

ASM void fn_80080828(void)
{
    nofralloc
    stwu r1, -0x130(r1)
    mflr r0
    stw r0, 0x134(r1)
    stmw r23, 0x10c(r1)
    mr r23, r3
    lwz r31, 0x138(r1)
    mr r24, r4
    mr r25, r5
    mr r26, r6
    mr r27, r7
    mr r28, r8
    mr r29, r9
    mr r30, r10
    addi r3, r1, 0x10
    bl fn_8007E7E0
    mr r4, r23
    addi r3, r1, 0x10
    bl fn_8007EA84
    clrlwi. r0, r3, 24
    opword  0x40820018  // bne .L_8008088C
    addi r3, r1, 0x10
    li r4, -0x1
    bl fn_8007E904
    li r3, 0x0
    opword  0x48000040  // b .L_800808C8
L_8008088C:
    stw r31, 0x8(r1)
    mr r4, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    mr r9, r29
    mr r10, r30
    addi r3, r1, 0x10
    bl fn_800808DC
    mr r31, r3
    addi r3, r1, 0x10
    li r4, -0x1
    bl fn_8007E904
    mr r3, r31
L_800808C8:
    lmw r23, 0x10c(r1)
    lwz r0, 0x134(r1)
    mtlr r0
    addi r1, r1, 0x130
    blr
}

ASM void fn_800808DC(void)
{
    nofralloc
    stwu r1, -0xd0(r1)
    mflr r0
    lis r11, lbl_8045E2A0@ha
    stw r0, 0xd4(r1)
    stmw r17, 0x94(r1)
    mr r31, r3
    mr r25, r4
    mr r21, r5
    mr r29, r6
    mr r19, r7
    mr r17, r8
    mr r28, r9
    mr r18, r10
    addi r20, r11, lbl_8045E2A0@l
    lwz r22, 0xd8(r1)
    li r27, 0x0
    li r24, 0x0
    li r26, 0x0
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    cmpwi r21, 0x1
    addi r0, r3, 0x1f
    clrrwi r30, r0, 5
    opword  0x40820094  // bne .L_800809D4
    addi r0, r1, 0x67
    clrrwi r23, r0, 5
L_8008094C:
    mr r4, r23
    addi r3, r31, 0x5c
    li r5, 0x20
    li r6, 0x0
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800028  // bge .L_80080990
    cmpwi r3, -0x3
    opword  0x41820010  // beq .L_80080980
    opword  0x880D81B0  // lbz r0, lbl_80539D70@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80080988
L_80080980:
    li r3, 0x0
    opword  0x48000410  // b .L_80080D94
L_80080988:
    bl fn_8004C228
    opword  0x4BFFFFC0  // b .L_8008094C
L_80080990:
    mr r3, r23
    li r4, 0x20
    bl DCInvalidateRange
    mr r3, r23
    bl fn_8007E5F0
    cmpwi r3, 0x3
    opword  0x40820008  // bne .L_800809B0
    li r3, 0x0
L_800809B0:
    lbz r0, 0x5(r23)
    mr r24, r3
    lbz r3, 0x4(r23)
    slwi r0, r0, 16
    lbz r4, 0x6(r23)
    rlwimi r0, r3, 24, 0, 7
    lbz r5, 0x7(r23)
    rlwimi r0, r4, 8, 16, 23
    or r23, r5, r0
L_800809D4:
    cmplwi r18, 0x0
    opword  0x41820008  // beq .L_800809E0
    stw r24, 0x0(r18)
L_800809E0:
    cmpwi r21, 0x1
    opword  0x4082009C  // bne .L_80080A80
    cmpwi r24, 0x0
    opword  0x41820094  // beq .L_80080A80
    cmplwi r29, 0x0
    opword  0x41820010  // beq .L_80080A04
    cmplw r23, r29
    opword  0x40810008  // ble .L_80080A04
    mr r23, r29
L_80080A04:
    cmplwi r25, 0x0
    opword  0x40820028  // bne .L_80080A30
    cmpwi r17, 0x1
    mr r3, r23
    li r4, -0x20
    opword  0x40820008  // bne .L_80080A20
    li r4, 0x20
L_80080A20:
    mr r5, r19
    bl fn_80083868
    li r27, 0x1
    mr r25, r3
L_80080A30:
    cmplwi r25, 0x0
    opword  0x4082000C  // bne .L_80080A40
    li r3, 0x0
    opword  0x48000358  // b .L_80080D94
L_80080A40:
    cmpwi r24, 0x1
    opword  0x4082008C  // bne .L_80080AD0
    mr r3, r30
    mr r5, r19
    li r4, 0x20
    bl fn_80083868
    mr. r26, r3
    opword  0x40820074  // bne .L_80080AD0
    clrlwi r0, r27, 24
    cmplwi r0, 0x1
    opword  0x40820068  // bne .L_80080AD0
    mr r3, r25
    li r4, 0x0
    bl fn_800838F4
    li r3, 0x0
    opword  0x48000318  // b .L_80080D94
L_80080A80:
    cmplwi r25, 0x0
    opword  0x4082003C  // bne .L_80080AC0
    cmplwi r29, 0x0
    subf r3, r28, r30
    opword  0x41820010  // beq .L_80080AA0
    cmplw r3, r29
    opword  0x40810008  // ble .L_80080AA0
    mr r3, r29
L_80080AA0:
    cmpwi r17, 0x1
    li r4, -0x20
    opword  0x40820008  // bne .L_80080AB0
    li r4, 0x20
L_80080AB0:
    mr r5, r19
    bl fn_80083868
    li r27, 0x1
    mr r25, r3
L_80080AC0:
    cmplwi r25, 0x0
    opword  0x4082000C  // bne .L_80080AD0
    li r3, 0x0
    opword  0x480002C8  // b .L_80080D94
L_80080AD0:
    cmpwi r24, 0x0
    opword  0x40820188  // bne .L_80080C5C
    cmplwi r28, 0x0
    li r3, 0x0
    opword  0x4182008C  // beq .L_80080B6C
    addi r0, r1, 0x27
    mr r17, r28
    clrrwi r18, r0, 5
L_80080AF0:
    mr r4, r18
    mr r6, r17
    addi r3, r31, 0x5c
    li r5, 0x20
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800040  // bge .L_80080B4C
    cmpwi r3, -0x3
    opword  0x41820010  // beq .L_80080B24
    opword  0x880D81B0  // lbz r0, lbl_80539D70@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820024  // bne .L_80080B44
L_80080B24:
    clrlwi r0, r27, 24
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_80080B3C
    mr r3, r25
    li r4, 0x0
    bl fn_800838F4
L_80080B3C:
    li r3, 0x0
    opword  0x48000254  // b .L_80080D94
L_80080B44:
    bl fn_8004C228
    opword  0x4BFFFFA8  // b .L_80080AF0
L_80080B4C:
    mr r3, r18
    li r4, 0x20
    bl DCInvalidateRange
    mr r3, r18
    bl fn_8007E5F0
    cmpwi r3, 0x3
    opword  0x40820008  // bne .L_80080B6C
    li r3, 0x0
L_80080B6C:
    cmpwi r3, 0x0
    opword  0x41820014  // beq .L_80080B84
    cmpwi r21, 0x2
    opword  0x4182000C  // beq .L_80080B84
    cmpwi r21, 0x0
    opword  0x40820090  // bne .L_80080C10
L_80080B84:
    cmplwi r29, 0x0
    subf r18, r28, r30
    opword  0x41820010  // beq .L_80080B9C
    cmplw r29, r18
    opword  0x40800008  // bge .L_80080B9C
    mr r18, r29
L_80080B9C:
    mr r17, r28
L_80080BA0:
    mr r4, r25
    mr r5, r18
    mr r6, r17
    addi r3, r31, 0x5c
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800040  // bge .L_80080BFC
    cmpwi r3, -0x3
    opword  0x41820010  // beq .L_80080BD4
    opword  0x880D81B0  // lbz r0, lbl_80539D70@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820024  // bne .L_80080BF4
L_80080BD4:
    clrlwi r0, r27, 24
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_80080BEC
    mr r3, r25
    li r4, 0x0
    bl fn_800838F4
L_80080BEC:
    li r3, 0x0
    opword  0x480001A4  // b .L_80080D94
L_80080BF4:
    bl fn_8004C228
    opword  0x4BFFFFA8  // b .L_80080BA0
L_80080BFC:
    cmplwi r22, 0x0
    opword  0x41820008  // beq .L_80080C08
    stw r18, 0x0(r22)
L_80080C08:
    mr r3, r25
    opword  0x48000188  // b .L_80080D94
L_80080C10:
    cmpwi r3, 0x2
    opword  0x40820028  // bne .L_80080C3C
    mr r3, r31
    mr r4, r25
    mr r5, r30
    mr r6, r29
    mr r8, r28
    mr r9, r22
    li r7, 0x0
    bl fn_80080DA8
    opword  0x4800001C  // b .L_80080C54
L_80080C3C:
    addi r3, r20, 0x0
    addi r6, r20, 0x14
    li r4, 0x143
    opword  0x38A28760  // li r5, lbl_8053B700@sda21
    crclr 6
    bl fn_8008A324
L_80080C54:
    mr r3, r25
    opword  0x4800013C  // b .L_80080D94
L_80080C5C:
    cmpwi r24, 0x1
    opword  0x408200CC  // bne .L_80080D2C
    cmplwi r28, 0x0
    opword  0x4182001C  // beq .L_80080C84
    addi r3, r20, 0x0
    addi r6, r20, 0x38
    li r4, 0x14d
    opword  0x38A28760  // li r5, lbl_8053B700@sda21
    crclr 6
    bl fn_8008A324
L_80080C84:
    mr r4, r26
    mr r5, r30
    addi r3, r31, 0x5c
    li r6, 0x0
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x4080004C  // bge .L_80080CEC
    cmpwi r3, -0x3
    opword  0x41820010  // beq .L_80080CB8
    opword  0x880D81B0  // lbz r0, lbl_80539D70@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820030  // bne .L_80080CE4
L_80080CB8:
    clrlwi r0, r27, 24
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_80080CD0
    mr r3, r25
    li r4, 0x0
    bl fn_800838F4
L_80080CD0:
    mr r3, r26
    li r4, 0x0
    bl fn_800838F4
    li r3, 0x0
    opword  0x480000B4  // b .L_80080D94
L_80080CE4:
    bl fn_8004C228
    opword  0x4BFFFF9C  // b .L_80080C84
L_80080CEC:
    mr r3, r26
    mr r4, r30
    bl DCInvalidateRange
    mr r3, r26
    mr r4, r25
    mr r5, r23
    mr r6, r28
    bl fn_8007E23C
    mr r3, r26
    li r4, 0x0
    bl fn_800838F4
    cmplwi r22, 0x0
    opword  0x41820008  // beq .L_80080D24
    stw r23, 0x0(r22)
L_80080D24:
    mr r3, r25
    opword  0x4800006C  // b .L_80080D94
L_80080D2C:
    cmpwi r24, 0x2
    opword  0x4082004C  // bne .L_80080D7C
    mr r3, r31
    mr r4, r25
    mr r5, r30
    mr r6, r23
    mr r7, r28
    mr r9, r22
    li r8, 0x0
    bl fn_80080DA8
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_80080D74
    clrlwi. r0, r27, 24
    opword  0x41820010  // beq .L_80080D70
    mr r3, r25
    li r4, 0x0
    bl fn_800838F4
L_80080D70:
    li r25, 0x0
L_80080D74:
    mr r3, r25
    opword  0x4800001C  // b .L_80080D94
L_80080D7C:
    clrlwi. r0, r27, 24
    opword  0x41820010  // beq .L_80080D90
    mr r3, r25
    li r4, 0x0
    bl fn_800838F4
L_80080D90:
    li r3, 0x0
L_80080D94:
    lmw r17, 0x94(r1)
    lwz r0, 0xd4(r1)
    mtlr r0
    addi r1, r1, 0xd0
    blr
}

ASM void fn_80080DA8(void)
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
    opword  0x880D8CB8  // lbz r0, lbl_8053A878@sda21(r0)
    mr r24, r3
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_80080DFC
    lis r3, lbl_804BA02C@ha
    addi r3, r3, lbl_804BA02C@l
    bl OSInitMutex
    li r0, 0x1
    opword  0x980D8CB8  // stb r0, lbl_8053A878@sda21(r0)
L_80080DFC:
    mr r3, r24
    bl OSRestoreInterrupts
    lis r3, lbl_804BA02C@ha
    addi r3, r3, lbl_804BA02C@l
    bl OSLockMutex
    opword  0x830D81B4  // lwz r24, lbl_80539D74@sda21(r0)
    li r5, -0x20
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r24
    bl fn_800838C8
    add r0, r3, r24
    cmplwi r29, 0x0
    opword  0x906D8C88  // stw r3, lbl_8053A848@sda21(r0)
    opword  0x900D8C8C  // stw r0, lbl_8053A84C@sda21(r0)
    opword  0x41820028  // beq .L_80080E5C
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    li r4, 0x1120
    li r5, -0x4
    bl fn_800838C8
    addi r0, r3, 0x1120
    opword  0x906D8C90  // stw r3, lbl_8053A850@sda21(r0)
    opword  0x900D8C94  // stw r0, lbl_8053A854@sda21(r0)
    opword  0x906D8C98  // stw r3, lbl_8053A858@sda21(r0)
    opword  0x4800000C  // b .L_80080E64
L_80080E5C:
    li r0, 0x0
    opword  0x900D8C90  // stw r0, lbl_8053A850@sda21(r0)
L_80080E64:
    subf r3, r30, r27
    li r0, 0x0
    cmplwi r31, 0x0
    opword  0x932D8CA8  // stw r25, lbl_8053A868@sda21(r0)
    opword  0x93CD8C9C  // stw r30, lbl_8053A85C@sda21(r0)
    opword  0x906D8CA0  // stw r3, lbl_8053A860@sda21(r0)
    opword  0x93AD8CAC  // stw r29, lbl_8053A86C@sda21(r0)
    opword  0x900D8CB0  // stw r0, lbl_8053A870@sda21(r0)
    opword  0x938D8CB4  // stw r28, lbl_8053A874@sda21(r0)
    opword  0x4182000C  // beq .L_80080E94
    mr r3, r31
    opword  0x48000008  // b .L_80080E98
L_80080E94:
    opword  0x386D8CC0  // li r3, lbl_8053A880@sda21
L_80080E98:
    opword  0x906D8CBC  // stw r3, lbl_8053A87C@sda21(r0)
    li r0, 0x0
    stw r0, 0x0(r3)
    bl fn_800811D4
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_80080EC0
    mr r4, r26
    bl fn_80080F1C
    mr r0, r3
    opword  0x48000008  // b .L_80080EC4
L_80080EC0:
    li r0, -0x1
L_80080EC4:
    opword  0x806D8C88  // lwz r3, lbl_8053A848@sda21(r0)
    mr r24, r0
    li r4, 0x0
    bl fn_800838F4
    opword  0x806D8C90  // lwz r3, lbl_8053A850@sda21(r0)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_80080EE8
    li r4, 0x0
    bl fn_800838F4
L_80080EE8:
    opword  0x808D8CBC  // lwz r4, lbl_8053A87C@sda21(r0)
    mr r3, r26
    lwz r4, 0x0(r4)
    bl fn_80040FEC
    lis r3, lbl_804BA02C@ha
    addi r3, r3, lbl_804BA02C@l
    bl OSUnlockMutex
    mr r3, r24
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80080F1C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    mr r29, r4
    li r4, 0x0
    lbz r5, 0x0(r3)
    cmpwi r5, 0x59
    opword  0x40820028  // bne .L_80080F74
    lbz r5, 0x1(r3)
    cmpwi r5, 0x61
    opword  0x4082001C  // bne .L_80080F74
    lbz r5, 0x2(r3)
    cmpwi r5, 0x7a
    opword  0x40820010  // bne .L_80080F74
    lbz r5, 0x3(r3)
    cmpwi r5, 0x30
    opword  0x4182000C  // beq .L_80080F7C
L_80080F74:
    li r3, -0x1
    opword  0x48000240  // b .L_800811B8
L_80080F7C:
    opword  0x80ED8CAC  // lwz r7, lbl_8053A86C@sda21(r0)
    lwz r6, 0x4(r3)
    opword  0x80AD8CB4  // lwz r5, lbl_8053A874@sda21(r0)
    subf r6, r7, r6
    add r31, r29, r6
    add r5, r29, r5
    cmplw r31, r5
    opword  0x40810008  // ble .L_80080FA0
    mr r31, r5
L_80080FA0:
    addi r3, r3, 0x10
L_80080FA4:
    cmpwi r4, 0x0
    opword  0x4082003C  // bne .L_80080FE4
    opword  0x800D8CA4  // lwz r0, lbl_8053A864@sda21(r0)
    cmplw r3, r0
    opword  0x40810024  // ble .L_80080FD8
    opword  0x800D8CA0  // lwz r0, lbl_8053A860@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_80080FD8
    bl fn_800812A8
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80080FD8
    li r3, -0x1
    opword  0x480001E4  // b .L_800811B8
L_80080FD8:
    lbz r0, 0x0(r3)
    li r4, 0x8
    addi r3, r3, 0x1
L_80080FE4:
    rlwinm. r5, r0, 0, 24, 24
    opword  0x41820094  // beq .L_8008107C
    opword  0x80CD8CAC  // lwz r6, lbl_8053A86C@sda21(r0)
    cmplwi r6, 0x0
    opword  0x4182005C  // beq .L_80081050
    opword  0x80AD8CB0  // lwz r5, lbl_8053A870@sda21(r0)
    cmplw r5, r6
    opword  0x4180001C  // blt .L_8008101C
    lbz r5, 0x0(r3)
    addi r30, r30, 0x1
    stb r5, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x41820194  // beq .L_800811AC
L_8008101C:
    opword  0x80CD8C98  // lwz r6, lbl_8053A858@sda21(r0)
    lbz r7, 0x0(r3)
    addi r5, r6, 0x1
    opword  0x90AD8C98  // stw r5, lbl_8053A858@sda21(r0)
    stb r7, 0x0(r6)
    opword  0x80CD8C98  // lwz r6, lbl_8053A858@sda21(r0)
    opword  0x80AD8C94  // lwz r5, lbl_8053A854@sda21(r0)
    cmplw r6, r5
    opword  0x4082000C  // bne .L_80081048
    opword  0x80AD8C90  // lwz r5, lbl_8053A850@sda21(r0)
    opword  0x90AD8C98  // stw r5, lbl_8053A858@sda21(r0)
L_80081048:
    addi r3, r3, 0x1
    opword  0x48000020  // b .L_8008106C
L_80081050:
    lbz r5, 0x0(r3)
    addi r3, r3, 0x1
    addi r30, r30, 0x1
    stb r5, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x41820144  // beq .L_800811AC
L_8008106C:
    opword  0x80AD8CB0  // lwz r5, lbl_8053A870@sda21(r0)
    addi r5, r5, 0x1
    opword  0x90AD8CB0  // stw r5, lbl_8053A870@sda21(r0)
    opword  0x48000124  // b .L_8008119C
L_8008107C:
    opword  0x810D8CAC  // lwz r8, lbl_8053A86C@sda21(r0)
    lbz r6, 0x0(r3)
    cmplwi r8, 0x0
    lbz r9, 0x1(r3)
    srawi r5, r6, 4
    rlwimi r9, r6, 8, 20, 23
    addi r3, r3, 0x2
    opword  0x4182002C  // beq .L_800810C4
    opword  0x80CD8C98  // lwz r6, lbl_8053A858@sda21(r0)
    opword  0x80ED8C90  // lwz r7, lbl_8053A850@sda21(r0)
    subf r6, r9, r6
    subi r9, r6, 0x1
    cmplw r9, r7
    opword  0x4080001C  // bge .L_800810CC
    opword  0x80CD8C94  // lwz r6, lbl_8053A854@sda21(r0)
    subf r6, r7, r6
    add r9, r9, r6
    opword  0x4800000C  // b .L_800810CC
L_800810C4:
    subf r6, r9, r29
    subi r9, r6, 0x1
L_800810CC:
    cmpwi r5, 0x0
    opword  0x40820014  // bne .L_800810E4
    lbz r5, 0x0(r3)
    addi r3, r3, 0x1
    addi r5, r5, 0x12
    opword  0x48000008  // b .L_800810E8
L_800810E4:
    addi r5, r5, 0x2
L_800810E8:
    cmplwi r8, 0x0
    opword  0x41820080  // beq .L_8008116C
L_800810F0:
    opword  0x80ED8CB0  // lwz r7, lbl_8053A870@sda21(r0)
    opword  0x80CD8CAC  // lwz r6, lbl_8053A86C@sda21(r0)
    cmplw r7, r6
    opword  0x4180001C  // blt .L_80081118
    lbz r6, 0x0(r9)
    addi r30, r30, 0x1
    stb r6, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x41820088  // beq .L_8008119C
L_80081118:
    opword  0x80ED8C98  // lwz r7, lbl_8053A858@sda21(r0)
    lbz r8, 0x0(r9)
    addi r6, r7, 0x1
    opword  0x90CD8C98  // stw r6, lbl_8053A858@sda21(r0)
    stb r8, 0x0(r7)
    opword  0x80CD8C98  // lwz r6, lbl_8053A858@sda21(r0)
    opword  0x80ED8C94  // lwz r7, lbl_8053A854@sda21(r0)
    cmplw r6, r7
    opword  0x4082000C  // bne .L_80081144
    opword  0x80CD8C90  // lwz r6, lbl_8053A850@sda21(r0)
    opword  0x90CD8C98  // stw r6, lbl_8053A858@sda21(r0)
L_80081144:
    addi r9, r9, 0x1
    cmplw r9, r7
    opword  0x40820008  // bne .L_80081154
    opword  0x812D8C90  // lwz r9, lbl_8053A850@sda21(r0)
L_80081154:
    opword  0x80CD8CB0  // lwz r6, lbl_8053A870@sda21(r0)
    subic. r5, r5, 0x1
    addi r6, r6, 0x1
    opword  0x90CD8CB0  // stw r6, lbl_8053A870@sda21(r0)
    opword  0x4082FF8C  // bne .L_800810F0
    opword  0x48000034  // b .L_8008119C
L_8008116C:
    lbz r6, 0x0(r9)
    addi r30, r30, 0x1
    stb r6, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x4182001C  // beq .L_8008119C
    opword  0x80CD8CB0  // lwz r6, lbl_8053A870@sda21(r0)
    subic. r5, r5, 0x1
    addi r9, r9, 0x1
    addi r6, r6, 0x1
    opword  0x90CD8CB0  // stw r6, lbl_8053A870@sda21(r0)
    opword  0x4082FFD4  // bne .L_8008116C
L_8008119C:
    cmplw r29, r31
    slwi r0, r0, 1
    subi r4, r4, 0x1
    opword  0x4180FDFC  // blt .L_80080FA4
L_800811AC:
    opword  0x808D8CBC  // lwz r4, lbl_8053A87C@sda21(r0)
    li r3, 0x0
    stw r30, 0x0(r4)
L_800811B8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800811D4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    opword  0x808D8C8C  // lwz r4, lbl_8053A84C@sda21(r0)
    opword  0x806D8C88  // lwz r3, lbl_8053A848@sda21(r0)
    subi r0, r4, 0x19
    opword  0x80AD8CA0  // lwz r5, lbl_8053A860@sda21(r0)
    subf r4, r3, r4
    opword  0x900D8CA4  // stw r0, lbl_8053A864@sda21(r0)
    cmplw r5, r4
    mr r29, r3
    mr r31, r4
    opword  0x40800008  // bge .L_80081218
    mr r31, r5
L_80081218:
    mr r30, r31
L_8008121C:
    opword  0x806D8CA8  // lwz r3, lbl_8053A868@sda21(r0)
    mr r4, r29
    opword  0x80CD8C9C  // lwz r6, lbl_8053A85C@sda21(r0)
    mr r5, r30
    addi r3, r3, 0x5c
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800028  // bge .L_80081264
    cmpwi r3, -0x3
    opword  0x41820010  // beq .L_80081254
    opword  0x880D81B0  // lbz r0, lbl_80539D70@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8008125C
L_80081254:
    li r3, 0x0
    opword  0x48000034  // b .L_8008128C
L_8008125C:
    bl fn_8004C228
    opword  0x4BFFFFBC  // b .L_8008121C
L_80081264:
    mr r3, r29
    mr r4, r31
    bl DCInvalidateRange
    opword  0x808D8C9C  // lwz r4, lbl_8053A85C@sda21(r0)
    mr r3, r29
    opword  0x800D8CA0  // lwz r0, lbl_8053A860@sda21(r0)
    add r4, r4, r31
    subf r0, r31, r0
    opword  0x908D8C9C  // stw r4, lbl_8053A85C@sda21(r0)
    opword  0x900D8CA0  // stw r0, lbl_8053A860@sda21(r0)
L_8008128C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800812A8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r4, r3
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    opword  0x800D8C8C  // lwz r0, lbl_8053A84C@sda21(r0)
    subf r29, r4, r0
    clrlwi. r5, r29, 27
    opword  0x41820014  // beq .L_800812E8
    opword  0x806D8C88  // lwz r3, lbl_8053A848@sda21(r0)
    addi r0, r3, 0x20
    subf r28, r5, r0
    opword  0x48000008  // b .L_800812EC
L_800812E8:
    opword  0x838D8C88  // lwz r28, lbl_8053A848@sda21(r0)
L_800812EC:
    mr r3, r28
    mr r5, r29
    bl memcpy
    opword  0x800D8C8C  // lwz r0, lbl_8053A84C@sda21(r0)
    add r29, r28, r29
    opword  0x806D8CA0  // lwz r3, lbl_8053A860@sda21(r0)
    subf r30, r29, r0
    cmplw r30, r3
    opword  0x40810008  // ble .L_80081314
    mr r30, r3
L_80081314:
    lis r3, fn_800813B4@ha
    addi r31, r3, fn_800813B4@l
L_8008131C:
    opword  0x806D8CA8  // lwz r3, lbl_8053A868@sda21(r0)
    mr r4, r29
    opword  0x80CD8C9C  // lwz r6, lbl_8053A85C@sda21(r0)
    mr r5, r30
    addi r3, r3, 0x5c
    li r7, 0x2
    bl fn_80048874
    cmpwi r3, 0x0
    opword  0x40800024  // bge .L_80081360
    cmpwi r3, -0x3
    opword  0x4182000C  // beq .L_80081350
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_80081358
L_80081350:
    li r3, 0x0
    opword  0x48000040  // b .L_80081394
L_80081358:
    bl fn_8004C228
    opword  0x4BFFFFC0  // b .L_8008131C
L_80081360:
    mr r3, r29
    mr r4, r30
    bl DCInvalidateRange
    opword  0x800D8CA0  // lwz r0, lbl_8053A860@sda21(r0)
    opword  0x806D8C9C  // lwz r3, lbl_8053A85C@sda21(r0)
    subf. r0, r30, r0
    add r3, r3, r30
    opword  0x906D8C9C  // stw r3, lbl_8053A85C@sda21(r0)
    opword  0x900D8CA0  // stw r0, lbl_8053A860@sda21(r0)
    opword  0x4082000C  // bne .L_80081390
    add r0, r29, r30
    opword  0x900D8CA4  // stw r0, lbl_8053A864@sda21(r0)
L_80081390:
    mr r3, r28
L_80081394:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800813B4(void)
{
    nofralloc
    opword  0x886D81B0  // lbz r3, lbl_80539D70@sda21(r0)
    blr
}

