#include "types.h"

extern f32 lbl_8045E0F8;
extern f32 lbl_8045E10C;
extern f32 lbl_80498B90;
extern f32 lbl_80498BB0;
extern f32 lbl_80498C00;
extern f32 lbl_80498C10;
extern f32 lbl_8052E7D8;
extern f32 lbl_8052E844;
extern f32 lbl_8053A7A0;
extern f32 lbl_8053A7F0;
extern f32 lbl_8053A8A0;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053A8AC;
extern f32 lbl_8053B6D0;

extern void DCInvalidateRange(void);
extern void OSInitMutex(void);
extern void OSLockMutex(void);
extern void OSUnlockMutex(void);
extern void dtor_80084580(void);
extern void AbsS32(void);
extern void JKRAram_aramToMainRam_addr(void);
extern void fn_8007BC30(void);
extern void fn_8007BC7C(void);
extern void fn_8007BD24(void);
extern void fn_8007C640(void);
extern void fn_8007C8F0(void);
extern void fn_8007E6F4(void);
extern void fn_8007E75C(void);
extern void fn_8007E854(void);
extern void fn_8007ED6C(void);
extern void fn_80080828(void);
extern void fn_80083868(void);
extern void fn_800838C8(void);
extern void fn_800838F4(void);
extern void fn_8008393C(void);
extern void fn_80083B50(void);
extern void fn_800842AC(void);
extern void fn_8008440C(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80086F58(void);
extern void fn_80087010(void);
extern void fn_800870C8(void);
extern void fn_80087298(void);
extern void fn_8008A324(void);
extern void memset(void);

ASM void fn_80079EA8(void);
ASM void fn_80079EFC(void);
ASM void fn_80079F38(void);
ASM void fn_80079FE8(void);
ASM void fn_8007A138(void);
ASM void fn_8007A198(void);
ASM void fn_8007A298(void);
ASM void fn_8007A398(void);
ASM void fn_8007A6CC(void);
ASM void fn_8007A7F0(void);
ASM void fn_8007A8E8(void);
ASM void fn_8007A9A8(void);
ASM void fn_8007AAF8(void);
ASM void fn_8007AC2C(void);
ASM void fn_8007AC98(void);
ASM void fn_8007AD54(void);
ASM void fn_8007ADFC(void);
ASM void fn_8007AEB0(void);
ASM void fn_8007AF88(void);
ASM void fn_8007B030(void);
ASM void fn_8007B0B0(void);
ASM void fn_8007B138(void);

ASM void fn_80079EA8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_80079EE0
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80079EE0
    mr r3, r30
    bl dtor_80084580
L_80079EE0:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80079EFC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8007BC30
    lis r4, lbl_80498BB0@ha
    mr r3, r31
    addi r0, r4, lbl_80498BB0@l
    stw r0, 0x0(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80079F38(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    li r5, 0x2
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8007BC7C
    lis r4, lbl_80498BB0@ha
    mr r3, r29
    addi r0, r4, lbl_80498BB0@l
    mr r4, r30
    stw r0, 0x0(r29)
    stw r31, 0x60(r29)
    bl fn_8007A398
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_80079F90
    mr r3, r29
    opword  0x48000040  // b .L_80079FCC
L_80079F90:
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
L_80079FCC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80079FE8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr. r30, r3
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    opword  0x41820108  // beq .L_8007A114
    lis r3, lbl_80498BB0@ha
    addi r0, r3, lbl_80498BB0@l
    stw r0, 0x0(r30)
    lbz r0, 0x30(r30)
    cmplwi r0, 0x1
    opword  0x408200D4  // bne .L_8007A0F8
    lwz r0, 0x44(r30)
    cmplwi r0, 0x0
    opword  0x4182004C  // beq .L_8007A07C
    lwz r29, 0x4c(r30)
    li r28, 0x0
    opword  0x48000020  // b .L_8007A05C
L_8007A040:
    lwz r3, 0x10(r29)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007A054
    lwz r4, 0x38(r30)
    bl fn_800838F4
L_8007A054:
    addi r29, r29, 0x14
    addi r28, r28, 0x1
L_8007A05C:
    lwz r3, 0x44(r30)
    lwz r0, 0x8(r3)
    cmplw r28, r0
    opword  0x4180FFD8  // blt .L_8007A040
    lwz r4, 0x38(r30)
    bl fn_800838F4
    li r0, 0x0
    stw r0, 0x44(r30)
L_8007A07C:
    lwz r3, 0x50(r30)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_8007A098
    li r4, 0x0
    bl fn_800838F4
    li r0, 0x0
    stw r0, 0x50(r30)
L_8007A098:
    lwz r3, 0x68(r30)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007A0BC
    opword  0x41820018  // beq .L_8007A0BC
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007A0BC:
    lwz r3, 0x64(r30)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007A0E0
    opword  0x41820018  // beq .L_8007A0E0
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007A0E0:
    lis r3, lbl_8052E844@ha
    addi r4, r30, 0x18
    addi r3, r3, lbl_8052E844@l
    bl fn_80087298
    li r0, 0x0
    stb r0, 0x30(r30)
L_8007A0F8:
    mr r3, r30
    li r4, 0x0
    bl fn_8007BD24
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007A114
    mr r3, r30
    bl dtor_80084580
L_8007A114:
    lwz r0, 0x24(r1)
    mr r3, r30
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007A138(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_8007A17C
    lis r5, lbl_80498B90@ha
    li r4, 0x0
    addi r0, r5, lbl_80498B90@l
    stw r0, 0x0(r30)
    bl fn_8007E75C
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007A17C
    mr r3, r30
    bl dtor_80084580
L_8007A17C:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007A198(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr. r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x4080000C  // bge .L_8007A1C8
    li r3, 0x0
    opword  0x480000B8  // b .L_8007A27C
L_8007A1C8:
    opword  0x808D8CEC  // lwz r4, lbl_8053A8AC@sda21(r0)
    mr r3, r30
    bl fn_8007C8F0
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007A1E4
    li r3, 0x0
    opword  0x4800009C  // b .L_8007A27C
L_8007A1E4:
    li r4, 0x0
    li r3, 0x2
    stb r4, 0x30(r29)
    li r0, 0x1
    stw r31, 0x60(r29)
    stb r3, 0x3c(r29)
    stw r0, 0x34(r29)
    stw r3, 0x58(r29)
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    stw r0, 0x38(r29)
    stw r30, 0x40(r29)
    opword  0x800D8CE0  // lwz r0, lbl_8053A8A0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8007A224
    opword  0x93AD8CE0  // stw r29, lbl_8053A8A0@sda21(r0)
    opword  0x908D8C30  // stw r4, lbl_8053A7F0@sda21(r0)
L_8007A224:
    mr r3, r29
    mr r4, r30
    bl fn_8007A398
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_8007A240
    li r3, 0x0
    opword  0x48000040  // b .L_8007A27C
L_8007A240:
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
    li r3, 0x1
    stb r0, 0x30(r29)
L_8007A27C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007A298(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x800D8CE0  // lwz r0, lbl_8053A8A0@sda21(r0)
    cmplw r0, r29
    opword  0x4082000C  // bne .L_8007A2C8
    li r0, 0x0
    opword  0x900D8CE0  // stw r0, lbl_8053A8A0@sda21(r0)
L_8007A2C8:
    lwz r0, 0x44(r29)
    cmplwi r0, 0x0
    opword  0x4182004C  // beq .L_8007A31C
    lwz r31, 0x4c(r29)
    li r30, 0x0
    opword  0x48000020  // b .L_8007A2FC
L_8007A2E0:
    lwz r3, 0x10(r31)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007A2F4
    lwz r4, 0x38(r29)
    bl fn_800838F4
L_8007A2F4:
    addi r31, r31, 0x14
    addi r30, r30, 0x1
L_8007A2FC:
    lwz r3, 0x44(r29)
    lwz r0, 0x8(r3)
    cmplw r30, r0
    opword  0x4180FFD8  // blt .L_8007A2E0
    lwz r4, 0x38(r29)
    bl fn_800838F4
    li r0, 0x0
    stw r0, 0x44(r29)
L_8007A31C:
    lwz r3, 0x68(r29)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007A340
    opword  0x41820018  // beq .L_8007A340
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007A340:
    lwz r3, 0x64(r29)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007A364
    opword  0x41820018  // beq .L_8007A364
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007A364:
    lis r3, lbl_8052E844@ha
    addi r4, r29, 0x18
    addi r3, r3, lbl_8052E844@l
    bl fn_80087298
    li r0, 0x0
    stb r0, 0x30(r29)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007A398(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    li r5, -0x4
    stw r0, 0x34(r1)
    li r0, 0x0
    stmw r27, 0x1c(r1)
    mr r28, r3
    mr r29, r4
    stw r0, 0x44(r3)
    li r3, 0xf8
    stw r0, 0x48(r28)
    stw r0, 0x4c(r28)
    stw r0, 0x54(r28)
    stw r0, 0x64(r28)
    lwz r0, 0x60(r28)
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_8007A3E4
    li r5, 0x4
L_8007A3E4:
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_8007A3FC
    mr r4, r29
    bl fn_8007E854
    mr r0, r3
L_8007A3FC:
    stw r0, 0x68(r28)
    lwz r0, 0x68(r28)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8007A41C
    li r0, 0x0
    li r3, 0x0
    stb r0, 0x3c(r28)
    opword  0x480002A0  // b .L_8007A6B8
L_8007A41C:
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    li r4, 0x20
    li r5, -0x20
    bl fn_800838C8
    mr. r30, r3
    opword  0x40820010  // bne .L_8007A440
    li r0, 0x0
    stb r0, 0x3c(r28)
    opword  0x4800022C  // b .L_8007A668
L_8007A440:
    li r0, 0x0
    mr r3, r29
    stw r0, 0x8(r1)
    mr r4, r30
    addi r10, r28, 0x5c
    li r5, 0x1
    li r6, 0x20
    li r7, 0x0
    li r8, 0x1
    li r9, 0x0
    bl fn_80080828
    mr r3, r30
    li r4, 0x20
    bl DCInvalidateRange
    lwz r0, 0x60(r28)
    li r31, -0x20
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_8007A48C
    li r31, 0x20
L_8007A48C:
    lwz r3, 0xc(r30)
    mr r4, r31
    lwz r5, 0x38(r28)
    addi r0, r3, 0x1f
    clrrwi r27, r0, 5
    mr r3, r27
    bl fn_80083868
    stw r3, 0x44(r28)
    lwz r4, 0x44(r28)
    cmplwi r4, 0x0
    opword  0x40820010  // bne .L_8007A4C4
    li r0, 0x0
    stb r0, 0x3c(r28)
    opword  0x480001A8  // b .L_8007A668
L_8007A4C4:
    li r0, 0x0
    mr r3, r29
    stw r0, 0x8(r1)
    mr r6, r27
    li r5, 0x1
    li r7, 0x0
    li r8, 0x1
    li r9, 0x20
    li r10, 0x0
    bl fn_80080828
    lwz r3, 0x44(r28)
    mr r4, r27
    bl DCInvalidateRange
    lwz r4, 0x44(r28)
    li r0, 0x0
    li r5, 0x0
    lwz r3, 0x4(r4)
    add r3, r4, r3
    stw r3, 0x48(r28)
    lwz r4, 0x44(r28)
    lwz r3, 0xc(r4)
    add r3, r4, r3
    stw r3, 0x4c(r28)
    lwz r4, 0x44(r28)
    lwz r3, 0x14(r4)
    add r3, r4, r3
    stw r3, 0x54(r28)
    stw r0, 0x50(r28)
    lwz r3, 0x44(r28)
    lwz r4, 0x4c(r28)
    lwz r0, 0x8(r3)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x40810028  // ble .L_8007A570
L_8007A54C:
    lwz r3, 0x4(r4)
    extrwi. r0, r3, 1, 7
    srwi r3, r3, 24
    opword  0x41820010  // beq .L_8007A568
    rlwinm r0, r3, 0, 29, 29
    or r0, r5, r0
    clrlwi r5, r0, 24
L_8007A568:
    addi r4, r4, 0x14
    opword  0x4200FFE0  // bdnz .L_8007A54C
L_8007A570:
    clrlwi. r0, r5, 24
    opword  0x41820060  // beq .L_8007A5D4
    mr r3, r31
    bl AbsS32
    lwz r4, 0x44(r28)
    lwz r5, 0x38(r28)
    lwz r0, 0x8(r4)
    mr r4, r3
    slwi r3, r0, 2
    bl fn_80083868
    stw r3, 0x50(r28)
    lwz r3, 0x50(r28)
    cmplwi r3, 0x0
    opword  0x4082001C  // bne .L_8007A5C0
    lwz r3, 0x44(r28)
    li r4, 0x0
    bl fn_800838F4
    li r0, 0x0
    stb r0, 0x3c(r28)
    opword  0x480000AC  // b .L_8007A668
L_8007A5C0:
    lwz r5, 0x44(r28)
    li r4, 0x0
    lwz r0, 0x8(r5)
    slwi r5, r0, 2
    bl memset
L_8007A5D4:
    lwz r3, 0x60(r28)
    lwz r4, 0x10(r30)
    opword  0x80CD8BE0  // lwz r6, lbl_8053A7A0@sda21(r0)
    subfic r5, r3, 0x1
    subi r0, r3, 0x1
    addi r4, r4, 0x1f
    or r0, r5, r0
    lwz r3, 0x94(r6)
    clrrwi r4, r4, 5
    srwi r5, r0, 31
    bl fn_8007B030
    stw r3, 0x64(r28)
    lwz r4, 0x64(r28)
    cmplwi r4, 0x0
    opword  0x40820038  // bne .L_8007A644
    lwz r3, 0x44(r28)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007A624
    li r4, 0x0
    bl fn_800838F4
L_8007A624:
    lwz r3, 0x50(r28)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007A638
    li r4, 0x0
    bl fn_800838F4
L_8007A638:
    li r0, 0x0
    stb r0, 0x3c(r28)
    opword  0x48000028  // b .L_8007A668
L_8007A644:
    lwz r6, 0x8(r30)
    mr r3, r29
    lwz r0, 0xc(r30)
    li r5, 0x1
    lwz r4, 0x14(r4)
    li r7, 0x0
    add r6, r6, r0
    li r8, 0x0
    bl fn_8007ED6C
L_8007A668:
    cmplwi r30, 0x0
    opword  0x41820010  // beq .L_8007A67C
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r30
    bl fn_8008393C
L_8007A67C:
    lbz r0, 0x3c(r28)
    cmplwi r0, 0x0
    opword  0x40820030  // bne .L_8007A6B4
    lwz r3, 0x68(r28)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007A6AC
    opword  0x41820018  // beq .L_8007A6AC
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007A6AC:
    li r3, 0x0
    opword  0x48000008  // b .L_8007A6B8
L_8007A6B4:
    li r3, 0x1
L_8007A6B8:
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007A6CC(void)
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
    opword  0x40820008  // bne .L_8007A6FC
    addi r30, r1, 0xc
L_8007A6FC:
    lwz r3, 0x4(r29)
    rlwinm. r0, r3, 8, 29, 29
    srwi r3, r3, 24
    opword  0x4082000C  // bne .L_8007A714
    li r31, 0x0
    opword  0x48000018  // b .L_8007A728
L_8007A714:
    rlwinm. r0, r3, 0, 24, 24
    opword  0x4182000C  // beq .L_8007A724
    li r31, 0x2
    opword  0x48000008  // b .L_8007A728
L_8007A724:
    li r31, 0x1
L_8007A728:
    lwz r0, 0x10(r29)
    cmplwi r0, 0x0
    opword  0x4082006C  // bne .L_8007A79C
    lwz r3, 0x64(r28)
    mr r6, r31
    lwz r8, 0x8(r29)
    addi r7, r1, 0x8
    lwz r0, 0x14(r3)
    lwz r4, 0xc(r29)
    lwz r5, 0x38(r28)
    add r3, r8, r0
    bl fn_8007A9A8
    cmplwi r3, 0x0
    stw r3, 0x0(r30)
    opword  0x4082000C  // bne .L_8007A76C
    li r3, 0x0
    opword  0x48000068  // b .L_8007A7D0
L_8007A76C:
    lwz r0, 0x8(r1)
    cmpwi r31, 0x2
    stw r0, 0x10(r29)
    opword  0x40820054  // bne .L_8007A7CC
    mr r3, r28
    mr r4, r29
    lwz r12, 0x0(r28)
    lwz r5, 0x0(r30)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    opword  0x48000034  // b .L_8007A7CC
L_8007A79C:
    cmpwi r31, 0x2
    opword  0x40820024  // bne .L_8007A7C4
    mr r3, r28
    mr r4, r29
    lwz r12, 0x0(r28)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    stw r3, 0x0(r30)
    opword  0x4800000C  // b .L_8007A7CC
L_8007A7C4:
    lwz r0, 0xc(r29)
    stw r0, 0x0(r30)
L_8007A7CC:
    lwz r3, 0x10(r29)
L_8007A7D0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007A7F0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r28, r5
    mr r29, r6
    mr r27, r4
    mr r30, r7
    lwz r31, 0xc(r6)
    cmplw r31, r28
    opword  0x40810008  // ble .L_8007A820
    mr r31, r28
L_8007A820:
    lwz r4, 0x4(r29)
    rlwinm. r0, r4, 8, 29, 29
    srwi r4, r4, 24
    opword  0x4082000C  // bne .L_8007A838
    li r7, 0x0
    opword  0x48000018  // b .L_8007A84C
L_8007A838:
    rlwinm. r0, r4, 0, 24, 24
    opword  0x4182000C  // beq .L_8007A848
    li r7, 0x2
    opword  0x48000008  // b .L_8007A84C
L_8007A848:
    li r7, 0x1
L_8007A84C:
    lwz r0, 0x10(r29)
    cmplwi r0, 0x0
    opword  0x4082002C  // bne .L_8007A880
    lwz r3, 0x64(r3)
    mr r4, r31
    lwz r8, 0x8(r29)
    mr r5, r27
    lwz r0, 0x14(r3)
    clrrwi r6, r28, 5
    add r3, r8, r0
    bl fn_8007A8E8
    mr r31, r3
    opword  0x48000048  // b .L_8007A8C4
L_8007A880:
    cmpwi r7, 0x2
    opword  0x40820024  // bne .L_8007A8A8
    lwz r12, 0x0(r3)
    mr r4, r29
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8007A8A8
    mr r31, r3
L_8007A8A8:
    cmplw r31, r28
    opword  0x40810008  // ble .L_8007A8B4
    mr r31, r28
L_8007A8B4:
    lwz r4, 0x10(r29)
    mr r3, r27
    mr r5, r31
    bl fn_800842AC
L_8007A8C4:
    cmplwi r30, 0x0
    opword  0x41820008  // beq .L_8007A8D0
    stw r31, 0x0(r30)
L_8007A8D0:
    mr r3, r27
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007A8E8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r7, 0x0
    clrrwi r6, r6, 5
    stw r0, 0x14(r1)
    addi r0, r4, 0x1f
    clrrwi r0, r0, 5
    opword  0x41820014  // beq .L_8007A918
    opword  0x4180006C  // blt .L_8007A974
    cmpwi r7, 0x3
    opword  0x40800064  // bge .L_8007A974
    opword  0x48000038  // b .L_8007A94C
L_8007A918:
    cmplw r0, r6
    opword  0x40810008  // ble .L_8007A924
    mr r0, r6
L_8007A924:
    mr r4, r5
    mr r7, r6
    mr r5, r0
    addi r10, r1, 0x8
    li r6, 0x0
    li r8, 0x0
    li r9, -0x1
    bl JKRAram_aramToMainRam_addr
    lwz r3, 0x8(r1)
    opword  0x48000050  // b .L_8007A998
L_8007A94C:
    mr r4, r5
    mr r5, r0
    mr r7, r6
    addi r10, r1, 0x8
    li r6, 0x1
    li r8, 0x0
    li r9, -0x1
    bl JKRAram_aramToMainRam_addr
    lwz r3, 0x8(r1)
    opword  0x48000028  // b .L_8007A998
L_8007A974:
    lis r3, lbl_8045E0F8@ha
    lis r5, lbl_8045E10C@ha
    addi r6, r5, lbl_8045E10C@l
    li r4, 0x28f
    addi r3, r3, lbl_8045E0F8@l
    opword  0x38A28730  // li r5, lbl_8053B6D0@sda21
    crclr 6
    bl fn_8008A324
    li r3, 0x0
L_8007A998:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007A9A8(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    cmpwi r6, 0x0
    stw r0, 0x74(r1)
    stmw r26, 0x58(r1)
    mr r26, r4
    addi r0, r26, 0x1f
    mr r28, r3
    mr r29, r5
    mr r30, r7
    clrrwi r31, r0, 5
    opword  0x41820014  // beq .L_8007A9E8
    opword  0x418000E8  // blt .L_8007AAC0
    cmpwi r6, 0x3
    opword  0x408000E0  // bge .L_8007AAC0
    opword  0x48000048  // b .L_8007AA2C
L_8007A9E8:
    mr r3, r31
    li r4, 0x20
    bl fn_80083868
    mr r0, r3
    mr r3, r28
    mr r27, r0
    mr r5, r31
    mr r7, r31
    li r6, 0x0
    mr r4, r27
    li r8, 0x0
    li r9, -0x1
    li r10, 0x0
    bl JKRAram_aramToMainRam_addr
    stw r27, 0x0(r30)
    mr r3, r26
    opword  0x480000BC  // b .L_8007AAE4
L_8007AA2C:
    addi r0, r1, 0x2b
    li r5, 0x20
    clrrwi r27, r0, 5
    li r6, 0x0
    mr r4, r27
    li r7, 0x0
    li r8, 0x0
    li r9, -0x1
    li r10, 0x0
    bl JKRAram_aramToMainRam_addr
    lbz r0, 0x5(r27)
    mr r5, r29
    lbz r3, 0x4(r27)
    li r4, 0x20
    slwi r0, r0, 16
    lbz r6, 0x6(r27)
    rlwimi r0, r3, 24, 0, 7
    lbz r7, 0x7(r27)
    rlwimi r0, r6, 8, 16, 23
    or r3, r7, r0
    addi r0, r3, 0x1f
    clrrwi r26, r0, 5
    mr r3, r26
    bl fn_80083868
    mr r27, r3
    mr r3, r28
    mr r5, r31
    mr r7, r26
    mr r4, r27
    mr r8, r29
    addi r10, r1, 0x8
    li r6, 0x1
    li r9, -0x1
    bl JKRAram_aramToMainRam_addr
    stw r27, 0x0(r30)
    lwz r3, 0x8(r1)
    opword  0x48000028  // b .L_8007AAE4
L_8007AAC0:
    lis r3, lbl_8045E0F8@ha
    lis r5, lbl_8045E10C@ha
    addi r6, r5, lbl_8045E10C@l
    li r4, 0x2c9
    addi r3, r3, lbl_8045E0F8@l
    opword  0x38A28730  // li r5, lbl_8053B6D0@sda21
    crclr 6
    bl fn_8008A324
    li r3, 0x0
L_8007AAE4:
    lmw r26, 0x58(r1)
    lwz r0, 0x74(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_8007AAF8(void)
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
    opword  0x40820018  // bne .L_8007AB38
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    opword  0x480000DC  // b .L_8007AC10
L_8007AB38:
    bl fn_8007C640
    mr. r31, r3
    opword  0x4082000C  // bne .L_8007AB4C
    li r3, -0x1
    opword  0x480000C8  // b .L_8007AC10
L_8007AB4C:
    lwz r0, 0x4(r31)
    rlwinm. r0, r0, 8, 29, 29
    opword  0x40820020  // bne .L_8007AB74
    mr r3, r29
    mr r4, r30
    lwz r12, 0x0(r29)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    opword  0x480000A0  // b .L_8007AC10
L_8007AB74:
    mr r3, r29
    mr r4, r31
    lwz r12, 0x0(r29)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8007AB98
    opword  0x4800007C  // b .L_8007AC10
L_8007AB98:
    lwz r3, 0x64(r29)
    addi r0, r1, 0x27
    clrrwi r30, r0, 5
    lwz r7, 0x8(r31)
    lwz r0, 0x14(r3)
    mr r4, r30
    li r5, 0x20
    li r6, 0x0
    add r3, r7, r0
    li r7, 0x0
    li r8, 0x0
    li r9, -0x1
    li r10, 0x0
    bl JKRAram_aramToMainRam_addr
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
L_8007AC10:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_8007AC2C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r9, lbl_80498C00@ha
    stw r0, 0x24(r1)
    addi r0, r9, lbl_80498C00@l
    stmw r26, 0x8(r1)
    mr r26, r3
    mr r27, r4
    mr r28, r5
    mr r29, r6
    mr r30, r7
    mr r31, r8
    mr r4, r26
    stw r0, 0x0(r3)
    addi r3, r26, 0x4
    bl fn_80086E2C
    stw r27, 0x14(r26)
    mr r3, r26
    stw r28, 0x18(r26)
    stw r29, 0x1c(r26)
    stb r30, 0x20(r26)
    stb r31, 0x21(r26)
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007AC98(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820084  // beq .L_8007AD38
    lis r3, lbl_80498C00@ha
    addi r0, r3, lbl_80498C00@l
    stw r0, 0x0(r30)
    lwz r4, 0xc(r30)
    lwz r3, 0x8(r30)
    cmplwi r4, 0x0
    opword  0x4182002C  // beq .L_8007ACFC
    lwz r7, 0x0(r4)
    addi r4, r30, 0x4
    lwz r0, 0x1c(r30)
    lwz r6, 0x1c(r7)
    lwz r5, 0x18(r30)
    add r0, r0, r6
    add r0, r5, r0
    stw r0, 0x1c(r7)
    bl fn_80087298
    opword  0x4800001C  // b .L_8007AD14
L_8007ACFC:
    lwz r4, 0x1c(r30)
    li r0, 0x0
    lwz r3, 0x18(r30)
    add r3, r4, r3
    stw r3, 0x1c(r30)
    stw r0, 0x18(r30)
L_8007AD14:
    addic. r0, r30, 0x4
    opword  0x41820010  // beq .L_8007AD28
    addi r3, r30, 0x4
    li r4, 0x0
    bl fn_80086E44
L_8007AD28:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007AD38
    mr r3, r30
    bl dtor_80084580
L_8007AD38:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007AD54(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r26, r3
    mr r27, r4
    mr r28, r5
    li r5, 0x0
    lwz r0, 0x1c(r3)
    lwz r8, 0x14(r3)
    li r3, 0x24
    lwz r7, 0x18(r26)
    subf r29, r27, r0
    lwz r4, 0x30(r6)
    add r30, r8, r7
    bl fn_8008440C
    mr. r31, r3
    opword  0x41820034  // beq .L_8007ADCC
    lis r3, lbl_80498C00@ha
    mr r4, r31
    addi r0, r3, lbl_80498C00@l
    addi r3, r31, 0x4
    stw r0, 0x0(r31)
    bl fn_80086E2C
    stw r30, 0x14(r31)
    li r0, 0x0
    stw r27, 0x18(r31)
    stw r29, 0x1c(r31)
    stb r28, 0x20(r31)
    stb r0, 0x21(r31)
L_8007ADCC:
    li r0, 0x0
    addi r5, r31, 0x4
    stw r0, 0x1c(r26)
    lwz r3, 0x8(r26)
    lwz r4, 0x10(r26)
    bl fn_800870C8
    mr r3, r31
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007ADFC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    li r5, 0x0
    lwz r4, 0x1c(r3)
    lwz r0, 0x18(r3)
    li r3, 0x24
    lwz r7, 0x14(r27)
    add r0, r0, r4
    lwz r4, 0x30(r6)
    add r0, r7, r0
    subf r30, r28, r0
    bl fn_8008440C
    mr. r31, r3
    opword  0x41820038  // beq .L_8007AE7C
    lis r3, lbl_80498C00@ha
    mr r4, r31
    addi r0, r3, lbl_80498C00@l
    addi r3, r31, 0x4
    stw r0, 0x0(r31)
    bl fn_80086E2C
    stw r30, 0x14(r31)
    li r3, 0x0
    li r0, 0x1
    stw r28, 0x18(r31)
    stw r3, 0x1c(r31)
    stb r29, 0x20(r31)
    stb r0, 0x21(r31)
L_8007AE7C:
    lwz r0, 0x1c(r27)
    addi r5, r31, 0x4
    subf r0, r28, r0
    stw r0, 0x1c(r27)
    lwz r3, 0x8(r27)
    lwz r4, 0x10(r27)
    bl fn_800870C8
    mr r3, r31
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007AEB0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8007E6F4
    lis r4, lbl_80498C10@ha
    addi r3, r29, 0x18
    addi r0, r4, lbl_80498C10@l
    stw r0, 0x0(r29)
    bl OSInitMutex
    mr r3, r29
    bl fn_80083B50
    stw r3, 0x30(r29)
    clrrwi r4, r31, 5
    addi r3, r30, 0x1f
    li r0, 0xff
    stw r4, 0x3c(r29)
    clrrwi r4, r3, 5
    li r3, 0x24
    li r5, 0x0
    stw r4, 0x34(r29)
    lwz r6, 0x34(r29)
    lwz r4, 0x3c(r29)
    add r4, r6, r4
    stw r4, 0x38(r29)
    stb r0, 0x40(r29)
    lwz r4, 0x30(r29)
    bl fn_8008440C
    mr. r4, r3
    opword  0x41820020  // beq .L_8007AF58
    lwz r4, 0x34(r29)
    li r5, 0x0
    lwz r6, 0x3c(r29)
    li r7, 0xff
    li r8, 0x0
    bl fn_8007AC2C
    mr r4, r3
L_8007AF58:
    lis r3, lbl_8052E7D8@ha
    addi r4, r4, 0x4
    addi r3, r3, lbl_8052E7D8@l
    bl fn_80086F58
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007AF88(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr. r29, r3
    opword  0x41820068  // beq .L_8007B010
    lis r4, lbl_80498C10@ha
    lis r3, lbl_8052E7D8@ha
    addi r0, r4, lbl_80498C10@l
    stw r0, 0x0(r29)
    lwz r31, lbl_8052E7D8@l(r3)
    opword  0x4800002C  // b .L_8007AFEC
L_8007AFC4:
    mr r3, r31
    lwz r31, 0xc(r31)
    lwz r3, 0x0(r3)
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_8007AFEC
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007AFEC:
    cmplwi r31, 0x0
    opword  0x4082FFD4  // bne .L_8007AFC4
    mr r3, r29
    li r4, 0x0
    bl fn_8007E75C
    extsh. r0, r30
    opword  0x4081000C  // ble .L_8007B010
    mr r3, r29
    bl dtor_80084580
L_8007B010:
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007B030(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    addi r3, r29, 0x18
    bl OSLockMutex
    cmpwi r31, 0x0
    opword  0x40820018  // bne .L_8007B078
    mr r3, r29
    mr r4, r30
    bl fn_8007B0B0
    mr r31, r3
    opword  0x48000014  // b .L_8007B088
L_8007B078:
    mr r3, r29
    mr r4, r30
    bl fn_8007B138
    mr r31, r3
L_8007B088:
    addi r3, r29, 0x18
    bl OSUnlockMutex
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007B0B0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r3
    lis r5, lbl_8052E7D8@ha
    stw r0, 0x14(r1)
    addi r0, r4, 0x1f
    clrrwi r4, r0, 5
    li r8, -0x1
    lwz r7, lbl_8052E7D8@l(r5)
    li r3, 0x0
    opword  0x48000030  // b .L_8007B108
L_8007B0DC:
    lwz r5, 0x0(r7)
    lwz r0, 0x1c(r5)
    cmplw r0, r4
    opword  0x4180001C  // blt .L_8007B104
    cmplw r8, r0
    opword  0x40810014  // ble .L_8007B104
    cmplw r0, r4
    mr r8, r0
    mr r3, r5
    opword  0x41820010  // beq .L_8007B110
L_8007B104:
    lwz r7, 0xc(r7)
L_8007B108:
    cmplwi r7, 0x0
    opword  0x4082FFD0  // bne .L_8007B0DC
L_8007B110:
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_8007B124
    lbz r5, 0x40(r6)
    bl fn_8007AD54
    opword  0x48000008  // b .L_8007B128
L_8007B124:
    li r3, 0x0
L_8007B128:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B138(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r3
    lis r5, lbl_8052E7D8@ha
    stw r0, 0x14(r1)
    addi r0, r4, 0x1f
    addi r4, r5, lbl_8052E7D8@l
    li r3, 0x0
    lwz r7, 0x4(r4)
    clrrwi r4, r0, 5
    opword  0x48000020  // b .L_8007B180
L_8007B164:
    lwz r5, 0x0(r7)
    lwz r0, 0x1c(r5)
    cmplw r0, r4
    opword  0x4180000C  // blt .L_8007B17C
    mr r3, r5
    opword  0x48000010  // b .L_8007B188
L_8007B17C:
    lwz r7, 0x8(r7)
L_8007B180:
    cmplwi r7, 0x0
    opword  0x4082FFE0  // bne .L_8007B164
L_8007B188:
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_8007B19C
    lbz r5, 0x40(r6)
    bl fn_8007ADFC
    opword  0x48000008  // b .L_8007B1A0
L_8007B19C:
    li r3, 0x0
L_8007B1A0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

