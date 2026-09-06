#include "types.h"

extern f32 jumptable_8049BC40;
extern f32 jumptable_8049BC70;
extern f32 lbl_80463450;
extern f32 lbl_80463470;
extern f32 lbl_80463510;
extern f32 lbl_8046353C;
extern f32 lbl_8049A4A0;
extern f32 lbl_8049AA28;
extern f32 lbl_8049BA98;
extern f32 lbl_8049BAA4;
extern f32 lbl_8049BAB0;
extern f32 lbl_8049BAF0;
extern f32 lbl_8049BB50;
extern f32 lbl_8049BBB0;
extern f32 lbl_8049BBE0;
extern f32 lbl_8049BC10;
extern f32 lbl_8049BCB4;
extern f32 lbl_8049BCDC;
extern f32 lbl_8049BD04;
extern f32 lbl_8049BD2C;
extern f32 lbl_8049BD4C;
extern f32 lbl_8049BD74;
extern f32 lbl_8049BDE4;
extern f32 lbl_80536C50;
extern f32 lbl_80539B14;
extern f32 lbl_8053A760;
extern f32 lbl_8053AA00;
extern f32 lbl_8053AA04;
extern f32 lbl_8053AA08;
extern f32 lbl_8053AA0C;
extern f32 lbl_8053AA10;
extern f32 lbl_8053AA11;
extern f32 lbl_8053AA14;
extern f32 lbl_8053AA18;
extern f32 lbl_8053AA20;
extern f32 lbl_8053AA24;
extern f32 lbl_8053BBB4;
extern f32 lbl_8053BBD0;
extern f32 lbl_8053BBD4;
extern f32 lbl_8053BBD8;
extern f32 lbl_8053BBE4;
extern f32 lbl_8053BCD0;
extern f32 lbl_8053BCD4;
extern f32 lbl_8053BCD8;
extern f32 lbl_8053BCDC;
extern f32 lbl_80543F10;
extern f32 lbl_80543F14;

extern void OSDisableInterrupts(void);
extern void OSDisableScheduler(void);
extern void OSEnableScheduler(void);
extern void OSRestoreInterrupts(void);
extern void __ptmf_scall(void);
extern void dtor_80084580(void);
extern void PSMTXCopy(void);
extern void PSMTXConcat(void);
extern void PSMTXInverse(void);
extern void fn_8005B620(void);
extern void fn_8005FEC8(void);
extern void fn_80071098(void);
extern void fn_80084370(void);
extern void fn_800A64CC(void);
extern void fn_800A64FC(void);
extern void fn_800B187C(void);
extern void fn_800B18F4(void);
extern void fn_800B190C(void);
extern void fn_800BA658(void);
extern void fn_800BA67C(void);
extern void fn_800BB618(void);
extern void fn_800BB7AC(void);
extern void fn_800BB7E8(void);
extern void fn_800BB8D8(void);
extern void fn_800BBA14(void);
extern void fn_800BBC3C(void);
extern void fn_800BBCE8(void);
extern void fn_800BBD94(void);
extern void fn_800BBE3C(void);
extern void fn_800BBEE4(void);
extern void fn_800BBF48(void);
extern void fn_800BBF9C(void);
extern void fn_800BDA0C(void);
extern void fn_800BDD68(void);
extern void fn_800BDF88(void);
extern void fn_800BE3F0(void);
extern void fn_800BE684(void);
extern void fn_800BE87C(void);
extern void fn_800BEBAC(void);
extern void fn_800C768C(void);
extern void fn_800C76CC(void);
extern void fn_800C770C(void);
extern void fn_800CB4C0(void);
extern void fn_800CBF08(void);
extern void fn_800CBF20(void);
extern void fn_800CBF38(void);
extern void fn_800CBF50(void);
extern void fn_800CBF68(void);
extern void fn_800CBF80(void);
extern void fn_800CBF98(void);
extern void fn_800CBFB0(void);
extern void fn_800CBFC8(void);
extern void fn_800CBFE0(void);
extern void fn_800CBFF8(void);
extern void fn_800CC010(void);
extern void fn_800CC040(void);
extern void fn_800D3168(void);
extern void fn_800D31E8(void);
extern void fn_800D3254(void);
extern void fn_800D32C0(void);
extern void fn_800D3358(void);
extern void fn_800E34CC(void);
extern void fn_800E4870(void);
extern void fn_800E4910(void);

ASM void fn_800DF700(void);
ASM void fn_800DF718(void);
ASM void fn_800DF798(void);
ASM void fn_800DF7E0(void);
ASM void fn_800DF844(void);
ASM void fn_800DF908(void);
ASM void fn_800DF944(void);
ASM void fn_800DF9DC(void);
ASM void fn_800DFA04(void);
ASM void fn_800DFA38(void);
ASM void fn_800DFA80(void);
ASM void fn_800DFA98(void);
ASM void fn_800DFABC(void);
ASM void fn_800DFAD4(void);
ASM void fn_800DFAEC(void);
ASM void fn_800DFB04(void);
ASM void fn_800DFD94(void);
ASM void fn_800DFEFC(void);
ASM void fn_800E00DC(void);
ASM void fn_800E0128(void);
ASM void fn_800E0960(void);
ASM void fn_800E09B8(void);
ASM void fn_800E09F0(void);
ASM void fn_800E0B84(void);
ASM void fn_800E0BBC(void);
ASM void fn_800E0C1C(void);
ASM void fn_800E0CB4(void);
ASM void fn_800E0CF4(void);
ASM void fn_800E0D3C(void);
ASM void fn_800E0D88(void);
ASM void fn_800E0DF8(void);
ASM void fn_800E0E50(void);
ASM void fn_800E0E88(void);
ASM void fn_800E0EE8(void);
ASM void fn_800E0F84(void);
ASM void fn_800E10C4(void);
ASM void fn_800E1144(void);
ASM void fn_800E1188(void);
ASM void fn_800E11E8(void);
ASM void fn_800E1220(void);
ASM void fn_800E1258(void);
ASM void fn_800E1300(void);
ASM void fn_800E1318(void);
ASM void fn_800E1354(void);
ASM void fn_800E1398(void);
ASM void fn_800E13F8(void);
ASM void fn_800E1444(void);
ASM void fn_800E149C(void);
ASM void fn_800E1A7C(void);
ASM void fn_800E1B24(void);
ASM void fn_800E1BD8(void);
ASM void fn_800E1C80(void);
ASM void fn_800E1D34(void);
ASM void fn_800E1E08(void);
ASM void fn_800E1E64(void);
ASM void fn_800E1EC8(void);
ASM void fn_800E1F9C(void);
ASM void fn_800E20C0(void);
ASM void fn_800E216C(void);
ASM void fn_800E221C(void);
ASM void fn_800E2408(void);
ASM void fn_800E2540(void);
ASM void fn_800E2648(void);
ASM void fn_800E2784(void);
ASM void fn_800E27F0(void);
ASM void fn_800E27FC(void);
ASM void fn_800E2800(void);
ASM void fn_800E286C(void);
ASM void fn_800E2878(void);
ASM void fn_800E28E4(void);
ASM void fn_800E28F0(void);
ASM void fn_800E28F8(void);
ASM void fn_800E2908(void);
ASM void fn_800E290C(void);
ASM void fn_800E2968(void);
ASM void fn_800E2974(void);
ASM void fn_800E297C(void);
ASM void fn_800E298C(void);

ASM void fn_800DF700(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    sth r0, 0xc(r3)
    sth r0, 0xe(r3)
    blr
}

ASM void fn_800DF718(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_8049BAA4@ha
    stw r0, 0x14(r1)
    addi r0, r4, lbl_8049BAA4@l
    stw r31, 0xc(r1)
    mr r31, r3
    stw r0, 0x0(r3)
    addi r3, r31, 0x10
    bl fn_800E34CC
    addi r3, r31, 0x58
    bl fn_800DFA04
    lis r3, lbl_8049BA98@ha
    li r0, 0x0
    addi r4, r3, lbl_8049BA98@l
    addi r3, r31, 0x88
    stw r4, 0x78(r31)
    sth r0, 0x7c(r31)
    stw r0, 0x80(r31)
    stw r0, 0x84(r31)
    bl fn_800BB618
    li r0, 0x0
    mr r3, r31
    stw r0, 0x4(r31)
    stw r0, 0x8(r31)
    sth r0, 0xc(r31)
    sth r0, 0xe(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800DF798(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800DF7C8
    lis r5, lbl_8049BA98@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049BA98@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800DF7C8
    bl dtor_80084580
L_800DF7C8:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800DF7E0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182002C  // beq .L_800DF828
    lis r4, lbl_8049BDE4@ha
    addi r3, r30, 0x34
    addi r0, r4, lbl_8049BDE4@l
    li r4, -0x1
    stw r0, 0x0(r30)
    bl fn_800BB7AC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800DF828
    mr r3, r30
    bl dtor_80084580
L_800DF828:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800DF844(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r27, 0x1c(r1)
    mr r27, r3
    lis r3, lbl_80536C50@ha
    addi r3, r3, lbl_80536C50@l
    opword  0x880D8E44  // lbz r0, lbl_8053AA04@sda21(r0)
    lwz r4, 0x6c(r27)
    extsb. r0, r0
    stw r4, 0x58(r3)
    opword  0x40820014  // bne .L_800DF884
    bl OSDisableInterrupts
    li r0, 0x1
    opword  0x906D8E40  // stw r3, lbl_8053AA00@sda21(r0)
    opword  0x980D8E44  // stb r0, lbl_8053AA04@sda21(r0)
L_800DF884:
    bl OSDisableScheduler
    lhz r30, 0x5c(r27)
    addi r31, r1, 0x8
    li r28, 0x0
    opword  0x48000040  // b .L_800DF8D4
L_800DF898:
    lwz r4, 0x60(r27)
    clrlslwi r0, r28, 16, 2
    addi r3, r1, 0x8
    lwzx r29, r4, r0
    lwz r5, 0x48(r29)
    lwz r4, 0x0(r5)
    lwz r5, 0x8(r5)
    bl fn_80071098
    opword  0x93ED8BA0  // stw r31, lbl_8053A760@sda21(r0)
    lwz r3, 0x2c(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    addi r28, r28, 0x1
L_800DF8D4:
    clrlwi r0, r28, 16
    cmplw r0, r30
    opword  0x4180FFBC  // blt .L_800DF898
    li r0, 0x0
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    bl OSEnableScheduler
    opword  0x806D8E40  // lwz r3, lbl_8053AA00@sda21(r0)
    bl OSRestoreInterrupts
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800DF908(void)
{
    nofralloc
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 26, 26
    opword  0x4182001C  // beq .L_800DF92C
    lis r3, lbl_80536C50@ha
    addi r3, r3, lbl_80536C50@l
    lwz r0, 0x34(r3)
    oris r0, r0, 0x4000
    stw r0, 0x34(r3)
    blr
L_800DF92C:
    lis r3, lbl_80536C50@ha
    addi r3, r3, lbl_80536C50@l
    lwz r0, 0x34(r3)
    rlwinm r0, r0, 0, 2, 0
    stw r0, 0x34(r3)
    blr
}

ASM void fn_800DF944(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820060  // beq .L_800DF9C0
    lis r3, lbl_8049BAA4@ha
    addic. r0, r30, 0x78
    addi r0, r3, lbl_8049BAA4@l
    stw r0, 0x0(r30)
    opword  0x41820010  // beq .L_800DF984
    lis r3, lbl_8049BA98@ha
    addi r0, r3, lbl_8049BA98@l
    stw r0, 0x78(r30)
L_800DF984:
    addi r3, r30, 0x58
    li r4, -0x1
    bl fn_800DFA38
    addic. r0, r30, 0x10
    opword  0x4182001C  // beq .L_800DF9B0
    lis r4, lbl_8049BDE4@ha
    addi r3, r30, 0x44
    addi r0, r4, lbl_8049BDE4@l
    li r4, -0x1
    stw r0, 0x10(r30)
    bl fn_800BB7AC
L_800DF9B0:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800DF9C0
    mr r3, r30
    bl dtor_80084580
L_800DF9C0:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800DF9DC(void)
{
    nofralloc
    li r0, 0x0
    sth r0, 0x4(r3)
    sth r0, 0x6(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
    stw r0, 0x10(r3)
    stw r0, 0x14(r3)
    stw r0, 0x18(r3)
    sth r0, 0x1c(r3)
    blr
}

ASM void fn_800DFA04(void)
{
    nofralloc
    lis r4, lbl_8049BAB0@ha
    li r0, 0x0
    addi r4, r4, lbl_8049BAB0@l
    stw r4, 0x0(r3)
    sth r0, 0x4(r3)
    sth r0, 0x6(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
    stw r0, 0x10(r3)
    stw r0, 0x14(r3)
    stw r0, 0x18(r3)
    sth r0, 0x1c(r3)
    blr
}

ASM void fn_800DFA38(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800DFA68
    lis r5, lbl_8049BAB0@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049BAB0@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800DFA68
    bl dtor_80084580
L_800DFA68:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800DFA80(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x1
    sth r4, 0x0(r3)
    sth r0, 0x2(r3)
    stw r4, 0x4(r3)
    blr
}

ASM void fn_800DFA98(void)
{
    nofralloc
    lis r5, lbl_8049AA28@ha
    li r4, 0x0
    addi r5, r5, lbl_8049AA28@l
    li r0, 0x1
    stw r5, 0x0(r3)
    sth r4, 0x4(r3)
    sth r0, 0x6(r3)
    stw r4, 0x8(r3)
    blr
}

ASM void fn_800DFABC(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x1
    sth r4, 0x0(r3)
    sth r0, 0x2(r3)
    stw r4, 0x4(r3)
    blr
}

ASM void fn_800DFAD4(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x1
    sth r4, 0x0(r3)
    sth r0, 0x2(r3)
    stw r4, 0x4(r3)
    blr
}

ASM void fn_800DFAEC(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x1
    sth r4, 0x0(r3)
    sth r0, 0x2(r3)
    stw r4, 0x4(r3)
    blr
}

ASM void fn_800DFB04(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stmw r23, 0x1c(r1)
    mr r26, r4
    lis r4, 0x5555
    mr r25, r3
    addi r4, r4, 0x5556
    li r31, 0x0
    lhz r0, 0x14(r26)
    mulhw r3, r4, r0
    lhz r0, 0x1c(r25)
    cmplwi r0, 0x1
    srwi r0, r3, 31
    add r0, r3, r0
    clrlwi r30, r0, 16
    opword  0x4082000C  // bne .L_800DFB50
    li r31, 0x2
    opword  0x480000D4  // b .L_800DFC20
L_800DFB50:
    mr r27, r31
    opword  0x480000C0  // b .L_800DFC14
L_800DFB58:
    lwz r3, 0x2c(r26)
    clrlslwi r0, r27, 16, 1
    clrlwi r6, r27, 16
    lhzx r0, r3, r0
    cmplwi r0, 0xffff
    opword  0x418200A4  // beq .L_800DFC10
    lwz r5, 0x8(r25)
    clrlslwi r4, r0, 16, 2
    lwz r3, 0x28(r26)
    lis r0, 0xc000
    lwzx r28, r5, r4
    lbzx r24, r3, r6
    lwz r3, 0x3c(r28)
    cmplw r3, r0
    opword  0x40800008  // bge .L_800DFB98
    opword  0x48000008  // b .L_800DFB9C
L_800DFB98:
    li r3, 0x0
L_800DFB9C:
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_800DFBAC
    li r31, 0x1
    opword  0x48000068  // b .L_800DFC10
L_800DFBAC:
    cmplwi r24, 0xff
    opword  0x41820060  // beq .L_800DFC10
    lwz r3, 0x28(r28)
    mr r4, r24
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x40820040  // bne .L_800DFC10
    li r3, 0x94
    bl fn_80084370
    mr. r29, r3
    opword  0x41820010  // beq .L_800DFBF0
    lis r4, lbl_80463470@ha
    addi r4, r4, lbl_80463470@l
    bl fn_800E4870
L_800DFBF0:
    lwz r3, 0x28(r28)
    mr r4, r24
    mr r5, r29
    li r31, 0x4
    lwz r12, 0x0(r3)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
L_800DFC10:
    addi r27, r27, 0x1
L_800DFC14:
    clrlwi r0, r27, 16
    cmplw r0, r30
    opword  0x4180FF3C  // blt .L_800DFB58
L_800DFC20:
    cmpwi r31, 0x0
    mr r28, r31
    opword  0x4182000C  // beq .L_800DFC34
    mr r3, r31
    opword  0x48000150  // b .L_800DFD80
L_800DFC34:
    lhz r0, 0x1c(r25)
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_800DFC48
    li r3, 0x2
    opword  0x4800013C  // b .L_800DFD80
L_800DFC48:
    li r27, 0x0
    opword  0x48000124  // b .L_800DFD70
L_800DFC50:
    lwz r3, 0x2c(r26)
    clrlslwi r0, r27, 16, 1
    clrlwi r29, r27, 16
    lhzx r0, r3, r0
    cmplwi r0, 0xffff
    opword  0x41820108  // beq .L_800DFD6C
    lwz r4, 0x8(r25)
    clrlslwi r3, r0, 16, 2
    lis r0, 0xc000
    lwzx r24, r4, r3
    lwz r31, 0x3c(r24)
    cmplw r31, r0
    opword  0x40800008  // bge .L_800DFC88
    opword  0x48000008  // b .L_800DFC8C
L_800DFC88:
    li r31, 0x0
L_800DFC8C:
    lwz r3, 0x28(r26)
    cmplwi r31, 0x0
    lbzx r23, r3, r29
    opword  0x4082000C  // bne .L_800DFCA4
    li r28, 0x1
    opword  0x480000CC  // b .L_800DFD6C
L_800DFCA4:
    cmplwi r23, 0xff
    opword  0x418200C4  // beq .L_800DFD6C
    lwz r3, 0x28(r24)
    mr r4, r23
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820028  // beq .L_800DFCF0
    lwz r3, 0x28(r24)
    mr r4, r23
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    mulli r4, r23, 0x3
    addi r0, r4, 0x1e
    stb r0, 0x2(r3)
L_800DFCF0:
    lwz r3, 0x28(r24)
    mr r4, r23
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    lwz r4, 0x78(r26)
    mulli r9, r29, 0xc
    lbz r6, 0x1(r3)
    li r0, 0x1
    slwi r5, r4, 7
    rlwimi r5, r6, 0, 26, 31
    mr r4, r23
    stb r5, 0x1(r3)
    addi r7, r9, 0x4
    addi r6, r9, 0x8
    addi r5, r1, 0x8
    lwz r8, 0x40(r26)
    lfsx fp0, r8, r9
    stfs fp0, 0x4(r3)
    lwz r8, 0x40(r26)
    lfsx fp0, r8, r7
    stfs fp0, 0x8(r3)
    lwz r7, 0x40(r26)
    lfsx fp0, r7, r6
    stfs fp0, 0xc(r3)
    mr r3, r31
    sth r27, 0x8(r1)
    sth r0, 0xa(r1)
    stw r26, 0xc(r1)
    bl fn_800C768C
L_800DFD6C:
    addi r27, r27, 0x1
L_800DFD70:
    clrlwi r0, r27, 16
    cmplw r0, r30
    opword  0x4180FED8  // blt .L_800DFC50
    mr r3, r28
L_800DFD80:
    lmw r23, 0x1c(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800DFD94(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r26, 0x18(r1)
    mr r26, r3
    mr r27, r4
    li r29, 0x0
    lhz r0, 0x1c(r3)
    lhz r31, 0xc(r4)
    cmplwi r0, 0x1
    lhz r30, 0xe(r4)
    opword  0x4082000C  // bne .L_800DFDCC
    li r3, 0x2
    opword  0x48000120  // b .L_800DFEE8
L_800DFDCC:
    li r28, 0x0
    opword  0x4800007C  // b .L_800DFE4C
L_800DFDD4:
    lwz r3, 0x20(r27)
    clrlslwi r0, r28, 16, 1
    clrlwi r5, r28, 16
    lhzx r0, r3, r0
    cmplwi r0, 0xffff
    opword  0x41820060  // beq .L_800DFE48
    lwz r4, 0x8(r26)
    clrlslwi r3, r0, 16, 2
    lis r0, 0xc000
    lwzx r3, r4, r3
    lwz r3, 0x3c(r3)
    cmplw r3, r0
    opword  0x40800008  // bge .L_800DFE0C
    opword  0x48000008  // b .L_800DFE10
L_800DFE0C:
    li r3, 0x0
L_800DFE10:
    mulli r4, r5, 0x1c
    lwz r5, 0x48(r27)
    cmplwi r3, 0x0
    addi r0, r4, 0x18
    lbzx r4, r5, r0
    opword  0x4082000C  // bne .L_800DFE30
    li r29, 0x1
    opword  0x4800001C  // b .L_800DFE48
L_800DFE30:
    li r0, 0x1
    sth r28, 0x10(r1)
    addi r5, r1, 0x10
    sth r0, 0x12(r1)
    stw r27, 0x14(r1)
    bl fn_800C76CC
L_800DFE48:
    addi r28, r28, 0x1
L_800DFE4C:
    clrlwi r0, r28, 16
    cmplw r0, r31
    opword  0x4180FF80  // blt .L_800DFDD4
    li r28, 0x0
    opword  0x4800007C  // b .L_800DFED8
L_800DFE60:
    lwz r3, 0x34(r27)
    clrlslwi r0, r28, 16, 1
    clrlwi r5, r28, 16
    lhzx r0, r3, r0
    cmplwi r0, 0xffff
    opword  0x41820060  // beq .L_800DFED4
    lwz r4, 0x8(r26)
    clrlslwi r3, r0, 16, 2
    lis r0, 0xc000
    lwzx r3, r4, r3
    lwz r3, 0x3c(r3)
    cmplw r3, r0
    opword  0x40800008  // bge .L_800DFE98
    opword  0x48000008  // b .L_800DFE9C
L_800DFE98:
    li r3, 0x0
L_800DFE9C:
    mulli r4, r5, 0x1c
    lwz r5, 0x4c(r27)
    cmplwi r3, 0x0
    addi r0, r4, 0x18
    lbzx r4, r5, r0
    opword  0x4082000C  // bne .L_800DFEBC
    li r29, 0x1
    opword  0x4800001C  // b .L_800DFED4
L_800DFEBC:
    li r0, 0x1
    sth r28, 0x8(r1)
    addi r5, r1, 0x8
    sth r0, 0xa(r1)
    stw r27, 0xc(r1)
    bl fn_800C770C
L_800DFED4:
    addi r28, r28, 0x1
L_800DFED8:
    clrlwi r0, r28, 16
    cmplw r0, r30
    opword  0x4180FF80  // blt .L_800DFE60
    mr r3, r29
L_800DFEE8:
    lmw r26, 0x18(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800DFEFC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lhz r0, 0x8(r4)
    stw r31, 0xc(r1)
    mr r31, r4
    lwz r4, 0xc(r4)
    stw r30, 0x8(r1)
    mr r30, r3
    mr r3, r31
    sth r0, 0x0(r30)
    bl fn_800E1300
    stw r3, 0x4(r30)
    mr r3, r31
    lwz r4, 0x10(r31)
    bl fn_800A64FC
    stw r3, 0x8(r30)
    mr r3, r31
    lwz r4, 0x18(r31)
    bl fn_800B190C
    stw r3, 0x30(r30)
    mr r3, r31
    lwz r4, 0x1c(r31)
    bl fn_800B18F4
    stw r3, 0xc(r30)
    mr r3, r31
    lwz r4, 0x20(r31)
    bl fn_800A64CC
    stw r3, 0x10(r30)
    mr r3, r31
    lwz r4, 0x24(r31)
    bl fn_800CC040
    stw r3, 0x14(r30)
    mr r3, r31
    lwz r4, 0x28(r31)
    bl fn_800A64CC
    stw r3, 0x18(r30)
    mr r3, r31
    lwz r4, 0x2c(r31)
    bl fn_800CC010
    stw r3, 0x1c(r30)
    mr r3, r31
    lwz r4, 0x30(r31)
    bl fn_800CBFF8
    stw r3, 0x20(r30)
    mr r3, r31
    lwz r4, 0x34(r31)
    bl fn_800CBFE0
    stw r3, 0x24(r30)
    mr r3, r31
    lwz r4, 0x38(r31)
    bl fn_800CBFE0
    stw r3, 0x28(r30)
    mr r3, r31
    lwz r4, 0x3c(r31)
    bl fn_800A64FC
    stw r3, 0x2c(r30)
    mr r3, r31
    lwz r4, 0x40(r31)
    bl fn_800CBFC8
    stw r3, 0x34(r30)
    mr r3, r31
    lwz r4, 0x44(r31)
    bl fn_800B187C
    stw r3, 0x38(r30)
    mr r3, r31
    lwz r4, 0x48(r31)
    bl fn_800B18F4
    stw r3, 0x3c(r30)
    mr r3, r31
    lwz r4, 0x4c(r31)
    bl fn_800A64CC
    stw r3, 0x40(r30)
    mr r3, r31
    lwz r4, 0x50(r31)
    bl fn_800CBFB0
    stw r3, 0x44(r30)
    mr r3, r31
    lwz r4, 0x54(r31)
    bl fn_800CBF98
    stw r3, 0x48(r30)
    mr r3, r31
    lwz r4, 0x58(r31)
    bl fn_800CBF80
    stw r3, 0x4c(r30)
    mr r3, r31
    lwz r4, 0x5c(r31)
    bl fn_800CBF68
    stw r3, 0x50(r30)
    mr r3, r31
    lwz r4, 0x60(r31)
    bl fn_800CBF50
    stw r3, 0x54(r30)
    mr r3, r31
    lwz r4, 0x64(r31)
    bl fn_800CBF38
    stw r3, 0x58(r30)
    mr r3, r31
    lwz r4, 0x68(r31)
    bl fn_800CBF20
    stw r3, 0x5c(r30)
    mr r3, r31
    lwz r4, 0x6c(r31)
    bl fn_800A64CC
    stw r3, 0x60(r30)
    mr r3, r31
    lwz r4, 0x70(r31)
    bl fn_800A64CC
    stw r3, 0x64(r30)
    mr r3, r31
    lwz r4, 0x74(r31)
    bl fn_800CBF08
    stw r3, 0x68(r30)
    mr r3, r30
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E00DC(void)
{
    nofralloc
    lhz r5, 0x0(r3)
    li r3, 0x0
    cmplwi r5, 0x0
    blelr
    cmplwi r5, 0x8
    subi r0, r5, 0x8
    opword  0x40810024  // ble .L_800E0118
    clrlwi r0, r0, 16
    opword  0x48000008  // b .L_800E0104
L_800E0100:
    addi r3, r3, 0x8
L_800E0104:
    clrlwi r4, r3, 16
    cmplw r4, r0
    opword  0x4180FFF4  // blt .L_800E0100
    opword  0x48000008  // b .L_800E0118
L_800E0114:
    addi r3, r3, 0x1
L_800E0118:
    clrlwi r0, r3, 16
    cmplw r0, r5
    opword  0x4180FFF4  // blt .L_800E0114
    blr
}

ASM void fn_800E0128(void)
{
    nofralloc
    stwu r1, -0xf0(r1)
    mflr r0
    li r7, 0x0
    stw r0, 0xf4(r1)
    stmw r19, 0xbc(r1)
    mr r30, r3
    lwz r3, 0x8(r3)
    slwi r27, r5, 1
    mr r29, r5
    lwz r5, 0x4(r30)
    mr r31, r4
    lhzx r0, r3, r27
    mr r3, r7
    mulli r0, r0, 0x138
    add r4, r5, r0
    lbz r0, 0x4(r4)
    cmplwi r0, 0xff
    opword  0x4182000C  // beq .L_800E0178
    lwz r3, 0x40(r30)
    lbzx r3, r3, r0
L_800E0178:
    lhz r0, 0x70(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E0188
    li r7, 0x1
L_800E0188:
    lhz r0, 0x72(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E0198
    addi r7, r7, 0x1
L_800E0198:
    lhz r0, 0x74(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E01A8
    addi r7, r7, 0x1
L_800E01A8:
    lhz r0, 0x76(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E01B8
    addi r7, r7, 0x1
L_800E01B8:
    lhz r0, 0x78(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E01C8
    addi r7, r7, 0x1
L_800E01C8:
    lhz r0, 0x7a(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E01D8
    addi r7, r7, 0x1
L_800E01D8:
    lhz r0, 0x7c(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E01E8
    addi r7, r7, 0x1
L_800E01E8:
    lhz r0, 0x7e(r4)
    cmplwi r0, 0xffff
    opword  0x41820008  // beq .L_800E01F8
    addi r7, r7, 0x1
L_800E01F8:
    cmplw r3, r7
    opword  0x4182001C  // beq .L_800E0218
    cmplwi r7, 0x0
    opword  0x41820014  // beq .L_800E0218
    cmplw r3, r7
    opword  0x40810010  // ble .L_800E021C
    mr r7, r3
    opword  0x48000008  // b .L_800E021C
L_800E0218:
    mr r7, r3
L_800E021C:
    extrwi r28, r6, 5, 11
    cmplw r7, r28
    opword  0x40810008  // ble .L_800E022C
    mr r28, r7
L_800E022C:
    cmplwi r28, 0x8
    li r25, 0x8
    opword  0x41810008  // bgt .L_800E023C
    mr r25, r28
L_800E023C:
    lbz r0, 0x3(r4)
    cmplwi r0, 0xff
    opword  0x41820010  // beq .L_800E0254
    lwz r3, 0x18(r30)
    lbzx r26, r3, r0
    opword  0x48000008  // b .L_800E0258
L_800E0254:
    li r26, 0x0
L_800E0258:
    li r0, 0x4
    cmplwi r31, 0x0
    subfc r3, r26, r0
    clrrwi r23, r6, 30
    rlwinm r0, r6, 0, 4, 5
    rlwinm r22, r6, 0, 2, 3
    subfe r3, r3, r3
    extrwi r21, r6, 1, 7
    andc r24, r0, r3
    opword  0x4082003C  // bne .L_800E02B8
    li r3, 0x4c
    bl fn_80084370
    mr. r31, r3
    opword  0x4182002C  // beq .L_800E02B8
    lis r4, lbl_8049A4A0@ha
    lis r5, 0x3cf4
    addi r0, r4, lbl_8049A4A0@l
    lis r4, 0xf4
    stw r0, 0x0(r31)
    subi r5, r5, 0x3100
    subi r0, r4, 0x30c4
    stw r5, 0x40(r31)
    stw r0, 0x44(r31)
    bl fn_800BEBAC
L_800E02B8:
    mr r3, r23
    bl fn_800BDA0C
    stw r3, 0x24(r31)
    mr r3, r24
    bl fn_800BDD68
    stw r3, 0x28(r31)
    clrlwi r3, r28, 16
    bl fn_800BDF88
    stw r3, 0x2c(r31)
    mr r3, r21
    bl fn_800BE684
    stw r3, 0x30(r31)
    mr r3, r22
    lwz r4, 0x8(r30)
    lwz r5, 0x4(r30)
    lhzx r0, r4, r27
    mulli r0, r0, 0x138
    lbzx r4, r5, r0
    bl fn_800BE87C
    stw r3, 0x34(r31)
    mr r3, r30
    lwz r5, 0x8(r30)
    mr r4, r29
    sth r29, 0x14(r31)
    lwz r6, 0x4(r30)
    lhzx r0, r5, r27
    mulli r0, r0, 0x138
    lbzx r0, r6, r0
    stw r0, 0x10(r31)
    bl fn_800E09B8
    mr r4, r3
    lwz r3, 0x24(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r29
    bl fn_800E0CB4
    mr r4, r3
    lwz r3, 0x24(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x6c(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r29
    bl fn_800E0B84
    mr r4, r3
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x60
    bl fn_800E1258
    lwz r6, 0x60(r1)
    addi r4, r1, 0x70
    lwz r5, 0x64(r1)
    lwz r3, 0x68(r1)
    lwz r0, 0x6c(r1)
    stw r6, 0x70(r1)
    stw r5, 0x74(r1)
    stw r3, 0x78(r1)
    stw r0, 0x7c(r1)
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x58(r12)
    mtctr r12
    bctrl
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x80
    bl fn_800E0F84
    lwz r3, 0x34(r31)
    addi r4, r1, 0x80
    lwz r12, 0x0(r3)
    lwz r12, 0x28(r12)
    mtctr r12
    bctrl
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x34
    bl fn_800E10C4
    lwz r3, 0x34(r31)
    addi r4, r1, 0x34
    lwz r12, 0x0(r3)
    lwz r12, 0x38(r12)
    mtctr r12
    bctrl
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x30
    bl fn_800E1144
    lwz r3, 0x34(r31)
    addi r4, r1, 0x30
    lwz r12, 0x0(r3)
    lwz r12, 0x44(r12)
    mtctr r12
    bctrl
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x14
    bl fn_800E1188
    lhz r0, 0x14(r1)
    addi r4, r1, 0x18
    sth r0, 0x18(r1)
    lwz r3, 0x34(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r29
    bl fn_800E11E8
    mr r4, r3
    lwz r3, 0x34(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x5c(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r29
    bl fn_800E1220
    mr r4, r3
    lwz r3, 0x34(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x68(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r29
    bl fn_800E0E50
    mr r4, r3
    lwz r3, 0x2c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x94(r12)
    mtctr r12
    bctrl
    li r19, 0x0
    opword  0x48000030  // b .L_800E0520
L_800E04F4:
    mr r3, r30
    mr r4, r29
    bl fn_800E0CF4
    mr r5, r3
    lwz r3, 0x2c(r31)
    clrlwi r4, r19, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E0520:
    clrlwi r5, r19, 24
    cmplw r5, r25
    opword  0x4180FFCC  // blt .L_800E04F4
    li r19, 0x0
    opword  0x4800003C  // b .L_800E056C
L_800E0534:
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x28
    bl fn_800E0D3C
    lwz r0, 0x28(r1)
    clrlwi r4, r19, 24
    addi r5, r1, 0x2c
    stw r0, 0x2c(r1)
    lwz r3, 0x2c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x58(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E056C:
    clrlwi r6, r19, 24
    cmplw r6, r28
    opword  0x4180FFC0  // blt .L_800E0534
    lwz r24, 0x4(r30)
    li r23, 0x0
    lwz r25, 0x8(r30)
    opword  0x480000DC  // b .L_800E0660
L_800E0588:
    lhzx r0, r27, r25
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x48
    mulli r0, r0, 0x138
    add r20, r24, r0
    bl fn_800E0E88
    lwz r3, 0x48(r1)
    clrlwi r21, r23, 24
    lwz r0, 0x4c(r1)
    mr r4, r21
    stw r3, 0x50(r1)
    addi r5, r1, 0x50
    stw r0, 0x54(r1)
    lwz r3, 0x2c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0xa0(r12)
    mtctr r12
    bctrl
    slwi r3, r21, 1
    addi r22, r3, 0xf0
    lhzx r0, r20, r22
    cmplwi r0, 0xffff
    opword  0x41820078  // beq .L_800E065C
    lwz r3, 0x2c(r31)
    clrlslwi r4, r0, 16, 2
    lwz r5, 0x48(r30)
    addi r0, r4, 0x1
    lwz r12, 0x0(r3)
    mr r4, r21
    lbzx r19, r5, r0
    lwz r12, 0xa4(r12)
    mtctr r12
    bctrl
    lbz r6, 0x7(r3)
    clrlslwi r0, r19, 24, 2
    lwz r5, 0x48(r30)
    mr r4, r21
    rlwinm r6, r6, 0, 30, 27
    or r0, r6, r0
    stb r0, 0x7(r3)
    lwz r3, 0x2c(r31)
    lhzx r0, r20, r22
    lwz r12, 0x0(r3)
    slwi r0, r0, 2
    lwz r12, 0xa4(r12)
    lbzx r19, r5, r0
    mtctr r12
    bctrl
    lbz r0, 0x7(r3)
    clrrwi r0, r0, 2
    or r0, r0, r19
    stb r0, 0x7(r3)
L_800E065C:
    addi r23, r23, 0x1
L_800E0660:
    clrlwi r6, r23, 24
    cmplw r6, r28
    opword  0x4180FF20  // blt .L_800E0588
    li r19, 0x0
    opword  0x48000038  // b .L_800E06A8
L_800E0674:
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x24
    clrlwi r6, r19, 24
    bl fn_800E0DF8
    lwz r3, 0x2c(r31)
    clrlwi r4, r19, 24
    addi r5, r1, 0x24
    lwz r12, 0x0(r3)
    lwz r12, 0x70(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E06A8:
    clrlwi r0, r19, 24
    cmplwi r0, 0x4
    opword  0x4180FFC4  // blt .L_800E0674
    li r19, 0x0
    opword  0x48000038  // b .L_800E06F0
L_800E06BC:
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x40
    clrlwi r6, r19, 24
    bl fn_800E0D88
    lwz r3, 0x2c(r31)
    clrlwi r4, r19, 24
    addi r5, r1, 0x40
    lwz r12, 0x0(r3)
    lwz r12, 0x64(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E06F0:
    clrlwi r0, r19, 24
    cmplwi r0, 0x4
    opword  0x4180FFC4  // blt .L_800E06BC
    li r19, 0x0
    opword  0x48000040  // b .L_800E0740
L_800E0704:
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x8
    clrlwi r6, r19, 24
    bl fn_800E0EE8
    lbz r0, 0x8(r1)
    clrlwi r4, r19, 24
    addi r5, r1, 0xc
    stb r0, 0xc(r1)
    lwz r3, 0x2c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0xb4(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E0740:
    clrlwi r0, r19, 24
    cmplwi r0, 0x4
    opword  0x4180FFBC  // blt .L_800E0704
    li r19, 0x0
    opword  0x48000038  // b .L_800E0788
L_800E0754:
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x20
    clrlwi r6, r19, 24
    bl fn_800E0960
    lwz r3, 0x24(r31)
    clrlwi r4, r19, 24
    addi r5, r1, 0x20
    lwz r12, 0x0(r3)
    lwz r12, 0x34(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E0788:
    clrlwi r0, r19, 24
    cmplwi r0, 0x2
    opword  0x4180FFC4  // blt .L_800E0754
    li r19, 0x0
    opword  0x48000040  // b .L_800E07D8
L_800E079C:
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x10
    clrlwi r6, r19, 24
    bl fn_800E09F0
    lhz r0, 0x10(r1)
    clrlwi r4, r19, 24
    addi r5, r1, 0x1c
    sth r0, 0x1c(r1)
    lwz r3, 0x24(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x54(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E07D8:
    clrlwi r0, r19, 24
    cmplwi r0, 0x4
    opword  0x4180FFBC  // blt .L_800E079C
    li r19, 0x0
    opword  0x48000044  // b .L_800E082C
L_800E07EC:
    mr r4, r30
    mr r5, r29
    addi r3, r1, 0x38
    bl fn_800E0BBC
    lwz r3, 0x38(r1)
    clrlwi r4, r19, 24
    lhz r0, 0x3c(r1)
    addi r5, r1, 0x58
    stw r3, 0x58(r1)
    sth r0, 0x5c(r1)
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x44(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E082C:
    clrlwi r6, r19, 24
    cmplw r6, r26
    opword  0x4180FFB8  // blt .L_800E07EC
    li r19, 0x0
    opword  0x48000034  // b .L_800E0870
L_800E0840:
    mr r3, r30
    mr r4, r29
    clrlwi r5, r19, 24
    bl fn_800E0C1C
    mr r5, r3
    lwz r3, 0x28(r31)
    clrlwi r4, r19, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    addi r19, r19, 0x1
L_800E0870:
    clrlwi r0, r19, 24
    cmplwi r0, 0x8
    opword  0x4180FFC8  // blt .L_800E0840
    lwz r3, 0x8(r30)
    li r20, 0x0
    lwz r4, 0x4(r30)
    lhzx r0, r3, r27
    mulli r0, r0, 0x138
    add r19, r4, r0
    opword  0x4800004C  // b .L_800E08E0
L_800E0898:
    clrlwi r4, r20, 24
    addi r0, r4, 0x88
    lbzx r5, r19, r0
    cmplwi r5, 0xff
    opword  0x4182001C  // beq .L_800E08C4
    lwz r3, 0x2c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x7c(r12)
    mtctr r12
    bctrl
    opword  0x4800001C  // b .L_800E08DC
L_800E08C4:
    lwz r3, 0x2c(r31)
    li r5, 0xc
    lwz r12, 0x0(r3)
    lwz r12, 0x7c(r12)
    mtctr r12
    bctrl
L_800E08DC:
    addi r20, r20, 0x1
L_800E08E0:
    clrlwi r0, r20, 24
    cmplw r0, r28
    opword  0x4180FFB0  // blt .L_800E0898
    li r20, 0x0
    opword  0x4800004C  // b .L_800E093C
L_800E08F4:
    clrlwi r4, r20, 24
    addi r0, r4, 0x98
    lbzx r5, r19, r0
    cmplwi r5, 0xff
    opword  0x4182001C  // beq .L_800E0920
    lwz r3, 0x2c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x88(r12)
    mtctr r12
    bctrl
    opword  0x4800001C  // b .L_800E0938
L_800E0920:
    lwz r3, 0x2c(r31)
    li r5, 0x1c
    lwz r12, 0x0(r3)
    lwz r12, 0x88(r12)
    mtctr r12
    bctrl
L_800E0938:
    addi r20, r20, 0x1
L_800E093C:
    clrlwi r0, r20, 24
    cmplw r0, r28
    opword  0x4180FFB0  // blt .L_800E08F4
    mr r3, r31
    lmw r19, 0xbc(r1)
    lwz r0, 0xf4(r1)
    mtlr r0
    addi r1, r1, 0xf0
    blr
}

ASM void fn_800E0960(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    slwi r0, r6, 1
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    opword  0x81028D30  // lwz r8, lbl_8053BCD0@sda21(r0)
    lhzx r5, r7, r5
    lwz r6, 0x4(r4)
    mulli r5, r5, 0x138
    stw r8, 0x8(r1)
    addi r5, r5, 0x8
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x41820018  // beq .L_800E09AC
    lwz r4, 0xc(r4)
    clrlslwi r0, r0, 16, 2
    lwzx r0, r4, r0
    stw r0, 0x0(r3)
    opword  0x48000008  // b .L_800E09B0
L_800E09AC:
    stw r8, 0x0(r3)
L_800E09B0:
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E09B8(void)
{
    nofralloc
    lwz r5, 0x8(r3)
    slwi r0, r4, 1
    lwz r6, 0x4(r3)
    lhzx r0, r5, r0
    mulli r4, r0, 0x138
    addi r0, r4, 0x2
    lbzx r0, r6, r0
    cmplwi r0, 0xff
    opword  0x41820010  // beq .L_800E09E8
    lwz r3, 0x10(r3)
    lbzx r3, r3, r0
    blr
L_800E09E8:
    li r3, 0x0
    blr
}

ASM void fn_800E09F0(void)
{
    nofralloc
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    slwi r0, r6, 1
    lwz r6, 0x4(r4)
    lhzx r5, r7, r5
    mulli r5, r5, 0x138
    addi r5, r5, 0xc
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x418200B8  // beq .L_800E0AD0
    lwz r4, 0x14(r4)
    clrlslwi r0, r0, 16, 3
    add r8, r4, r0
    lbz r10, 0x5(r8)
    lbz r0, 0x2(r8)
    lbz r5, 0x0(r8)
    subi r7, r10, 0xff
    subfic r6, r10, 0xff
    lbz r4, 0x1(r8)
    nor r6, r7, r6
    clrlslwi r7, r5, 16, 1
    srawi r5, r6, 31
    lbz r9, 0x4(r8)
    andc r5, r10, r5
    or r4, r7, r4
    rlwinm r6, r4, 0, 26, 24
    rlwinm r11, r0, 7, 18, 18
    clrlslwi r5, r5, 24, 6
    cntlzw r4, r9
    or r12, r6, r5
    lbz r6, 0x3(r8)
    extrwi r5, r4, 1, 26
    neg r4, r9
    rlwimi r12, r0, 2, 29, 29
    rlwinm r10, r0, 7, 17, 17
    rlwimi r12, r0, 2, 28, 28
    neg r5, r5
    andc r5, r6, r5
    subfic r6, r9, 0x2
    rlwimi r12, r0, 2, 27, 27
    or r4, r4, r9
    rlwimi r12, r0, 2, 26, 26
    slwi r7, r5, 7
    rlwimi r12, r0, 7, 20, 20
    subi r5, r9, 0x2
    rlwimi r12, r0, 7, 19, 19
    rlwimi r11, r12, 0, 19, 31
    or r0, r6, r5
    rlwimi r10, r11, 0, 18, 31
    rlwinm r5, r10, 0, 25, 22
    or r5, r5, r7
    rlwimi r5, r0, 10, 22, 22
    rlwimi r5, r4, 11, 21, 21
    sth r5, 0x0(r3)
    blr
L_800E0AD0:
    opword  0x39028C38  // li r8, lbl_8053BBD8@sda21
    lis r4, 0x1
    lbz r10, 0x5(r8)
    subi r4, r4, 0x1
    lbz r0, 0x2(r8)
    opword  0x88A28C38  // lbz r5, lbl_8053BBD8@sda21(r0)
    subf r7, r4, r10
    subf r6, r10, r4
    lbz r4, 0x1(r8)
    nor r6, r7, r6
    clrlslwi r7, r5, 16, 1
    srawi r5, r6, 31
    lbz r9, 0x4(r8)
    andc r5, r10, r5
    or r4, r7, r4
    rlwinm r6, r4, 0, 26, 24
    rlwinm r11, r0, 7, 18, 18
    clrlslwi r5, r5, 24, 6
    cntlzw r4, r9
    or r12, r6, r5
    lbz r6, 0x3(r8)
    extrwi r5, r4, 1, 26
    neg r4, r9
    rlwimi r12, r0, 2, 29, 29
    rlwinm r10, r0, 7, 17, 17
    rlwimi r12, r0, 2, 28, 28
    neg r5, r5
    andc r5, r6, r5
    subfic r6, r9, 0x2
    rlwimi r12, r0, 2, 27, 27
    or r4, r4, r9
    rlwimi r12, r0, 2, 26, 26
    slwi r7, r5, 7
    rlwimi r12, r0, 7, 20, 20
    subi r5, r9, 0x2
    rlwimi r12, r0, 7, 19, 19
    rlwimi r11, r12, 0, 19, 31
    or r0, r6, r5
    rlwimi r10, r11, 0, 18, 31
    rlwinm r5, r10, 0, 25, 22
    or r5, r5, r7
    rlwimi r5, r0, 10, 22, 22
    rlwimi r5, r4, 11, 21, 21
    sth r5, 0x0(r3)
    blr
}

ASM void fn_800E0B84(void)
{
    nofralloc
    lwz r5, 0x8(r3)
    slwi r0, r4, 1
    lwz r6, 0x4(r3)
    lhzx r0, r5, r0
    mulli r4, r0, 0x138
    addi r0, r4, 0x3
    lbzx r0, r6, r0
    cmplwi r0, 0xff
    opword  0x41820010  // beq .L_800E0BB4
    lwz r3, 0x18(r3)
    lbzx r3, r3, r0
    blr
L_800E0BB4:
    li r3, 0x0
    blr
}

ASM void fn_800E0BBC(void)
{
    nofralloc
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    slwi r0, r6, 1
    lwz r6, 0x4(r4)
    lhzx r5, r7, r5
    mulli r5, r5, 0x138
    addi r5, r5, 0x14
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x41820020  // beq .L_800E0C04
    lwz r4, 0x1c(r4)
    clrlslwi r0, r0, 16, 2
    lwzx r0, r4, r0
    stw r0, 0x0(r3)
    lbz r0, 0x2(r3)
    sth r0, 0x4(r3)
    blr
L_800E0C04:
    lis r4, lbl_80463450@ha
    lwz r0, lbl_80463450@l(r4)
    stw r0, 0x0(r3)
    lbz r0, 0x2(r3)
    sth r0, 0x4(r3)
    blr
}

ASM void fn_800E0C1C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lwz r6, 0x8(r3)
    slwi r4, r4, 1
    stw r0, 0x24(r1)
    slwi r0, r5, 1
    stw r31, 0x1c(r1)
    lwz r31, 0x4(r3)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    li r3, 0x0
    lhzx r4, r6, r4
    mulli r4, r4, 0x138
    addi r4, r4, 0x34
    add r29, r4, r0
    lhzx r0, r31, r29
    cmplwi r0, 0xffff
    opword  0x4182002C  // beq .L_800E0C94
    li r3, 0x94
    bl fn_80084370
    mr. r30, r3
    opword  0x41820018  // beq .L_800E0C90
    lhzx r0, r31, r29
    lwz r4, 0x24(r28)
    mulli r0, r0, 0x64
    add r4, r4, r0
    bl fn_800E4870
L_800E0C90:
    mr r3, r30
L_800E0C94:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E0CB4(void)
{
    nofralloc
    lwz r5, 0x8(r3)
    slwi r0, r4, 1
    lwz r6, 0x4(r3)
    lhzx r0, r5, r0
    mulli r4, r0, 0x138
    addi r0, r4, 0x1
    lbzx r0, r6, r0
    cmplwi r0, 0xff
    opword  0x41820018  // beq .L_800E0CEC
    lwz r3, 0x30(r3)
    clrlslwi r0, r0, 24, 2
    lwzx r0, r3, r0
    clrlwi r3, r0, 24
    blr
L_800E0CEC:
    li r3, 0xff
    blr
}

ASM void fn_800E0CF4(void)
{
    nofralloc
    lwz r6, 0x8(r3)
    slwi r4, r4, 1
    slwi r0, r5, 1
    lwz r5, 0x4(r3)
    lhzx r4, r6, r4
    mulli r4, r4, 0x138
    addi r4, r4, 0x70
    add r0, r4, r0
    lhzx r0, r5, r0
    cmplwi r0, 0xffff
    opword  0x41820014  // beq .L_800E0D30
    lwz r3, 0x2c(r3)
    clrlslwi r0, r0, 16, 1
    lhzx r3, r3, r0
    blr
L_800E0D30:
    lis r3, 0x1
    subi r3, r3, 0x1
    blr
}

ASM void fn_800E0D3C(void)
{
    nofralloc
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    slwi r0, r6, 1
    lwz r6, 0x4(r4)
    lhzx r5, r7, r5
    mulli r5, r5, 0x138
    addi r5, r5, 0xa8
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x41820018  // beq .L_800E0D7C
    lwz r4, 0x34(r4)
    clrlslwi r0, r0, 16, 2
    lwzx r0, r4, r0
    stw r0, 0x0(r3)
    blr
L_800E0D7C:
    opword  0x80028C14  // lwz r0, lbl_8053BBB4@sda21(r0)
    stw r0, 0x0(r3)
    blr
}

ASM void fn_800E0D88(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    slwi r0, r6, 1
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    opword  0x81020F70  // lwz r8, lbl_80543F10@sda21(r0)
    lhzx r5, r7, r5
    opword  0x80E20F74  // lwz r7, lbl_80543F14@sda21(r0)
    mulli r5, r5, 0x138
    lwz r6, 0x4(r4)
    stw r8, 0x8(r1)
    addi r5, r5, 0xc8
    stw r7, 0xc(r1)
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x41820024  // beq .L_800E0DE8
    lwz r4, 0x38(r4)
    clrlslwi r0, r0, 16, 3
    add r5, r4, r0
    lwz r4, 0x0(r5)
    lwz r0, 0x4(r5)
    stw r4, 0x0(r3)
    stw r0, 0x4(r3)
    opword  0x4800000C  // b .L_800E0DF0
L_800E0DE8:
    stw r8, 0x0(r3)
    stw r7, 0x4(r3)
L_800E0DF0:
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E0DF8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    slwi r0, r6, 1
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    opword  0x81028D34  // lwz r8, lbl_8053BCD4@sda21(r0)
    lhzx r5, r7, r5
    lwz r6, 0x4(r4)
    mulli r5, r5, 0x138
    stw r8, 0x8(r1)
    addi r5, r5, 0x80
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x41820018  // beq .L_800E0E44
    lwz r4, 0x3c(r4)
    clrlslwi r0, r0, 16, 2
    lwzx r0, r4, r0
    stw r0, 0x0(r3)
    opword  0x48000008  // b .L_800E0E48
L_800E0E44:
    stw r8, 0x0(r3)
L_800E0E48:
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E0E50(void)
{
    nofralloc
    lwz r5, 0x8(r3)
    slwi r0, r4, 1
    lwz r6, 0x4(r3)
    lhzx r0, r5, r0
    mulli r4, r0, 0x138
    addi r0, r4, 0x4
    lbzx r0, r6, r0
    cmplwi r0, 0xff
    opword  0x41820010  // beq .L_800E0E80
    lwz r3, 0x40(r3)
    lbzx r3, r3, r0
    blr
L_800E0E80:
    li r3, 0xff
    blr
}

ASM void fn_800E0E88(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    stw r0, 0x14(r1)
    slwi r0, r6, 1
    lwz r6, 0x4(r4)
    lhzx r5, r7, r5
    mulli r5, r5, 0x138
    addi r5, r5, 0xd0
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x41820018  // beq .L_800E0ED4
    mulli r0, r0, 0x14
    lwz r4, 0x44(r4)
    add r4, r4, r0
    bl fn_800CB4C0
    opword  0x48000008  // b .L_800E0ED8
L_800E0ED4:
    bl fn_800BE3F0
L_800E0ED8:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E0EE8(void)
{
    nofralloc
    lwz r7, 0x8(r4)
    slwi r5, r5, 1
    slwi r0, r6, 1
    lwz r6, 0x4(r4)
    lhzx r5, r7, r5
    mulli r5, r5, 0x138
    addi r5, r5, 0x110
    add r0, r5, r0
    lhzx r0, r6, r0
    cmplwi r0, 0xffff
    opword  0x41820040  // beq .L_800E0F50
    lwz r4, 0x4c(r4)
    clrlslwi r0, r0, 16, 2
    add r6, r4, r0
    lbz r5, 0x2(r6)
    lbz r0, 0x1(r6)
    lbz r4, 0x0(r6)
    slwi r5, r5, 2
    slwi r0, r0, 4
    lbz r6, 0x3(r6)
    add r0, r0, r5
    slwi r4, r4, 6
    add r0, r0, r6
    add r0, r4, r0
    stb r0, 0x0(r3)
    blr
L_800E0F50:
    opword  0x38C28C30  // li r6, lbl_8053BBD0@sda21
    opword  0x88828C30  // lbz r4, lbl_8053BBD0@sda21(r0)
    lbz r5, 0x2(r6)
    lbz r0, 0x1(r6)
    slwi r4, r4, 6
    slwi r5, r5, 2
    lbz r6, 0x3(r6)
    slwi r0, r0, 4
    add r0, r0, r5
    add r0, r0, r6
    add r0, r4, r0
    stb r0, 0x0(r3)
    blr
}

ASM void fn_800E0F84(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    lis r6, lbl_80463510@ha
    stw r0, 0x74(r1)
    addi r0, r6, lbl_80463510@l
    stw r31, 0x6c(r1)
    mr r31, r3
    addi r3, r1, 0x34
    stw r30, 0x68(r1)
    mr r30, r5
    stw r29, 0x64(r1)
    mr r29, r4
    mr r4, r0
    bl fn_800E4910
    lwz r3, 0x8(r29)
    slwi r0, r30, 1
    lwz r4, 0x4(r29)
    lhzx r0, r3, r0
    mulli r3, r0, 0x138
    addi r0, r3, 0x130
    lhzx r0, r4, r0
    cmplwi r0, 0xffff
    opword  0x41820074  // beq .L_800E1050
    mulli r0, r0, 0x2c
    lwz r5, 0x50(r29)
    addi r3, r1, 0x34
    addi r4, r1, 0x8
    add r6, r5, r0
    lwz r5, 0x0(r6)
    lwz r0, 0x4(r6)
    stw r5, 0x8(r1)
    stw r0, 0xc(r1)
    lwz r5, 0x8(r6)
    lwz r0, 0xc(r6)
    stw r5, 0x10(r1)
    stw r0, 0x14(r1)
    lwz r5, 0x10(r6)
    lwz r0, 0x14(r6)
    stw r5, 0x18(r1)
    stw r0, 0x1c(r1)
    lwz r5, 0x18(r6)
    lwz r0, 0x1c(r6)
    stw r5, 0x20(r1)
    stw r0, 0x24(r1)
    lwz r5, 0x20(r6)
    lwz r0, 0x24(r6)
    stw r5, 0x28(r1)
    stw r0, 0x2c(r1)
    lwz r0, 0x28(r6)
    stw r0, 0x30(r1)
    bl fn_800E4910
L_800E1050:
    lwz r3, 0x34(r1)
    lwz r0, 0x38(r1)
    stw r3, 0x0(r31)
    stw r0, 0x4(r31)
    lwz r3, 0x3c(r1)
    lwz r0, 0x40(r1)
    stw r3, 0x8(r31)
    stw r0, 0xc(r31)
    lwz r3, 0x44(r1)
    lwz r0, 0x48(r1)
    stw r3, 0x10(r31)
    stw r0, 0x14(r31)
    lwz r3, 0x4c(r1)
    lwz r0, 0x50(r1)
    stw r3, 0x18(r31)
    stw r0, 0x1c(r31)
    lwz r3, 0x54(r1)
    lwz r0, 0x58(r1)
    stw r3, 0x20(r31)
    stw r0, 0x24(r31)
    lwz r0, 0x5c(r1)
    stw r0, 0x28(r31)
    lwz r31, 0x6c(r1)
    lwz r30, 0x68(r1)
    lwz r0, 0x74(r1)
    lwz r29, 0x64(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_800E10C4(void)
{
    nofralloc
    lwz r6, 0x8(r4)
    slwi r0, r5, 1
    lwz r7, 0x4(r4)
    lhzx r0, r6, r0
    mulli r5, r0, 0x138
    addi r0, r5, 0x132
    lhzx r0, r7, r0
    cmplwi r0, 0xffff
    opword  0x41820044  // beq .L_800E1128
    lwz r4, 0x54(r4)
    clrlslwi r0, r0, 16, 3
    add r6, r4, r0
    lbz r0, 0x2(r6)
    lbz r4, 0x0(r6)
    lbz r5, 0x3(r6)
    slwi r0, r0, 3
    slwi r4, r4, 5
    add r0, r0, r5
    add r0, r4, r0
    sth r0, 0x0(r3)
    lbz r0, 0x1(r6)
    stb r0, 0x2(r3)
    lbz r0, 0x4(r6)
    stb r0, 0x3(r3)
    blr
L_800E1128:
    lis r4, 0x1
    li r0, 0x0
    subi r4, r4, 0x1
    sth r4, 0x0(r3)
    stb r0, 0x2(r3)
    stb r0, 0x3(r3)
    blr
}

ASM void fn_800E1144(void)
{
    nofralloc
    lwz r6, 0x8(r4)
    slwi r0, r5, 1
    lwz r7, 0x4(r4)
    lhzx r0, r6, r0
    mulli r5, r0, 0x138
    addi r0, r5, 0x134
    lhzx r0, r7, r0
    cmplwi r0, 0xffff
    opword  0x41820018  // beq .L_800E117C
    lwz r4, 0x58(r4)
    clrlslwi r0, r0, 16, 2
    lwzx r0, r4, r0
    stw r0, 0x0(r3)
    blr
L_800E117C:
    opword  0x80028C34  // lwz r0, lbl_8053BBD4@sda21(r0)
    stw r0, 0x0(r3)
    blr
}

ASM void fn_800E1188(void)
{
    nofralloc
    lwz r6, 0x8(r4)
    slwi r0, r5, 1
    lwz r7, 0x4(r4)
    lhzx r0, r6, r0
    mulli r5, r0, 0x138
    addi r0, r5, 0x6
    lbzx r0, r7, r0
    cmplwi r0, 0xff
    opword  0x41820034  // beq .L_800E11DC
    lwz r4, 0x5c(r4)
    clrlslwi r0, r0, 24, 2
    add r5, r4, r0
    lbz r0, 0x0(r5)
    lbz r4, 0x1(r5)
    lbz r5, 0x2(r5)
    slwi r0, r0, 4
    slwi r4, r4, 1
    add r0, r0, r5
    add r0, r4, r0
    sth r0, 0x0(r3)
    blr
L_800E11DC:
    opword  0xA0028C44  // lhz r0, lbl_8053BBE4@sda21(r0)
    sth r0, 0x0(r3)
    blr
}

ASM void fn_800E11E8(void)
{
    nofralloc
    lwz r5, 0x8(r3)
    slwi r0, r4, 1
    lwz r6, 0x4(r3)
    lhzx r0, r5, r0
    mulli r4, r0, 0x138
    addi r0, r4, 0x5
    lbzx r0, r6, r0
    cmplwi r0, 0xff
    opword  0x41820010  // beq .L_800E1218
    lwz r3, 0x60(r3)
    lbzx r3, r3, r0
    blr
L_800E1218:
    li r3, 0x0
    blr
}

ASM void fn_800E1220(void)
{
    nofralloc
    lwz r5, 0x8(r3)
    slwi r0, r4, 1
    lwz r6, 0x4(r3)
    lhzx r0, r5, r0
    mulli r4, r0, 0x138
    addi r0, r4, 0x7
    lbzx r0, r6, r0
    cmplwi r0, 0xff
    opword  0x41820010  // beq .L_800E1250
    lwz r3, 0x64(r3)
    lbzx r3, r3, r0
    blr
L_800E1250:
    li r3, 0x1
    blr
}

ASM void fn_800E1258(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    slwi r0, r5, 1
    lwz r6, 0x8(r4)
    lis r5, lbl_8046353C@ha
    addi r8, r5, lbl_8046353C@l
    lwz r7, 0x4(r4)
    lhzx r0, r6, r0
    lbz r6, 0x0(r8)
    mulli r5, r0, 0x138
    lfs fp2, 0x4(r8)
    lfs fp1, 0x8(r8)
    lfs fp0, 0xc(r8)
    addi r0, r5, 0x136
    stb r6, 0x8(r1)
    lhzx r0, r7, r0
    stfs fp2, 0xc(r1)
    cmplwi r0, 0xffff
    stfs fp1, 0x10(r1)
    stfs fp0, 0x14(r1)
    opword  0x41820034  // beq .L_800E12D8
    lwz r4, 0x68(r4)
    clrlslwi r0, r0, 16, 4
    add r4, r4, r0
    lbz r0, 0x0(r4)
    stb r0, 0x0(r3)
    lfs fp0, 0x4(r4)
    stfs fp0, 0x4(r3)
    lfs fp0, 0x8(r4)
    stfs fp0, 0x8(r3)
    lfs fp0, 0xc(r4)
    stfs fp0, 0xc(r3)
    opword  0x48000024  // b .L_800E12F8
L_800E12D8:
    lwz r4, 0x8(r1)
    lwz r0, 0xc(r1)
    stw r4, 0x0(r3)
    lwz r4, 0x10(r1)
    stw r0, 0x4(r3)
    lwz r0, 0x14(r1)
    stw r4, 0x8(r3)
    stw r0, 0xc(r3)
L_800E12F8:
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E1300(void)
{
    nofralloc
    cmplwi r4, 0x0
    opword  0x4082000C  // bne .L_800E1310
    li r3, 0x0
    blr
L_800E1310:
    add r3, r3, r4
    blr
}

ASM void fn_800E1318(void)
{
    nofralloc
    lis r4, 0x1
    lis r3, lbl_80539B14@ha
    subi r0, r4, 0x1
    addi r3, r3, lbl_80539B14@l
    sth r0, 0x12(r3)
    sth r0, 0x10(r3)
    sth r0, 0xe(r3)
    sth r0, 0xc(r3)
    sth r0, 0xa(r3)
    sth r0, 0x8(r3)
    sth r0, 0x6(r3)
    sth r0, 0x4(r3)
    sth r0, 0x2(r3)
    sth r0, 0x0(r3)
    blr
}

ASM void fn_800E1354(void)
{
    nofralloc
    mulli r3, r4, 0xc
    li r0, 0x20
    lis r7, 0xcc01
    stb r0, -0x8000(r7)
    li r0, 0x28
    clrlwi r3, r3, 16
    ori r6, r3, 0xb000
    sth r5, -0x8000(r7)
    mulli r3, r4, 0x9
    sth r6, -0x8000(r7)
    stb r0, -0x8000(r7)
    addi r0, r3, 0x400
    clrlwi r0, r0, 16
    sth r5, -0x8000(r7)
    ori r0, r0, 0x8000
    sth r0, -0x8000(r7)
    blr
}

ASM void fn_800E1398(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_80536C50@l
    stw r31, 0xc(r1)
    mr r31, r5
    stw r30, 0x8(r1)
    mr r30, r4
    mulli r4, r30, 0x3
    lwz r3, 0x40(r3)
    lwz r3, 0x30(r3)
    bl fn_800D3168
    lis r3, lbl_80536C50@ha
    mr r4, r30
    addi r3, r3, lbl_80536C50@l
    mr r5, r31
    bl fn_800BA67C
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E13F8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_80536C50@l
    stw r31, 0xc(r1)
    mr r31, r4
    bl fn_800BA658
    lis r3, lbl_80536C50@ha
    addi r3, r3, lbl_80536C50@l
    lwz r3, 0x40(r3)
    mulli r4, r31, 0x3
    lwz r3, 0x30(r3)
    bl fn_800D31E8
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E1444(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_80536C50@ha
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    addi r31, r3, lbl_80536C50@l
    stw r30, 0x8(r1)
    mulli r30, r4, 0x3
    lwz r3, 0x40(r31)
    mr r4, r30
    lwz r3, 0x30(r3)
    bl fn_800D3168
    lwz r3, 0x40(r31)
    mr r4, r30
    lwz r3, 0x30(r3)
    bl fn_800D31E8
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E149C(void)
{
    nofralloc
    stwu r1, -0xe0(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0xe4(r1)
    addi r4, r4, lbl_80536C50@l
    stmw r25, 0xc4(r1)
    mr r25, r3
    lwz r0, 0x34(r4)
    opword  0x838D8E64  // lwz r28, lbl_8053AA24@sda21(r0)
    rlwinm. r0, r0, 0, 1, 1
    opword  0x83ED8E60  // lwz r31, lbl_8053AA20@sda21(r0)
    lhz r29, 0x8(r28)
    opword  0x418202AC  // beq .L_800E1778
    li r27, 0x0
    opword  0x48000294  // b .L_800E1768
L_800E14D8:
    mr r3, r31
    clrlwi r30, r27, 16
    lwz r12, 0x0(r31)
    mr r4, r30
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r0, 0x0(r3)
    cmpwi r0, 0x1
    opword  0x4182000C  // beq .L_800E1508
    cmpwi r0, 0x0
    opword  0x40820260  // bne .L_800E1764
L_800E1508:
    mr r3, r31
    mr r4, r30
    lwz r12, 0x0(r31)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    mr r4, r3
    lbz r5, 0x1(r3)
    clrlwi r0, r5, 26
    cmplwi r0, 0xb
    opword  0x41810214  // bgt .L_800E1744
    lis r3, jumptable_8049BC70@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049BC70@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    mulli r0, r30, 0x30
    lwz r3, 0x0(r28)
    add r3, r3, r0
    opword  0x480001F8  // b .L_800E1750
    mulli r0, r30, 0x30
    lwz r3, 0x0(r28)
    add r3, r3, r0
    opword  0x480001E8  // b .L_800E1750
    lis r3, lbl_80536C50@ha
    addi r4, r1, 0x88
    addi r3, r3, lbl_80536C50@l
    bl PSMTXInverse
    mulli r0, r30, 0x30
    lwz r3, 0x0(r28)
    addi r4, r1, 0x88
    mr r5, r4
    add r3, r3, r0
    bl PSMTXConcat
    addi r3, r1, 0x88
    opword  0x480001B8  // b .L_800E1750
    extrwi. r0, r5, 1, 24
    opword  0x40820018  // bne .L_800E15B8
    addi r3, r4, 0x10
    addi r4, r4, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800E15CC
L_800E15B8:
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_800E15CC
    addi r3, r4, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800E15CC:
    lwz r4, 0x4(r28)
    slwi r0, r30, 6
    addi r3, r1, 0x8
    addi r5, r1, 0x88
    add r4, r4, r0
    bl fn_800BBF9C
    lis r3, lbl_80536C50@ha
    addi r4, r1, 0x48
    addi r3, r3, lbl_80536C50@l
    bl PSMTXInverse
    addi r3, r1, 0x88
    addi r4, r1, 0x48
    mr r5, r3
    bl PSMTXConcat
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    addi r3, r1, 0x88
    stfs fp0, 0xb4(r1)
    stfs fp0, 0xa4(r1)
    stfs fp0, 0x94(r1)
    opword  0x48000138  // b .L_800E1750
    extrwi. r0, r5, 1, 24
    opword  0x40820018  // bne .L_800E1638
    addi r3, r4, 0x10
    addi r4, r4, 0x4
    addi r5, r1, 0x8
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800E164C
L_800E1638:
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_800E164C
    addi r3, r4, 0x10
    addi r4, r1, 0x8
    bl fn_800BBD94
L_800E164C:
    lis r4, lbl_8049BBE0@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049BBE0@l
    mr r5, r3
    bl PSMTXConcat
    lwz r4, 0x4(r28)
    slwi r0, r30, 6
    addi r3, r1, 0x8
    addi r5, r1, 0x88
    add r4, r4, r0
    bl fn_800BBF9C
    lis r3, lbl_80536C50@ha
    addi r4, r1, 0x48
    addi r3, r3, lbl_80536C50@l
    bl PSMTXInverse
    addi r3, r1, 0x88
    addi r4, r1, 0x48
    mr r5, r3
    bl PSMTXConcat
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    addi r3, r1, 0x88
    stfs fp0, 0xb4(r1)
    stfs fp0, 0xa4(r1)
    stfs fp0, 0x94(r1)
    opword  0x480000A4  // b .L_800E1750
    extrwi. r0, r5, 1, 24
    opword  0x40820018  // bne .L_800E16CC
    addi r3, r4, 0x10
    addi r4, r4, 0x4
    addi r5, r1, 0x8
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800E16E0
L_800E16CC:
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_800E16E0
    addi r3, r4, 0x10
    addi r4, r1, 0x8
    bl fn_800BBD94
L_800E16E0:
    lis r4, lbl_8049BC10@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049BC10@l
    mr r5, r3
    bl PSMTXConcat
    lwz r4, 0x4(r28)
    slwi r0, r30, 6
    addi r3, r1, 0x8
    addi r5, r1, 0x88
    add r4, r4, r0
    bl fn_800BBF9C
    lis r3, lbl_80536C50@ha
    addi r4, r1, 0x48
    addi r3, r3, lbl_80536C50@l
    bl PSMTXInverse
    addi r3, r1, 0x88
    addi r4, r1, 0x48
    mr r5, r3
    bl PSMTXConcat
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    addi r3, r1, 0x88
    stfs fp0, 0xb4(r1)
    stfs fp0, 0xa4(r1)
    stfs fp0, 0x94(r1)
    opword  0x48000010  // b .L_800E1750
L_800E1744:
    mulli r0, r30, 0x30
    lwz r3, 0x0(r28)
    add r3, r3, r0
L_800E1750:
    clrlwi r0, r27, 16
    li r5, 0x0
    mulli r4, r0, 0x3
    addi r4, r4, 0x40
    bl fn_8005FEC8
L_800E1764:
    addi r27, r27, 0x1
L_800E1768:
    clrlwi r0, r27, 16
    cmplw r0, r29
    opword  0x4180FD68  // blt .L_800E14D8
    opword  0x480002F4  // b .L_800E1A68
L_800E1778:
    li r26, 0x0
    opword  0x480002E0  // b .L_800E1A5C
L_800E1780:
    mr r3, r31
    clrlwi r27, r26, 16
    lwz r12, 0x0(r31)
    mr r4, r27
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r0, 0x0(r3)
    cmpwi r0, 0x1
    opword  0x4182000C  // beq .L_800E17B0
    cmpwi r0, 0x0
    opword  0x408202AC  // bne .L_800E1A58
L_800E17B0:
    mr r3, r31
    mr r4, r27
    lwz r12, 0x0(r31)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    mr r30, r3
    lbz r4, 0x1(r3)
    clrlwi r0, r4, 26
    cmplwi r0, 0xb
    opword  0x41810260  // bgt .L_800E1A38
    lis r3, jumptable_8049BC40@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049BC40@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    mulli r0, r27, 0x30
    lwz r3, 0x0(r28)
    mr r4, r25
    addi r5, r1, 0x88
    add r3, r3, r0
    bl PSMTXConcat
    addi r3, r1, 0x88
    opword  0x48000234  // b .L_800E1A44
    mr r3, r25
    addi r4, r1, 0x48
    bl PSMTXCopy
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    mulli r0, r27, 0x30
    addi r4, r1, 0x48
    stfs fp0, 0x74(r1)
    addi r5, r1, 0x88
    stfs fp0, 0x64(r1)
    stfs fp0, 0x54(r1)
    lwz r3, 0x0(r28)
    add r3, r3, r0
    bl PSMTXConcat
    addi r3, r1, 0x88
    opword  0x480001F8  // b .L_800E1A44
    mulli r0, r27, 0x30
    lwz r3, 0x0(r28)
    add r3, r3, r0
    opword  0x480001E8  // b .L_800E1A44
    extrwi. r0, r4, 1, 24
    opword  0x40820018  // bne .L_800E187C
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800E1890
L_800E187C:
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_800E1890
    addi r3, r30, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800E1890:
    lwz r4, 0x4(r28)
    slwi r0, r27, 6
    addi r3, r1, 0x8
    addi r5, r1, 0x88
    add r4, r4, r0
    bl fn_800BBF9C
    lis r3, lbl_80536C50@ha
    addi r4, r1, 0x48
    addi r3, r3, lbl_80536C50@l
    bl PSMTXInverse
    addi r3, r1, 0x88
    addi r4, r1, 0x48
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x88
    mr r4, r25
    mr r5, r3
    bl PSMTXConcat
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    addi r3, r1, 0x88
    stfs fp0, 0xb4(r1)
    stfs fp0, 0xa4(r1)
    stfs fp0, 0x94(r1)
    opword  0x48000158  // b .L_800E1A44
    extrwi. r0, r4, 1, 24
    opword  0x40820018  // bne .L_800E190C
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x8
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800E1920
L_800E190C:
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_800E1920
    addi r3, r30, 0x10
    addi r4, r1, 0x8
    bl fn_800BBD94
L_800E1920:
    lis r4, lbl_8049BBE0@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049BBE0@l
    mr r5, r3
    bl PSMTXConcat
    lwz r4, 0x4(r28)
    slwi r0, r27, 6
    addi r3, r1, 0x8
    addi r5, r1, 0x88
    add r4, r4, r0
    bl fn_800BBF9C
    lis r3, lbl_80536C50@ha
    addi r4, r1, 0x48
    addi r3, r3, lbl_80536C50@l
    bl PSMTXInverse
    addi r3, r1, 0x88
    addi r4, r1, 0x48
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x88
    mr r4, r25
    mr r5, r3
    bl PSMTXConcat
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    addi r3, r1, 0x88
    stfs fp0, 0xb4(r1)
    stfs fp0, 0xa4(r1)
    stfs fp0, 0x94(r1)
    opword  0x480000B4  // b .L_800E1A44
    extrwi. r0, r4, 1, 24
    opword  0x40820018  // bne .L_800E19B0
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x8
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800E19C4
L_800E19B0:
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_800E19C4
    addi r3, r30, 0x10
    addi r4, r1, 0x8
    bl fn_800BBD94
L_800E19C4:
    lis r4, lbl_8049BC10@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049BC10@l
    mr r5, r3
    bl PSMTXConcat
    lwz r4, 0x4(r28)
    slwi r0, r27, 6
    addi r3, r1, 0x8
    addi r5, r1, 0x88
    add r4, r4, r0
    bl fn_800BBF9C
    lis r3, lbl_80536C50@ha
    addi r4, r1, 0x48
    addi r3, r3, lbl_80536C50@l
    bl PSMTXInverse
    addi r3, r1, 0x88
    addi r4, r1, 0x48
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x88
    mr r4, r25
    mr r5, r3
    bl PSMTXConcat
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    addi r3, r1, 0x88
    stfs fp0, 0xb4(r1)
    stfs fp0, 0xa4(r1)
    stfs fp0, 0x94(r1)
    opword  0x48000010  // b .L_800E1A44
L_800E1A38:
    mulli r0, r27, 0x30
    lwz r3, 0x0(r28)
    add r3, r3, r0
L_800E1A44:
    clrlwi r0, r26, 16
    lbz r5, 0x0(r30)
    mulli r4, r0, 0x3
    addi r4, r4, 0x1e
    bl fn_8005FEC8
L_800E1A58:
    addi r26, r26, 0x1
L_800E1A5C:
    clrlwi r0, r26, 16
    cmplw r0, r29
    opword  0x4180FD1C  // blt .L_800E1780
L_800E1A68:
    lmw r25, 0xc4(r1)
    lwz r0, 0xe4(r1)
    mtlr r0
    addi r1, r1, 0xe0
    blr
}

ASM void fn_800E1A7C(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    mr r31, r5
    lis r5, lbl_80536C50@ha
    stw r30, 0x48(r1)
    clrlwi r0, r31, 16
    addi r5, r5, lbl_80536C50@l
    mr r30, r4
    stw r29, 0x44(r1)
    mr r29, r3
    mulli r0, r0, 0x30
    lwz r3, 0x40(r5)
    lwz r6, 0x104(r5)
    addi r5, r1, 0x8
    lwz r3, 0x30(r3)
    add r4, r6, r0
    bl PSMTXConcat
    opword  0x800D8E60  // lwz r0, lbl_8053AA20@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E1ADC
    addi r3, r1, 0x8
    bl fn_800E149C
L_800E1ADC:
    mulli r4, r30, 0x3
    addi r3, r1, 0x8
    bl fn_800D3168
    mr r3, r29
    mr r4, r30
    lwz r12, 0x0(r29)
    mr r5, r31
    addi r6, r1, 0x8
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    lwz r29, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E1B24(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    stw r30, 0x48(r1)
    mr r30, r5
    lis r5, lbl_80536C50@ha
    stw r29, 0x44(r1)
    addi r31, r5, lbl_80536C50@l
    clrlwi r0, r30, 16
    mr r29, r4
    stw r28, 0x40(r1)
    mr r28, r3
    mulli r0, r0, 0x30
    addi r5, r1, 0x8
    lwz r3, 0x40(r31)
    lwz r6, 0x104(r31)
    lwz r3, 0x30(r3)
    add r4, r6, r0
    bl PSMTXConcat
    opword  0x800D8E60  // lwz r0, lbl_8053AA20@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E1B88
    addi r3, r1, 0x8
    bl fn_800E149C
L_800E1B88:
    lwz r3, 0x40(r31)
    mulli r4, r29, 0x3
    lwz r3, 0x30(r3)
    bl fn_800D3168
    mr r3, r28
    mr r4, r29
    lwz r12, 0x0(r28)
    mr r5, r30
    addi r6, r1, 0x8
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    lwz r29, 0x44(r1)
    lwz r28, 0x40(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E1BD8(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lis r3, lbl_80536C50@ha
    stw r0, 0x44(r1)
    clrlwi r0, r5, 16
    mulli r0, r0, 0x30
    addi r5, r1, 0x8
    stw r31, 0x3c(r1)
    addi r31, r3, lbl_80536C50@l
    stw r30, 0x38(r1)
    mr r30, r4
    lwz r3, 0x40(r31)
    lwz r4, 0x104(r31)
    lwz r3, 0x30(r3)
    add r4, r4, r0
    bl PSMTXConcat
    opword  0x800D8E60  // lwz r0, lbl_8053AA20@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E1C2C
    addi r3, r1, 0x8
    bl fn_800E149C
L_800E1C2C:
    mulli r30, r30, 0x3
    addi r3, r1, 0x8
    mr r4, r30
    bl fn_800D3168
    lwz r3, 0x40(r31)
    mr r4, r30
    lwz r3, 0x30(r3)
    bl fn_800D31E8
    opword  0x800D8E54  // lwz r0, lbl_8053AA14@sda21(r0)
    cmplwi r0, 0x2000
    opword  0x40820014  // bne .L_800E1C68
    lwz r3, 0x40(r31)
    addi r4, r30, 0x1e
    lwz r3, 0x30(r3)
    bl fn_800D32C0
L_800E1C68:
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800E1C80(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    stw r30, 0x38(r1)
    mr r30, r4
    opword  0x800D8E60  // lwz r0, lbl_8053AA20@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820034  // beq .L_800E1CD4
    lis r3, lbl_80536C50@ha
    clrlwi r0, r5, 16
    addi r4, r3, lbl_80536C50@l
    addi r5, r1, 0x8
    lwz r3, 0x40(r4)
    mulli r0, r0, 0x30
    lwz r4, 0x104(r4)
    lwz r3, 0x30(r3)
    add r4, r4, r0
    bl PSMTXConcat
    addi r3, r1, 0x8
    bl fn_800E149C
L_800E1CD4:
    lis r3, lbl_80536C50@ha
    addi r31, r3, lbl_80536C50@l
    mulli r30, r30, 0x3
    lwz r3, 0x40(r31)
    lwz r3, 0x30(r3)
    mr r4, r30
    bl fn_800D3168
    lwz r3, 0x40(r31)
    mr r4, r30
    lwz r3, 0x30(r3)
    bl fn_800D31E8
    opword  0x800D8E54  // lwz r0, lbl_8053AA14@sda21(r0)
    cmplwi r0, 0x2000
    opword  0x40820014  // bne .L_800E1D1C
    lwz r3, 0x40(r31)
    addi r4, r30, 0x1e
    lwz r3, 0x30(r3)
    bl fn_800D32C0
L_800E1D1C:
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800E1D34(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    mr r31, r5
    lis r5, lbl_80536C50@ha
    stw r30, 0x48(r1)
    clrlwi r0, r31, 16
    addi r5, r5, lbl_80536C50@l
    mr r30, r4
    stw r29, 0x44(r1)
    mr r29, r3
    mulli r0, r0, 0x30
    lwz r3, 0x40(r5)
    lwz r6, 0x104(r5)
    addi r5, r1, 0x8
    lwz r3, 0x30(r3)
    add r4, r6, r0
    bl PSMTXConcat
    lis r3, lbl_80536C50@ha
    clrlwi r0, r31, 16
    addi r4, r3, lbl_80536C50@l
    addi r3, r1, 0x8
    lwz r4, 0x38(r4)
    mulli r0, r0, 0x30
    mr r5, r3
    lwz r4, 0x4(r4)
    lwz r4, 0x3c(r4)
    add r4, r4, r0
    bl PSMTXConcat
    opword  0x800D8E60  // lwz r0, lbl_8053AA20@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E1DC0
    addi r3, r1, 0x8
    bl fn_800E149C
L_800E1DC0:
    mulli r4, r30, 0x3
    addi r3, r1, 0x8
    bl fn_800D3168
    mr r3, r29
    mr r4, r30
    lwz r12, 0x0(r29)
    mr r5, r31
    addi r6, r1, 0x8
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    lwz r29, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E1E08(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_8049BAF0@ha
    lhz r5, 0x4(r3)
    stw r0, 0x24(r1)
    addi r0, r4, lbl_8049BAF0@l
    addi r12, r1, 0x8
    li r4, 0x0
    opword  0x80CD8E48  // lwz r6, lbl_8053AA08@sda21(r0)
    mulli r6, r6, 0xc
    add r8, r0, r6
    lwz r7, 0x0(r8)
    lwz r6, 0x4(r8)
    lwz r0, 0x8(r8)
    stw r7, 0x8(r1)
    stw r6, 0xc(r1)
    stw r0, 0x10(r1)
    bl __ptmf_scall
    nop
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E1E64(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lhz r0, 0x4(r3)
    mulli r0, r0, 0x24
    add r5, r5, r0
    psq_l fp4, 0x0(r5), 0, 0
    add r7, r6, r0
    psq_l fp3, 0x8(r5), 0, 0
    psq_l fp2, 0x10(r5), 0, 0
    psq_l fp1, 0x18(r5), 0, 0
    lfs fp0, 0x20(r5)
    psq_st fp4, 0x0(r7), 0, 0
    psq_st fp3, 0x8(r7), 0, 0
    psq_st fp2, 0x10(r7), 0, 0
    psq_st fp1, 0x18(r7), 0, 0
    stfs fp0, 0x20(r7)
    lhz r0, 0x4(r3)
    mulli r0, r0, 0x24
    add r3, r6, r0
    bl fn_800BBF48
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E1EC8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    opword  0x390D8E58  // li r8, lbl_8053AA18@sda21
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, lbl_80536C50@l
    stw r30, 0x18(r1)
    mr r30, r3
    lis r3, lbl_8049BB50@ha
    lwz r10, 0x38(r31)
    addi r4, r3, lbl_8049BB50@l
    opword  0x800D8E48  // lwz r0, lbl_8053AA08@sda21(r0)
    li r3, 0x15
    lwz r9, 0x84(r10)
    mulli r5, r0, 0xc
    lhz r0, 0x4(r30)
    lwz r6, 0x34(r9)
    opword  0x90CD8E58  // stw r6, lbl_8053AA18@sda21(r0)
    add r4, r4, r5
    lwz r7, 0x0(r4)
    li r5, 0x30
    lwz r9, 0x10(r9)
    lwz r6, 0x4(r4)
    lwz r4, 0x8(r4)
    stw r9, 0x4(r8)
    stw r7, 0x8(r1)
    stw r6, 0xc(r1)
    stw r4, 0x10(r1)
    lwz r4, 0x4(r10)
    lwz r4, 0x48(r4)
    lbzx r0, r4, r0
    slwi r0, r0, 2
    lwzx r4, r8, r0
    stw r4, 0x104(r31)
    bl fn_8005B620
    lwz r4, 0x38(r31)
    mr r3, r30
    lhz r0, 0x4(r30)
    addi r12, r1, 0x8
    lwz r5, 0x4(r4)
    li r4, 0x0
    slwi r0, r0, 1
    lwz r5, 0x4c(r5)
    lhzx r5, r5, r0
    bl __ptmf_scall
    nop
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E1F9C(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    clrlwi r0, r5, 16
    stw r31, 0x5c(r1)
    mr r31, r6
    opword  0x806D8E4C  // lwz r3, lbl_8053AA0C@sda21(r0)
    lbzx r0, r3, r0
    cmplwi r0, 0x1
    opword  0x4082008C  // bne .L_800E204C
    opword  0x800D8E54  // lwz r0, lbl_8053AA14@sda21(r0)
    cmplwi r0, 0x2000
    opword  0x40820010  // bne .L_800E1FDC
    mr r3, r31
    li r4, 0x1e
    bl fn_800D32C0
L_800E1FDC:
    opword  0x880D8E50  // lbz r0, lbl_8053AA10@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800E1FF8
    mr r3, r31
    li r4, 0x0
    bl fn_800D31E8
    opword  0x480000B8  // b .L_800E20AC
L_800E1FF8:
    lis r4, lbl_80536C50@ha
    psq_l fp5, 0x0(r31), 0, 0
    addi r4, r4, lbl_80536C50@l
    lfs fp4, 0x8(r31)
    psq_l fp3, 0x10(r31), 0, 0
    addi r3, r1, 0x2c
    lfs fp2, 0x18(r31)
    psq_l fp1, 0x20(r31), 0, 0
    lfs fp0, 0x28(r31)
    lwz r4, 0x118(r4)
    psq_st fp5, 0x0(r3), 0, 0
    stfs fp4, 0x34(r1)
    psq_st fp3, 0xc(r3), 0, 0
    stfs fp2, 0x40(r1)
    psq_st fp1, 0x18(r3), 0, 0
    stfs fp0, 0x4c(r1)
    bl fn_800BBF48
    addi r3, r1, 0x2c
    li r4, 0x0
    bl fn_800D3254
    opword  0x48000064  // b .L_800E20AC
L_800E204C:
    mr r3, r31
    addi r4, r1, 0x8
    bl fn_800BBA14
    opword  0x800D8E54  // lwz r0, lbl_8053AA14@sda21(r0)
    cmplwi r0, 0x2000
    opword  0x40820010  // bne .L_800E2070
    addi r3, r1, 0x8
    li r4, 0x1e
    bl fn_800D3358
L_800E2070:
    opword  0x880D8E50  // lbz r0, lbl_8053AA10@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800E208C
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_800D3254
    opword  0x48000024  // b .L_800E20AC
L_800E208C:
    lis r4, lbl_80536C50@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_80536C50@l
    lwz r4, 0x118(r4)
    bl fn_800BBF48
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_800D3254
L_800E20AC:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_800E20C0(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    li r29, 0x0
    stw r28, 0x20(r1)
    mr r28, r3
    lis r3, lbl_8049BAF0@ha
    lwz r31, 0xc(r28)
    opword  0x800D8E48  // lwz r0, lbl_8053AA08@sda21(r0)
    lhz r30, 0x8(r28)
    mulli r4, r0, 0xc
    addi r0, r3, lbl_8049BAF0@l
    add r5, r0, r4
    lwz r4, 0x0(r5)
    lwz r3, 0x4(r5)
    lwz r0, 0x8(r5)
    stw r4, 0x8(r1)
    stw r3, 0xc(r1)
    stw r0, 0x10(r1)
    opword  0x4800002C  // b .L_800E2144
L_800E211C:
    lhz r5, 0x0(r31)
    cmplwi r5, 0xffff
    opword  0x41820018  // beq .L_800E213C
    mr r3, r28
    mr r4, r29
    addi r12, r1, 0x8
    bl __ptmf_scall
    nop
L_800E213C:
    addi r31, r31, 0x2
    addi r29, r29, 0x1
L_800E2144:
    cmpw r29, r30
    opword  0x4180FFD4  // blt .L_800E211C
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E216C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r25, r3
    mr r26, r4
    mr r27, r5
    mr r28, r6
    li r29, 0x0
    li r31, 0x0
    lhz r30, 0x8(r3)
    opword  0x48000068  // b .L_800E2200
L_800E219C:
    lwz r3, 0xc(r25)
    lhzx r0, r3, r31
    cmplwi r0, 0xffff
    opword  0x41820050  // beq .L_800E21F8
    mulli r0, r0, 0x24
    mr r4, r26
    add r3, r27, r0
    psq_l fp4, 0x0(r3), 0, 0
    add r5, r28, r0
    psq_l fp3, 0x8(r3), 0, 0
    psq_l fp2, 0x10(r3), 0, 0
    psq_l fp1, 0x18(r3), 0, 0
    lfs fp0, 0x20(r3)
    psq_st fp4, 0x0(r5), 0, 0
    psq_st fp3, 0x8(r5), 0, 0
    psq_st fp2, 0x10(r5), 0, 0
    psq_st fp1, 0x18(r5), 0, 0
    stfs fp0, 0x20(r5)
    lwz r3, 0xc(r25)
    lhzx r0, r3, r31
    mulli r0, r0, 0x24
    add r3, r28, r0
    bl fn_800BBF48
L_800E21F8:
    addi r31, r31, 0x2
    addi r29, r29, 0x1
L_800E2200:
    cmpw r29, r30
    opword  0x4180FF98  // blt .L_800E219C
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E221C(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    opword  0x38AD8E58  // li r5, lbl_8053AA18@sda21
    stw r0, 0x54(r1)
    stmw r23, 0x2c(r1)
    addi r30, r4, lbl_80536C50@l
    mr r24, r3
    lwz r6, 0x38(r30)
    opword  0x880D8E51  // lbz r0, lbl_8053AA11@sda21(r0)
    lwz r3, 0x84(r6)
    cmplwi r0, 0x0
    lwz r4, 0x34(r3)
    opword  0x908D8E58  // stw r4, lbl_8053AA18@sda21(r0)
    lwz r0, 0x10(r3)
    stw r0, 0x4(r5)
    opword  0x408200B0  // bne .L_800E230C
    opword  0x808D8E48  // lwz r4, lbl_8053AA08@sda21(r0)
    lis r3, lbl_8049BB50@ha
    addi r0, r3, lbl_8049BB50@l
    lwz r23, 0xc(r24)
    mulli r3, r4, 0xc
    lhz r28, 0x8(r24)
    li r29, 0x0
    add r5, r0, r3
    lwz r4, 0x0(r5)
    lwz r3, 0x4(r5)
    lwz r0, 0x8(r5)
    stw r4, 0x14(r1)
    stw r3, 0x18(r1)
    stw r0, 0x1c(r1)
    opword  0x48000068  // b .L_800E2300
L_800E229C:
    lhz r0, 0x0(r23)
    cmplwi r0, 0xffff
    opword  0x41820054  // beq .L_800E22F8
    lwz r5, 0x38(r30)
    clrlslwi r7, r0, 16, 1
    opword  0x388D8E58  // li r4, lbl_8053AA18@sda21
    li r3, 0x15
    lwz r8, 0x4(r5)
    li r5, 0x30
    lwz r6, 0x48(r8)
    lwz r8, 0x4c(r8)
    lbzx r0, r6, r0
    lhzx r25, r8, r7
    slwi r0, r0, 2
    lwzx r4, r4, r0
    stw r4, 0x104(r30)
    bl fn_8005B620
    mr r3, r24
    mr r4, r29
    mr r5, r25
    addi r12, r1, 0x14
    bl __ptmf_scall
    nop
L_800E22F8:
    addi r23, r23, 0x2
    addi r29, r29, 0x1
L_800E2300:
    cmpw r29, r28
    opword  0x4180FF98  // blt .L_800E229C
    opword  0x480000EC  // b .L_800E23F4
L_800E230C:
    lwz r6, 0x4(r6)
    li r3, 0x15
    li r5, 0x30
    lwz r29, 0x40(r6)
    stw r4, 0x104(r30)
    bl fn_8005B620
    lis r3, lbl_80539B14@ha
    lwz r23, 0xc(r24)
    addi r28, r3, lbl_80539B14@l
    lhz r27, 0x8(r24)
    lis r3, lbl_8049BBB0@ha
    li r26, 0x0
    addi r31, r3, lbl_8049BBB0@l
    opword  0x480000AC  // b .L_800E23EC
L_800E2344:
    opword  0x800D8E48  // lwz r0, lbl_8053AA08@sda21(r0)
    mulli r6, r0, 0xc
    add r5, r31, r6
    lwz r4, 0x0(r5)
    lwz r3, 0x4(r5)
    lwz r0, 0x8(r5)
    stw r4, 0x8(r1)
    stw r3, 0xc(r1)
    stw r0, 0x10(r1)
    lhz r4, 0x0(r23)
    cmplwi r4, 0xffff
    opword  0x41820070  // beq .L_800E23E0
    clrlslwi r3, r4, 16, 1
    lhz r0, 0x0(r28)
    lhzx r25, r29, r3
    cmplw r25, r0
    opword  0x4182005C  // beq .L_800E23E0
    lwz r3, 0x38(r30)
    lwz r3, 0x4(r3)
    lwz r3, 0x48(r3)
    lbzx r0, r3, r4
    cmplwi r0, 0x0
    opword  0x40820028  // bne .L_800E23C4
    lis r3, lbl_8049BB50@ha
    addi r0, r3, lbl_8049BB50@l
    add r5, r0, r6
    lwz r4, 0x0(r5)
    lwz r3, 0x4(r5)
    lwz r0, 0x8(r5)
    stw r4, 0x8(r1)
    stw r3, 0xc(r1)
    stw r0, 0x10(r1)
L_800E23C4:
    mr r3, r24
    mr r4, r26
    mr r5, r25
    addi r12, r1, 0x8
    bl __ptmf_scall
    nop
    sth r25, 0x0(r28)
L_800E23E0:
    addi r23, r23, 0x2
    addi r28, r28, 0x2
    addi r26, r26, 0x1
L_800E23EC:
    cmpw r26, r27
    opword  0x4180FF54  // blt .L_800E2344
L_800E23F4:
    lmw r23, 0x2c(r1)
    lwz r0, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E2408(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    clrlwi r0, r5, 16
    stw r31, 0x5c(r1)
    mr r31, r6
    stw r30, 0x58(r1)
    mr r30, r4
    opword  0x806D8E4C  // lwz r3, lbl_8053AA0C@sda21(r0)
    lbzx r0, r3, r0
    cmplwi r0, 0x1
    opword  0x40820090  // bne .L_800E24C4
    opword  0x800D8E54  // lwz r0, lbl_8053AA14@sda21(r0)
    cmplwi r0, 0x2000
    opword  0x40820014  // bne .L_800E2454
    mulli r4, r30, 0x3
    mr r3, r31
    addi r4, r4, 0x1e
    bl fn_800D32C0
L_800E2454:
    opword  0x880D8E50  // lbz r0, lbl_8053AA10@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800E2470
    mulli r4, r30, 0x3
    mr r3, r31
    bl fn_800D31E8
    opword  0x480000BC  // b .L_800E2528
L_800E2470:
    lis r4, lbl_80536C50@ha
    psq_l fp5, 0x0(r31), 0, 0
    addi r4, r4, lbl_80536C50@l
    lfs fp4, 0x8(r31)
    psq_l fp3, 0x10(r31), 0, 0
    addi r3, r1, 0x2c
    lfs fp2, 0x18(r31)
    psq_l fp1, 0x20(r31), 0, 0
    lfs fp0, 0x28(r31)
    lwz r4, 0x118(r4)
    psq_st fp5, 0x0(r3), 0, 0
    stfs fp4, 0x34(r1)
    psq_st fp3, 0xc(r3), 0, 0
    stfs fp2, 0x40(r1)
    psq_st fp1, 0x18(r3), 0, 0
    stfs fp0, 0x4c(r1)
    bl fn_800BBF48
    addi r3, r1, 0x2c
    li r4, 0x0
    bl fn_800D3254
    opword  0x48000068  // b .L_800E2528
L_800E24C4:
    mr r3, r31
    addi r4, r1, 0x8
    bl fn_800BBA14
    opword  0x800D8E54  // lwz r0, lbl_8053AA14@sda21(r0)
    cmplwi r0, 0x2000
    opword  0x40820014  // bne .L_800E24EC
    mulli r4, r30, 0x3
    addi r3, r1, 0x8
    addi r4, r4, 0x1e
    bl fn_800D3358
L_800E24EC:
    opword  0x880D8E50  // lbz r0, lbl_8053AA10@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800E2508
    mulli r4, r30, 0x3
    addi r3, r1, 0x8
    bl fn_800D3254
    opword  0x48000024  // b .L_800E2528
L_800E2508:
    lis r4, lbl_80536C50@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_80536C50@l
    lwz r4, 0x118(r4)
    bl fn_800BBF48
    mulli r4, r30, 0x3
    addi r3, r1, 0x8
    bl fn_800D3254
L_800E2528:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_800E2540(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x44(r1)
    lhz r0, 0x4(r3)
    addi r3, r4, lbl_80536C50@l
    lwz r7, 0x38(r3)
    slwi r5, r0, 1
    lwz r6, 0x4(r7)
    lwz r4, 0x48(r6)
    lwz r6, 0x4c(r6)
    lbzx r0, r4, r0
    lhzx r5, r6, r5
    cmplwi r0, 0x0
    opword  0x40820020  // bne .L_800E2598
    lwz r4, 0x84(r7)
    mulli r0, r5, 0x30
    addi r5, r1, 0x8
    lwz r4, 0x34(r4)
    add r4, r4, r0
    bl PSMTXConcat
    opword  0x4800001C  // b .L_800E25B0
L_800E2598:
    lwz r4, 0x84(r7)
    mulli r0, r5, 0x30
    addi r5, r1, 0x8
    lwz r4, 0x10(r4)
    add r4, r4, r0
    bl PSMTXConcat
L_800E25B0:
    addi r3, r1, 0x8
    bl fn_800BB7E8
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_800D3168
    opword  0xC0828D3C  // lfs f4, lbl_8053BCDC@sda21(r0)
    lfs fp0, 0x8(r1)
    lfs fp2, 0x1c(r1)
    lfs fp1, 0x30(r1)
    fdivs fp3, fp4, fp0
    opword  0xC0028D38  // lfs f0, lbl_8053BCD8@sda21(r0)
    opword  0x880D8E50  // lbz r0, lbl_8053AA10@sda21(r0)
    stfs fp0, 0x14(r1)
    cmplwi r0, 0x0
    stfs fp0, 0x24(r1)
    fdivs fp2, fp4, fp2
    stfs fp3, 0x8(r1)
    stfs fp0, 0x34(r1)
    fdivs fp0, fp4, fp1
    stfs fp2, 0x1c(r1)
    stfs fp0, 0x30(r1)
    opword  0x40820014  // bne .L_800E2618
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_800D31E8
    opword  0x48000024  // b .L_800E2638
L_800E2618:
    lis r4, lbl_80536C50@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_80536C50@l
    lwz r4, 0x118(r4)
    bl fn_800BBEE4
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_800D31E8
L_800E2638:
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800E2648(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x74(r1)
    stw r31, 0x6c(r1)
    mr r31, r3
    addi r3, r4, lbl_80536C50@l
    lhz r0, 0x4(r31)
    lwz r7, 0x38(r3)
    slwi r5, r0, 1
    lwz r6, 0x4(r7)
    lwz r4, 0x48(r6)
    lwz r6, 0x4c(r6)
    lbzx r0, r4, r0
    lhzx r5, r6, r5
    cmplwi r0, 0x0
    opword  0x40820020  // bne .L_800E26A8
    lwz r4, 0x84(r7)
    mulli r0, r5, 0x30
    addi r5, r1, 0x2c
    lwz r4, 0x34(r4)
    add r4, r4, r0
    bl PSMTXConcat
    opword  0x4800001C  // b .L_800E26C0
L_800E26A8:
    lwz r4, 0x84(r7)
    mulli r0, r5, 0x30
    addi r5, r1, 0x2c
    lwz r4, 0x10(r4)
    add r4, r4, r0
    bl PSMTXConcat
L_800E26C0:
    addi r3, r1, 0x2c
    bl fn_800BB8D8
    addi r3, r1, 0x2c
    li r4, 0x0
    bl fn_800D3168
    opword  0x806D8E4C  // lwz r3, lbl_8053AA0C@sda21(r0)
    lhz r0, 0x4(r31)
    lbzx r0, r3, r0
    cmplwi r0, 0x1
    opword  0x40820044  // bne .L_800E2728
    opword  0x880D8E50  // lbz r0, lbl_8053AA10@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800E2704
    addi r3, r1, 0x2c
    li r4, 0x0
    bl fn_800D31E8
    opword  0x48000070  // b .L_800E2770
L_800E2704:
    lis r4, lbl_80536C50@ha
    addi r3, r1, 0x2c
    addi r4, r4, lbl_80536C50@l
    lwz r4, 0x118(r4)
    bl fn_800BBEE4
    addi r3, r1, 0x2c
    li r4, 0x0
    bl fn_800D31E8
    opword  0x4800004C  // b .L_800E2770
L_800E2728:
    addi r3, r1, 0x2c
    addi r4, r1, 0x8
    bl fn_800BBA14
    opword  0x880D8E50  // lbz r0, lbl_8053AA10@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800E2750
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_800D3254
    opword  0x48000024  // b .L_800E2770
L_800E2750:
    lis r4, lbl_80536C50@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_80536C50@l
    lwz r4, 0x118(r4)
    bl fn_800BBF48
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_800D3254
L_800E2770:
    lwz r0, 0x74(r1)
    lwz r31, 0x6c(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_800E2784(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820040  // beq .L_800E27D8
    lis r3, lbl_8049BCB4@ha
    addi r0, r3, lbl_8049BCB4@l
    stw r0, 0x0(r31)
    opword  0x41820020  // beq .L_800E27C8
    lis r3, lbl_8049BD4C@ha
    addi r0, r3, lbl_8049BD4C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800E27C8
    lis r3, lbl_8049BD74@ha
    addi r0, r3, lbl_8049BD74@l
    stw r0, 0x0(r31)
L_800E27C8:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800E27D8
    mr r3, r31
    bl dtor_80084580
L_800E27D8:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E27F0(void)
{
    nofralloc
    lis r3, 0x534d
    addi r3, r3, 0x5942
    blr
}

ASM void fn_800E27FC(void)
{
    nofralloc
    blr
}

ASM void fn_800E2800(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820040  // beq .L_800E2854
    lis r3, lbl_8049BCDC@ha
    addi r0, r3, lbl_8049BCDC@l
    stw r0, 0x0(r31)
    opword  0x41820020  // beq .L_800E2844
    lis r3, lbl_8049BD4C@ha
    addi r0, r3, lbl_8049BD4C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800E2844
    lis r3, lbl_8049BD74@ha
    addi r0, r3, lbl_8049BD74@l
    stw r0, 0x0(r31)
L_800E2844:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800E2854
    mr r3, r31
    bl dtor_80084580
L_800E2854:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E286C(void)
{
    nofralloc
    lis r3, 0x534d
    addi r3, r3, 0x4242
    blr
}

ASM void fn_800E2878(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820040  // beq .L_800E28CC
    lis r3, lbl_8049BD04@ha
    addi r0, r3, lbl_8049BD04@l
    stw r0, 0x0(r31)
    opword  0x41820020  // beq .L_800E28BC
    lis r3, lbl_8049BD4C@ha
    addi r0, r3, lbl_8049BD4C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800E28BC
    lis r3, lbl_8049BD74@ha
    addi r0, r3, lbl_8049BD74@l
    stw r0, 0x0(r31)
L_800E28BC:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800E28CC
    mr r3, r31
    bl dtor_80084580
L_800E28CC:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E28E4(void)
{
    nofralloc
    lis r3, 0x534d
    addi r3, r3, 0x4d43
    blr
}

ASM void fn_800E28F0(void)
{
    nofralloc
    lhz r3, 0x8(r3)
    blr
}

ASM void fn_800E28F8(void)
{
    nofralloc
    lwz r3, 0xc(r3)
    clrlslwi r0, r4, 16, 1
    lhzx r3, r3, r0
    blr
}

ASM void fn_800E2908(void)
{
    nofralloc
    blr
}

ASM void fn_800E290C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800E2950
    lis r3, lbl_8049BD2C@ha
    addi r0, r3, lbl_8049BD2C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800E2940
    lis r3, lbl_8049BD74@ha
    addi r0, r3, lbl_8049BD74@l
    stw r0, 0x0(r31)
L_800E2940:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800E2950
    mr r3, r31
    bl dtor_80084580
L_800E2950:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E2968(void)
{
    nofralloc
    lis r3, 0x534d
    addi r3, r3, 0x4d4c
    blr
}

ASM void fn_800E2974(void)
{
    nofralloc
    lhz r3, 0x8(r3)
    blr
}

ASM void fn_800E297C(void)
{
    nofralloc
    lwz r3, 0xc(r3)
    clrlslwi r0, r4, 16, 1
    lhzx r3, r3, r0
    blr
}

ASM void fn_800E298C(void)
{
    nofralloc
    lis r3, 0x534d
    addi r3, r3, 0x4356
    blr
}

