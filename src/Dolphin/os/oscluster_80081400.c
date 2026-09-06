#include "types.h"

extern f32 lbl_8045E300;
extern f32 lbl_8045E328;
extern f32 lbl_8045E338;
extern f32 lbl_80497DF0;
extern f32 lbl_80498DD8;
extern f32 lbl_80498E38;
extern f32 lbl_80498E48;
extern f32 lbl_80498E58;
extern f32 lbl_8052E844;
extern f32 lbl_80539D78;
extern f32 lbl_8053A888;
extern f32 lbl_8053A88C;
extern f32 lbl_8053A890;
extern f32 lbl_8053A894;
extern f32 lbl_8053A898;
extern f32 lbl_8053A8A0;
extern f32 lbl_8053A8AC;
extern f32 lbl_8053A8B0;
extern f32 lbl_8053A8B4;
extern f32 lbl_8053B708;
extern f32 lbl_8053B70C;
extern f32 lbl_8053B714;
extern f32 lbl_8053B71C;
extern f32 lbl_8053B724;
extern f32 lbl_8053B72C;
extern f32 lbl_8053B730;
extern f32 lbl_8053B738;

extern void OSLockMutex(void);
extern void OSUnlockMutex(void);
extern void dtor_80084580(void);
extern void fn_8007CC20(void);
extern void fn_8007E6F4(void);
extern void fn_8007E75C(void);
extern void fn_8008353C(void);
extern void fn_80083660(void);
extern void fn_80083774(void);
extern void fn_80083868(void);
extern void fn_800838F4(void);
extern void fn_80083968(void);
extern void fn_80083A68(void);
extern void fn_80083AD0(void);
extern void fn_80084110(void);
extern void fn_8008425C(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80088FA8(void);
extern void fn_80089084(void);
extern void fn_800890B0(void);
extern void fn_8008918C(void);
extern void fn_8008A324(void);
extern void strcmp(void);
extern void strcpy(void);

ASM void fn_80081400(void);
ASM void fn_80081454(void);
ASM void fn_800814D4(void);
ASM void fn_800815B8(void);
ASM void fn_8008163C(void);
ASM void fn_800816D4(void);
ASM void fn_8008173C(void);
ASM void fn_80081858(void);
ASM void fn_80081AAC(void);
ASM void fn_80081B90(void);
ASM void fn_80081CE8(void);
ASM void fn_80081DC8(void);
ASM void fn_80081E3C(void);
ASM void fn_80081EB8(void);
ASM void fn_80081F48(void);
ASM void fn_80081F4C(void);
ASM void fn_80081FA4(void);
ASM void fn_80082160(void);
ASM void fn_800821E8(void);
ASM void fn_80082254(void);
ASM void fn_800822C8(void);
ASM void fn_8008232C(void);
ASM void fn_800823C8(void);
ASM void fn_80082414(void);
ASM void fn_80082448(void);
ASM void fn_8008262C(void);
ASM void fn_80082734(void);
ASM void fn_80082914(void);
ASM void fn_80082ADC(void);
ASM void fn_80082CD4(void);
ASM void fn_80082CF4(void);
ASM void fn_80082D38(void);
ASM void fn_80082D90(void);
ASM void fn_80082DF0(void);
ASM void fn_80082E0C(void);
ASM void fn_80082F00(void);
ASM void fn_80082F30(void);
ASM void fn_80082F3C(void);
ASM void fn_80082F44(void);
ASM void fn_80082F8C(void);
ASM void fn_80083018(void);
ASM void fn_800830C4(void);
ASM void fn_80083120(void);
ASM void fn_80083178(void);
ASM void fn_80083204(void);
ASM void fn_80083254(void);
ASM void fn_800832A0(void);
ASM void fn_80083338(void);
ASM void fn_800833C4(void);

ASM void fn_80081400(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_80081438
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80081438
    mr r3, r30
    bl dtor_80084580
L_80081438:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80081454(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    li r4, 0x0
    opword  0x800D8CF0  // lwz r0, lbl_8053A8B0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820040  // bne .L_800814B4
    mr r5, r3
    addi r3, r1, 0xc
    addi r4, r1, 0x8
    bl fn_80083774
    lwz r3, 0xc(r1)
    lwz r5, 0x8(r1)
    cmplwi r3, 0x0
    addi r4, r3, 0x90
    subi r5, r5, 0x90
    opword  0x41820010  // beq .L_800814AC
    mr r7, r31
    li r6, 0x0
    bl fn_8008163C
L_800814AC:
    mr r4, r3
    opword  0x906D8CF0  // stw r3, lbl_8053A8B0@sda21(r0)
L_800814B4:
    li r0, 0x1
    mr r3, r4
    stb r0, 0x6e(r4)
    lwz r31, 0x1c(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800814D4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r5
    stw r28, 0x10(r1)
    mr. r28, r4
    opword  0x40820008  // bne .L_80081500
    opword  0x838D8CF0  // lwz r28, lbl_8053A8B0@sda21(r0)
L_80081500:
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x40820010  // bne .L_80081518
    mr r3, r28
    li r4, 0x10
    bl fn_80083AD0
L_80081518:
    clrrwi r31, r3, 4
    cmplwi r31, 0xa0
    opword  0x4080000C  // bge .L_8008152C
    li r3, 0x0
    opword  0x48000070  // b .L_80081598
L_8008152C:
    mr r3, r31
    mr r5, r28
    li r4, 0x10
    bl fn_80083868
    mr r0, r3
    mr. r30, r0
    addi r4, r30, 0x90
    opword  0x4082000C  // bne .L_80081554
    li r3, 0x0
    opword  0x48000048  // b .L_80081598
L_80081554:
    mr r5, r30
    opword  0x41820018  // beq .L_80081570
    mr r6, r28
    mr r7, r29
    subi r5, r31, 0x90
    bl fn_8008163C
    mr r5, r3
L_80081570:
    cmplwi r5, 0x0
    opword  0x40820018  // bne .L_8008158C
    mr r3, r30
    li r4, 0x0
    bl fn_800838F4
    li r3, 0x0
    opword  0x48000010  // b .L_80081598
L_8008158C:
    li r0, 0x0
    mr r3, r5
    stb r0, 0x6e(r5)
L_80081598:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800815B8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lbz r0, 0x6e(r3)
    cmplwi r0, 0x0
    opword  0x40820038  // bne .L_80081610
    lwz r4, 0x50(r30)
    lwz r31, 0xc(r4)
    cmplwi r31, 0x0
    opword  0x4182003C  // beq .L_80081624
    lwz r12, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r31
    bl fn_800838F4
    opword  0x48000018  // b .L_80081624
L_80081610:
    lwz r12, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_80081624:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008163C(void)
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
    bl fn_8008353C
    lis r4, lbl_80498DD8@ha
    li r3, 0x0
    addi r4, r4, lbl_80498DD8@l
    li r0, 0xff
    stw r4, 0x0(r29)
    subi r6, r31, 0x10
    li r4, 0x0
    li r5, 0x0
    stb r3, 0x6c(r29)
    li r7, 0x0
    li r8, 0x0
    stb r0, 0x6d(r29)
    stw r30, 0x78(r29)
    lwz r0, 0x78(r29)
    stw r0, 0x7c(r29)
    lwz r3, 0x78(r29)
    bl fn_80082CD4
    li r0, 0x0
    mr r3, r29
    stw r0, 0x80(r29)
    stw r0, 0x84(r29)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800816D4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820030  // beq .L_80081720
    lis r4, lbl_80498DD8@ha
    addi r0, r4, lbl_80498DD8@l
    stw r0, 0x0(r30)
    bl fn_8008425C
    mr r3, r30
    li r4, 0x0
    bl fn_80083660
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80081720
    mr r3, r30
    bl dtor_80084580
L_80081720:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008173C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    addi r3, r28, 0x18
    bl OSLockMutex
    cmplwi r29, 0x4
    opword  0x40800008  // bge .L_80081778
    li r29, 0x4
L_80081778:
    cmpwi r30, 0x0
    opword  0x41800038  // blt .L_800817B4
    cmpwi r30, 0x4
    opword  0x41810018  // bgt .L_8008179C
    mr r3, r28
    mr r4, r29
    bl fn_80081AAC
    mr r31, r3
    opword  0x4800004C  // b .L_800817E4
L_8008179C:
    mr r3, r28
    mr r4, r29
    mr r5, r30
    bl fn_80081858
    mr r31, r3
    opword  0x48000034  // b .L_800817E4
L_800817B4:
    neg r5, r30
    cmpwi r5, 0x4
    opword  0x41810018  // bgt .L_800817D4
    mr r3, r28
    mr r4, r29
    bl fn_80081CE8
    mr r31, r3
    opword  0x48000014  // b .L_800817E4
L_800817D4:
    mr r3, r28
    mr r4, r29
    bl fn_80081B90
    mr r31, r3
L_800817E4:
    cmplwi r31, 0x0
    opword  0x40820044  // bne .L_8008182C
    lis r3, lbl_8045E300@ha
    mr r4, r29
    addi r3, r3, lbl_8045E300@l
    crclr 6
    bl fn_800890B0
    lbz r0, 0x68(r28)
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_8008182C
    opword  0x818D8CF4  // lwz r12, lbl_8053A8B4@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_8008182C
    mr r3, r28
    mr r4, r29
    mr r5, r30
    mtctr r12
    bctrl
L_8008182C:
    addi r3, r28, 0x18
    bl OSUnlockMutex
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

ASM void fn_80081858(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    li r7, -0x1
    stw r0, 0x34(r1)
    addi r0, r4, 0x3
    stmw r25, 0x14(r1)
    mr r29, r3
    subi r3, r5, 0x1
    clrrwi r30, r0, 2
    nor r4, r3, r3
    li r28, 0x0
    li r31, 0x0
    lwz r8, 0x78(r29)
    opword  0x48000050  // b .L_800818DC
L_80081890:
    addi r5, r8, 0x10
    lwz r6, 0x4(r8)
    add r0, r3, r5
    and r0, r4, r0
    subf r5, r5, r0
    add r0, r30, r5
    cmplw r6, r0
    opword  0x4180002C  // blt .L_800818D8
    cmplw r7, r6
    opword  0x40810024  // ble .L_800818D8
    lbz r0, 0x6c(r29)
    mr r7, r6
    mr r31, r8
    mr r28, r5
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_800818E4
    cmplw r6, r30
    opword  0x41820010  // beq .L_800818E4
L_800818D8:
    lwz r8, 0xc(r8)
L_800818DC:
    cmplwi r8, 0x0
    opword  0x4082FFB0  // bne .L_80081890
L_800818E4:
    cmplwi r31, 0x0
    opword  0x90ED8CC8  // stw r7, lbl_8053A888@sda21(r0)
    opword  0x938D8CCC  // stw r28, lbl_8053A88C@sda21(r0)
    opword  0x93ED8CD0  // stw r31, lbl_8053A890@sda21(r0)
    opword  0x418201A0  // beq .L_80081A94
    cmplwi r28, 0x10
    opword  0x418000C0  // blt .L_800819BC
    lwz r26, 0x8(r31)
    mr r3, r31
    lwz r25, 0xc(r31)
    subi r4, r28, 0x10
    li r5, 0x0
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CF4
    mr. r27, r3
    opword  0x41820024  // beq .L_8008194C
    lbz r5, 0x6d(r29)
    mr r4, r30
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CF4
    mr r6, r3
    opword  0x48000008  // b .L_80081950
L_8008194C:
    li r6, 0x0
L_80081950:
    cmplwi r6, 0x0
    mr r28, r6
    opword  0x41820018  // beq .L_80081970
    mr r3, r29
    mr r4, r31
    mr r5, r26
    bl fn_800823C8
    opword  0x48000018  // b .L_80081984
L_80081970:
    mr r3, r29
    mr r4, r31
    mr r5, r26
    mr r6, r25
    bl fn_800823C8
L_80081984:
    cmplwi r28, 0x0
    opword  0x41820018  // beq .L_800819A0
    mr r3, r29
    mr r4, r28
    mr r5, r31
    mr r6, r25
    bl fn_800823C8
L_800819A0:
    mr r3, r29
    mr r4, r27
    bl fn_8008232C
    opword  0x938D8CD4  // stw r28, lbl_8053A894@sda21(r0)
    addi r3, r27, 0x10
    opword  0x936D8CD8  // stw r27, lbl_8053A898@sda21(r0)
    opword  0x480000E0  // b .L_80081A98
L_800819BC:
    cmplwi r28, 0x0
    opword  0x41820070  // beq .L_80081A30
    lwz r25, 0x8(r31)
    mr r3, r29
    lwz r26, 0xc(r31)
    mr r4, r31
    bl fn_80082414
    lwz r0, 0x4(r31)
    add r31, r31, r28
    mr r3, r31
    mr r4, r30
    subf r0, r28, r0
    clrlwi r6, r28, 24
    stw r0, 0x4(r31)
    li r7, 0x0
    li r8, 0x0
    lbz r5, 0x6d(r29)
    bl fn_80082CF4
    mr. r4, r3
    opword  0x41820014  // beq .L_80081A1C
    mr r3, r29
    mr r5, r25
    mr r6, r26
    bl fn_800823C8
L_80081A1C:
    mr r3, r29
    mr r4, r31
    bl fn_8008232C
    addi r3, r31, 0x10
    opword  0x4800006C  // b .L_80081A98
L_80081A30:
    lwz r25, 0x8(r31)
    mr r3, r31
    lwz r26, 0xc(r31)
    mr r4, r30
    lbz r5, 0x6d(r29)
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CF4
    mr r30, r3
    mr r3, r29
    mr r4, r31
    bl fn_80082414
    cmplwi r30, 0x0
    opword  0x41820018  // beq .L_80081A80
    mr r3, r29
    mr r4, r30
    mr r5, r25
    mr r6, r26
    bl fn_800823C8
L_80081A80:
    mr r3, r29
    mr r4, r31
    bl fn_8008232C
    addi r3, r31, 0x10
    opword  0x48000008  // b .L_80081A98
L_80081A94:
    li r3, 0x0
L_80081A98:
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80081AAC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r5, -0x1
    stw r0, 0x14(r1)
    addi r0, r4, 0x3
    clrrwi r4, r0, 2
    stw r31, 0xc(r1)
    li r31, 0x0
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r6, 0x78(r3)
    opword  0x48000038  // b .L_80081B10
L_80081ADC:
    lwz r3, 0x4(r6)
    cmplw r3, r4
    opword  0x41800028  // blt .L_80081B0C
    cmplw r5, r3
    opword  0x40810020  // ble .L_80081B0C
    lbz r0, 0x6c(r30)
    mr r5, r3
    mr r31, r6
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_80081B18
    cmplw r3, r4
    opword  0x41820010  // beq .L_80081B18
L_80081B0C:
    lwz r6, 0xc(r6)
L_80081B10:
    cmplwi r6, 0x0
    opword  0x4082FFC8  // bne .L_80081ADC
L_80081B18:
    cmplwi r31, 0x0
    opword  0x41820058  // beq .L_80081B74
    lbz r5, 0x6d(r30)
    mr r3, r31
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CF4
    mr. r4, r3
    opword  0x41820018  // beq .L_80081B54
    lwz r5, 0x8(r31)
    mr r3, r30
    lwz r6, 0xc(r31)
    bl fn_800823C8
    opword  0x48000010  // b .L_80081B60
L_80081B54:
    mr r3, r30
    mr r4, r31
    bl fn_80082414
L_80081B60:
    mr r3, r30
    mr r4, r31
    bl fn_8008232C
    addi r3, r31, 0x10
    opword  0x48000008  // b .L_80081B78
L_80081B74:
    li r3, 0x0
L_80081B78:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80081B90(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    subi r0, r5, 0x1
    stmw r27, 0xc(r1)
    mr r27, r3
    li r31, 0x0
    li r30, 0x0
    li r29, 0x0
    lwz r8, 0x7c(r3)
    nor r3, r0, r0
    opword  0x48000038  // b .L_80081BF4
L_80081BC0:
    lwz r6, 0x4(r8)
    add r5, r8, r6
    addi r5, r5, 0x10
    subf r0, r4, r5
    and r7, r3, r0
    subf r28, r7, r5
    cmplw r6, r28
    opword  0x41800014  // blt .L_80081BF0
    mr r30, r8
    subf r31, r28, r6
    subi r29, r7, 0x10
    opword  0x48000010  // b .L_80081BFC
L_80081BF0:
    lwz r8, 0x8(r8)
L_80081BF4:
    cmplwi r8, 0x0
    opword  0x4082FFC8  // bne .L_80081BC0
L_80081BFC:
    cmplwi r30, 0x0
    opword  0x418200D0  // beq .L_80081CD0
    cmplwi r31, 0x10
    opword  0x41800044  // blt .L_80081C4C
    lbz r7, 0x6d(r27)
    mr r3, r29
    mr r6, r28
    li r4, 0x0
    li r5, 0x0
    li r8, 0x80
    bl fn_80082CD4
    lwz r0, 0x4(r30)
    mr r3, r27
    mr r4, r29
    subf r5, r28, r0
    subi r0, r5, 0x10
    stw r0, 0x4(r30)
    bl fn_8008232C
    addi r3, r29, 0x10
    opword  0x4800008C  // b .L_80081CD4
L_80081C4C:
    cmplwi r31, 0x0
    opword  0x41820044  // beq .L_80081C94
    mr r3, r27
    mr r4, r30
    bl fn_80082414
    ori r0, r31, 0x80
    lbz r7, 0x6d(r27)
    mr r3, r29
    mr r6, r28
    clrlwi r8, r0, 24
    li r4, 0x0
    li r5, 0x0
    bl fn_80082CD4
    mr r3, r27
    mr r4, r29
    bl fn_8008232C
    addi r3, r29, 0x10
    opword  0x48000044  // b .L_80081CD4
L_80081C94:
    mr r3, r27
    mr r4, r30
    bl fn_80082414
    lbz r7, 0x6d(r27)
    mr r3, r29
    mr r6, r28
    li r4, 0x0
    li r5, 0x0
    li r8, 0x80
    bl fn_80082CD4
    mr r3, r27
    mr r4, r29
    bl fn_8008232C
    addi r3, r29, 0x10
    opword  0x48000008  // b .L_80081CD4
L_80081CD0:
    li r3, 0x0
L_80081CD4:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80081CE8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    addi r0, r4, 0x3
    clrrwi r4, r0, 2
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r3, 0x7c(r3)
    opword  0x4800001C  // b .L_80081D30
L_80081D18:
    lwz r0, 0x4(r3)
    cmplw r0, r4
    opword  0x4180000C  // blt .L_80081D2C
    mr r31, r3
    opword  0x48000010  // b .L_80081D38
L_80081D2C:
    lwz r3, 0x8(r3)
L_80081D30:
    cmplwi r3, 0x0
    opword  0x4082FFE4  // bne .L_80081D18
L_80081D38:
    cmplwi r31, 0x0
    opword  0x4182006C  // beq .L_80081DA8
    lbz r7, 0x6d(r29)
    mr r3, r31
    li r5, 0x0
    li r6, 0x0
    li r8, 0x0
    bl fn_80082D38
    mr. r30, r3
    opword  0x4182000C  // beq .L_80081D68
    mr r4, r31
    opword  0x48000018  // b .L_80081D7C
L_80081D68:
    mr r3, r29
    mr r4, r31
    bl fn_80082414
    mr r30, r31
    li r4, 0x0
L_80081D7C:
    cmplwi r4, 0x0
    opword  0x41820014  // beq .L_80081D94
    lwz r5, 0x8(r31)
    mr r3, r29
    lwz r6, 0xc(r31)
    bl fn_800823C8
L_80081D94:
    mr r3, r29
    mr r4, r30
    bl fn_8008232C
    addi r3, r30, 0x10
    opword  0x48000008  // b .L_80081DAC
L_80081DA8:
    li r3, 0x0
L_80081DAC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80081DC8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    addi r3, r30, 0x18
    bl OSLockMutex
    lwz r0, 0x30(r30)
    cmplw r0, r31
    opword  0x41810028  // bgt .L_80081E1C
    lwz r0, 0x34(r30)
    cmplw r31, r0
    opword  0x4181001C  // bgt .L_80081E1C
    mr r3, r31
    bl fn_80082DF0
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_80081E1C
    mr r4, r30
    bl fn_80082D90
L_80081E1C:
    addi r3, r30, 0x18
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80081E3C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r31, 0x18
    bl OSLockMutex
    mr r3, r31
    bl fn_80083968
    lwz r0, 0x30(r31)
    li r4, 0x0
    li r5, 0x0
    li r7, 0x0
    stw r0, 0x78(r31)
    li r8, 0x0
    lwz r0, 0x78(r31)
    stw r0, 0x7c(r31)
    lwz r6, 0x38(r31)
    lwz r3, 0x78(r31)
    subi r6, r6, 0x10
    bl fn_80082CD4
    li r0, 0x0
    addi r3, r31, 0x18
    stw r0, 0x80(r31)
    stw r0, 0x84(r31)
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80081EB8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    addi r3, r29, 0x18
    bl OSLockMutex
    lwz r31, 0x80(r29)
    opword  0x4800003C  // b .L_80081F1C
L_80081EE4:
    lbz r0, 0x2(r31)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182002C  // beq .L_80081F18
    lwz r5, 0x4(r31)
    mr r3, r29
    addi r4, r31, 0x10
    bl fn_80084110
    lwz r30, 0xc(r31)
    mr r3, r31
    mr r4, r29
    bl fn_80082D90
    mr r31, r30
    opword  0x48000008  // b .L_80081F1C
L_80081F18:
    lwz r31, 0xc(r31)
L_80081F1C:
    cmplwi r31, 0x0
    opword  0x4082FFC4  // bne .L_80081EE4
    addi r3, r29, 0x18
    bl OSUnlockMutex
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80081F48(void)
{
    nofralloc
    blr
}

ASM void fn_80081F4C(void)
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
    addi r3, r29, 0x18
    bl OSLockMutex
    lbz r31, 0x6d(r29)
    addi r3, r29, 0x18
    stb r30, 0x6d(r29)
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

ASM void fn_80081FA4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r3
    addi r3, r29, 0x18
    stw r28, 0x10(r1)
    mr r28, r4
    bl OSLockMutex
    mr r3, r28
    bl fn_80082DF0
    mr. r31, r3
    opword  0x4182001C  // beq .L_80081FFC
    lwz r0, 0x30(r29)
    cmplw r28, r0
    opword  0x41800010  // blt .L_80081FFC
    lwz r0, 0x34(r29)
    cmplw r0, r28
    opword  0x40800014  // bge .L_8008200C
L_80081FFC:
    addi r3, r29, 0x18
    bl OSUnlockMutex
    li r3, -0x1
    opword  0x48000138  // b .L_80082140
L_8008200C:
    addi r0, r30, 0x3
    lwz r4, 0x4(r31)
    clrrwi r30, r0, 2
    cmplw r30, r4
    opword  0x40820014  // bne .L_80082030
    addi r3, r29, 0x18
    bl OSUnlockMutex
    mr r3, r30
    opword  0x48000114  // b .L_80082140
L_80082030:
    opword  0x408100D0  // ble .L_80082100
    addi r0, r31, 0x10
    lwz r3, 0x78(r29)
    add r0, r0, r4
    li r28, 0x0
    opword  0x48000018  // b .L_8008205C
L_80082048:
    cmplw r3, r0
    opword  0x4082000C  // bne .L_80082058
    mr r28, r3
    opword  0x48000010  // b .L_80082064
L_80082058:
    lwz r3, 0xc(r3)
L_8008205C:
    cmplwi r3, 0x0
    opword  0x4082FFE8  // bne .L_80082048
L_80082064:
    cmplwi r28, 0x0
    opword  0x40820014  // bne .L_8008207C
    addi r3, r29, 0x18
    bl OSUnlockMutex
    li r3, -0x1
    opword  0x480000C8  // b .L_80082140
L_8008207C:
    lwz r0, 0x4(r28)
    add r3, r4, r0
    addi r0, r3, 0x10
    cmplw r30, r0
    opword  0x40810014  // ble .L_800820A0
    addi r3, r29, 0x18
    bl OSUnlockMutex
    li r3, -0x1
    opword  0x480000A4  // b .L_80082140
L_800820A0:
    mr r3, r29
    mr r4, r28
    bl fn_80082414
    lwz r3, 0x4(r31)
    lwz r0, 0x4(r28)
    add r3, r0, r3
    addi r0, r3, 0x10
    stw r0, 0x4(r31)
    lwz r0, 0x4(r31)
    subf r0, r30, r0
    cmplwi r0, 0x10
    opword  0x40810068  // ble .L_80082134
    lbz r5, 0x3(r31)
    mr r3, r31
    lbz r6, 0x2(r31)
    mr r4, r30
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CF4
    mr. r4, r3
    opword  0x41820044  // beq .L_80082134
    mr r3, r29
    bl fn_80082448
    opword  0x48000038  // b .L_80082134
L_80082100:
    subf r0, r30, r4
    cmplwi r0, 0x10
    opword  0x4081002C  // ble .L_80082134
    lbz r5, 0x3(r31)
    mr r4, r30
    lbz r6, 0x2(r31)
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CF4
    mr. r4, r3
    opword  0x4182000C  // beq .L_80082134
    mr r3, r29
    bl fn_80082448
L_80082134:
    addi r3, r29, 0x18
    bl OSUnlockMutex
    lwz r3, 0x4(r31)
L_80082140:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80082160(void)
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
    addi r3, r29, 0x18
    bl OSLockMutex
    mr r3, r30
    bl fn_80082DF0
    mr. r31, r3
    opword  0x4182001C  // beq .L_800821B0
    lwz r0, 0x30(r29)
    cmplw r30, r0
    opword  0x41800010  // blt .L_800821B0
    lwz r0, 0x34(r29)
    cmplw r0, r30
    opword  0x40800014  // bge .L_800821C0
L_800821B0:
    addi r3, r29, 0x18
    bl OSUnlockMutex
    li r3, -0x1
    opword  0x48000010  // b .L_800821CC
L_800821C0:
    addi r3, r29, 0x18
    bl OSUnlockMutex
    lwz r3, 0x4(r31)
L_800821CC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800821E8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    addi r3, r30, 0x18
    bl OSLockMutex
    lwz r3, 0x78(r30)
    li r31, 0x0
    opword  0x48000018  // b .L_80082228
L_80082214:
    lwz r0, 0x4(r3)
    cmpw r31, r0
    opword  0x40800008  // bge .L_80082224
    mr r31, r0
L_80082224:
    lwz r3, 0xc(r3)
L_80082228:
    cmplwi r3, 0x0
    opword  0x4082FFE8  // bne .L_80082214
    addi r3, r30, 0x18
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80082254(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    addi r3, r30, 0x18
    bl OSLockMutex
    lwz r4, 0x78(r30)
    li r3, 0x0
    li r31, 0x0
    opword  0x4800001C  // b .L_8008229C
L_80082284:
    lwz r0, 0x4(r4)
    cmpw r3, r0
    opword  0x4080000C  // bge .L_80082298
    mr r3, r0
    mr r31, r4
L_80082298:
    lwz r4, 0xc(r4)
L_8008229C:
    cmplwi r4, 0x0
    opword  0x4082FFE4  // bne .L_80082284
    addi r3, r30, 0x18
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800822C8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    li r31, 0x0
    stw r30, 0x8(r1)
    mr r30, r3
    addi r3, r30, 0x18
    bl OSLockMutex
    lwz r3, 0x78(r30)
    opword  0x48000010  // b .L_80082300
L_800822F4:
    lwz r0, 0x4(r3)
    lwz r3, 0xc(r3)
    add r31, r31, r0
L_80082300:
    cmplwi r3, 0x0
    opword  0x4082FFF0  // bne .L_800822F4
    addi r3, r30, 0x18
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008232C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x40820024  // bne .L_8008236C
    lis r3, lbl_8045E328@ha
    lis r5, lbl_8045E338@ha
    addi r6, r5, lbl_8045E338@l
    li r4, 0x620
    addi r3, r3, lbl_8045E328@l
    opword  0x38A28768  // li r5, lbl_8053B708@sda21
    crclr 6
    bl fn_8008A324
L_8008236C:
    lwz r3, 0x84(r30)
    li r0, 0x484d
    cmplwi r3, 0x0
    sth r0, 0x0(r31)
    opword  0x41820010  // beq .L_8008238C
    stw r31, 0xc(r3)
    stw r3, 0x8(r31)
    opword  0x4800000C  // b .L_80082394
L_8008238C:
    li r0, 0x0
    stw r0, 0x8(r31)
L_80082394:
    stw r31, 0x84(r30)
    lwz r0, 0x80(r30)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_800823A8
    stw r31, 0x80(r30)
L_800823A8:
    li r0, 0x0
    stw r0, 0xc(r31)
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800823C8(void)
{
    nofralloc
    cmplwi r5, 0x0
    opword  0x40820014  // bne .L_800823E0
    stw r4, 0x78(r3)
    li r0, 0x0
    stw r0, 0x8(r4)
    opword  0x4800000C  // b .L_800823E8
L_800823E0:
    stw r4, 0xc(r5)
    stw r5, 0x8(r4)
L_800823E8:
    cmplwi r6, 0x0
    opword  0x40820014  // bne .L_80082400
    stw r4, 0x7c(r3)
    li r0, 0x0
    stw r0, 0xc(r4)
    opword  0x4800000C  // b .L_80082408
L_80082400:
    stw r4, 0x8(r6)
    stw r6, 0xc(r4)
L_80082408:
    li r0, 0x0
    sth r0, 0x0(r4)
    blr
}

ASM void fn_80082414(void)
{
    nofralloc
    lwz r5, 0x8(r4)
    lwz r4, 0xc(r4)
    cmplwi r5, 0x0
    opword  0x4082000C  // bne .L_8008242C
    stw r4, 0x78(r3)
    opword  0x48000008  // b .L_80082430
L_8008242C:
    stw r4, 0xc(r5)
L_80082430:
    cmplwi r4, 0x0
    opword  0x4082000C  // bne .L_80082440
    stw r5, 0x7c(r3)
    blr
L_80082440:
    stw r5, 0x8(r4)
    blr
}

ASM void fn_80082448(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    li r5, 0x0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    lwz r6, 0x4(r4)
    sth r5, 0x0(r4)
    add r7, r4, r6
    lbz r0, 0x2(r4)
    clrlwi. r0, r0, 25
    opword  0x4182001C  // beq .L_8008249C
    subf r30, r0, r4
    add r6, r6, r0
    stb r5, 0x3(r30)
    add r7, r30, r6
    stb r5, 0x2(r30)
    stw r6, 0x4(r30)
L_8008249C:
    lwz r3, 0x78(r31)
    cmplwi r3, 0x0
    opword  0x40820040  // bne .L_800824E4
    mr r3, r30
    li r4, 0x0
    li r5, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CD4
    stw r30, 0x78(r31)
    li r0, 0x0
    stw r30, 0x7c(r31)
    stw r30, 0x78(r31)
    stw r0, 0x8(r30)
    stw r30, 0x7c(r31)
    stw r0, 0xc(r30)
    sth r0, 0x0(r30)
    opword  0x48000130  // b .L_80082610
L_800824E4:
    cmplw r3, r7
    opword  0x41800060  // blt .L_80082548
    mr r3, r30
    li r4, 0x0
    li r5, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CD4
    lwz r3, 0x78(r31)
    li r0, 0x0
    stw r30, 0x78(r31)
    cmplwi r3, 0x0
    stw r0, 0x8(r30)
    opword  0x40820010  // bne .L_80082528
    stw r30, 0x7c(r31)
    stw r0, 0xc(r30)
    opword  0x4800000C  // b .L_80082530
L_80082528:
    stw r30, 0x8(r3)
    stw r3, 0xc(r30)
L_80082530:
    li r0, 0x0
    mr r3, r31
    sth r0, 0x0(r30)
    mr r4, r30
    bl fn_8008262C
    opword  0x480000CC  // b .L_80082610
L_80082548:
    lwz r0, 0x7c(r31)
    cmplw r0, r30
    opword  0x41810060  // bgt .L_800825B0
    mr r3, r30
    li r4, 0x0
    li r5, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_80082CD4
    lwz r3, 0x7c(r31)
    cmplwi r3, 0x0
    opword  0x40820014  // bne .L_80082588
    stw r30, 0x78(r31)
    li r0, 0x0
    stw r0, 0x8(r30)
    opword  0x4800000C  // b .L_80082590
L_80082588:
    stw r30, 0xc(r3)
    stw r3, 0x8(r30)
L_80082590:
    stw r30, 0x7c(r31)
    li r0, 0x0
    mr r3, r31
    stw r0, 0xc(r30)
    sth r0, 0x0(r30)
    lwz r4, 0x8(r30)
    bl fn_8008262C
    opword  0x48000064  // b .L_80082610
L_800825B0:
    mr r29, r3
    opword  0x48000054  // b .L_80082608
L_800825B8:
    cmplw r29, r30
    opword  0x40800048  // bge .L_80082604
    lwz r0, 0xc(r29)
    cmplw r30, r0
    opword  0x4080003C  // bge .L_80082604
    stw r0, 0xc(r30)
    li r0, 0x0
    mr r3, r31
    mr r4, r30
    stw r29, 0x8(r30)
    stw r30, 0xc(r29)
    lwz r5, 0xc(r30)
    stw r30, 0x8(r5)
    stb r0, 0x3(r30)
    bl fn_8008262C
    mr r3, r31
    mr r4, r29
    bl fn_8008262C
    opword  0x48000010  // b .L_80082610
L_80082604:
    lwz r29, 0xc(r29)
L_80082608:
    cmplwi r29, 0x0
    opword  0x4082FFAC  // bne .L_800825B8
L_80082610:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008262C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r5, lbl_8045E300@ha
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r30, r3
    mr r31, r4
    addi r29, r5, lbl_8045E300@l
    lwz r27, 0xc(r4)
    lwz r3, 0x4(r4)
    lbz r0, 0x2(r27)
    add r28, r31, r3
    clrlwi r0, r0, 25
    subf r26, r0, r27
    addi r28, r28, 0x10
    cmplw r28, r26
    opword  0x4081003C  // ble .L_800826A8
    addi r3, r29, 0x4c
    crclr 6
    bl fn_800890B0
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    addi r3, r29, 0x28
    addi r6, r29, 0x70
    li r4, 0x71c
    opword  0x38A28768  // li r5, lbl_8053B708@sda21
    crclr 6
    bl fn_8008A324
L_800826A8:
    cmplw r28, r26
    opword  0x40820074  // bne .L_80082720
    lbz r0, 0x2(r27)
    lwz r3, 0x4(r27)
    clrlwi r0, r0, 25
    lwz r4, 0x4(r31)
    add r0, r3, r0
    add r3, r0, r4
    addi r0, r3, 0x10
    stw r0, 0x4(r31)
    lwz r3, 0x8(r31)
    lwz r4, 0xc(r27)
    cmplwi r3, 0x0
    opword  0x40820014  // bne .L_800826F0
    stw r31, 0x78(r30)
    li r0, 0x0
    stw r0, 0x8(r31)
    opword  0x4800000C  // b .L_800826F8
L_800826F0:
    stw r31, 0xc(r3)
    stw r3, 0x8(r31)
L_800826F8:
    cmplwi r4, 0x0
    opword  0x40820014  // bne .L_80082710
    stw r31, 0x7c(r30)
    li r0, 0x0
    stw r0, 0xc(r31)
    opword  0x4800000C  // b .L_80082718
L_80082710:
    stw r31, 0x8(r4)
    stw r4, 0xc(r31)
L_80082718:
    li r0, 0x0
    sth r0, 0x0(r31)
L_80082720:
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80082734(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r28, r3
    lis r3, lbl_8045E300@ha
    addi r31, r3, lbl_8045E300@l
    addi r3, r28, 0x18
    bl OSLockMutex
    lwz r27, 0x80(r28)
    li r30, 0x0
    li r29, 0x1
    opword  0x480000C0  // b .L_80082824
L_80082768:
    lhz r0, 0x0(r27)
    cmplwi r0, 0x484d
    opword  0x41820020  // beq .L_80082790
    clrlwi r6, r0, 24
    extrwi r5, r0, 8, 16
    mr r4, r27
    addi r3, r31, 0x7c
    li r29, 0x0
    crclr 6
    bl fn_800890B0
L_80082790:
    lwz r5, 0xc(r27)
    cmplwi r5, 0x0
    opword  0x41820050  // beq .L_800827E8
    lhz r0, 0x0(r5)
    cmplwi r0, 0x484d
    opword  0x4182001C  // beq .L_800827C0
    mr r4, r27
    addi r3, r31, 0xa8
    li r29, 0x0
    crclr 6
    bl fn_800890B0
    opword  0x48000070  // b .L_8008282C
L_800827C0:
    lwz r0, 0x8(r5)
    cmplw r0, r27
    opword  0x41820040  // beq .L_80082808
    mr r4, r5
    mr r5, r0
    addi r3, r31, 0xd8
    li r29, 0x0
    crclr 6
    bl fn_800890B0
    opword  0x48000024  // b .L_80082808
L_800827E8:
    lwz r5, 0x84(r28)
    cmplw r5, r27
    opword  0x41820018  // beq .L_80082808
    mr r4, r27
    addi r3, r31, 0x104
    li r29, 0x0
    crclr 6
    bl fn_800890B0
L_80082808:
    lbz r0, 0x2(r27)
    lwz r3, 0x4(r27)
    clrlwi r0, r0, 25
    lwz r27, 0xc(r27)
    add r0, r3, r0
    add r30, r0, r30
    addi r30, r30, 0x10
L_80082824:
    cmplwi r27, 0x0
    opword  0x4082FF40  // bne .L_80082768
L_8008282C:
    lwz r27, 0x78(r28)
    opword  0x4800008C  // b .L_800828BC
L_80082834:
    lwz r4, 0xc(r27)
    lwz r0, 0x4(r27)
    cmplwi r4, 0x0
    add r30, r0, r30
    addi r30, r30, 0x10
    opword  0x41820050  // beq .L_80082898
    lwz r5, 0x8(r4)
    cmplw r5, r27
    opword  0x41820014  // beq .L_80082868
    addi r3, r31, 0xd8
    li r29, 0x0
    crclr 6
    bl fn_800890B0
L_80082868:
    lwz r5, 0x4(r27)
    lwz r0, 0xc(r27)
    addi r3, r5, 0x10
    add r3, r27, r3
    cmplw r3, r0
    opword  0x4081003C  // ble .L_800828B8
    mr r4, r27
    addi r3, r31, 0x130
    li r29, 0x0
    crclr 6
    bl fn_800890B0
    opword  0x48000024  // b .L_800828B8
L_80082898:
    lwz r5, 0x7c(r28)
    cmplw r5, r27
    opword  0x41820018  // beq .L_800828B8
    mr r4, r27
    addi r3, r31, 0x104
    li r29, 0x0
    crclr 6
    bl fn_800890B0
L_800828B8:
    lwz r27, 0xc(r27)
L_800828BC:
    cmplwi r27, 0x0
    opword  0x4082FF74  // bne .L_80082834
    lwz r4, 0x38(r28)
    cmplw r30, r4
    opword  0x41820018  // beq .L_800828E4
    mr r5, r30
    addi r3, r31, 0x158
    li r29, 0x0
    crclr 6
    bl fn_800890B0
L_800828E4:
    clrlwi. r0, r29, 24
    opword  0x4082000C  // bne .L_800828F4
    addi r3, r31, 0x188
    bl fn_8008918C
L_800828F4:
    addi r3, r28, 0x18
    bl OSUnlockMutex
    mr r3, r29
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80082914(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stmw r25, 0x24(r1)
    mr r26, r3
    lis r3, lbl_8045E300@ha
    addi r31, r3, lbl_8045E300@l
    addi r3, r26, 0x18
    bl OSLockMutex
    mr r3, r26
    lwz r12, 0x0(r26)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    mr r0, r3
    addi r3, r31, 0x1b0
    mr r30, r0
    li r29, 0x0
    li r28, 0x0
    li r27, 0x0
    bl fn_80089084
    addi r3, r31, 0x1e8
    bl fn_80089084
    lwz r0, 0x80(r26)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80082984
    opword  0x3862876C  // li r3, lbl_8053B70C@sda21
    bl fn_80089084
L_80082984:
    lwz r25, 0x80(r26)
    opword  0x4800007C  // b .L_80082A04
L_8008298C:
    lhz r0, 0x0(r25)
    cmplwi r0, 0x484d
    opword  0x41820018  // beq .L_800829AC
    mr r4, r25
    addi r3, r31, 0x1f8
    crclr 6
    bl fn_80088FA8
    opword  0x48000064  // b .L_80082A0C
L_800829AC:
    lbz r6, 0x2(r25)
    addi r5, r25, 0x10
    addi r3, r31, 0x234
    opword  0x3882877C  // li r4, lbl_8053B71C@sda21
    rlwinm. r0, r6, 0, 24, 24
    clrlwi r8, r6, 25
    opword  0x41820008  // beq .L_800829CC
    opword  0x38828774  // li r4, lbl_8053B714@sda21
L_800829CC:
    lwz r6, 0x4(r25)
    lbz r7, 0x3(r25)
    lwz r9, 0x8(r25)
    lwz r10, 0xc(r25)
    crclr 6
    bl fn_80088FA8
    lbz r0, 0x2(r25)
    addi r28, r28, 0x1
    lwz r3, 0x4(r25)
    clrlwi r0, r0, 25
    lwz r25, 0xc(r25)
    add r0, r3, r0
    add r29, r0, r29
    addi r29, r29, 0x10
L_80082A04:
    cmplwi r25, 0x0
    opword  0x4082FF84  // bne .L_8008298C
L_80082A0C:
    addi r3, r31, 0x25c
    bl fn_80089084
    lwz r0, 0x78(r26)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80082A28
    opword  0x3862876C  // li r3, lbl_8053B70C@sda21
    bl fn_80089084
L_80082A28:
    lwz r25, 0x78(r26)
    opword  0x48000038  // b .L_80082A64
L_80082A30:
    lbz r0, 0x2(r25)
    addi r3, r31, 0x234
    lwz r6, 0x4(r25)
    addi r5, r25, 0x10
    lbz r7, 0x3(r25)
    clrlwi r8, r0, 25
    lwz r9, 0x8(r25)
    opword  0x38828784  // li r4, lbl_8053B724@sda21
    lwz r10, 0xc(r25)
    crclr 6
    bl fn_80088FA8
    lwz r25, 0xc(r25)
    addi r27, r27, 0x1
L_80082A64:
    cmplwi r25, 0x0
    opword  0x4082FFC8  // bne .L_80082A30
    lis r0, 0x4330
    lwz r5, 0x38(r26)
    stw r29, 0xc(r1)
    mr r4, r29
    opword  0xC8428790  // lfd f2, lbl_8053B730@sda21(r0)
    mr r6, r28
    stw r0, 0x8(r1)
    mr r7, r27
    opword  0xC062878C  // lfs f3, lbl_8053B72C@sda21(r0)
    addi r3, r31, 0x26c
    lfd fp0, 0x8(r1)
    stw r5, 0x14(r1)
    fsubs fp1, fp0, fp2
    stw r0, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp1, fp0
    fmuls fp1, fp3, fp0
    crset 6
    bl fn_80088FA8
    addi r3, r26, 0x18
    bl OSUnlockMutex
    mr r3, r30
    lmw r25, 0x24(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80082ADC(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stmw r25, 0x24(r1)
    mr r26, r3
    lis r3, lbl_8045E300@ha
    addi r31, r3, lbl_8045E300@l
    addi r3, r26, 0x18
    bl OSLockMutex
    mr r3, r26
    lwz r12, 0x0(r26)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    mr r0, r3
    addi r3, r31, 0x1b0
    mr r30, r0
    li r29, 0x0
    li r28, 0x0
    li r27, 0x0
    bl fn_80089084
    addi r3, r31, 0x1e8
    bl fn_80089084
    lwz r0, 0x80(r26)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80082B50
    opword  0x3862876C  // li r3, lbl_8053B70C@sda21
    bl fn_80089084
    opword  0x480000B8  // b .L_80082C04
L_80082B50:
    li r4, 0x0
L_80082B54:
    lwz r3, 0x80(r26)
    li r25, -0x1
    opword  0x4800001C  // b .L_80082B78
L_80082B60:
    cmplw r4, r3
    opword  0x40800010  // bge .L_80082B74
    cmplw r3, r25
    opword  0x40800008  // bge .L_80082B74
    mr r25, r3
L_80082B74:
    lwz r3, 0xc(r3)
L_80082B78:
    cmplwi r3, 0x0
    opword  0x4082FFE4  // bne .L_80082B60
    addis r0, r25, 0x1
    cmplwi r0, 0xffff
    opword  0x4182007C  // beq .L_80082C04
    lhz r0, 0x0(r25)
    cmplwi r0, 0x484d
    opword  0x41820014  // beq .L_80082BA8
    addi r3, r31, 0x1f8
    crclr 6
    bl fn_80088FA8
    opword  0x48000060  // b .L_80082C04
L_80082BA8:
    lbz r6, 0x2(r25)
    addi r5, r25, 0x10
    addi r3, r31, 0x234
    opword  0x3882877C  // li r4, lbl_8053B71C@sda21
    rlwinm. r0, r6, 0, 24, 24
    clrlwi r8, r6, 25
    opword  0x41820008  // beq .L_80082BC8
    opword  0x38828774  // li r4, lbl_8053B714@sda21
L_80082BC8:
    lwz r6, 0x4(r25)
    lbz r7, 0x3(r25)
    lwz r9, 0x8(r25)
    lwz r10, 0xc(r25)
    crclr 6
    bl fn_80088FA8
    lbz r0, 0x2(r25)
    mr r4, r25
    lwz r3, 0x4(r25)
    addi r28, r28, 0x1
    clrlwi r0, r0, 25
    add r0, r3, r0
    add r29, r0, r29
    addi r29, r29, 0x10
    opword  0x4BFFFF54  // b .L_80082B54
L_80082C04:
    addi r3, r31, 0x25c
    bl fn_80089084
    lwz r0, 0x78(r26)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80082C20
    opword  0x3862876C  // li r3, lbl_8053B70C@sda21
    bl fn_80089084
L_80082C20:
    lwz r25, 0x78(r26)
    opword  0x48000038  // b .L_80082C5C
L_80082C28:
    lbz r0, 0x2(r25)
    addi r3, r31, 0x234
    lwz r6, 0x4(r25)
    addi r5, r25, 0x10
    lbz r7, 0x3(r25)
    clrlwi r8, r0, 25
    lwz r9, 0x8(r25)
    opword  0x38828784  // li r4, lbl_8053B724@sda21
    lwz r10, 0xc(r25)
    crclr 6
    bl fn_80088FA8
    lwz r25, 0xc(r25)
    addi r27, r27, 0x1
L_80082C5C:
    cmplwi r25, 0x0
    opword  0x4082FFC8  // bne .L_80082C28
    lis r0, 0x4330
    lwz r5, 0x38(r26)
    stw r29, 0xc(r1)
    mr r4, r29
    opword  0xC8428790  // lfd f2, lbl_8053B730@sda21(r0)
    mr r6, r28
    stw r0, 0x8(r1)
    mr r7, r27
    opword  0xC062878C  // lfs f3, lbl_8053B72C@sda21(r0)
    addi r3, r31, 0x26c
    lfd fp0, 0x8(r1)
    stw r5, 0x14(r1)
    fsubs fp1, fp0, fp2
    stw r0, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp1, fp0
    fmuls fp1, fp3, fp0
    crset 6
    bl fn_80088FA8
    addi r3, r26, 0x18
    bl OSUnlockMutex
    mr r3, r30
    lmw r25, 0x24(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80082CD4(void)
{
    nofralloc
    li r0, 0x484d
    sth r0, 0x0(r3)
    stb r8, 0x2(r3)
    stb r7, 0x3(r3)
    stw r6, 0x4(r3)
    stw r4, 0x8(r3)
    stw r5, 0xc(r3)
    blr
}

ASM void fn_80082CF4(void)
{
    nofralloc
    stb r5, 0x3(r3)
    addi r5, r4, 0x10
    li r9, 0x0
    stb r6, 0x2(r3)
    lwz r0, 0x4(r3)
    cmplw r0, r5
    opword  0x41800024  // blt .L_80082D30
    add r9, r4, r3
    stb r7, 0x13(r9)
    stb r8, 0x12(r9)
    lwz r0, 0x4(r3)
    subf r0, r5, r0
    stw r0, 0x14(r9)
    addi r9, r9, 0x10
    stw r4, 0x4(r3)
L_80082D30:
    mr r3, r9
    blr
}

ASM void fn_80082D38(void)
{
    nofralloc
    lwz r0, 0x4(r3)
    addi r10, r4, 0x10
    li r9, 0x0
    cmplw r0, r10
    opword  0x41800034  // blt .L_80082D7C
    add r9, r3, r0
    ori r0, r8, 0x80
    subf r9, r4, r9
    stb r7, 0x3(r9)
    stb r0, 0x2(r9)
    stw r4, 0x4(r9)
    stb r5, 0x3(r3)
    stb r6, 0x2(r3)
    lwz r0, 0x4(r3)
    subf r0, r10, r0
    stw r0, 0x4(r3)
    opword  0x48000010  // b .L_80082D88
L_80082D7C:
    stb r7, 0x3(r3)
    li r0, 0x80
    stb r0, 0x2(r3)
L_80082D88:
    mr r3, r9
    blr
}

ASM void fn_80082D90(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r3
    stw r0, 0x14(r1)
    lwz r5, 0x8(r3)
    lwz r3, 0xc(r3)
    cmplwi r5, 0x0
    opword  0x4082000C  // bne .L_80082DB8
    stw r3, 0x80(r4)
    opword  0x48000008  // b .L_80082DBC
L_80082DB8:
    stw r3, 0xc(r5)
L_80082DBC:
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80082DCC
    stw r5, 0x84(r4)
    opword  0x48000008  // b .L_80082DD0
L_80082DCC:
    stw r5, 0x8(r3)
L_80082DD0:
    mr r3, r4
    mr r4, r6
    bl fn_80082448
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80082DF0(void)
{
    nofralloc
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_80082E04
    lhzu r0, -0x10(r3)
    cmplwi r0, 0x484d
    beqlr
L_80082E04:
    li r3, 0x0
    blr
}

ASM void fn_80082E0C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    cmplwi r30, 0xff
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    stw r30, 0x14(r4)
    opword  0x41810050  // bgt .L_80082E8C
    addi r3, r28, 0x18
    bl OSLockMutex
    lwz r4, 0x80(r28)
    clrlwi r3, r30, 24
    li r31, 0x0
    opword  0x48000020  // b .L_80082E74
L_80082E58:
    lbz r0, 0x3(r4)
    cmplw r0, r3
    opword  0x40820010  // bne .L_80082E70
    lwz r0, 0x4(r4)
    add r31, r0, r31
    addi r31, r31, 0x10
L_80082E70:
    lwz r4, 0xc(r4)
L_80082E74:
    cmplwi r4, 0x0
    opword  0x4082FFE0  // bne .L_80082E58
    addi r3, r28, 0x18
    bl OSUnlockMutex
    stw r31, 0x0(r29)
    opword  0x48000014  // b .L_80082E9C
L_80082E8C:
    bl fn_80083A68
    lwz r0, 0x38(r28)
    subf r0, r3, r0
    stw r0, 0x0(r29)
L_80082E9C:
    lwz r4, 0x80(r28)
    li r3, 0x0
    opword  0x48000030  // b .L_80082ED4
L_80082EA8:
    cmplwi r30, 0xff
    opword  0x4181001C  // bgt .L_80082EC8
    lbz r0, 0x3(r4)
    cmplw r0, r30
    opword  0x40820018  // bne .L_80082ED0
    mulli r0, r4, 0x3
    add r3, r3, r0
    opword  0x4800000C  // b .L_80082ED0
L_80082EC8:
    mulli r0, r4, 0x3
    add r3, r3, r0
L_80082ED0:
    lwz r4, 0xc(r4)
L_80082ED4:
    cmplwi r4, 0x0
    opword  0x4082FFD0  // bne .L_80082EA8
    stw r3, 0x4(r29)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80082F00(void)
{
    nofralloc
    lwz r6, 0x4(r4)
    li r3, 0x1
    lwz r0, 0x4(r5)
    cmplw r6, r0
    opword  0x41820008  // beq .L_80082F18
    li r3, 0x0
L_80082F18:
    lwz r4, 0x0(r4)
    lwz r0, 0x0(r5)
    cmplw r4, r0
    beqlr
    li r3, 0x0
    blr
}

ASM void fn_80082F30(void)
{
    nofralloc
    lis r3, 0x4558
    addi r3, r3, 0x5048
    blr
}

ASM void fn_80082F3C(void)
{
    nofralloc
    lbz r3, 0x6d(r3)
    blr
}

ASM void fn_80082F44(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_80082F74
    lis r5, lbl_80498E38@ha
    extsh. r0, r4
    addi r0, r5, lbl_80498E38@l
    stw r0, 0xc(r31)
    opword  0x40810008  // ble .L_80082F74
    bl dtor_80084580
L_80082F74:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80082F8C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r9, lbl_80498E38@ha
    lis r8, lbl_80498E48@ha
    stw r0, 0x14(r1)
    subi r0, r6, 0x1
    neg r7, r6
    addi r9, r9, lbl_80498E38@l
    stw r31, 0xc(r1)
    andc r6, r7, r6
    addi r7, r8, lbl_80498E48@l
    add r0, r5, r0
    stw r9, 0xc(r3)
    li r9, 0x0
    srwi r6, r6, 31
    mr r31, r3
    stb r9, 0x10(r3)
    stb r9, 0x11(r3)
    stw r7, 0xc(r3)
    stw r4, 0x14(r3)
    stb r6, 0x10(r3)
    stw r5, 0x18(r3)
    stw r0, 0x1c(r3)
    lwz r0, 0x18(r3)
    stw r0, 0x20(r3)
    lwz r12, 0xc(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083018(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    lbz r0, 0x10(r3)
    cmplwi r0, 0x0
    opword  0x41820078  // beq .L_800830AC
    lwz r0, 0x1c(r31)
    lwz r5, 0x20(r31)
    srawi r4, r0, 31
    srwi r3, r5, 31
    subfc r0, r5, r0
    adde r0, r4, r3
    stb r0, 0x10(r31)
    lbz r0, 0x10(r31)
    cmplwi r0, 0x0
    opword  0x41820050  // beq .L_800830AC
    lwz r3, 0x14(r31)
    addi r4, r1, 0x8
    lwz r5, 0x20(r31)
    bl fn_8007CC20
    stb r3, 0x10(r31)
    lwz r0, 0xc(r1)
    stw r0, 0x0(r31)
    lwz r0, 0x20(r31)
    stw r0, 0x4(r31)
    lhz r0, 0xa(r1)
    sth r0, 0x8(r31)
    lbz r0, 0x8(r1)
    sth r0, 0xa(r31)
    lhz r0, 0xa(r31)
    extrwi r0, r0, 1, 30
    stb r0, 0x11(r31)
    lwz r3, 0x20(r31)
    addi r0, r3, 0x1
    stw r0, 0x20(r31)
L_800830AC:
    lwz r0, 0x24(r1)
    lbz r3, 0x10(r31)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800830C4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_80083108
    lis r3, lbl_80498E48@ha
    addi r0, r3, lbl_80498E48@l
    stw r0, 0xc(r31)
    opword  0x41820010  // beq .L_800830F8
    lis r3, lbl_80498E38@ha
    addi r0, r3, lbl_80498E38@l
    stw r0, 0xc(r31)
L_800830F8:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_80083108
    mr r3, r31
    bl dtor_80084580
L_80083108:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083120(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8007E6F4
    lis r3, lbl_80498E58@ha
    mr r4, r31
    addi r0, r3, lbl_80498E58@l
    addi r3, r31, 0x18
    stw r0, 0x0(r31)
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r31
    stw r0, 0x28(r31)
    stw r0, 0x2c(r31)
    stw r0, 0x34(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083178(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820054  // beq .L_800831E8
    lis r3, lbl_80498E58@ha
    addi r0, r3, lbl_80498E58@l
    stw r0, 0x0(r30)
    opword  0x800D8CE0  // lwz r0, lbl_8053A8A0@sda21(r0)
    cmplw r0, r30
    opword  0x4082000C  // bne .L_800831B8
    li r0, 0x0
    opword  0x900D8CE0  // stw r0, lbl_8053A8A0@sda21(r0)
L_800831B8:
    addic. r0, r30, 0x18
    opword  0x41820010  // beq .L_800831CC
    addi r3, r30, 0x18
    li r4, 0x0
    bl fn_80086E44
L_800831CC:
    mr r3, r30
    li r4, 0x0
    bl fn_8007E75C
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800831E8
    mr r3, r30
    bl dtor_80084580
L_800831E8:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083204(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r4, 0x34(r3)
    cmplwi r4, 0x0
    opword  0x4182002C  // beq .L_80083244
    subic. r0, r4, 0x1
    stw r0, 0x34(r3)
    opword  0x40820020  // bne .L_80083244
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_80083244
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_80083244:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083254(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r3, 0x8(r1)
    addi r3, r1, 0x8
    bl fn_80083338
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_8008327C
    li r3, 0x0
    opword  0x48000018  // b .L_80083290
L_8008327C:
    lwz r12, 0x0(r3)
    lwz r4, 0x8(r1)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
L_80083290:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800832A0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    li r3, 0x0
    opword  0x41820024  // beq .L_800832E4
    mr r3, r4
    mr r5, r30
    lwz r12, 0x0(r4)
    li r4, 0x0
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    opword  0x48000040  // b .L_80083320
L_800832E4:
    lis r4, lbl_8052E844@ha
    lwz r31, lbl_8052E844@l(r4)
    opword  0x4800002C  // b .L_80083318
L_800832F0:
    lwz r3, 0x0(r31)
    mr r5, r30
    li r4, 0x0
    lwz r12, 0x0(r3)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x40820010  // bne .L_80083320
    lwz r31, 0xc(r31)
L_80083318:
    cmplwi r31, 0x0
    opword  0x4082FFD4  // bne .L_800832F0
L_80083320:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083338(void)
{
    nofralloc
    stwu r1, -0x120(r1)
    mflr r0
    stw r0, 0x124(r1)
    stw r31, 0x11c(r1)
    mr r31, r3
    lwz r5, 0x0(r3)
    lbz r0, 0x0(r5)
    cmpwi r0, 0x2f
    opword  0x4182000C  // beq .L_80083364
    opword  0x806D8CE0  // lwz r3, lbl_8053A8A0@sda21(r0)
    opword  0x48000050  // b .L_800833B0
L_80083364:
    addi r3, r1, 0x8
    li r4, 0x101
    bl fn_800833C4
    stw r3, 0x0(r31)
    lis r4, lbl_8052E844@ha
    lwz r31, lbl_8052E844@l(r4)
    opword  0x48000028  // b .L_800833A4
L_80083380:
    lwz r4, 0x0(r31)
    addi r3, r1, 0x8
    lwz r4, 0x28(r4)
    bl strcmp
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_800833A0
    lwz r3, 0x0(r31)
    opword  0x48000014  // b .L_800833B0
L_800833A0:
    lwz r31, 0xc(r31)
L_800833A4:
    cmplwi r31, 0x0
    opword  0x4082FFD8  // bne .L_80083380
    li r3, 0x0
L_800833B0:
    lwz r0, 0x124(r1)
    lwz r31, 0x11c(r1)
    mtlr r0
    addi r1, r1, 0x120
    blr
}

ASM void fn_800833C4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    opword  0x38828798  // li r4, lbl_8053B738@sda21
    stw r29, 0x14(r1)
    mr r29, r3
    mr r3, r31
    bl strcmp
    cmpwi r3, 0x0
    opword  0x40820018  // bne .L_80083410
    mr r3, r29
    opword  0x388D81B8  // li r4, lbl_80539D78@sda21
    bl strcpy
    opword  0x386D81B8  // li r3, lbl_80539D78@sda21
    opword  0x4800007C  // b .L_80083488
L_80083410:
    lis r3, lbl_80497DF0@ha
    addi r31, r31, 0x1
    addi r3, r3, lbl_80497DF0@l
    opword  0x48000038  // b .L_80083454
L_80083420:
    cmpwi r30, 0x1
    opword  0x4081002C  // ble .L_80083450
    extsb r0, r4
    cmpwi r0, -0x1
    opword  0x4082000C  // bne .L_8008343C
    li r0, -0x1
    opword  0x4800000C  // b .L_80083444
L_8008343C:
    clrlwi r0, r0, 24
    lbzx r0, r3, r0
L_80083444:
    stb r0, 0x0(r29)
    addi r29, r29, 0x1
    subi r30, r30, 0x1
L_80083450:
    addi r31, r31, 0x1
L_80083454:
    lbz r4, 0x0(r31)
    extsb. r0, r4
    opword  0x41820010  // beq .L_8008346C
    extsb r0, r4
    cmpwi r0, 0x2f
    opword  0x4082FFB8  // bne .L_80083420
L_8008346C:
    li r0, 0x0
    stb r0, 0x0(r29)
    lbz r0, 0x0(r31)
    extsb. r0, r0
    opword  0x40820008  // bne .L_80083484
    opword  0x3BED81B8  // li r31, lbl_80539D78@sda21
L_80083484:
    mr r3, r31
L_80083488:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

