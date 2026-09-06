#include "types.h"

extern f32 jumptable_8049C068;
extern f32 jumptable_8049C088;
extern f32 jumptable_8049C320;
extern f32 jumptable_8049C34C;
extern f32 jumptable_8049C378;
extern f32 lbl_80498978;
extern f32 lbl_8049BEC0;
extern f32 lbl_8049BF00;
extern f32 lbl_8049BF0C;
extern f32 lbl_8049C0AC;
extern f32 lbl_8049C0C0;
extern f32 lbl_8049C0D4;
extern f32 lbl_8049C0E8;
extern f32 lbl_8049C0FC;
extern f32 lbl_8049C110;
extern f32 lbl_8049C124;
extern f32 lbl_8049C138;
extern f32 lbl_8049C14C;
extern f32 lbl_8049C160;
extern f32 lbl_8049C178;
extern f32 lbl_8049C1A0;
extern f32 lbl_8049C300;
extern f32 lbl_8049C3A8;
extern f32 lbl_8052EBC0;
extern f32 lbl_80539D44;
extern f32 lbl_80539E60;
extern f32 lbl_8053BD28;
extern f32 lbl_8053BD30;
extern f32 lbl_8053BD38;
extern f32 lbl_8053BD3C;
extern f32 lbl_8053BD40;
extern f32 lbl_8053BD48;
extern f32 lbl_8053BD50;
extern f32 lbl_8053BD54;
extern f32 lbl_8053BD58;
extern f32 lbl_8053BD5C;
extern f32 lbl_8053BD60;
extern f32 lbl_8053BD64;
extern f32 lbl_8053BD68;
extern f32 lbl_8053BD6C;
extern f32 lbl_8053BD70;
extern f32 lbl_8053BD78;
extern f32 lbl_8053BD80;
extern f32 lbl_8053BD88;
extern f32 lbl_8053BD90;
extern f32 lbl_8053BD94;
extern f32 lbl_8053BD98;
extern f32 lbl_8053BD9C;
extern f32 lbl_8053BDA0;
extern f32 lbl_8053BDA8;
extern f32 lbl_8053BDAC;
extern f32 lbl_8053BDB0;
extern f32 lbl_8053BDB4;
extern f32 lbl_8053BDB8;
extern f32 lbl_8053BDC0;
extern f32 lbl_8053BDC8;
extern f32 lbl_8053BDD0;
extern f32 lbl_8053BDD4;
extern f32 lbl_8053BDD8;
extern f32 lbl_8053BDDC;
extern f32 lbl_8053BDE0;
extern f32 lbl_8053BDE8;
extern f32 lbl_8053BDEC;
extern f32 lbl_8053BDF0;
extern f32 lbl_8053BDF4;
extern f32 lbl_8053BDF8;
extern f32 lbl_8053BDFC;
extern f32 lbl_8053BE00;
extern f32 lbl_8053BE08;
extern f32 lbl_8053BE0C;
extern f32 lbl_8053BE10;
extern f32 lbl_8053BE18;
extern f32 lbl_8053BE1C;
extern f32 lbl_8053BE20;
extern f32 lbl_8053BE24;
extern f32 lbl_8053BE28;
extern f32 lbl_8053BE2C;
extern f32 lbl_8053BE30;
extern f32 lbl_8053BE38;
extern f32 lbl_8053BE40;
extern f32 lbl_8053BE44;
extern f32 lbl_8053BE48;
extern f32 lbl_8053BE4C;
extern f32 lbl_8053BE50;

extern void GXSetMisc(void);
extern void dtor_80084580(void);
extern void dtor_80092364(void);
extern void PSMTXIdentity(void);
extern void PSMTXCopy(void);
extern void PSMTXConcat(void);
extern void PSMTXRotAxisRad(void);
extern void PSMTXScale(void);
extern void PSMTXMultVec(void);
extern void PSMTXMultVecSR(void);
extern void PSMTXMultVecArraySR(void);
extern void PSVECMag(void);
extern void PSVECCrossProduct(void);
extern void fn_8005A464(void);
extern void fn_8005AD7C(void);
extern void fn_8005ADB4(void);
extern void fn_8005B620(void);
extern void fn_8005B6BC(void);
extern void fn_8005B93C(void);
extern void fn_8005C24C(void);
extern void fn_8005C3A4(void);
extern void fn_8005C3E4(void);
extern void fn_8005C424(void);
extern void fn_8005C46C(void);
extern void fn_8005C4B0(void);
extern void fn_8005D3C8(void);
extern void fn_8005D404(void);
extern void fn_8005E4A4(void);
extern void fn_8005E510(void);
extern void fn_8005E688(void);
extern void fn_8005E7CC(void);
extern void fn_8005E8B8(void);
extern void fn_8005E8DC(void);
extern void fn_8005EA6C(void);
extern void fn_8005EAB0(void);
extern void fn_8005EAF4(void);
extern void fn_8005EB5C(void);
extern void fn_8005EBC4(void);
extern void fn_8005EEB0(void);
extern void fn_8005EF80(void);
extern void fn_8005F11C(void);
extern void fn_8005F48C(void);
extern void fn_8005F538(void);
extern void fn_8005F56C(void);
extern void fn_8005FC54(void);
extern void fn_8005FDF4(void);
extern void fn_8005FE94(void);
extern void fn_8005FEC8(void);
extern void fn_800601C0(void);
extern void fn_800671B0(void);
extern void fn_80083868(void);
extern void fn_8008440C(void);
extern void fn_80084514(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80086F44(void);
extern void fn_80086F58(void);
extern void fn_80087010(void);
extern void fn_80087298(void);
extern void fn_800923D8(void);
extern void fn_80092984(void);
extern void fn_800932AC(void);
extern void strcmp(void);

ASM void fn_800E6540(void);
ASM void fn_800E6594(void);
ASM void fn_800E65D0(void);
ASM void fn_800E660C(void);
ASM void fn_800E6650(void);
ASM void fn_800E6694(void);
ASM void fn_800E6730(void);
ASM void fn_800E67B4(void);
ASM void fn_800E68CC(void);
ASM void fn_800E697C(void);
ASM void fn_800E6A2C(void);
ASM void fn_800E6B60(void);
ASM void fn_800E6C84(void);
ASM void fn_800E6D08(void);
ASM void fn_800E6D34(void);
ASM void fn_800E6D5C(void);
ASM void fn_800E6D8C(void);
ASM void fn_800E6DC8(void);
ASM void fn_800E6E08(void);
ASM void fn_800E6E54(void);
ASM void fn_800E6E60(void);
ASM void fn_800E6ED0(void);
ASM void fn_800E6EDC(void);
ASM void fn_800E6F10(void);
ASM void fn_800E6F50(void);
ASM void fn_800E6F8C(void);
ASM void fn_800E6FCC(void);
ASM void fn_800E7008(void);
ASM void fn_800E7050(void);
ASM void fn_800E7088(void);
ASM void fn_800E70C0(void);
ASM void fn_800E70F8(void);
ASM void fn_800E7290(void);
ASM void fn_800E7400(void);
ASM void fn_800E7454(void);
ASM void fn_800E74A4(void);
ASM void fn_800E74F0(void);
ASM void fn_800E752C(void);
ASM void fn_800E7564(void);
ASM void fn_800E759C(void);
ASM void fn_800E75E0(void);
ASM void fn_800E7630(void);
ASM void fn_800E768C(void);
ASM void fn_800E76A8(void);
ASM void fn_800E7720(void);
ASM void fn_800E773C(void);
ASM void fn_800E7778(void);
ASM void fn_800E77A0(void);
ASM void fn_800E77A4(void);
ASM void fn_800E77DC(void);
ASM void fn_800E7988(void);
ASM void fn_800E7A70(void);
ASM void fn_800E7B88(void);
ASM void fn_800E7C84(void);
ASM void fn_800E7DB4(void);
ASM void fn_800E7DD0(void);
ASM void fn_800E7DEC(void);
ASM void fn_800E7E20(void);
ASM void fn_800E7E3C(void);
ASM void fn_800E7ED4(void);
ASM void fn_800E7F14(void);
ASM void fn_800E7F54(void);
ASM void fn_800E7F94(void);
ASM void fn_800E7FF0(void);
ASM void fn_800E803C(void);
ASM void fn_800E8088(void);
ASM void fn_800E80F8(void);
ASM void fn_800E8490(void);
ASM void fn_800E88A4(void);
ASM void fn_800E8AC4(void);
ASM void fn_800E8C14(void);
ASM void fn_800E8CB0(void);
ASM void fn_800E8E58(void);
ASM void fn_800E8E60(void);
ASM void fn_800E8E68(void);
ASM void fn_800E9458(void);
ASM void fn_800E9EA4(void);
ASM void fn_800E9EE0(void);
ASM void fn_800E9F24(void);
ASM void fn_800E9F28(void);
ASM void fn_800EA1AC(void);
ASM void fn_800EA2C0(void);
ASM void fn_800EA400(void);
ASM void fn_800EA528(void);
ASM void fn_800EA554(void);
ASM void fn_800EA584(void);
ASM void fn_800EA58C(void);
ASM void fn_800EA668(void);
ASM void fn_800EA784(void);
ASM void fn_800EA928(void);
ASM void fn_800EAA30(void);
ASM void fn_800EACAC(void);
ASM void fn_800EAE20(void);
ASM void fn_800EAF38(void);
ASM void fn_800EAF6C(void);
ASM void fn_800EB008(void);
ASM void fn_800EB208(void);
ASM void fn_800EB250(void);
ASM void fn_800EB5A0(void);
ASM void fn_800EB6BC(void);
ASM void fn_800EB7B8(void);
ASM void fn_800EB92C(void);
ASM void fn_800EB96C(void);
ASM void fn_800EBA08(void);
ASM void fn_800EBA88(void);
ASM void fn_800EBA98(void);
ASM void fn_800EBC94(void);
ASM void fn_800EBCC4(void);
ASM void fn_800EBD00(void);
ASM void fn_800EBD10(void);
ASM void fn_800EBD70(void);
ASM void fn_800EBDC8(void);
ASM void fn_800EBE1C(void);
ASM void fn_800EBEF8(void);
ASM void fn_800EBF88(void);
ASM void fn_800EC188(void);
ASM void fn_800EC1E0(void);
ASM void fn_800EC240(void);
ASM void fn_800EC2AC(void);
ASM void fn_800EC2BC(void);
ASM void fn_800EC384(void);
ASM void fn_800EC4A8(void);
ASM void fn_800EC5A4(void);
ASM void fn_800EC5AC(void);
ASM void fn_800EC61C(void);
ASM void fn_800EC68C(void);
ASM void fn_800EC698(void);
ASM void fn_800EC6A4(void);
ASM void fn_800EC708(void);
ASM void fn_800EC76C(void);
ASM void fn_800EC7F8(void);
ASM void fn_800EC884(void);
ASM void fn_800EC904(void);
ASM void fn_800EC9E8(void);
ASM void fn_800ECA1C(void);
ASM void fn_800ECB1C(void);
ASM void fn_800ECBBC(void);
ASM void fn_800ECD34(void);
ASM void fn_800ECE6C(void);
ASM void fn_800ED060(void);
ASM void fn_800ED0B0(void);
ASM void fn_800ED2CC(void);
ASM void fn_800ED340(void);
ASM void fn_800ED614(void);
ASM void fn_800ED718(void);
ASM void fn_800EDA24(void);
ASM void fn_800EDCA0(void);
ASM void fn_800EE044(void);
ASM void fn_800EE2A4(void);
ASM void fn_800EE37C(void);
ASM void fn_800EE4BC(void);
ASM void fn_800EE710(void);
ASM void fn_800EE748(void);
ASM void fn_800EEA34(void);
ASM void fn_800EEA7C(void);
ASM void fn_800EEA80(void);
ASM void fn_800EEADC(void);
ASM void fn_800EEB38(void);
ASM void fn_800EEB94(void);
ASM void fn_800EEBF0(void);
ASM void fn_800EEC4C(void);
ASM void fn_800EECA8(void);
ASM void fn_800EED04(void);
ASM void fn_800EED60(void);
ASM void fn_800EEDBC(void);
ASM void fn_800EEDCC(void);
ASM void fn_800EEE60(void);
ASM void fn_800EEF94(void);
ASM void fn_800EF008(void);
ASM void fn_800EF0A4(void);
ASM void fn_800EF0CC(void);
ASM void fn_800EF258(void);
ASM void fn_800EF320(void);
ASM void fn_800EF368(void);
ASM void fn_800EFC0C(void);
ASM void fn_800F0310(void);
ASM void fn_800F059C(void);
ASM void fn_800F05A0(void);
ASM void fn_800F07FC(void);
ASM void fn_800F087C(void);
ASM void fn_800F08EC(void);
ASM void fn_800F1E2C(void);
ASM void fn_800F2388(void);
ASM void fn_800F2478(void);
ASM void fn_800F27AC(void);
ASM void fn_800F2A9C(void);
ASM void fn_800F2D14(void);
ASM void fn_800F2E78(void);
ASM void fn_800F2EEC(void);
ASM void fn_800F2F60(void);
ASM void fn_800F2FD4(void);
ASM void fn_800F310C(void);
ASM void fn_800F32D8(void);
ASM void fn_800F3358(void);
ASM void fn_800F3398(void);
ASM void fn_800F3750(void);
ASM void fn_800F37A8(void);
ASM void fn_800F37E8(void);
ASM void fn_800F3884(void);
ASM void fn_800F38A4(void);
ASM void fn_800F38C4(void);
ASM void fn_800F3920(void);
ASM void fn_800F3988(void);

ASM void fn_800E6540(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_800E6578
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800E6578
    mr r3, r30
    bl dtor_80084580
L_800E6578:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E6594(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0xC0228D88  // lfs f1, lbl_8053BD28@sda21(r0)
    li r4, 0x5
    stw r0, 0x14(r1)
    lfs fp0, 0x144(r3)
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r3, 0xc(r1)
    bl fn_8005C3E4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E65D0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0xC0228D88  // lfs f1, lbl_8053BD28@sda21(r0)
    li r4, 0x5
    stw r0, 0x14(r1)
    lfs fp0, 0x144(r3)
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r3, 0xc(r1)
    bl fn_8005C3A4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E660C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0xC0228D88  // lfs f1, lbl_8053BD28@sda21(r0)
    stw r0, 0x14(r1)
    lfs fp0, 0x144(r3)
    lfs fp2, 0x60(r4)
    li r4, 0x5
    fmuls fp0, fp1, fp0
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r3, 0xc(r1)
    bl fn_8005C3E4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E6650(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0xC0228D88  // lfs f1, lbl_8053BD28@sda21(r0)
    stw r0, 0x14(r1)
    lfs fp0, 0x144(r3)
    lfs fp2, 0x60(r4)
    li r4, 0x5
    fmuls fp0, fp1, fp0
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r3, 0xc(r1)
    bl fn_8005C3A4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E6694(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    addi r4, r1, 0x8
    lwz r8, 0x0(r3)
    li r3, 0x1
    lwz r0, 0x108(r8)
    lbz r5, 0xb8(r8)
    stw r0, 0xc(r1)
    lbz r7, 0xb9(r8)
    addi r10, r5, 0x1
    lbz r6, 0xba(r8)
    lbz r5, 0xbb(r8)
    addi r8, r7, 0x1
    lbz r7, 0xc(r1)
    addi r6, r6, 0x1
    lbz r9, 0xd(r1)
    addi r0, r5, 0x1
    mullw r10, r7, r10
    lbz r7, 0xe(r1)
    lbz r5, 0xf(r1)
    mullw r8, r9, r8
    extrwi r9, r10, 8, 16
    stb r9, 0xc(r1)
    mullw r6, r7, r6
    extrwi r7, r8, 8, 16
    stb r7, 0xd(r1)
    mullw r0, r5, r0
    extrwi r5, r6, 8, 16
    stb r5, 0xe(r1)
    extrwi r0, r0, 8, 16
    stb r0, 0xf(r1)
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E6730(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    addi r4, r1, 0x8
    lwz r7, 0x0(r3)
    li r3, 0x2
    lwz r0, 0x10c(r7)
    lbz r5, 0xbc(r7)
    stw r0, 0xc(r1)
    addi r8, r5, 0x1
    lbz r5, 0xbe(r7)
    lbz r6, 0xbd(r7)
    lbz r9, 0xc(r1)
    addi r0, r5, 0x1
    lbz r5, 0xe(r1)
    addi r6, r6, 0x1
    lbz r7, 0xd(r1)
    mullw r8, r9, r8
    mullw r6, r7, r6
    extrwi r7, r8, 8, 16
    stb r7, 0xc(r1)
    mullw r0, r5, r0
    extrwi r5, r6, 8, 16
    stb r5, 0xd(r1)
    extrwi r0, r0, 8, 16
    stb r0, 0xe(r1)
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E67B4(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    addi r4, r1, 0xc
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    lwz r9, 0x0(r3)
    li r3, 0x1
    lwz r0, 0x108(r9)
    lbz r5, 0xb8(r9)
    stw r0, 0x14(r1)
    addi r8, r5, 0x1
    lbz r6, 0xba(r9)
    lbz r5, 0xbb(r9)
    lbz r7, 0xb9(r9)
    addi r12, r6, 0x1
    lbz r6, 0x14(r1)
    addi r10, r5, 0x1
    lbz r31, 0x16(r1)
    addi r0, r7, 0x1
    mullw r8, r6, r8
    lbz r5, 0x15(r1)
    lbz r11, 0x17(r1)
    lwz r7, 0x10c(r9)
    lbz r6, 0xbd(r9)
    stw r7, 0x10(r1)
    mullw r30, r5, r0
    extrwi r29, r8, 8, 16
    lbz r7, 0xbc(r9)
    lbz r5, 0xbe(r9)
    addi r0, r7, 0x1
    lbz r9, 0x10(r1)
    extrwi r30, r30, 8, 16
    addi r7, r6, 0x1
    lbz r8, 0x11(r1)
    mullw r12, r31, r12
    stb r29, 0x14(r1)
    addi r5, r5, 0x1
    lbz r6, 0x12(r1)
    stb r30, 0x15(r1)
    mullw r10, r11, r10
    extrwi r11, r12, 8, 16
    stb r11, 0x16(r1)
    mullw r9, r9, r0
    extrwi r0, r10, 8, 16
    stb r0, 0x17(r1)
    lwz r0, 0x14(r1)
    mullw r7, r8, r7
    stw r0, 0xc(r1)
    extrwi r8, r9, 8, 16
    stb r8, 0x10(r1)
    mullw r0, r6, r5
    extrwi r5, r7, 8, 16
    stb r5, 0x11(r1)
    extrwi r0, r0, 8, 16
    stb r0, 0x12(r1)
    bl fn_8005EBC4
    lwz r0, 0x10(r1)
    addi r4, r1, 0x8
    li r3, 0x2
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E68CC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r10, 0x0(r3)
    li r3, 0x1
    lbz r5, 0x96(r4)
    addi r4, r1, 0x8
    lwz r7, 0x108(r10)
    lbz r8, 0xb8(r10)
    addi r0, r5, 0x1
    lbz r6, 0xbb(r10)
    stw r7, 0xc(r1)
    addi r9, r8, 0x1
    addi r5, r6, 0x1
    lbz r7, 0xb9(r10)
    lbz r6, 0xf(r1)
    lbz r8, 0xd(r1)
    addi r7, r7, 0x1
    mullw r5, r6, r5
    lbz r6, 0xba(r10)
    lbz r10, 0xc(r1)
    addi r6, r6, 0x1
    extrwi r11, r5, 8, 16
    lbz r5, 0xe(r1)
    mullw r0, r11, r0
    stb r11, 0xf(r1)
    mullw r5, r5, r6
    extrwi r0, r0, 8, 16
    stb r0, 0xf(r1)
    mullw r7, r8, r7
    extrwi r5, r5, 8, 16
    stb r5, 0xe(r1)
    mullw r9, r10, r9
    extrwi r6, r7, 8, 16
    stb r6, 0xd(r1)
    extrwi r8, r9, 8, 16
    stb r8, 0xc(r1)
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E697C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r0, 0x8c(r4)
    lwz r8, 0x0(r3)
    li r3, 0x1
    stw r0, 0xc(r1)
    lbz r5, 0xbb(r8)
    lbz r6, 0xf(r1)
    addi r0, r5, 0x1
    lbz r7, 0xb8(r8)
    mullw r5, r6, r0
    lbz r4, 0x96(r4)
    lbz r10, 0xc(r1)
    addi r9, r7, 0x1
    addi r0, r4, 0x1
    lbz r6, 0xb9(r8)
    extrwi r11, r5, 8, 16
    lbz r4, 0xba(r8)
    mullw r0, r11, r0
    addi r7, r6, 0x1
    lbz r8, 0xd(r1)
    addi r5, r4, 0x1
    stb r11, 0xf(r1)
    addi r4, r1, 0x8
    extrwi r0, r0, 8, 16
    lbz r6, 0xe(r1)
    mullw r9, r10, r9
    stb r0, 0xf(r1)
    extrwi r0, r9, 8, 16
    stb r0, 0xc(r1)
    mullw r0, r6, r5
    mullw r7, r8, r7
    extrwi r0, r0, 8, 16
    stb r0, 0xe(r1)
    extrwi r5, r7, 8, 16
    stb r5, 0xd(r1)
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E6A2C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    stw r28, 0x20(r1)
    lwz r0, 0x8c(r4)
    lwz r28, 0x0(r3)
    li r3, 0x1
    stw r0, 0x14(r1)
    lbz r5, 0xbb(r28)
    lbz r6, 0x17(r1)
    addi r0, r5, 0x1
    lbz r5, 0xb8(r28)
    mullw r0, r6, r0
    lbz r7, 0xb9(r28)
    lbz r6, 0xba(r28)
    addi r8, r5, 0x1
    addi r12, r7, 0x1
    lwz r7, 0x90(r4)
    lbz r5, 0x96(r4)
    extrwi r29, r0, 8, 16
    lbz r4, 0x14(r1)
    addi r10, r6, 0x1
    addi r0, r5, 0x1
    lbz r31, 0x15(r1)
    lbz r11, 0x16(r1)
    mullw r9, r29, r0
    lbz r5, 0xbd(r28)
    stw r7, 0x10(r1)
    lbz r6, 0xbc(r28)
    addi r0, r5, 0x1
    lbz r5, 0x12(r1)
    mullw r30, r4, r8
    lbz r4, 0xbe(r28)
    addi r7, r6, 0x1
    lbz r8, 0x10(r1)
    lbz r6, 0x11(r1)
    addi r4, r4, 0x1
    mullw r12, r31, r12
    extrwi r31, r30, 8, 16
    stb r29, 0x17(r1)
    extrwi r9, r9, 8, 16
    stb r31, 0x14(r1)
    mullw r10, r11, r10
    extrwi r11, r12, 8, 16
    stb r9, 0x17(r1)
    stb r11, 0x15(r1)
    mullw r7, r8, r7
    extrwi r8, r10, 8, 16
    stb r8, 0x16(r1)
    mullw r6, r6, r0
    lwz r0, 0x14(r1)
    extrwi r7, r7, 8, 16
    stw r0, 0xc(r1)
    stb r7, 0x10(r1)
    mullw r5, r5, r4
    extrwi r4, r6, 8, 16
    stb r4, 0x11(r1)
    addi r4, r1, 0xc
    extrwi r0, r5, 8, 16
    stb r0, 0x12(r1)
    bl fn_8005EBC4
    lwz r0, 0x10(r1)
    addi r4, r1, 0x8
    li r3, 0x2
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E6B60(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    lwz r31, 0x0(r3)
    li r3, 0x1
    lbz r5, 0x96(r4)
    lwz r0, 0x108(r31)
    lwz r7, 0x90(r4)
    addi r10, r5, 0x1
    stw r0, 0x14(r1)
    addi r4, r1, 0xc
    lbz r5, 0xbb(r31)
    lbz r6, 0x17(r1)
    addi r0, r5, 0x1
    stw r7, 0x10(r1)
    mullw r0, r6, r0
    lbz r7, 0xb8(r31)
    lbz r6, 0xb9(r31)
    lbz r9, 0x14(r1)
    addi r7, r7, 0x1
    lbz r5, 0xba(r31)
    extrwi r30, r0, 8, 16
    addi r0, r5, 0x1
    mullw r9, r9, r7
    lbz r11, 0x16(r1)
    lbz r5, 0xbe(r31)
    addi r6, r6, 0x1
    lbz r8, 0x15(r1)
    lbz r7, 0xbc(r31)
    mullw r12, r8, r6
    lbz r6, 0xbd(r31)
    extrwi r31, r9, 8, 16
    lbz r9, 0x10(r1)
    addi r8, r7, 0x1
    lbz r7, 0x11(r1)
    mullw r11, r11, r0
    addi r0, r6, 0x1
    extrwi r12, r12, 8, 16
    lbz r6, 0x12(r1)
    addi r5, r5, 0x1
    stb r30, 0x17(r1)
    extrwi r11, r11, 8, 16
    stb r31, 0x14(r1)
    mullw r8, r9, r8
    stb r12, 0x15(r1)
    stb r11, 0x16(r1)
    mullw r10, r30, r10
    extrwi r8, r8, 8, 16
    stb r8, 0x10(r1)
    extrwi r9, r10, 8, 16
    mullw r7, r7, r0
    stb r9, 0x17(r1)
    lwz r0, 0x14(r1)
    stw r0, 0xc(r1)
    mullw r5, r6, r5
    extrwi r6, r7, 8, 16
    stb r6, 0x11(r1)
    extrwi r0, r5, 8, 16
    stb r0, 0x12(r1)
    bl fn_8005EBC4
    lwz r0, 0x10(r1)
    addi r4, r1, 0x8
    li r3, 0x2
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E6C84(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r5, 0x0(r3)
    li r3, 0x2
    lwz r0, 0x90(r4)
    addi r4, r1, 0x8
    lbz r7, 0xbc(r5)
    lbz r6, 0xbd(r5)
    stw r0, 0xc(r1)
    addi r8, r7, 0x1
    lbz r5, 0xbe(r5)
    addi r6, r6, 0x1
    lbz r9, 0xc(r1)
    lbz r7, 0xd(r1)
    addi r0, r5, 0x1
    lbz r5, 0xe(r1)
    mullw r8, r9, r8
    mullw r6, r7, r6
    extrwi r7, r8, 8, 16
    stb r7, 0xc(r1)
    mullw r0, r5, r0
    extrwi r5, r6, 8, 16
    stb r5, 0xd(r1)
    extrwi r0, r0, 8, 16
    stb r0, 0xe(r1)
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E6D08(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lwz r5, 0x0(r3)
    lwz r4, 0x1c(r4)
    lwz r0, 0x100(r5)
    lwz r4, 0x0(r4)
    lha r4, 0x24(r4)
    cmplw r0, r4
    opword  0x40800008  // bge .L_800E6D2C
    extsh r4, r0
L_800E6D2C:
    sth r4, 0x214(r3)
    blr
}

ASM void fn_800E6D34(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lha r0, 0x80(r4)
    lwz r4, 0x1c(r5)
    lwz r4, 0x0(r4)
    lha r4, 0x24(r4)
    cmpw r0, r4
    opword  0x40800008  // bge .L_800E6D54
    mr r4, r0
L_800E6D54:
    sth r4, 0x214(r3)
    blr
}

ASM void fn_800E6D5C(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lwz r5, 0x0(r3)
    lwz r4, 0x1c(r4)
    lwz r5, 0x100(r5)
    lwz r4, 0x0(r4)
    lha r4, 0x24(r4)
    addi r4, r4, 0x1
    divwu r0, r5, r4
    mullw r0, r0, r4
    subf r0, r0, r5
    sth r0, 0x214(r3)
    blr
}

ASM void fn_800E6D8C(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lbz r6, 0x95(r4)
    lwz r5, 0x1c(r5)
    lha r0, 0x80(r4)
    lwz r4, 0x0(r5)
    lbz r5, 0x2f(r4)
    lha r4, 0x24(r4)
    and r5, r6, r5
    add r5, r0, r5
    addi r4, r4, 0x1
    divw r0, r5, r4
    mullw r0, r0, r4
    subf r0, r0, r5
    sth r0, 0x214(r3)
    blr
}

ASM void fn_800E6DC8(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lwz r4, 0x0(r3)
    lwz r5, 0x1c(r5)
    lwz r6, 0x100(r4)
    lwz r4, 0x0(r5)
    lha r5, 0x24(r4)
    divwu r4, r6, r5
    mullw r0, r4, r5
    clrlwi r4, r4, 31
    subf r6, r0, r6
    slwi r0, r6, 1
    subf r0, r0, r5
    mullw r0, r4, r0
    add r0, r6, r0
    sth r0, 0x214(r3)
    blr
}

ASM void fn_800E6E08(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lbz r6, 0x95(r4)
    lwz r5, 0x1c(r5)
    lha r0, 0x80(r4)
    lwz r5, 0x0(r5)
    lbz r4, 0x2f(r5)
    lha r7, 0x24(r5)
    and r4, r6, r4
    add r5, r0, r4
    divw r4, r5, r7
    mullw r0, r4, r7
    clrlwi r4, r4, 31
    subf r5, r0, r5
    slwi r0, r5, 1
    subf r0, r0, r7
    mullw r0, r4, r0
    add r0, r5, r0
    sth r0, 0x214(r3)
    blr
}

ASM void fn_800E6E54(void)
{
    nofralloc
    li r0, 0x0
    sth r0, 0x214(r3)
    blr
}

ASM void fn_800E6E60(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r0, 0x4330
    opword  0xC8228D90  // lfd f1, lbl_8053BD30@sda21(r0)
    lwz r5, 0x4(r3)
    lfs fp2, 0x84(r4)
    lwz r5, 0x1c(r5)
    stw r0, 0x8(r1)
    lwz r6, 0x0(r5)
    lbz r4, 0x95(r4)
    lha r5, 0x24(r6)
    lbz r0, 0x2f(r6)
    addi r7, r5, 0x1
    xoris r5, r7, 0x8000
    and r0, r4, r0
    stw r5, 0xc(r1)
    lfd fp0, 0x8(r1)
    fsubs fp0, fp0, fp1
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x10(r1)
    lwz r4, 0x14(r1)
    add r4, r4, r0
    divw r0, r4, r7
    mullw r0, r0, r7
    subf r0, r0, r4
    sth r0, 0x214(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E6ED0(void)
{
    nofralloc
    li r0, 0x0
    sth r0, 0x214(r3)
    blr
}

ASM void fn_800E6EDC(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lbz r6, 0x95(r4)
    lwz r4, 0x1c(r5)
    lwz r4, 0x0(r4)
    lbz r0, 0x2f(r4)
    lha r4, 0x24(r4)
    and r5, r6, r0
    addi r4, r4, 0x1
    divw r0, r5, r4
    mullw r0, r0, r4
    subf r0, r0, r5
    sth r0, 0x214(r3)
    blr
}

ASM void fn_800E6F10(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lha r0, 0x214(r3)
    lwz r4, 0x1c(r4)
    slwi r0, r0, 2
    lwz r5, 0x0(r3)
    lwz r3, 0xc(r4)
    add r3, r3, r0
    lbz r0, 0x0(r3)
    stb r0, 0x108(r5)
    lbz r0, 0x1(r3)
    stb r0, 0x109(r5)
    lbz r0, 0x2(r3)
    stb r0, 0x10a(r5)
    lbz r0, 0x3(r3)
    stb r0, 0x10b(r5)
    blr
}

ASM void fn_800E6F50(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lha r0, 0x214(r3)
    lwz r3, 0x1c(r5)
    slwi r0, r0, 2
    lwz r3, 0xc(r3)
    add r3, r3, r0
    lbz r0, 0x0(r3)
    stb r0, 0x8c(r4)
    lbz r0, 0x1(r3)
    stb r0, 0x8d(r4)
    lbz r0, 0x2(r3)
    stb r0, 0x8e(r4)
    lbz r0, 0x3(r3)
    stb r0, 0x8f(r4)
    blr
}

ASM void fn_800E6F8C(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lha r0, 0x214(r3)
    lwz r4, 0x1c(r4)
    slwi r0, r0, 2
    lwz r5, 0x0(r3)
    lwz r3, 0x10(r4)
    add r3, r3, r0
    lbz r0, 0x0(r3)
    stb r0, 0x10c(r5)
    lbz r0, 0x1(r3)
    stb r0, 0x10d(r5)
    lbz r0, 0x2(r3)
    stb r0, 0x10e(r5)
    lbz r0, 0x3(r3)
    stb r0, 0x10f(r5)
    blr
}

ASM void fn_800E6FCC(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lha r0, 0x214(r3)
    lwz r3, 0x1c(r5)
    slwi r0, r0, 2
    lwz r3, 0x10(r3)
    add r3, r3, r0
    lbz r0, 0x0(r3)
    stb r0, 0x90(r4)
    lbz r0, 0x1(r3)
    stb r0, 0x91(r4)
    lbz r0, 0x2(r3)
    stb r0, 0x92(r4)
    lbz r0, 0x3(r3)
    stb r0, 0x93(r4)
    blr
}

ASM void fn_800E7008(void)
{
    nofralloc
    lwz r3, 0x0(r3)
    lbz r0, 0x108(r3)
    stb r0, 0x8c(r4)
    lbz r0, 0x109(r3)
    stb r0, 0x8d(r4)
    lbz r0, 0x10a(r3)
    stb r0, 0x8e(r4)
    lbz r0, 0x10b(r3)
    stb r0, 0x8f(r4)
    lbz r0, 0x10c(r3)
    stb r0, 0x90(r4)
    lbz r0, 0x10d(r3)
    stb r0, 0x91(r4)
    lbz r0, 0x10e(r3)
    stb r0, 0x92(r4)
    lbz r0, 0x10f(r3)
    stb r0, 0x93(r4)
    blr
}

ASM void fn_800E7050(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x0
    li r4, 0x1
    stw r0, 0x14(r1)
    li r5, 0x4
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E7088(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x0
    li r4, 0x1
    stw r0, 0x14(r1)
    li r5, 0x4
    li r6, 0x1e
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E70C0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x0
    li r4, 0x0
    stw r0, 0x14(r1)
    li r5, 0x0
    li r6, 0x1e
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E70F8(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stfd fp31, 0x60(r1)
    psq_st fp31, 0x68(r1), 0, 0
    lwz r5, 0x4(r3)
    lis r8, 0x4330
    lwz r4, 0x0(r3)
    lis r3, lbl_8052EBC0@ha
    lwz r9, 0x1c(r5)
    addi r7, r3, lbl_8052EBC0@l
    lwz r0, 0x100(r4)
    addi r3, r1, 0x8
    lwz r6, 0x0(r9)
    li r4, 0x1e
    stw r0, 0x3c(r1)
    li r5, 0x1
    lwz r0, 0x8(r6)
    stw r8, 0x38(r1)
    extrwi r6, r0, 1, 6
    opword  0xC8628DA8  // lfd f3, lbl_8053BD48@sda21(r0)
    lfd fp0, 0x38(r1)
    extrwi r0, r0, 1, 5
    lwz r9, 0x4(r9)
    fsubs fp6, fp0, fp3
    stw r6, 0x44(r1)
    lfs fp1, 0x24(r9)
    stw r8, 0x40(r1)
    lfs fp0, 0x10(r9)
    lfd fp2, 0x40(r1)
    fmadds fp0, fp6, fp1, fp0
    stw r0, 0x4c(r1)
    fsubs fp2, fp2, fp3
    opword  0xC0E28D9C  // lfs f7, lbl_8053BD3C@sda21(r0)
    stw r8, 0x48(r1)
    fctiwz fp0, fp0
    lfd fp1, 0x48(r1)
    fadds fp2, fp7, fp2
    opword  0xC0A28D98  // lfs f5, lbl_8053BD38@sda21(r0)
    fsubs fp1, fp1, fp3
    stfd fp0, 0x50(r1)
    fmuls fp11, fp5, fp2
    lfs fp3, 0x14(r9)
    lfs fp2, 0x0(r9)
    fadds fp4, fp7, fp1
    fmadds fp8, fp6, fp3, fp2
    lwz r0, 0x54(r1)
    lfs fp1, 0x18(r9)
    rlwinm r0, r0, 30, 18, 28
    fmuls fp12, fp5, fp4
    lfs fp0, 0x4(r9)
    add r6, r7, r0
    fadds fp10, fp11, fp8
    fmadds fp4, fp6, fp1, fp0
    lfs fp3, 0x1c(r9)
    lfs fp2, 0x8(r9)
    lfs fp1, 0x20(r9)
    lfs fp0, 0xc(r9)
    fmadds fp13, fp6, fp3, fp2
    lfs fp9, 0x4(r6)
    fadds fp3, fp12, fp4
    fmadds fp31, fp6, fp1, fp0
    lfsx fp8, r7, r0
    opword  0xC0A28DA0  // lfs f5, lbl_8053BD40@sda21(r0)
    fmuls fp1, fp9, fp10
    stfs fp7, 0x30(r1)
    fmuls fp0, fp9, fp3
    fmuls fp4, fp13, fp9
    stfs fp5, 0x10(r1)
    fmsubs fp1, fp8, fp3, fp1
    fneg fp2, fp13
    stfs fp5, 0x20(r1)
    fmuls fp3, fp31, fp8
    stfs fp4, 0x8(r1)
    fmadds fp4, fp13, fp1, fp11
    fmuls fp6, fp2, fp8
    fmuls fp2, fp31, fp9
    stfs fp5, 0x28(r1)
    fneg fp1, fp31
    fmadds fp0, fp8, fp10, fp0
    stfs fp6, 0xc(r1)
    stfs fp4, 0x14(r1)
    fmadds fp0, fp1, fp0, fp12
    stfs fp3, 0x18(r1)
    stfs fp2, 0x1c(r1)
    stfs fp0, 0x24(r1)
    stfs fp5, 0x2c(r1)
    stfs fp5, 0x34(r1)
    bl fn_8005FEC8
    li r3, 0x0
    li r4, 0x1
    li r5, 0x4
    li r6, 0x1e
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    psq_l fp31, 0x68(r1), 0, 0
    lwz r0, 0x74(r1)
    lfd fp31, 0x60(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_800E7290(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    lis r8, 0x4330
    opword  0xC8228D90  // lfd f1, lbl_8053BD30@sda21(r0)
    stw r0, 0x64(r1)
    opword  0xC8628DA8  // lfd f3, lbl_8053BD48@sda21(r0)
    lwz r5, 0x4(r3)
    lis r3, lbl_8052EBC0@ha
    lha r0, 0x80(r4)
    addi r7, r3, lbl_8052EBC0@l
    lwz r6, 0x1c(r5)
    addi r3, r1, 0x8
    xoris r0, r0, 0x8000
    stw r8, 0x38(r1)
    lwz r5, 0x0(r6)
    li r4, 0x1e
    stw r0, 0x3c(r1)
    lwz r0, 0x8(r5)
    li r5, 0x1
    lfd fp0, 0x38(r1)
    lwz r9, 0x4(r6)
    extrwi r6, r0, 1, 6
    fsubs fp10, fp0, fp1
    extrwi r0, r0, 1, 5
    stw r6, 0x44(r1)
    lfs fp1, 0x24(r9)
    stw r8, 0x40(r1)
    lfs fp0, 0x10(r9)
    lfd fp2, 0x40(r1)
    fmadds fp0, fp10, fp1, fp0
    stw r0, 0x4c(r1)
    fsubs fp2, fp2, fp3
    opword  0xC0C28D9C  // lfs f6, lbl_8053BD3C@sda21(r0)
    stw r8, 0x48(r1)
    fctiwz fp0, fp0
    lfd fp1, 0x48(r1)
    fadds fp5, fp6, fp2
    opword  0xC0E28D98  // lfs f7, lbl_8053BD38@sda21(r0)
    fsubs fp1, fp1, fp3
    stfd fp0, 0x50(r1)
    lfs fp0, 0x0(r9)
    fmuls fp11, fp7, fp5
    lwz r0, 0x54(r1)
    fadds fp4, fp6, fp1
    lfs fp1, 0x14(r9)
    rlwinm r0, r0, 30, 18, 28
    add r6, r7, r0
    lfs fp3, 0x18(r9)
    fmadds fp5, fp10, fp1, fp0
    fmuls fp12, fp7, fp4
    lfs fp2, 0x4(r9)
    lfs fp1, 0x1c(r9)
    lfs fp0, 0x8(r9)
    fmadds fp2, fp10, fp3, fp2
    fadds fp9, fp11, fp5
    fmadds fp13, fp10, fp1, fp0
    lfs fp8, 0x4(r6)
    fadds fp5, fp12, fp2
    lfs fp1, 0x20(r9)
    lfs fp0, 0xc(r9)
    opword  0xC0828DA0  // lfs f4, lbl_8053BD40@sda21(r0)
    fmadds fp10, fp10, fp1, fp0
    lfsx fp7, r7, r0
    fmuls fp2, fp13, fp8
    stfs fp4, 0x10(r1)
    fmuls fp0, fp8, fp5
    fmuls fp1, fp8, fp9
    stfs fp2, 0x8(r1)
    fneg fp3, fp13
    fmadds fp0, fp7, fp9, fp0
    fmsubs fp2, fp7, fp5, fp1
    stfs fp4, 0x20(r1)
    fmuls fp5, fp3, fp7
    fmuls fp1, fp10, fp7
    stfs fp4, 0x28(r1)
    fmadds fp3, fp13, fp2, fp11
    fmuls fp2, fp10, fp8
    stfs fp5, 0xc(r1)
    stfs fp1, 0x18(r1)
    fneg fp1, fp10
    stfs fp3, 0x14(r1)
    fmadds fp0, fp1, fp0, fp12
    stfs fp2, 0x1c(r1)
    stfs fp0, 0x24(r1)
    stfs fp4, 0x2c(r1)
    stfs fp6, 0x30(r1)
    stfs fp4, 0x34(r1)
    bl fn_8005FEC8
    lwz r0, 0x64(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_800E7400(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    lwz r5, 0x4(r3)
    lwz r6, 0x8(r3)
    lwz r3, 0x1c(r5)
    lwz r5, 0x38(r5)
    lwz r3, 0x0(r3)
    lwz r6, 0x8(r6)
    lbz r0, 0x20(r3)
    slwi r0, r0, 1
    lhzx r0, r5, r0
    slwi r0, r0, 2
    lwzx r3, r6, r0
    addi r3, r3, 0x4
    bl fn_80092984
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E7454(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    lwz r5, 0x0(r3)
    lwz r6, 0x4(r3)
    lbz r0, 0x111(r5)
    lwz r5, 0x38(r6)
    slwi r0, r0, 1
    lwz r3, 0x8(r3)
    lhzx r0, r5, r0
    lwz r3, 0x8(r3)
    slwi r0, r0, 2
    lwzx r3, r3, r0
    addi r3, r3, 0x4
    bl fn_80092984
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E74A4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r5, 0x4(r3)
    lbz r0, 0x94(r4)
    li r4, 0x0
    lwz r5, 0x38(r5)
    slwi r0, r0, 1
    lwz r3, 0x8(r3)
    lhzx r0, r5, r0
    lwz r3, 0x8(r3)
    slwi r0, r0, 2
    lwzx r3, r3, r0
    addi r3, r3, 0x4
    bl fn_80092984
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E74F0(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lwz r5, 0x0(r3)
    lwz r6, 0x1c(r4)
    lwz r4, 0x100(r5)
    lwz r3, 0x0(r6)
    lbz r3, 0x1f(r3)
    subi r0, r3, 0x1
    cmplw r0, r4
    opword  0x40800008  // bge .L_800E7518
    mr r4, r0
L_800E7518:
    lwz r3, 0x8(r6)
    clrlwi r0, r4, 24
    lbzx r0, r3, r0
    stb r0, 0x111(r5)
    blr
}

ASM void fn_800E752C(void)
{
    nofralloc
    lwz r3, 0x4(r3)
    lha r5, 0x80(r4)
    lwz r6, 0x1c(r3)
    lwz r3, 0x0(r6)
    lbz r3, 0x1f(r3)
    subi r0, r3, 0x1
    cmpw r0, r5
    opword  0x40800008  // bge .L_800E7550
    mr r5, r0
L_800E7550:
    lwz r3, 0x8(r6)
    clrlwi r0, r5, 24
    lbzx r0, r3, r0
    stb r0, 0x94(r4)
    blr
}

ASM void fn_800E7564(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lwz r6, 0x0(r3)
    lwz r5, 0x1c(r4)
    lwz r4, 0x100(r6)
    lwz r3, 0x0(r5)
    lwz r5, 0x8(r5)
    lbz r3, 0x1f(r3)
    divwu r0, r4, r3
    mullw r0, r0, r3
    subf r0, r0, r4
    clrlwi r0, r0, 24
    lbzx r0, r5, r0
    stb r0, 0x111(r6)
    blr
}

ASM void fn_800E759C(void)
{
    nofralloc
    lwz r3, 0x4(r3)
    lbz r7, 0x95(r4)
    lwz r5, 0x1c(r3)
    lha r0, 0x80(r4)
    lwz r3, 0x0(r5)
    lwz r6, 0x8(r5)
    lbz r5, 0x30(r3)
    lbz r3, 0x1f(r3)
    and r5, r7, r5
    add r5, r0, r5
    divw r0, r5, r3
    mullw r0, r0, r3
    subf r0, r0, r5
    clrlwi r0, r0, 24
    lbzx r0, r6, r0
    stb r0, 0x94(r4)
    blr
}

ASM void fn_800E75E0(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lwz r5, 0x0(r3)
    lwz r4, 0x1c(r4)
    lwz r6, 0x100(r5)
    lwz r3, 0x0(r4)
    lwz r4, 0x8(r4)
    lbz r3, 0x1f(r3)
    subi r7, r3, 0x1
    divw r3, r6, r7
    mullw r0, r3, r7
    clrlwi r3, r3, 31
    subf r6, r0, r6
    slwi r0, r6, 1
    subf r0, r0, r7
    mullw r0, r3, r0
    add r0, r6, r0
    clrlwi r0, r0, 24
    lbzx r0, r4, r0
    stb r0, 0x111(r5)
    blr
}

ASM void fn_800E7630(void)
{
    nofralloc
    lwz r3, 0x4(r3)
    lbz r7, 0x95(r4)
    lwz r5, 0x1c(r3)
    lha r0, 0x80(r4)
    lwz r3, 0x0(r5)
    lwz r5, 0x8(r5)
    lbz r6, 0x30(r3)
    lbz r3, 0x1f(r3)
    and r6, r7, r6
    add r6, r0, r6
    subi r7, r3, 0x1
    divw r3, r6, r7
    mullw r0, r3, r7
    clrlwi r3, r3, 31
    subf r6, r0, r6
    slwi r0, r6, 1
    subf r0, r0, r7
    mullw r0, r3, r0
    add r0, r6, r0
    clrlwi r0, r0, 24
    lbzx r0, r5, r0
    stb r0, 0x94(r4)
    blr
}

ASM void fn_800E768C(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lwz r3, 0x0(r3)
    lwz r4, 0x1c(r4)
    lwz r4, 0x0(r4)
    lbz r0, 0x20(r4)
    stb r0, 0x111(r3)
    blr
}

ASM void fn_800E76A8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r0, 0x4330
    opword  0xC8428D90  // lfd f2, lbl_8053BD30@sda21(r0)
    lwz r3, 0x4(r3)
    stw r0, 0x8(r1)
    lwz r7, 0x1c(r3)
    lfs fp0, 0x84(r4)
    lwz r6, 0x0(r7)
    lbz r3, 0x95(r4)
    lbz r8, 0x1f(r6)
    lbz r0, 0x30(r6)
    xoris r5, r8, 0x8000
    stw r5, 0xc(r1)
    and r0, r3, r0
    lwz r5, 0x8(r7)
    lfd fp1, 0x8(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x10(r1)
    lwz r3, 0x14(r1)
    add r3, r3, r0
    divw r0, r3, r8
    mullw r0, r0, r8
    subf r0, r0, r3
    clrlwi r0, r0, 24
    lbzx r0, r5, r0
    stb r0, 0x94(r4)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E7720(void)
{
    nofralloc
    lwz r4, 0x4(r3)
    lwz r3, 0x0(r3)
    lwz r4, 0x1c(r4)
    lwz r4, 0x0(r4)
    lbz r0, 0x20(r4)
    stb r0, 0x111(r3)
    blr
}

ASM void fn_800E773C(void)
{
    nofralloc
    lwz r3, 0x4(r3)
    lbz r6, 0x95(r4)
    lwz r5, 0x1c(r3)
    lwz r3, 0x0(r5)
    lwz r5, 0x8(r5)
    lbz r0, 0x30(r3)
    lbz r3, 0x1f(r3)
    and r6, r6, r0
    divw r0, r6, r3
    mullw r0, r0, r3
    subf r0, r0, r6
    clrlwi r0, r0, 24
    lbzx r0, r5, r0
    stb r0, 0x94(r4)
    blr
}

ASM void fn_800E7778(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    addi r3, r3, 0x184
    stw r0, 0x14(r1)
    bl fn_8005FDF4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E77A0(void)
{
    nofralloc
    blr
}

ASM void fn_800E77A4(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    addi r3, r3, 0x1b4
    stw r0, 0x44(r1)
    addi r5, r1, 0x8
    bl PSMTXConcat
    addi r3, r1, 0x8
    li r4, 0x1e
    li r5, 0x0
    bl fn_8005FEC8
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800E77DC(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stfd fp31, 0x60(r1)
    psq_st fp31, 0x68(r1), 0, 0
    stw r31, 0x5c(r1)
    lwz r7, 0x4(r3)
    lis r8, 0x4330
    lwz r6, 0x0(r3)
    mr r10, r3
    lwz r9, 0x1c(r7)
    lis r5, lbl_8052EBC0@ha
    lwz r0, 0x100(r6)
    mr r31, r4
    lwz r6, 0x0(r9)
    addi r7, r5, lbl_8052EBC0@l
    stw r0, 0x3c(r1)
    addi r3, r1, 0x8
    lwz r0, 0x8(r6)
    mr r5, r3
    stw r8, 0x38(r1)
    addi r4, r10, 0x1b4
    extrwi r6, r0, 1, 6
    opword  0xC8628DA8  // lfd f3, lbl_8053BD48@sda21(r0)
    lfd fp0, 0x38(r1)
    extrwi r0, r0, 1, 5
    lwz r9, 0x4(r9)
    fsubs fp6, fp0, fp3
    stw r6, 0x44(r1)
    lfs fp1, 0x24(r9)
    stw r8, 0x40(r1)
    lfs fp0, 0x10(r9)
    lfd fp2, 0x40(r1)
    fmadds fp0, fp6, fp1, fp0
    stw r0, 0x4c(r1)
    fsubs fp2, fp2, fp3
    opword  0xC0E28D9C  // lfs f7, lbl_8053BD3C@sda21(r0)
    stw r8, 0x48(r1)
    fctiwz fp0, fp0
    lfd fp1, 0x48(r1)
    fadds fp2, fp7, fp2
    opword  0xC0A28D98  // lfs f5, lbl_8053BD38@sda21(r0)
    fsubs fp1, fp1, fp3
    stfd fp0, 0x50(r1)
    fmuls fp11, fp5, fp2
    lfs fp3, 0x14(r9)
    lfs fp2, 0x0(r9)
    fadds fp4, fp7, fp1
    fmadds fp8, fp6, fp3, fp2
    lwz r0, 0x54(r1)
    lfs fp1, 0x18(r9)
    rlwinm r0, r0, 30, 18, 28
    fmuls fp12, fp5, fp4
    lfs fp0, 0x4(r9)
    add r6, r7, r0
    fadds fp10, fp11, fp8
    fmadds fp5, fp6, fp1, fp0
    lfs fp3, 0x1c(r9)
    lfs fp2, 0x8(r9)
    lfs fp1, 0x20(r9)
    lfs fp0, 0xc(r9)
    fmadds fp13, fp6, fp3, fp2
    lfs fp9, 0x4(r6)
    fadds fp3, fp12, fp5
    fmadds fp31, fp6, fp1, fp0
    lfsx fp8, r7, r0
    opword  0xC0828DA0  // lfs f4, lbl_8053BD40@sda21(r0)
    fmuls fp1, fp9, fp10
    stfs fp7, 0x30(r1)
    fmuls fp0, fp9, fp3
    fmuls fp5, fp13, fp9
    stfs fp4, 0x14(r1)
    fmsubs fp1, fp8, fp3, fp1
    fneg fp2, fp13
    stfs fp4, 0x24(r1)
    fmuls fp3, fp31, fp8
    stfs fp5, 0x8(r1)
    fmadds fp5, fp13, fp1, fp11
    fmuls fp6, fp2, fp8
    fmuls fp2, fp31, fp9
    stfs fp4, 0x28(r1)
    fneg fp1, fp31
    fmadds fp0, fp8, fp10, fp0
    stfs fp6, 0xc(r1)
    stfs fp5, 0x10(r1)
    fmadds fp0, fp1, fp0, fp12
    stfs fp3, 0x18(r1)
    stfs fp2, 0x1c(r1)
    stfs fp0, 0x20(r1)
    stfs fp4, 0x2c(r1)
    stfs fp4, 0x34(r1)
    bl PSMTXConcat
    addi r3, r1, 0x8
    mr r4, r31
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x8
    li r4, 0x1e
    li r5, 0x0
    bl fn_8005FEC8
    psq_l fp31, 0x68(r1), 0, 0
    lwz r0, 0x74(r1)
    lfd fp31, 0x60(r1)
    lwz r31, 0x5c(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_800E7988(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    mr r31, r4
    stw r30, 0x48(r1)
    mr r30, r3
    lwz r0, 0x7c(r4)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x408200AC  // bne .L_800E7A58
    addi r3, r30, 0x184
    addi r5, r1, 0x8
    bl PSMTXMultVec
    lfs fp2, 0x144(r30)
    addi r3, r1, 0x14
    lfs fp1, 0x60(r31)
    li r4, 0x0
    lfs fp0, 0x8(r1)
    fmuls fp1, fp2, fp1
    lfs fp3, 0xc(r1)
    stfs fp0, 0x20(r1)
    opword  0xC0428D9C  // lfs f2, lbl_8053BD3C@sda21(r0)
    stfs fp1, 0x14(r1)
    lfs fp1, 0x10(r1)
    lfs fp5, 0x148(r30)
    lfs fp4, 0x64(r31)
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fmuls fp4, fp5, fp4
    stfs fp3, 0x30(r1)
    stfs fp2, 0x3c(r1)
    stfs fp4, 0x28(r1)
    stfs fp1, 0x40(r1)
    stfs fp0, 0x38(r1)
    stfs fp0, 0x34(r1)
    stfs fp0, 0x2c(r1)
    stfs fp0, 0x24(r1)
    stfs fp0, 0x1c(r1)
    stfs fp0, 0x18(r1)
    bl fn_8005FDF4
    lwz r0, 0x210(r30)
    lis r3, lbl_8049BF00@ha
    addi r5, r3, lbl_8049BF00@l
    mr r3, r30
    slwi r0, r0, 2
    addi r4, r1, 0x14
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    lis r3, lbl_8049BEC0@ha
    li r4, 0x20
    addi r3, r3, lbl_8049BEC0@l
    bl fn_8005FC54
L_800E7A58:
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E7A70(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    mr r31, r4
    stw r30, 0x48(r1)
    mr r30, r3
    lwz r0, 0x7c(r4)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x408200DC  // bne .L_800E7B70
    addi r3, r30, 0x184
    addi r5, r1, 0x8
    bl PSMTXMultVec
    lhz r0, 0x88(r31)
    lis r3, lbl_8052EBC0@ha
    addi r3, r3, lbl_8052EBC0@l
    lfs fp1, 0x144(r30)
    rlwinm r0, r0, 30, 18, 28
    lfs fp0, 0x60(r31)
    lfsx fp4, r3, r0
    add r3, r3, r0
    lfs fp3, 0x148(r30)
    fmuls fp6, fp1, fp0
    lfs fp2, 0x64(r31)
    fneg fp1, fp4
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    li r4, 0x0
    fmuls fp3, fp3, fp2
    lfs fp2, 0x4(r3)
    fmuls fp5, fp4, fp6
    stfs fp0, 0x38(r1)
    addi r3, r1, 0x14
    fmuls fp8, fp2, fp6
    fmuls fp7, fp1, fp3
    lfs fp6, 0x8(r1)
    fmuls fp4, fp2, fp3
    lfs fp3, 0xc(r1)
    opword  0xC0428D9C  // lfs f2, lbl_8053BD3C@sda21(r0)
    lfs fp1, 0x10(r1)
    stfs fp8, 0x14(r1)
    stfs fp7, 0x18(r1)
    stfs fp6, 0x20(r1)
    stfs fp5, 0x24(r1)
    stfs fp4, 0x28(r1)
    stfs fp3, 0x30(r1)
    stfs fp2, 0x3c(r1)
    stfs fp1, 0x40(r1)
    stfs fp0, 0x34(r1)
    stfs fp0, 0x2c(r1)
    stfs fp0, 0x1c(r1)
    bl fn_8005FDF4
    lwz r0, 0x210(r30)
    lis r3, lbl_8049BF00@ha
    addi r5, r3, lbl_8049BF00@l
    mr r3, r30
    slwi r0, r0, 2
    addi r4, r1, 0x14
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    lis r3, lbl_8049BEC0@ha
    li r4, 0x20
    addi r3, r3, lbl_8049BEC0@l
    bl fn_8005FC54
L_800E7B70:
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E7B88(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    mr r31, r4
    stw r30, 0x48(r1)
    mr r30, r3
    lwz r0, 0x7c(r4)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x408200C0  // bne .L_800E7C6C
    addi r3, r30, 0x184
    addi r5, r1, 0x8
    bl PSMTXMultVec
    lfs fp1, 0x144(r30)
    addi r3, r1, 0x14
    lfs fp0, 0x60(r31)
    li r4, 0x0
    lfs fp3, 0x148(r30)
    lfs fp2, 0x64(r31)
    fmuls fp1, fp1, fp0
    lfs fp0, 0x8(r1)
    fmuls fp4, fp3, fp2
    lfs fp2, 0xc(r1)
    stfs fp1, 0x14(r1)
    lfs fp1, 0x10(r1)
    stfs fp0, 0x20(r1)
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    lfs fp3, 0x168(r30)
    fmuls fp3, fp3, fp4
    stfs fp3, 0x28(r1)
    lfs fp3, 0x16c(r30)
    stfs fp3, 0x2c(r1)
    stfs fp2, 0x30(r1)
    lfs fp2, 0x178(r30)
    fmuls fp2, fp2, fp4
    stfs fp2, 0x38(r1)
    lfs fp2, 0x17c(r30)
    stfs fp2, 0x3c(r1)
    stfs fp1, 0x40(r1)
    stfs fp0, 0x34(r1)
    stfs fp0, 0x24(r1)
    stfs fp0, 0x1c(r1)
    stfs fp0, 0x18(r1)
    bl fn_8005FDF4
    lwz r0, 0x210(r30)
    lis r3, lbl_8049BF00@ha
    addi r5, r3, lbl_8049BF00@l
    mr r3, r30
    slwi r0, r0, 2
    addi r4, r1, 0x14
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    lis r3, lbl_8049BEC0@ha
    li r4, 0x20
    addi r3, r3, lbl_8049BEC0@l
    bl fn_8005FC54
L_800E7C6C:
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E7C84(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    mr r31, r4
    stw r30, 0x48(r1)
    mr r30, r3
    lwz r0, 0x7c(r4)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x408200F4  // bne .L_800E7D9C
    addi r3, r30, 0x184
    addi r5, r1, 0x8
    bl PSMTXMultVec
    lhz r0, 0x88(r31)
    lis r3, lbl_8052EBC0@ha
    lfs fp3, 0x144(r30)
    addi r4, r3, lbl_8052EBC0@l
    lfs fp2, 0x60(r31)
    rlwinm r0, r0, 30, 18, 28
    add r3, r4, r0
    lfs fp1, 0x148(r30)
    fmuls fp6, fp3, fp2
    lfsx fp2, r4, r0
    lfs fp5, 0x4(r3)
    addi r3, r1, 0x14
    lfs fp0, 0x64(r31)
    li r4, 0x0
    fmuls fp8, fp1, fp0
    lfs fp13, 0x178(r30)
    fmuls fp10, fp2, fp6
    lfs fp12, 0x168(r30)
    fmuls fp9, fp5, fp6
    opword  0xC0228DA0  // lfs f1, lbl_8053BD40@sda21(r0)
    fmuls fp11, fp5, fp8
    stfs fp1, 0x1c(r1)
    fneg fp2, fp2
    lfs fp7, 0x8(r1)
    fneg fp4, fp13
    lfs fp3, 0xc(r1)
    fmuls fp8, fp2, fp8
    lfs fp0, 0x10(r1)
    fmuls fp6, fp10, fp12
    stfs fp9, 0x14(r1)
    fmuls fp5, fp11, fp12
    fmuls fp2, fp10, fp13
    fmuls fp1, fp11, fp13
    stfs fp8, 0x18(r1)
    stfs fp7, 0x20(r1)
    stfs fp6, 0x24(r1)
    stfs fp5, 0x28(r1)
    stfs fp4, 0x2c(r1)
    stfs fp3, 0x30(r1)
    stfs fp2, 0x34(r1)
    stfs fp1, 0x38(r1)
    stfs fp12, 0x3c(r1)
    stfs fp0, 0x40(r1)
    bl fn_8005FDF4
    lwz r0, 0x210(r30)
    lis r3, lbl_8049BF00@ha
    addi r5, r3, lbl_8049BF00@l
    mr r3, r30
    slwi r0, r0, 2
    addi r4, r1, 0x14
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    lis r3, lbl_8049BEC0@ha
    li r4, 0x20
    addi r3, r3, lbl_8049BEC0@l
    bl fn_8005FC54
L_800E7D9C:
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E7DB4(void)
{
    nofralloc
    lfs fp0, 0x24(r4)
    lfs fp1, 0x28(r4)
    stfs fp0, 0x0(r5)
    lfs fp0, 0x2c(r4)
    stfs fp1, 0x4(r5)
    stfs fp0, 0x8(r5)
    blr
}

ASM void fn_800E7DD0(void)
{
    nofralloc
    lfs fp0, 0xc(r4)
    lfs fp1, 0x10(r4)
    stfs fp0, 0x0(r5)
    lfs fp0, 0x14(r4)
    stfs fp1, 0x4(r5)
    stfs fp0, 0x8(r5)
    blr
}

ASM void fn_800E7DEC(void)
{
    nofralloc
    lfs fp0, 0xc(r4)
    lfs fp1, 0x10(r4)
    stfs fp0, 0x0(r5)
    lfs fp0, 0x14(r4)
    stfs fp1, 0x4(r5)
    stfs fp0, 0x8(r5)
    psq_l fp0, 0x0(r5), 0, 0
    ps_neg fp0, fp0
    psq_st fp0, 0x0(r5), 0, 0
    lfs fp0, 0x8(r5)
    fneg fp0, fp0
    stfs fp0, 0x8(r5)
    blr
}

ASM void fn_800E7E20(void)
{
    nofralloc
    lfs fp0, 0x120(r3)
    lfs fp1, 0x124(r3)
    stfs fp0, 0x0(r5)
    lfs fp0, 0x128(r3)
    stfs fp1, 0x4(r5)
    stfs fp0, 0x8(r5)
    blr
}

ASM void fn_800E7E3C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lfs fp2, 0x0(r4)
    stw r0, 0x24(r1)
    lfs fp1, 0x4(r4)
    stw r31, 0x1c(r1)
    mr r31, r5
    lwz r6, 0x1e8(r3)
    lfs fp0, 0x8(r4)
    lwz r5, 0x0(r6)
    stfs fp2, 0x8(r1)
    cmplwi r5, 0x0
    stfs fp1, 0xc(r1)
    stfs fp0, 0x10(r1)
    opword  0x41820020  // beq .L_800E7E94
    lfs fp0, 0x8(r5)
    stfs fp0, 0x0(r31)
    lfs fp0, 0xc(r5)
    stfs fp0, 0x4(r31)
    lfs fp0, 0x10(r5)
    stfs fp0, 0x8(r31)
    opword  0x48000010  // b .L_800E7EA0
L_800E7E94:
    lwz r3, 0x0(r3)
    mr r4, r31
    bl fn_800EBA08
L_800E7EA0:
    psq_l fp2, 0x0(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_sub fp1, fp2, fp1
    psq_st fp1, 0x0(r31), 0, 0
    psq_l fp1, 0x8(r31), 1, 0
    ps_sub fp0, fp1, fp0
    psq_st fp0, 0x8(r31), 1, 0
    lwz r31, 0x1c(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E7ED4(void)
{
    nofralloc
    stfs fp2, 0x0(r3)
    fneg fp3, fp1
    opword  0xC0828DA0  // lfs f4, lbl_8053BD40@sda21(r0)
    opword  0xC0028D9C  // lfs f0, lbl_8053BD3C@sda21(r0)
    stfs fp4, 0x4(r3)
    stfs fp3, 0x8(r3)
    stfs fp4, 0xc(r3)
    stfs fp4, 0x10(r3)
    stfs fp0, 0x14(r3)
    stfs fp4, 0x18(r3)
    stfs fp4, 0x1c(r3)
    stfs fp1, 0x20(r3)
    stfs fp4, 0x24(r3)
    stfs fp2, 0x28(r3)
    stfs fp4, 0x2c(r3)
    blr
}

ASM void fn_800E7F14(void)
{
    nofralloc
    opword  0xC0828D9C  // lfs f4, lbl_8053BD3C@sda21(r0)
    fneg fp0, fp1
    opword  0xC0628DA0  // lfs f3, lbl_8053BD40@sda21(r0)
    stfs fp4, 0x0(r3)
    stfs fp3, 0x4(r3)
    stfs fp3, 0x8(r3)
    stfs fp3, 0xc(r3)
    stfs fp3, 0x10(r3)
    stfs fp2, 0x14(r3)
    stfs fp0, 0x18(r3)
    stfs fp3, 0x1c(r3)
    stfs fp3, 0x20(r3)
    stfs fp1, 0x24(r3)
    stfs fp2, 0x28(r3)
    stfs fp3, 0x2c(r3)
    blr
}

ASM void fn_800E7F54(void)
{
    nofralloc
    fneg fp4, fp1
    stfs fp2, 0x0(r3)
    opword  0xC0628DA0  // lfs f3, lbl_8053BD40@sda21(r0)
    opword  0xC0028D9C  // lfs f0, lbl_8053BD3C@sda21(r0)
    stfs fp4, 0x4(r3)
    stfs fp3, 0x8(r3)
    stfs fp3, 0xc(r3)
    stfs fp1, 0x10(r3)
    stfs fp2, 0x14(r3)
    stfs fp3, 0x18(r3)
    stfs fp3, 0x1c(r3)
    stfs fp3, 0x20(r3)
    stfs fp3, 0x24(r3)
    stfs fp0, 0x28(r3)
    stfs fp3, 0x2c(r3)
    blr
}

ASM void fn_800E7F94(void)
{
    nofralloc
    opword  0xC0628D9C  // lfs f3, lbl_8053BD3C@sda21(r0)
    opword  0xC0028DB4  // lfs f0, lbl_8053BD54@sda21(r0)
    fsubs fp3, fp3, fp2
    opword  0xC0828DB0  // lfs f4, lbl_8053BD50@sda21(r0)
    fmuls fp1, fp0, fp1
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fmuls fp3, fp4, fp3
    fadds fp4, fp3, fp1
    fsubs fp1, fp3, fp1
    fadds fp3, fp3, fp2
    stfs fp3, 0x0(r3)
    stfs fp1, 0x4(r3)
    stfs fp4, 0x8(r3)
    stfs fp0, 0xc(r3)
    stfs fp4, 0x10(r3)
    stfs fp3, 0x14(r3)
    stfs fp1, 0x18(r3)
    stfs fp0, 0x1c(r3)
    stfs fp1, 0x20(r3)
    stfs fp4, 0x24(r3)
    stfs fp3, 0x28(r3)
    stfs fp0, 0x2c(r3)
    blr
}

ASM void fn_800E7FF0(void)
{
    nofralloc
    lfs fp0, 0x0(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x0(r3)
    lfs fp0, 0x10(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x10(r3)
    lfs fp0, 0x20(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x20(r3)
    lfs fp0, 0x4(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x4(r3)
    lfs fp0, 0x14(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x14(r3)
    lfs fp0, 0x24(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x24(r3)
    blr
}

ASM void fn_800E803C(void)
{
    nofralloc
    lfs fp0, 0x0(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x0(r3)
    lfs fp0, 0x10(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x10(r3)
    lfs fp0, 0x20(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x20(r3)
    lfs fp0, 0x8(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x8(r3)
    lfs fp0, 0x18(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x18(r3)
    lfs fp0, 0x28(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x28(r3)
    blr
}

ASM void fn_800E8088(void)
{
    nofralloc
    lfs fp0, 0x0(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x0(r3)
    lfs fp0, 0x10(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x10(r3)
    lfs fp0, 0x20(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x20(r3)
    lfs fp0, 0x4(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x4(r3)
    lfs fp0, 0x14(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x14(r3)
    lfs fp0, 0x24(r3)
    fmuls fp0, fp0, fp2
    stfs fp0, 0x24(r3)
    lfs fp0, 0x8(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x8(r3)
    lfs fp0, 0x18(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x18(r3)
    lfs fp0, 0x28(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x28(r3)
    blr
}

ASM void fn_800E80F8(void)
{
    nofralloc
    stwu r1, -0xc0(r1)
    mflr r0
    stw r0, 0xc4(r1)
    stfd fp31, 0xb0(r1)
    psq_st fp31, 0xb8(r1), 0, 0
    stfd fp30, 0xa0(r1)
    psq_st fp30, 0xa8(r1), 0, 0
    stfd fp29, 0x90(r1)
    psq_st fp29, 0x98(r1), 0, 0
    stfd fp28, 0x80(r1)
    psq_st fp28, 0x88(r1), 0, 0
    stfd fp27, 0x70(r1)
    psq_st fp27, 0x78(r1), 0, 0
    stfd fp26, 0x60(r1)
    psq_st fp26, 0x68(r1), 0, 0
    stw r31, 0x5c(r1)
    stw r30, 0x58(r1)
    stw r29, 0x54(r1)
    lwz r0, 0x7c(r4)
    lis r5, lbl_8049BEC0@ha
    mr r29, r4
    mr r31, r3
    rlwinm. r0, r0, 0, 28, 28
    addi r30, r5, lbl_8049BEC0@l
    opword  0x408202EC  // bne .L_800E8444
    lwz r0, 0x200(r31)
    addi r6, r30, 0x4c
    addi r5, r1, 0x14
    slwi r0, r0, 2
    lwzx r12, r6, r0
    mtctr r12
    bctrl
    psq_l fp3, 0x14(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp26, 0x1c(r1)
    ps_mul fp3, fp3, fp3
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp2, fp26, fp26, fp3
    fmuls fp0, fp1, fp0
    ps_sum0 fp2, fp2, fp3, fp3
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x418202A0  // beq .L_800E8444
    psq_l fp1, 0x14(r1), 0, 0
    ps_mul fp1, fp1, fp1
    ps_madd fp4, fp26, fp26, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E8218
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E81DC
    fmr fp27, fp4
    opword  0x48000028  // b .L_800E8200
L_800E81DC:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp27, fp0
L_800E8200:
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_muls0 fp1, fp1, fp27
    ps_muls0 fp0, fp0, fp27
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
L_800E8218:
    addi r3, r29, 0x54
    addi r4, r1, 0x14
    addi r5, r1, 0x8
    bl PSVECCrossProduct
    psq_l fp3, 0x8(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp29, 0x10(r1)
    ps_mul fp3, fp3, fp3
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp2, fp29, fp29, fp3
    fmuls fp0, fp1, fp0
    ps_sum0 fp2, fp2, fp3, fp3
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x418201F0  // beq .L_800E8444
    psq_l fp1, 0x8(r1), 0, 0
    ps_mul fp1, fp1, fp1
    ps_madd fp4, fp29, fp29, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E82C8
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E828C
    fmr fp31, fp4
    opword  0x48000028  // b .L_800E82B0
L_800E828C:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp31, fp0
L_800E82B0:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800E82C8:
    addi r3, r1, 0x14
    addi r4, r1, 0x8
    addi r5, r29, 0x54
    bl PSVECCrossProduct
    psq_l fp2, 0x54(r29), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp28, 0x5c(r29)
    ps_mul fp2, fp2, fp2
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp28, fp28, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E835C
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E8320
    fmr fp30, fp4
    opword  0x48000028  // b .L_800E8344
L_800E8320:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp30, fp0
L_800E8344:
    psq_l fp1, 0x54(r29), 0, 0
    psq_l fp0, 0x5c(r29), 1, 0
    ps_muls0 fp1, fp1, fp30
    ps_muls0 fp0, fp0, fp30
    psq_st fp1, 0x54(r29), 0, 0
    psq_st fp0, 0x5c(r29), 1, 0
L_800E835C:
    lfs fp3, 0x144(r31)
    addi r4, r30, 0x74
    lfs fp1, 0x60(r29)
    addi r3, r1, 0x20
    lfs fp2, 0x148(r31)
    lfs fp0, 0x64(r29)
    fmuls fp1, fp3, fp1
    lfs fp4, 0x54(r29)
    lfs fp3, 0x14(r1)
    fmuls fp2, fp2, fp0
    lfs fp0, 0x8(r1)
    stfs fp4, 0x20(r1)
    lfs fp5, 0x18(r1)
    stfs fp3, 0x24(r1)
    lfs fp4, 0xc(r1)
    stfs fp0, 0x28(r1)
    lfs fp3, 0x1c(r1)
    lfs fp6, 0x0(r29)
    lfs fp0, 0x10(r1)
    stfs fp6, 0x2c(r1)
    lfs fp6, 0x58(r29)
    stfs fp6, 0x30(r1)
    stfs fp5, 0x34(r1)
    stfs fp4, 0x38(r1)
    lfs fp4, 0x4(r29)
    stfs fp4, 0x3c(r1)
    lfs fp4, 0x5c(r29)
    stfs fp4, 0x40(r1)
    stfs fp3, 0x44(r1)
    stfs fp0, 0x48(r1)
    lfs fp0, 0x8(r29)
    stfs fp0, 0x4c(r1)
    lwz r0, 0x208(r31)
    slwi r0, r0, 2
    lwzx r12, r4, r0
    mtctr r12
    bctrl
    addi r4, r1, 0x20
    addi r3, r31, 0x184
    mr r5, r4
    bl PSMTXConcat
    addi r3, r1, 0x20
    li r4, 0x0
    bl fn_8005FDF4
    lwz r0, 0x210(r31)
    addi r5, r30, 0x40
    mr r3, r31
    addi r4, r1, 0x20
    slwi r0, r0, 2
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    lwz r0, 0x20c(r31)
    opword  0x386D82A0  // li r3, lbl_80539E60@sda21
    li r4, 0x20
    slwi r0, r0, 2
    lwzx r3, r3, r0
    bl fn_8005FC54
L_800E8444:
    psq_l fp31, 0xb8(r1), 0, 0
    lfd fp31, 0xb0(r1)
    psq_l fp30, 0xa8(r1), 0, 0
    lfd fp30, 0xa0(r1)
    psq_l fp29, 0x98(r1), 0, 0
    lfd fp29, 0x90(r1)
    psq_l fp28, 0x88(r1), 0, 0
    lfd fp28, 0x80(r1)
    psq_l fp27, 0x78(r1), 0, 0
    lfd fp27, 0x70(r1)
    psq_l fp26, 0x68(r1), 0, 0
    lfd fp26, 0x60(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r0, 0xc4(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0xc0
    blr
}

ASM void fn_800E8490(void)
{
    nofralloc
    stwu r1, -0x110(r1)
    mflr r0
    stw r0, 0x114(r1)
    stfd fp31, 0x100(r1)
    psq_st fp31, 0x108(r1), 0, 0
    stfd fp30, 0xf0(r1)
    psq_st fp30, 0xf8(r1), 0, 0
    stfd fp29, 0xe0(r1)
    psq_st fp29, 0xe8(r1), 0, 0
    stfd fp28, 0xd0(r1)
    psq_st fp28, 0xd8(r1), 0, 0
    stfd fp27, 0xc0(r1)
    psq_st fp27, 0xc8(r1), 0, 0
    stfd fp26, 0xb0(r1)
    psq_st fp26, 0xb8(r1), 0, 0
    stfd fp25, 0xa0(r1)
    psq_st fp25, 0xa8(r1), 0, 0
    stfd fp24, 0x90(r1)
    psq_st fp24, 0x98(r1), 0, 0
    stw r31, 0x8c(r1)
    stw r30, 0x88(r1)
    stw r29, 0x84(r1)
    lwz r0, 0x7c(r4)
    lis r5, lbl_8049BEC0@ha
    mr r30, r4
    mr r29, r3
    rlwinm. r0, r0, 0, 28, 28
    addi r31, r5, lbl_8049BEC0@l
    opword  0x40820348  // bne .L_800E8848
    lhz r7, 0x88(r30)
    lis r6, lbl_8052EBC0@ha
    lwz r0, 0x200(r29)
    addi r5, r31, 0x4c
    extsh r8, r7
    addi r7, r6, lbl_8052EBC0@l
    rlwinm r8, r8, 30, 18, 28
    slwi r0, r0, 2
    lwzx r12, r5, r0
    add r6, r7, r8
    addi r5, r1, 0x14
    lfsx fp27, r7, r8
    lfs fp26, 0x4(r6)
    mtctr r12
    bctrl
    psq_l fp3, 0x14(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp24, 0x1c(r1)
    ps_mul fp3, fp3, fp3
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp2, fp24, fp24, fp3
    fmuls fp0, fp1, fp0
    ps_sum0 fp2, fp2, fp3, fp3
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x418202DC  // beq .L_800E8848
    psq_l fp1, 0x14(r1), 0, 0
    ps_mul fp1, fp1, fp1
    ps_madd fp4, fp24, fp24, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E85E0
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E85A4
    fmr fp25, fp4
    opword  0x48000028  // b .L_800E85C8
L_800E85A4:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp25, fp0
L_800E85C8:
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_muls0 fp1, fp1, fp25
    ps_muls0 fp0, fp0, fp25
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
L_800E85E0:
    addi r3, r30, 0x54
    addi r4, r1, 0x14
    addi r5, r1, 0x8
    bl PSVECCrossProduct
    psq_l fp3, 0x8(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp29, 0x10(r1)
    ps_mul fp3, fp3, fp3
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp2, fp29, fp29, fp3
    fmuls fp0, fp1, fp0
    ps_sum0 fp2, fp2, fp3, fp3
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x4182022C  // beq .L_800E8848
    psq_l fp1, 0x8(r1), 0, 0
    ps_mul fp1, fp1, fp1
    ps_madd fp4, fp29, fp29, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E8690
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E8654
    fmr fp31, fp4
    opword  0x48000028  // b .L_800E8678
L_800E8654:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp31, fp0
L_800E8678:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800E8690:
    addi r3, r1, 0x14
    addi r4, r1, 0x8
    addi r5, r30, 0x54
    bl PSVECCrossProduct
    psq_l fp2, 0x54(r30), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp28, 0x5c(r30)
    ps_mul fp2, fp2, fp2
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp28, fp28, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E8724
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E86E8
    fmr fp30, fp4
    opword  0x48000028  // b .L_800E870C
L_800E86E8:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp30, fp0
L_800E870C:
    psq_l fp1, 0x54(r30), 0, 0
    psq_l fp0, 0x5c(r30), 1, 0
    ps_muls0 fp1, fp1, fp30
    ps_muls0 fp0, fp0, fp30
    psq_st fp1, 0x54(r30), 0, 0
    psq_st fp0, 0x5c(r30), 1, 0
L_800E8724:
    lwz r0, 0x204(r29)
    addi r3, r31, 0x60
    lfs fp5, 0x144(r29)
    fmr fp1, fp27
    slwi r0, r0, 2
    lfs fp4, 0x60(r30)
    lfs fp3, 0x148(r29)
    fmr fp2, fp26
    lfs fp0, 0x64(r30)
    lwzx r12, r3, r0
    fmuls fp24, fp5, fp4
    fmuls fp25, fp3, fp0
    addi r3, r1, 0x50
    mtctr r12
    bctrl
    lwz r0, 0x208(r29)
    addi r4, r31, 0x74
    fmr fp1, fp24
    addi r3, r1, 0x50
    slwi r0, r0, 2
    fmr fp2, fp25
    lwzx r12, r4, r0
    mtctr r12
    bctrl
    lfs fp2, 0x54(r30)
    addi r4, r1, 0x50
    lfs fp1, 0x14(r1)
    mr r5, r4
    lfs fp0, 0x8(r1)
    addi r3, r1, 0x20
    stfs fp2, 0x20(r1)
    lfs fp3, 0x18(r1)
    stfs fp1, 0x24(r1)
    lfs fp2, 0xc(r1)
    stfs fp0, 0x28(r1)
    lfs fp1, 0x1c(r1)
    lfs fp4, 0x0(r30)
    lfs fp0, 0x10(r1)
    stfs fp4, 0x2c(r1)
    lfs fp4, 0x58(r30)
    stfs fp4, 0x30(r1)
    stfs fp3, 0x34(r1)
    stfs fp2, 0x38(r1)
    lfs fp2, 0x4(r30)
    stfs fp2, 0x3c(r1)
    lfs fp2, 0x5c(r30)
    stfs fp2, 0x40(r1)
    stfs fp1, 0x44(r1)
    stfs fp0, 0x48(r1)
    lfs fp0, 0x8(r30)
    stfs fp0, 0x4c(r1)
    bl PSMTXConcat
    addi r3, r29, 0x184
    addi r4, r1, 0x50
    addi r5, r1, 0x20
    bl PSMTXConcat
    addi r3, r1, 0x20
    li r4, 0x0
    bl fn_8005FDF4
    lwz r0, 0x210(r29)
    addi r5, r31, 0x40
    mr r3, r29
    addi r4, r1, 0x20
    slwi r0, r0, 2
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    lwz r0, 0x20c(r29)
    opword  0x386D82A0  // li r3, lbl_80539E60@sda21
    li r4, 0x20
    slwi r0, r0, 2
    lwzx r3, r3, r0
    bl fn_8005FC54
L_800E8848:
    psq_l fp31, 0x108(r1), 0, 0
    lfd fp31, 0x100(r1)
    psq_l fp30, 0xf8(r1), 0, 0
    lfd fp30, 0xf0(r1)
    psq_l fp29, 0xe8(r1), 0, 0
    lfd fp29, 0xe0(r1)
    psq_l fp28, 0xd8(r1), 0, 0
    lfd fp28, 0xd0(r1)
    psq_l fp27, 0xc8(r1), 0, 0
    lfd fp27, 0xc0(r1)
    psq_l fp26, 0xb8(r1), 0, 0
    lfd fp26, 0xb0(r1)
    psq_l fp25, 0xa8(r1), 0, 0
    lfd fp25, 0xa0(r1)
    psq_l fp24, 0x98(r1), 0, 0
    lfd fp24, 0x90(r1)
    lwz r31, 0x8c(r1)
    lwz r30, 0x88(r1)
    lwz r0, 0x114(r1)
    lwz r29, 0x84(r1)
    mtlr r0
    addi r1, r1, 0x110
    blr
}

ASM void fn_800E88A4(void)
{
    nofralloc
    stwu r1, -0x90(r1)
    mflr r0
    stw r0, 0x94(r1)
    stfd fp31, 0x80(r1)
    psq_st fp31, 0x88(r1), 0, 0
    stfd fp30, 0x70(r1)
    psq_st fp30, 0x78(r1), 0, 0
    stw r31, 0x6c(r1)
    stw r30, 0x68(r1)
    stw r29, 0x64(r1)
    lwz r0, 0x7c(r4)
    lis r5, lbl_8049BEC0@ha
    mr r30, r4
    mr r29, r3
    rlwinm. r0, r0, 0, 28, 28
    addi r31, r5, lbl_8049BEC0@l
    opword  0x408201B4  // bne .L_800E8A98
    lwz r0, 0x200(r29)
    addi r6, r31, 0x4c
    addi r5, r1, 0x20
    slwi r0, r0, 2
    lwzx r12, r6, r0
    mtctr r12
    bctrl
    lfs fp2, 0x1ac(r29)
    addi r3, r1, 0x20
    lfs fp1, 0x1a8(r29)
    mr r5, r3
    lfs fp0, 0x1a4(r29)
    addi r4, r1, 0x14
    stfs fp0, 0x14(r1)
    stfs fp1, 0x18(r1)
    stfs fp2, 0x1c(r1)
    bl PSVECCrossProduct
    psq_l fp3, 0x20(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp30, 0x28(r1)
    ps_mul fp3, fp3, fp3
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp2, fp30, fp30, fp3
    fmuls fp0, fp1, fp0
    ps_sum0 fp2, fp2, fp3, fp3
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x41820140  // beq .L_800E8A98
    psq_l fp1, 0x20(r1), 0, 0
    ps_mul fp1, fp1, fp1
    ps_madd fp4, fp30, fp30, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E89CC
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E8990
    fmr fp31, fp4
    opword  0x48000028  // b .L_800E89B4
L_800E8990:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp31, fp0
L_800E89B4:
    psq_l fp1, 0x20(r1), 0, 0
    psq_l fp0, 0x28(r1), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x20(r1), 0, 0
    psq_st fp0, 0x28(r1), 1, 0
L_800E89CC:
    addi r4, r1, 0x20
    addi r3, r29, 0x184
    mr r5, r4
    bl PSMTXMultVecSR
    mr r4, r30
    addi r3, r29, 0x184
    addi r5, r1, 0x8
    bl PSMTXMultVec
    lfs fp5, 0x24(r1)
    addi r3, r1, 0x2c
    lfs fp4, 0x144(r29)
    li r4, 0x0
    lfs fp0, 0x60(r30)
    fneg fp1, fp5
    lfs fp3, 0x148(r29)
    lfs fp2, 0x64(r30)
    fmuls fp7, fp4, fp0
    lfs fp4, 0x20(r1)
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fmuls fp2, fp3, fp2
    fmuls fp8, fp4, fp7
    lfs fp6, 0x8(r1)
    fmuls fp5, fp5, fp7
    lfs fp3, 0xc(r1)
    fmuls fp7, fp1, fp2
    fmuls fp4, fp4, fp2
    opword  0xC0428D9C  // lfs f2, lbl_8053BD3C@sda21(r0)
    lfs fp1, 0x10(r1)
    stfs fp8, 0x2c(r1)
    stfs fp7, 0x30(r1)
    stfs fp6, 0x38(r1)
    stfs fp5, 0x3c(r1)
    stfs fp4, 0x40(r1)
    stfs fp3, 0x48(r1)
    stfs fp2, 0x54(r1)
    stfs fp1, 0x58(r1)
    stfs fp0, 0x50(r1)
    stfs fp0, 0x4c(r1)
    stfs fp0, 0x34(r1)
    bl fn_8005FDF4
    lwz r0, 0x210(r29)
    addi r5, r31, 0x40
    mr r3, r29
    addi r4, r1, 0x2c
    slwi r0, r0, 2
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    addi r3, r31, 0x0
    li r4, 0x20
    bl fn_8005FC54
L_800E8A98:
    psq_l fp31, 0x88(r1), 0, 0
    lfd fp31, 0x80(r1)
    psq_l fp30, 0x78(r1), 0, 0
    lfd fp30, 0x70(r1)
    lwz r31, 0x6c(r1)
    lwz r30, 0x68(r1)
    lwz r0, 0x94(r1)
    lwz r29, 0x64(r1)
    mtlr r0
    addi r1, r1, 0x90
    blr
}

ASM void fn_800E8AC4(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stfd fp31, 0x60(r1)
    psq_st fp31, 0x68(r1), 0, 0
    stfd fp30, 0x50(r1)
    psq_st fp30, 0x58(r1), 0, 0
    stw r31, 0x4c(r1)
    stw r30, 0x48(r1)
    stw r29, 0x44(r1)
    mr r31, r4
    lis r4, lbl_8049BEC0@ha
    lwz r0, 0x7c(r31)
    mr r30, r3
    addi r29, r4, lbl_8049BEC0@l
    rlwinm. r0, r0, 0, 28, 28
    opword  0x408200E4  // bne .L_800E8BE8
    lwz r0, 0x204(r30)
    lis r3, lbl_8052EBC0@ha
    lhz r5, 0x88(r31)
    addi r4, r3, lbl_8052EBC0@l
    addi r3, r29, 0x60
    slwi r0, r0, 2
    rlwinm r5, r5, 30, 18, 28
    lwzx r12, r3, r0
    lfsx fp1, r4, r5
    add r4, r4, r5
    lfs fp4, 0x144(r30)
    addi r3, r1, 0x8
    lfs fp3, 0x60(r31)
    lfs fp2, 0x148(r30)
    lfs fp0, 0x64(r31)
    fmuls fp31, fp4, fp3
    fmuls fp30, fp2, fp0
    lfs fp2, 0x4(r4)
    mtctr r12
    bctrl
    lwz r0, 0x208(r30)
    addi r4, r29, 0x74
    fmr fp1, fp31
    addi r3, r1, 0x8
    slwi r0, r0, 2
    fmr fp2, fp30
    lwzx r12, r4, r0
    mtctr r12
    bctrl
    lfs fp0, 0x0(r31)
    addi r4, r1, 0x8
    mr r5, r4
    addi r3, r30, 0x184
    stfs fp0, 0x14(r1)
    lfs fp0, 0x4(r31)
    stfs fp0, 0x24(r1)
    lfs fp0, 0x8(r31)
    stfs fp0, 0x34(r1)
    bl PSMTXConcat
    addi r3, r1, 0x8
    li r4, 0x0
    bl fn_8005FDF4
    lwz r0, 0x210(r30)
    addi r5, r29, 0x40
    mr r3, r30
    addi r4, r1, 0x8
    slwi r0, r0, 2
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    lwz r0, 0x20c(r30)
    opword  0x386D82A0  // li r3, lbl_80539E60@sda21
    li r4, 0x20
    slwi r0, r0, 2
    lwzx r3, r3, r0
    bl fn_8005FC54
L_800E8BE8:
    psq_l fp31, 0x68(r1), 0, 0
    lfd fp31, 0x60(r1)
    psq_l fp30, 0x58(r1), 0, 0
    lfd fp30, 0x50(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    lwz r0, 0x74(r1)
    lwz r29, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_800E8C14(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    lwz r0, 0x7c(r4)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x4082006C  // bne .L_800E8C9C
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xb8
    li r4, 0x1
    li r5, 0x1
    bl fn_8005C24C
    lfs fp3, 0x8(r31)
    lis r5, 0xcc01
    lfs fp2, 0x4(r31)
    li r3, 0x9
    lfs fp1, 0x0(r31)
    li r4, 0x2
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    stfs fp1, -0x8000(r5)
    stfs fp2, -0x8000(r5)
    stfs fp3, -0x8000(r5)
    stfs fp0, -0x8000(r5)
    stfs fp0, -0x8000(r5)
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x2
    bl fn_8005A464
L_800E8C9C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E8CB0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    lwz r0, 0x7c(r4)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x40820184  // bne .L_800E8E48
    lfs fp1, 0x24(r4)
    lis r5, lbl_80539D44@ha
    lfs fp0, 0x28(r4)
    stfs fp1, 0x8(r1)
    lfs fp4, 0x2c(r4)
    stfs fp0, 0xc(r1)
    psq_l fp3, 0x0(r4), 0, 0
    psq_l fp7, 0x8(r1), 0, 0
    lfs fp2, 0x8(r4)
    ps_mul fp7, fp7, fp7
    opword  0xC0228DB8  // lfs f1, lbl_8053BD58@sda21(r0)
    lfs fp0, lbl_80539D44@l(r5)
    psq_st fp3, 0x14(r1), 0, 0
    ps_madd fp6, fp4, fp4, fp7
    fmuls fp3, fp1, fp0
    stfs fp2, 0x1c(r1)
    ps_sum0 fp6, fp6, fp7, fp7
    stfs fp4, 0x10(r1)
    fcmpo cr0, fp6, fp3
    cror eq, lt, eq
    opword  0x41820130  // beq .L_800E8E48
    psq_l fp6, 0x8(r1), 0, 0
    opword  0xC0228D88  // lfs f1, lbl_8053BD28@sda21(r0)
    ps_mul fp6, fp6, fp6
    lfs fp0, 0x64(r4)
    lfs fp2, 0x148(r3)
    fmuls fp0, fp1, fp0
    ps_madd fp7, fp4, fp4, fp6
    fmuls fp4, fp2, fp0
    ps_sum0 fp7, fp7, fp6, fp6
    fcmpo cr0, fp7, fp3
    cror eq, lt, eq
    opword  0x41820054  // beq .L_800E8D9C
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp7, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800E8D60
    opword  0x48000024  // b .L_800E8D80
L_800E8D60:
    frsqrte fp3, fp7
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp7, fp1, fp0
    fmuls fp7, fp2, fp0
L_800E8D80:
    fmuls fp5, fp7, fp4
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp5
    ps_muls0 fp0, fp0, fp5
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800E8D9C:
    psq_l fp3, 0x14(r1), 0, 0
    li r3, 0x9
    psq_l fp2, 0x8(r1), 0, 0
    li r4, 0x1
    psq_l fp1, 0x1c(r1), 1, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_sub fp2, fp3, fp2
    ps_sub fp0, fp1, fp0
    psq_st fp2, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xa8
    li r4, 0x1
    li r5, 0x2
    bl fn_8005C24C
    lfs fp0, 0x14(r1)
    lis r5, 0xcc01
    lfs fp1, 0x18(r1)
    li r3, 0x9
    stfs fp0, -0x8000(r5)
    li r4, 0x2
    lfs fp0, 0x1c(r1)
    stfs fp1, -0x8000(r5)
    opword  0xC0828DA0  // lfs f4, lbl_8053BD40@sda21(r0)
    stfs fp0, -0x8000(r5)
    lfs fp2, 0xc(r1)
    stfs fp4, -0x8000(r5)
    lfs fp1, 0x10(r1)
    stfs fp4, -0x8000(r5)
    lfs fp3, 0x8(r1)
    opword  0xC0028D9C  // lfs f0, lbl_8053BD3C@sda21(r0)
    stfs fp3, -0x8000(r5)
    stfs fp2, -0x8000(r5)
    stfs fp1, -0x8000(r5)
    stfs fp4, -0x8000(r5)
    stfs fp0, -0x8000(r5)
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x2
    bl fn_8005A464
L_800E8E48:
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E8E58(void)
{
    nofralloc
    lwz r3, 0x4(r3)
    blr
}

ASM void fn_800E8E60(void)
{
    nofralloc
    lwz r3, 0x0(r3)
    blr
}

ASM void fn_800E8E68(void)
{
    nofralloc
    stwu r1, -0x190(r1)
    mflr r0
    stw r0, 0x194(r1)
    stfd fp31, 0x180(r1)
    psq_st fp31, 0x188(r1), 0, 0
    stfd fp30, 0x170(r1)
    psq_st fp30, 0x178(r1), 0, 0
    stfd fp29, 0x160(r1)
    psq_st fp29, 0x168(r1), 0, 0
    stfd fp28, 0x150(r1)
    psq_st fp28, 0x158(r1), 0, 0
    stfd fp27, 0x140(r1)
    psq_st fp27, 0x148(r1), 0, 0
    stfd fp26, 0x130(r1)
    psq_st fp26, 0x138(r1), 0, 0
    stfd fp25, 0x120(r1)
    psq_st fp25, 0x128(r1), 0, 0
    stfd fp24, 0x110(r1)
    psq_st fp24, 0x118(r1), 0, 0
    stfd fp23, 0x100(r1)
    psq_st fp23, 0x108(r1), 0, 0
    stfd fp22, 0xf0(r1)
    psq_st fp22, 0xf8(r1), 0, 0
    stfd fp21, 0xe0(r1)
    psq_st fp21, 0xe8(r1), 0, 0
    stfd fp20, 0xd0(r1)
    psq_st fp20, 0xd8(r1), 0, 0
    stfd fp19, 0xc0(r1)
    psq_st fp19, 0xc8(r1), 0, 0
    stfd fp18, 0xb0(r1)
    psq_st fp18, 0xb8(r1), 0, 0
    stfd fp17, 0xa0(r1)
    psq_st fp17, 0xa8(r1), 0, 0
    stfd fp16, 0x90(r1)
    psq_st fp16, 0x98(r1), 0, 0
    stmw r24, 0x70(r1)
    mr r29, r3
    lwz r5, 0x1e4(r3)
    lwz r3, 0x4(r3)
    lwz r25, 0x8(r5)
    lwz r3, 0x1c(r3)
    cmplwi r25, 0x2
    opword  0x418004B4  // blt .L_800E93C4
    lis r4, 0x4330
    lwz r3, 0x0(r3)
    stw r25, 0x6c(r1)
    lwz r0, 0x8(r3)
    stw r4, 0x68(r1)
    opword  0xC8228DA8  // lfd f1, lbl_8053BD48@sda21(r0)
    rlwinm. r0, r0, 0, 10, 10
    lfd fp0, 0x68(r1)
    opword  0xC0828D9C  // lfs f4, lbl_8053BD3C@sda21(r0)
    fsubs fp3, fp0, fp1
    lfs fp5, 0x14c(r29)
    opword  0xC0228D88  // lfs f1, lbl_8053BD28@sda21(r0)
    lfs fp0, 0x144(r29)
    fadds fp2, fp4, fp5
    fsubs fp3, fp3, fp4
    fmuls fp1, fp1, fp0
    opword  0xC2828DA0  // lfs f20, lbl_8053BD40@sda21(r0)
    fsubs fp0, fp4, fp5
    fdivs fp19, fp4, fp3
    fmuls fp18, fp2, fp1
    fmuls fp17, fp0, fp1
    opword  0x41820020  // beq .L_800E8F88
    lis r3, fn_800E8E60@ha
    fmr fp20, fp4
    addi r0, r3, fn_800E8E60@l
    fneg fp19, fp19
    lwz r24, 0x4(r5)
    mr r31, r0
    opword  0x48000014  // b .L_800E8F98
L_800E8F88:
    lis r3, fn_800E8E58@ha
    lwz r24, 0x0(r5)
    addi r0, r3, fn_800E8E58@l
    mr r31, r0
L_800E8F98:
    addi r3, r29, 0x184
    li r4, 0x0
    bl fn_8005FDF4
    lwz r0, 0x210(r29)
    lis r3, lbl_8049BF00@ha
    addi r5, r3, lbl_8049BF00@l
    mr r3, r29
    slwi r0, r0, 2
    addi r4, r29, 0x184
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x1
    bl fn_8005A464
    clrlslwi r5, r25, 17, 1
    li r3, 0x98
    li r4, 0x1
    bl fn_8005C24C
    lis r5, lbl_8052EBC0@ha
    lis r4, lbl_8049BF0C@ha
    lis r3, lbl_80539D44@ha
    opword  0xC3C28DA0  // lfs f30, lbl_8053BD40@sda21(r0)
    opword  0xC3E28DB8  // lfs f31, lbl_8053BD58@sda21(r0)
    mr r30, r24
    opword  0xC2028D9C  // lfs f16, lbl_8053BD3C@sda21(r0)
    addi r25, r5, lbl_8052EBC0@l
    addi r26, r4, lbl_8049BF0C@l
    addi r27, r3, lbl_80539D44@l
    lis r28, 0xcc01
    opword  0x48000388  // b .L_800E93A4
L_800E9020:
    stw r30, 0x1e8(r29)
    addi r24, r30, 0x8
    mr r3, r29
    addi r5, r1, 0x14
    lfs fp1, 0x68(r30)
    mr r4, r24
    lhz r0, 0x90(r30)
    fneg fp0, fp1
    lfs fp23, 0x8(r30)
    rlwinm r0, r0, 30, 18, 28
    fmuls fp1, fp1, fp17
    add r6, r25, r0
    lfs fp22, 0xc(r30)
    lfs fp21, 0x10(r30)
    fmuls fp0, fp0, fp18
    lfs fp4, 0x0(r6)
    lfs fp5, 0x4(r6)
    fmuls fp3, fp0, fp4
    stfs fp30, 0x24(r1)
    fmuls fp2, fp0, fp5
    stfs fp0, 0x20(r1)
    fmuls fp4, fp1, fp4
    fmuls fp0, fp1, fp5
    stfs fp30, 0x28(r1)
    stfs fp1, 0x2c(r1)
    stfs fp30, 0x30(r1)
    stfs fp30, 0x34(r1)
    stfs fp2, 0x20(r1)
    stfs fp30, 0x24(r1)
    stfs fp3, 0x28(r1)
    stfs fp0, 0x2c(r1)
    stfs fp30, 0x30(r1)
    stfs fp4, 0x34(r1)
    lwz r0, 0x200(r29)
    slwi r0, r0, 2
    lwzx r12, r26, r0
    mtctr r12
    bctrl
    psq_l fp2, 0x14(r1), 0, 0
    lfs fp0, 0x0(r27)
    ps_mul fp2, fp2, fp2
    lfs fp26, 0x1c(r1)
    fmuls fp0, fp31, fp0
    ps_madd fp1, fp26, fp26, fp2
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x4082001C  // bne .L_800E90F8
    opword  0xC0228DA0  // lfs f1, lbl_8053BD40@sda21(r0)
    opword  0xC0028D9C  // lfs f0, lbl_8053BD3C@sda21(r0)
    stfs fp1, 0x14(r1)
    stfs fp0, 0x18(r1)
    stfs fp1, 0x1c(r1)
    opword  0x48000080  // b .L_800E9174
L_800E90F8:
    psq_l fp1, 0x14(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp0, lbl_80539D44@l(r3)
    ps_mul fp1, fp1, fp1
    fmuls fp0, fp31, fp0
    ps_madd fp4, fp26, fp26, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E9174
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E9138
    fmr fp29, fp4
    opword  0x48000028  // b .L_800E915C
L_800E9138:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp29, fp0
L_800E915C:
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_muls0 fp1, fp1, fp29
    ps_muls0 fp0, fp0, fp29
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
L_800E9174:
    addi r3, r24, 0x54
    addi r4, r1, 0x14
    addi r5, r1, 0x8
    bl PSVECCrossProduct
    psq_l fp2, 0x8(r1), 0, 0
    lfs fp0, 0x0(r27)
    ps_mul fp2, fp2, fp2
    lfs fp25, 0x10(r1)
    fmuls fp0, fp31, fp0
    ps_madd fp1, fp25, fp25, fp2
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x4082001C  // bne .L_800E91C4
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    opword  0xC0228D9C  // lfs f1, lbl_8053BD3C@sda21(r0)
    stfs fp0, 0xc(r1)
    stfs fp1, 0x8(r1)
    stfs fp0, 0x10(r1)
    opword  0x48000080  // b .L_800E9240
L_800E91C4:
    psq_l fp1, 0x8(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp0, lbl_80539D44@l(r3)
    ps_mul fp1, fp1, fp1
    fmuls fp0, fp31, fp0
    ps_madd fp4, fp25, fp25, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E9240
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E9204
    fmr fp28, fp4
    opword  0x48000028  // b .L_800E9228
L_800E9204:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp28, fp0
L_800E9228:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp28
    ps_muls0 fp0, fp0, fp28
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800E9240:
    addi r3, r1, 0x14
    addi r4, r1, 0x8
    addi r5, r24, 0x54
    bl PSVECCrossProduct
    psq_l fp1, 0x54(r24), 0, 0
    lfs fp0, 0x0(r27)
    ps_mul fp1, fp1, fp1
    lfs fp24, 0x5c(r24)
    fmuls fp0, fp31, fp0
    ps_madd fp4, fp24, fp24, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E92CC
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E9290
    fmr fp27, fp4
    opword  0x48000028  // b .L_800E92B4
L_800E9290:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp27, fp0
L_800E92B4:
    psq_l fp1, 0x54(r24), 0, 0
    psq_l fp0, 0x5c(r24), 1, 0
    ps_muls0 fp1, fp1, fp27
    ps_muls0 fp0, fp0, fp27
    psq_st fp1, 0x54(r24), 0, 0
    psq_st fp0, 0x5c(r24), 1, 0
L_800E92CC:
    lfs fp1, 0x8(r1)
    addi r4, r1, 0x20
    lfs fp0, 0x14(r1)
    mr r5, r4
    stfs fp1, 0x38(r1)
    addi r3, r1, 0x38
    lfs fp3, 0xc(r1)
    li r6, 0x2
    stfs fp0, 0x3c(r1)
    lfs fp2, 0x18(r1)
    lfs fp0, 0x54(r24)
    lfs fp1, 0x10(r1)
    stfs fp0, 0x40(r1)
    lfs fp0, 0x1c(r1)
    stfs fp30, 0x44(r1)
    stfs fp3, 0x48(r1)
    stfs fp2, 0x4c(r1)
    lfs fp2, 0x58(r24)
    stfs fp2, 0x50(r1)
    stfs fp30, 0x54(r1)
    stfs fp1, 0x58(r1)
    stfs fp0, 0x5c(r1)
    lfs fp0, 0x5c(r24)
    stfs fp0, 0x60(r1)
    stfs fp30, 0x64(r1)
    bl PSMTXMultVecArraySR
    lfs fp0, 0x20(r1)
    mr r12, r31
    mr r3, r30
    fadds fp0, fp0, fp23
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x24(r1)
    fadds fp0, fp0, fp22
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x28(r1)
    fadds fp0, fp0, fp21
    stfs fp0, -0x8000(r28)
    stfs fp30, -0x8000(r28)
    stfs fp20, -0x8000(r28)
    lfs fp0, 0x2c(r1)
    fadds fp0, fp0, fp23
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x30(r1)
    fadds fp0, fp0, fp22
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x34(r1)
    fadds fp0, fp0, fp21
    stfs fp0, -0x8000(r28)
    stfs fp16, -0x8000(r28)
    stfs fp20, -0x8000(r28)
    mtctr r12
    bctrl
    fadds fp20, fp20, fp19
    mr r30, r3
L_800E93A4:
    cmplwi r30, 0x0
    opword  0x4082FC78  // bne .L_800E9020
    li r3, 0x9
    li r4, 0x2
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x2
    bl fn_8005A464
L_800E93C4:
    psq_l fp31, 0x188(r1), 0, 0
    lfd fp31, 0x180(r1)
    psq_l fp30, 0x178(r1), 0, 0
    lfd fp30, 0x170(r1)
    psq_l fp29, 0x168(r1), 0, 0
    lfd fp29, 0x160(r1)
    psq_l fp28, 0x158(r1), 0, 0
    lfd fp28, 0x150(r1)
    psq_l fp27, 0x148(r1), 0, 0
    lfd fp27, 0x140(r1)
    psq_l fp26, 0x138(r1), 0, 0
    lfd fp26, 0x130(r1)
    psq_l fp25, 0x128(r1), 0, 0
    lfd fp25, 0x120(r1)
    psq_l fp24, 0x118(r1), 0, 0
    lfd fp24, 0x110(r1)
    psq_l fp23, 0x108(r1), 0, 0
    lfd fp23, 0x100(r1)
    psq_l fp22, 0xf8(r1), 0, 0
    lfd fp22, 0xf0(r1)
    psq_l fp21, 0xe8(r1), 0, 0
    lfd fp21, 0xe0(r1)
    psq_l fp20, 0xd8(r1), 0, 0
    lfd fp20, 0xd0(r1)
    psq_l fp19, 0xc8(r1), 0, 0
    lfd fp19, 0xc0(r1)
    psq_l fp18, 0xb8(r1), 0, 0
    lfd fp18, 0xb0(r1)
    psq_l fp17, 0xa8(r1), 0, 0
    lfd fp17, 0xa0(r1)
    psq_l fp16, 0x98(r1), 0, 0
    lfd fp16, 0x90(r1)
    lmw r24, 0x70(r1)
    lwz r0, 0x194(r1)
    mtlr r0
    addi r1, r1, 0x190
    blr
}

ASM void fn_800E9458(void)
{
    nofralloc
    stwu r1, -0x1e0(r1)
    mflr r0
    stw r0, 0x1e4(r1)
    stfd fp31, 0x1d0(r1)
    psq_st fp31, 0x1d8(r1), 0, 0
    stfd fp30, 0x1c0(r1)
    psq_st fp30, 0x1c8(r1), 0, 0
    stfd fp29, 0x1b0(r1)
    psq_st fp29, 0x1b8(r1), 0, 0
    stfd fp28, 0x1a0(r1)
    psq_st fp28, 0x1a8(r1), 0, 0
    stfd fp27, 0x190(r1)
    psq_st fp27, 0x198(r1), 0, 0
    stfd fp26, 0x180(r1)
    psq_st fp26, 0x188(r1), 0, 0
    stfd fp25, 0x170(r1)
    psq_st fp25, 0x178(r1), 0, 0
    stfd fp24, 0x160(r1)
    psq_st fp24, 0x168(r1), 0, 0
    stfd fp23, 0x150(r1)
    psq_st fp23, 0x158(r1), 0, 0
    stfd fp22, 0x140(r1)
    psq_st fp22, 0x148(r1), 0, 0
    stfd fp21, 0x130(r1)
    psq_st fp21, 0x138(r1), 0, 0
    stfd fp20, 0x120(r1)
    psq_st fp20, 0x128(r1), 0, 0
    stfd fp19, 0x110(r1)
    psq_st fp19, 0x118(r1), 0, 0
    stfd fp18, 0x100(r1)
    psq_st fp18, 0x108(r1), 0, 0
    stfd fp17, 0xf0(r1)
    psq_st fp17, 0xf8(r1), 0, 0
    stfd fp16, 0xe0(r1)
    psq_st fp16, 0xe8(r1), 0, 0
    stfd fp15, 0xd0(r1)
    psq_st fp15, 0xd8(r1), 0, 0
    stfd fp14, 0xc0(r1)
    psq_st fp14, 0xc8(r1), 0, 0
    stmw r22, 0x98(r1)
    mr r25, r3
    lwz r5, 0x1e4(r3)
    lwz r3, 0x4(r3)
    lwz r31, 0x8(r5)
    lwz r3, 0x1c(r3)
    cmplwi r31, 0x2
    opword  0x418008F0  // blt .L_800E9E00
    lis r4, 0x4330
    lwz r3, 0x0(r3)
    stw r31, 0x6c(r1)
    lwz r0, 0x8(r3)
    stw r4, 0x68(r1)
    opword  0xC8228DA8  // lfd f1, lbl_8053BD48@sda21(r0)
    rlwinm. r0, r0, 0, 10, 10
    lfd fp0, 0x68(r1)
    opword  0xC0C28D9C  // lfs f6, lbl_8053BD3C@sda21(r0)
    fsubs fp1, fp0, fp1
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    lfs fp2, 0x14c(r25)
    stfs fp0, 0x84(r1)
    fsubs fp0, fp1, fp6
    opword  0xC0828D88  // lfs f4, lbl_8053BD28@sda21(r0)
    lfs fp1, 0x144(r25)
    fadds fp5, fp6, fp2
    fsubs fp3, fp6, fp2
    lfs fp8, 0x150(r25)
    fdivs fp0, fp6, fp0
    lfs fp14, 0x84(r1)
    fmuls fp7, fp4, fp1
    stfs fp0, 0x80(r1)
    lfs fp0, 0x148(r25)
    fadds fp2, fp6, fp8
    fsubs fp1, fp6, fp8
    fmuls fp4, fp4, fp0
    fmuls fp0, fp5, fp7
    stfs fp0, 0x7c(r1)
    fmuls fp0, fp3, fp7
    stfs fp0, 0x78(r1)
    fmuls fp0, fp2, fp4
    stfs fp0, 0x74(r1)
    fmuls fp0, fp1, fp4
    stfs fp0, 0x70(r1)
    opword  0x4182002C  // beq .L_800E95CC
    lfs fp0, 0x80(r1)
    lis r3, fn_800E8E60@ha
    addi r0, r3, fn_800E8E60@l
    fmr fp14, fp6
    fneg fp0, fp0
    stfs fp6, 0x84(r1)
    lwz r28, 0x4(r5)
    mr r27, r0
    stfs fp0, 0x80(r1)
    opword  0x48000014  // b .L_800E95DC
L_800E95CC:
    lis r3, fn_800E8E58@ha
    lwz r28, 0x0(r5)
    addi r0, r3, fn_800E8E58@l
    mr r27, r0
L_800E95DC:
    addi r3, r25, 0x184
    li r4, 0x0
    bl fn_8005FDF4
    lwz r0, 0x210(r25)
    lis r3, lbl_8049BF00@ha
    addi r5, r3, lbl_8049BF00@l
    mr r3, r25
    slwi r0, r0, 2
    addi r4, r25, 0x184
    lwzx r12, r5, r0
    mtctr r12
    bctrl
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x1
    bl fn_8005A464
    slwi r29, r31, 1
    clrlslwi r5, r31, 17, 1
    li r3, 0x98
    li r4, 0x1
    bl fn_8005C24C
    opword  0xC0028D9C  // lfs f0, lbl_8053BD3C@sda21(r0)
    lis r5, lbl_8052EBC0@ha
    lis r4, lbl_8049BF0C@ha
    lis r3, lbl_80539D44@ha
    opword  0xC3E28DA0  // lfs f31, lbl_8053BD40@sda21(r0)
    mr r26, r28
    opword  0xC3C28DB8  // lfs f30, lbl_8053BD58@sda21(r0)
    addi r31, r5, lbl_8052EBC0@l
    stfd fp0, 0x88(r1)
    addi r22, r4, lbl_8049BF0C@l
    addi r23, r3, lbl_80539D44@l
    lis r24, 0xcc01
    opword  0x48000398  // b .L_800E9A00
L_800E966C:
    stw r26, 0x1e8(r25)
    addi r30, r26, 0x8
    lfs fp0, 0x78(r1)
    mr r3, r25
    lfs fp1, 0x68(r26)
    addi r5, r1, 0x14
    lhz r0, 0x90(r26)
    mr r4, r30
    fneg fp2, fp1
    lfs fp17, 0x8(r26)
    fmuls fp1, fp1, fp0
    lfs fp0, 0x7c(r1)
    rlwinm r0, r0, 30, 18, 28
    lfs fp16, 0xc(r26)
    lfs fp15, 0x10(r26)
    add r6, r31, r0
    fmuls fp0, fp2, fp0
    lfs fp4, 0x0(r6)
    lfs fp5, 0x4(r6)
    stfs fp31, 0x24(r1)
    fmuls fp3, fp0, fp4
    stfs fp31, 0x28(r1)
    fmuls fp2, fp0, fp5
    fmuls fp4, fp1, fp4
    stfs fp0, 0x20(r1)
    fmuls fp0, fp1, fp5
    stfs fp1, 0x2c(r1)
    stfs fp31, 0x30(r1)
    stfs fp31, 0x34(r1)
    stfs fp2, 0x20(r1)
    stfs fp31, 0x24(r1)
    stfs fp3, 0x28(r1)
    stfs fp0, 0x2c(r1)
    stfs fp31, 0x30(r1)
    stfs fp4, 0x34(r1)
    lwz r0, 0x200(r25)
    slwi r0, r0, 2
    lwzx r12, r22, r0
    mtctr r12
    bctrl
    psq_l fp2, 0x14(r1), 0, 0
    lfs fp0, 0x0(r23)
    ps_mul fp2, fp2, fp2
    lfs fp23, 0x1c(r1)
    fmuls fp0, fp30, fp0
    ps_madd fp1, fp23, fp23, fp2
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x4082001C  // bne .L_800E974C
    opword  0xC0228DA0  // lfs f1, lbl_8053BD40@sda21(r0)
    opword  0xC0028D9C  // lfs f0, lbl_8053BD3C@sda21(r0)
    stfs fp1, 0x14(r1)
    stfs fp0, 0x18(r1)
    stfs fp1, 0x1c(r1)
    opword  0x48000080  // b .L_800E97C8
L_800E974C:
    psq_l fp1, 0x14(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp0, lbl_80539D44@l(r3)
    ps_mul fp1, fp1, fp1
    fmuls fp0, fp30, fp0
    ps_madd fp4, fp23, fp23, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E97C8
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E978C
    fmr fp29, fp4
    opword  0x48000028  // b .L_800E97B0
L_800E978C:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp29, fp0
L_800E97B0:
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_muls0 fp1, fp1, fp29
    ps_muls0 fp0, fp0, fp29
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
L_800E97C8:
    addi r3, r30, 0x54
    addi r4, r1, 0x14
    addi r5, r1, 0x8
    bl PSVECCrossProduct
    psq_l fp2, 0x8(r1), 0, 0
    lfs fp0, 0x0(r23)
    ps_mul fp2, fp2, fp2
    lfs fp22, 0x10(r1)
    fmuls fp0, fp30, fp0
    ps_madd fp1, fp22, fp22, fp2
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x4082001C  // bne .L_800E9818
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    opword  0xC0228D9C  // lfs f1, lbl_8053BD3C@sda21(r0)
    stfs fp0, 0xc(r1)
    stfs fp1, 0x8(r1)
    stfs fp0, 0x10(r1)
    opword  0x48000080  // b .L_800E9894
L_800E9818:
    psq_l fp1, 0x8(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp0, lbl_80539D44@l(r3)
    ps_mul fp1, fp1, fp1
    fmuls fp0, fp30, fp0
    ps_madd fp4, fp22, fp22, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E9894
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E9858
    fmr fp28, fp4
    opword  0x48000028  // b .L_800E987C
L_800E9858:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp28, fp0
L_800E987C:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp28
    ps_muls0 fp0, fp0, fp28
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800E9894:
    addi r3, r1, 0x14
    addi r4, r1, 0x8
    addi r5, r30, 0x54
    bl PSVECCrossProduct
    psq_l fp1, 0x54(r30), 0, 0
    lfs fp0, 0x0(r23)
    ps_mul fp1, fp1, fp1
    lfs fp21, 0x5c(r30)
    fmuls fp0, fp30, fp0
    ps_madd fp4, fp21, fp21, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E9920
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E98E4
    fmr fp27, fp4
    opword  0x48000028  // b .L_800E9908
L_800E98E4:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp27, fp0
L_800E9908:
    psq_l fp1, 0x54(r30), 0, 0
    psq_l fp0, 0x5c(r30), 1, 0
    ps_muls0 fp1, fp1, fp27
    ps_muls0 fp0, fp0, fp27
    psq_st fp1, 0x54(r30), 0, 0
    psq_st fp0, 0x5c(r30), 1, 0
L_800E9920:
    lfs fp1, 0x8(r1)
    addi r4, r1, 0x20
    lfs fp0, 0x14(r1)
    mr r5, r4
    stfs fp1, 0x38(r1)
    addi r3, r1, 0x38
    lfs fp3, 0xc(r1)
    li r6, 0x2
    stfs fp0, 0x3c(r1)
    lfs fp2, 0x18(r1)
    lfs fp0, 0x54(r30)
    lfs fp1, 0x10(r1)
    stfs fp0, 0x40(r1)
    lfs fp0, 0x1c(r1)
    stfs fp31, 0x44(r1)
    stfs fp3, 0x48(r1)
    stfs fp2, 0x4c(r1)
    lfs fp2, 0x58(r30)
    stfs fp2, 0x50(r1)
    stfs fp31, 0x54(r1)
    stfs fp1, 0x58(r1)
    stfs fp0, 0x5c(r1)
    lfs fp0, 0x5c(r30)
    stfs fp0, 0x60(r1)
    stfs fp31, 0x64(r1)
    bl PSMTXMultVecArraySR
    lfs fp0, 0x20(r1)
    mr r12, r27
    mr r3, r26
    fadds fp0, fp0, fp17
    stfs fp0, -0x8000(r24)
    lfs fp0, 0x24(r1)
    fadds fp0, fp0, fp16
    stfs fp0, -0x8000(r24)
    lfs fp0, 0x28(r1)
    fadds fp0, fp0, fp15
    stfs fp0, -0x8000(r24)
    stfs fp31, -0x8000(r24)
    stfs fp14, -0x8000(r24)
    lfs fp0, 0x2c(r1)
    fadds fp0, fp0, fp17
    stfs fp0, -0x8000(r24)
    lfs fp0, 0x30(r1)
    fadds fp0, fp0, fp16
    stfs fp0, -0x8000(r24)
    lfs fp0, 0x34(r1)
    fadds fp0, fp0, fp15
    stfs fp0, -0x8000(r24)
    lfd fp0, 0x88(r1)
    stfs fp0, -0x8000(r24)
    stfs fp14, -0x8000(r24)
    mtctr r12
    bctrl
    lfs fp0, 0x80(r1)
    mr r26, r3
    fadds fp14, fp14, fp0
L_800E9A00:
    cmplwi r26, 0x0
    opword  0x4082FC68  // bne .L_800E966C
    lfs fp15, 0x84(r1)
    clrlwi r5, r29, 16
    li r3, 0x98
    li r4, 0x1
    bl fn_8005C24C
    lis r5, lbl_8052EBC0@ha
    lis r4, lbl_8049BF0C@ha
    lis r3, lbl_80539D44@ha
    opword  0xC3C28DA0  // lfs f30, lbl_8053BD40@sda21(r0)
    opword  0xC3E28DB8  // lfs f31, lbl_8053BD58@sda21(r0)
    mr r26, r28
    opword  0xC1C28D9C  // lfs f14, lbl_8053BD3C@sda21(r0)
    addi r31, r5, lbl_8052EBC0@l
    addi r30, r4, lbl_8049BF0C@l
    addi r29, r3, lbl_80539D44@l
    lis r28, 0xcc01
    opword  0x48000398  // b .L_800E9DE0
L_800E9A4C:
    stw r26, 0x1e8(r25)
    addi r22, r26, 0x8
    lfs fp0, 0x70(r1)
    mr r3, r25
    lhz r0, 0x90(r26)
    addi r5, r1, 0x14
    lfs fp1, 0x6c(r26)
    mr r4, r22
    rlwinm r0, r0, 30, 18, 28
    lfs fp16, 0x8(r26)
    add r6, r31, r0
    fneg fp2, fp1
    fmuls fp1, fp1, fp0
    lfs fp0, 0x0(r6)
    lfs fp3, 0x4(r6)
    fneg fp5, fp0
    lfs fp0, 0x74(r1)
    lfs fp17, 0xc(r26)
    fmuls fp0, fp2, fp0
    lfs fp21, 0x10(r26)
    fmuls fp4, fp1, fp3
    stfs fp30, 0x24(r1)
    fmuls fp3, fp0, fp3
    stfs fp30, 0x28(r1)
    fmuls fp2, fp0, fp5
    stfs fp0, 0x20(r1)
    fmuls fp0, fp1, fp5
    stfs fp1, 0x2c(r1)
    stfs fp30, 0x30(r1)
    stfs fp30, 0x34(r1)
    stfs fp2, 0x20(r1)
    stfs fp30, 0x24(r1)
    stfs fp3, 0x28(r1)
    stfs fp0, 0x2c(r1)
    stfs fp30, 0x30(r1)
    stfs fp4, 0x34(r1)
    lwz r0, 0x200(r25)
    slwi r0, r0, 2
    lwzx r12, r30, r0
    mtctr r12
    bctrl
    psq_l fp2, 0x14(r1), 0, 0
    lfs fp0, 0x0(r29)
    ps_mul fp2, fp2, fp2
    lfs fp20, 0x1c(r1)
    fmuls fp0, fp31, fp0
    ps_madd fp1, fp20, fp20, fp2
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x4082001C  // bne .L_800E9B30
    opword  0xC0228DA0  // lfs f1, lbl_8053BD40@sda21(r0)
    opword  0xC0028D9C  // lfs f0, lbl_8053BD3C@sda21(r0)
    stfs fp1, 0x14(r1)
    stfs fp0, 0x18(r1)
    stfs fp1, 0x1c(r1)
    opword  0x48000080  // b .L_800E9BAC
L_800E9B30:
    psq_l fp1, 0x14(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp0, lbl_80539D44@l(r3)
    ps_mul fp1, fp1, fp1
    fmuls fp0, fp31, fp0
    ps_madd fp4, fp20, fp20, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E9BAC
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E9B70
    fmr fp26, fp4
    opword  0x48000028  // b .L_800E9B94
L_800E9B70:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp26, fp0
L_800E9B94:
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_muls0 fp1, fp1, fp26
    ps_muls0 fp0, fp0, fp26
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
L_800E9BAC:
    addi r3, r22, 0x54
    addi r4, r1, 0x14
    addi r5, r1, 0x8
    bl PSVECCrossProduct
    psq_l fp2, 0x8(r1), 0, 0
    lfs fp0, 0x0(r29)
    ps_mul fp2, fp2, fp2
    lfs fp19, 0x10(r1)
    fmuls fp0, fp31, fp0
    ps_madd fp1, fp19, fp19, fp2
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x4082001C  // bne .L_800E9BFC
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    opword  0xC0228D9C  // lfs f1, lbl_8053BD3C@sda21(r0)
    stfs fp0, 0xc(r1)
    stfs fp1, 0x8(r1)
    stfs fp0, 0x10(r1)
    opword  0x48000080  // b .L_800E9C78
L_800E9BFC:
    psq_l fp1, 0x8(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp0, lbl_80539D44@l(r3)
    ps_mul fp1, fp1, fp1
    fmuls fp0, fp31, fp0
    ps_madd fp4, fp19, fp19, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E9C78
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E9C3C
    fmr fp25, fp4
    opword  0x48000028  // b .L_800E9C60
L_800E9C3C:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp25, fp0
L_800E9C60:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp25
    ps_muls0 fp0, fp0, fp25
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800E9C78:
    addi r3, r1, 0x14
    addi r4, r1, 0x8
    addi r5, r22, 0x54
    bl PSVECCrossProduct
    psq_l fp1, 0x54(r22), 0, 0
    lfs fp0, 0x0(r29)
    ps_mul fp1, fp1, fp1
    lfs fp18, 0x5c(r22)
    fmuls fp0, fp31, fp0
    ps_madd fp4, fp18, fp18, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800E9D04
    opword  0xC0028DA0  // lfs f0, lbl_8053BD40@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800E9CC8
    fmr fp24, fp4
    opword  0x48000028  // b .L_800E9CEC
L_800E9CC8:
    frsqrte fp3, fp4
    opword  0xC0428D98  // lfs f2, lbl_8053BD38@sda21(r0)
    opword  0xC0028DBC  // lfs f0, lbl_8053BD5C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp24, fp0
L_800E9CEC:
    psq_l fp1, 0x54(r22), 0, 0
    psq_l fp0, 0x5c(r22), 1, 0
    ps_muls0 fp1, fp1, fp24
    ps_muls0 fp0, fp0, fp24
    psq_st fp1, 0x54(r22), 0, 0
    psq_st fp0, 0x5c(r22), 1, 0
L_800E9D04:
    lfs fp1, 0x8(r1)
    addi r4, r1, 0x20
    lfs fp0, 0x14(r1)
    mr r5, r4
    stfs fp1, 0x38(r1)
    addi r3, r1, 0x38
    lfs fp3, 0xc(r1)
    li r6, 0x2
    stfs fp0, 0x3c(r1)
    lfs fp2, 0x18(r1)
    lfs fp0, 0x54(r22)
    lfs fp1, 0x10(r1)
    stfs fp0, 0x40(r1)
    lfs fp0, 0x1c(r1)
    stfs fp30, 0x44(r1)
    stfs fp3, 0x48(r1)
    stfs fp2, 0x4c(r1)
    lfs fp2, 0x58(r22)
    stfs fp2, 0x50(r1)
    stfs fp30, 0x54(r1)
    stfs fp1, 0x58(r1)
    stfs fp0, 0x5c(r1)
    lfs fp0, 0x5c(r22)
    stfs fp0, 0x60(r1)
    stfs fp30, 0x64(r1)
    bl PSMTXMultVecArraySR
    lfs fp0, 0x20(r1)
    mr r12, r27
    mr r3, r26
    fadds fp0, fp0, fp16
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x24(r1)
    fadds fp0, fp0, fp17
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x28(r1)
    fadds fp0, fp0, fp21
    stfs fp0, -0x8000(r28)
    stfs fp30, -0x8000(r28)
    stfs fp15, -0x8000(r28)
    lfs fp0, 0x2c(r1)
    fadds fp0, fp0, fp16
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x30(r1)
    fadds fp0, fp0, fp17
    stfs fp0, -0x8000(r28)
    lfs fp0, 0x34(r1)
    fadds fp0, fp0, fp21
    stfs fp0, -0x8000(r28)
    stfs fp14, -0x8000(r28)
    stfs fp15, -0x8000(r28)
    mtctr r12
    bctrl
    lfs fp0, 0x80(r1)
    mr r26, r3
    fadds fp15, fp15, fp0
L_800E9DE0:
    cmplwi r26, 0x0
    opword  0x4082FC68  // bne .L_800E9A4C
    li r3, 0x9
    li r4, 0x2
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x2
    bl fn_8005A464
L_800E9E00:
    psq_l fp31, 0x1d8(r1), 0, 0
    lfd fp31, 0x1d0(r1)
    psq_l fp30, 0x1c8(r1), 0, 0
    lfd fp30, 0x1c0(r1)
    psq_l fp29, 0x1b8(r1), 0, 0
    lfd fp29, 0x1b0(r1)
    psq_l fp28, 0x1a8(r1), 0, 0
    lfd fp28, 0x1a0(r1)
    psq_l fp27, 0x198(r1), 0, 0
    lfd fp27, 0x190(r1)
    psq_l fp26, 0x188(r1), 0, 0
    lfd fp26, 0x180(r1)
    psq_l fp25, 0x178(r1), 0, 0
    lfd fp25, 0x170(r1)
    psq_l fp24, 0x168(r1), 0, 0
    lfd fp24, 0x160(r1)
    psq_l fp23, 0x158(r1), 0, 0
    lfd fp23, 0x150(r1)
    psq_l fp22, 0x148(r1), 0, 0
    lfd fp22, 0x140(r1)
    psq_l fp21, 0x138(r1), 0, 0
    lfd fp21, 0x130(r1)
    psq_l fp20, 0x128(r1), 0, 0
    lfd fp20, 0x120(r1)
    psq_l fp19, 0x118(r1), 0, 0
    lfd fp19, 0x110(r1)
    psq_l fp18, 0x108(r1), 0, 0
    lfd fp18, 0x100(r1)
    psq_l fp17, 0xf8(r1), 0, 0
    lfd fp17, 0xf0(r1)
    psq_l fp16, 0xe8(r1), 0, 0
    lfd fp16, 0xe0(r1)
    psq_l fp15, 0xd8(r1), 0, 0
    lfd fp15, 0xd0(r1)
    psq_l fp14, 0xc8(r1), 0, 0
    lfd fp14, 0xc0(r1)
    lmw r22, 0x98(r1)
    lwz r0, 0x1e4(r1)
    mtlr r0
    addi r1, r1, 0x1e0
    blr
}

ASM void fn_800E9EA4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r4, 0x0(r3)
    lwz r3, 0xec(r4)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_800E9ED0
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
L_800E9ED0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E9EE0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r5, r4
    stw r0, 0x14(r1)
    lwz r6, 0x0(r3)
    lwz r3, 0xf0(r6)
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800E9F14
    lwz r12, 0x0(r3)
    mr r4, r6
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
L_800E9F14:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E9F24(void)
{
    nofralloc
    blr
}

ASM void fn_800E9F28(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    extsh r6, r6
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    addi r31, r6, 0x1
    stw r30, 0x38(r1)
    mr r30, r3
    slwi r3, r31, 2
    stw r29, 0x34(r1)
    mr r29, r5
    mr r5, r7
    stw r28, 0x30(r1)
    mr r28, r4
    li r4, 0x4
    bl fn_80083868
    lbz r7, 0x3(r28)
    lis r10, 0x4330
    opword  0xC0C28DA0  // lfs f6, lbl_8053BD40@sda21(r0)
    mr r4, r28
    lbz r9, 0x4(r28)
    mr r5, r3
    stw r7, 0x14(r1)
    fmr fp5, fp6
    lbz r0, 0x2(r28)
    fmr fp3, fp6
    stw r10, 0x10(r1)
    fmr fp4, fp6
    lbz r8, 0x5(r28)
    stw r0, 0xc(r1)
    clrlwi r0, r29, 24
    opword  0xC8428DA8  // lfd f2, lbl_8053BD48@sda21(r0)
    li r6, 0x0
    lfd fp1, 0x10(r1)
    li r7, 0x0
    stw r10, 0x8(r1)
    fsubs fp7, fp1, fp2
    lfd fp0, 0x8(r1)
    stw r9, 0x1c(r1)
    fsubs fp0, fp0, fp2
    stw r10, 0x18(r1)
    lfd fp1, 0x18(r1)
    stw r8, 0x24(r1)
    fsubs fp8, fp1, fp2
    stw r10, 0x20(r1)
    lfd fp1, 0x20(r1)
    fsubs fp9, fp1, fp2
    opword  0x48000198  // b .L_800EA17C
L_800E9FE8:
    lha r8, 0x0(r4)
    extsh r9, r7
    cmpw r9, r8
    opword  0x40820130  // bne .L_800EA124
    lbz r10, 0x3(r4)
    lis r12, 0x4330
    lbz r11, 0x2(r4)
    addi r6, r6, 0x1
    lbz r9, 0x4(r4)
    cmpw r6, r0
    stw r10, 0x1c(r1)
    lbz r8, 0x5(r4)
    addi r4, r4, 0x6
    stw r12, 0x18(r1)
    opword  0xC8A28DA8  // lfd f5, lbl_8053BD48@sda21(r0)
    lfd fp1, 0x18(r1)
    stb r11, 0x0(r5)
    fsubs fp7, fp1, fp5
    stb r10, 0x1(r5)
    stb r9, 0x2(r5)
    stw r9, 0x14(r1)
    stw r12, 0x10(r1)
    lfd fp1, 0x10(r1)
    stw r11, 0x24(r1)
    fsubs fp8, fp1, fp5
    stw r12, 0x20(r1)
    lfd fp0, 0x20(r1)
    stw r8, 0xc(r1)
    fsubs fp0, fp0, fp5
    stw r12, 0x8(r1)
    lfd fp1, 0x8(r1)
    stb r8, 0x3(r5)
    fsubs fp9, fp1, fp5
    opword  0x408000A4  // bge .L_800EA110
    lha r9, -0x6(r4)
    lha r8, 0x0(r4)
    lbz r11, 0x2(r4)
    subf r8, r9, r8
    lbz r10, 0x3(r4)
    xoris r8, r8, 0x8000
    stw r12, 0x20(r1)
    lbz r9, 0x4(r4)
    stw r8, 0x24(r1)
    opword  0xC8428D90  // lfd f2, lbl_8053BD30@sda21(r0)
    lfd fp1, 0x20(r1)
    opword  0xC0628D9C  // lfs f3, lbl_8053BD3C@sda21(r0)
    fsubs fp1, fp1, fp2
    lbz r8, 0x5(r4)
    stw r11, 0x1c(r1)
    fdivs fp6, fp3, fp1
    stw r12, 0x18(r1)
    lfd fp2, 0x18(r1)
    stw r10, 0x14(r1)
    stw r12, 0x10(r1)
    lfd fp1, 0x10(r1)
    fsubs fp3, fp2, fp5
    stw r9, 0xc(r1)
    fsubs fp2, fp1, fp5
    stw r12, 0x8(r1)
    fsubs fp4, fp3, fp0
    lfd fp1, 0x8(r1)
    fsubs fp3, fp2, fp7
    stw r8, 0x2c(r1)
    fsubs fp2, fp1, fp5
    stw r12, 0x28(r1)
    fmuls fp4, fp6, fp4
    fmuls fp3, fp6, fp3
    lfd fp1, 0x28(r1)
    fsubs fp2, fp2, fp8
    fsubs fp1, fp1, fp5
    fmuls fp5, fp6, fp2
    fsubs fp1, fp1, fp9
    fmuls fp6, fp6, fp1
    opword  0x48000068  // b .L_800EA174
L_800EA110:
    opword  0xC0C28DA0  // lfs f6, lbl_8053BD40@sda21(r0)
    fmr fp5, fp6
    fmr fp3, fp6
    fmr fp4, fp6
    opword  0x48000054  // b .L_800EA174
L_800EA124:
    fadds fp0, fp0, fp4
    fadds fp7, fp7, fp3
    fadds fp8, fp8, fp5
    fctiwz fp2, fp0
    fctiwz fp1, fp7
    fadds fp9, fp9, fp6
    stfd fp2, 0x28(r1)
    fctiwz fp2, fp8
    stfd fp1, 0x20(r1)
    fctiwz fp1, fp9
    lwz r8, 0x2c(r1)
    stfd fp2, 0x18(r1)
    lwz r9, 0x24(r1)
    stb r8, 0x0(r5)
    lwz r8, 0x1c(r1)
    stb r9, 0x1(r5)
    stfd fp1, 0x10(r1)
    stb r8, 0x2(r5)
    lwz r8, 0x14(r1)
    stb r8, 0x3(r5)
L_800EA174:
    addi r5, r5, 0x4
    addi r7, r7, 0x1
L_800EA17C:
    extsh r8, r7
    cmpw r8, r31
    opword  0x4180FE64  // blt .L_800E9FE8
    stw r3, 0x0(r30)
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    lwz r29, 0x34(r1)
    lwz r28, 0x30(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800EA1AC(void)
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
    stw r30, 0x0(r3)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 7, 7
    opword  0x41820010  // beq .L_800EA1F0
    addi r0, r30, 0x34
    stw r0, 0x4(r29)
    opword  0x4800000C  // b .L_800EA1F8
L_800EA1F0:
    li r0, 0x0
    stw r0, 0x4(r29)
L_800EA1F8:
    lwz r3, 0x0(r29)
    lbz r0, 0x1e(r3)
    clrlwi. r0, r0, 31
    opword  0x41820024  // beq .L_800EA228
    lwz r0, 0x8(r3)
    li r3, 0x34
    rlwinm. r0, r0, 0, 7, 7
    opword  0x41820008  // beq .L_800EA21C
    li r3, 0x5c
L_800EA21C:
    add r0, r30, r3
    stw r0, 0x8(r29)
    opword  0x4800000C  // b .L_800EA230
L_800EA228:
    li r0, 0x0
    stw r0, 0x8(r29)
L_800EA230:
    lwz r4, 0x0(r29)
    lbz r0, 0x21(r4)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x41820024  // beq .L_800EA260
    lha r0, 0xc(r4)
    mr r7, r31
    lbz r5, 0x22(r4)
    addi r3, r29, 0xc
    lha r6, 0x24(r4)
    add r4, r30, r0
    bl fn_800E9F28
    opword  0x4800000C  // b .L_800EA268
L_800EA260:
    li r0, 0x0
    stw r0, 0xc(r29)
L_800EA268:
    lwz r4, 0x0(r29)
    lbz r0, 0x21(r4)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x41820024  // beq .L_800EA298
    lha r0, 0xe(r4)
    mr r7, r31
    lbz r5, 0x23(r4)
    addi r3, r29, 0x10
    lha r6, 0x24(r4)
    add r4, r30, r0
    bl fn_800E9F28
    opword  0x4800000C  // b .L_800EA2A0
L_800EA298:
    li r0, 0x0
    stw r0, 0x10(r29)
L_800EA2A0:
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EA2C0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    lwz r4, 0x0(r28)
    lis r3, lbl_8049BEC0@ha
    addi r31, r3, lbl_8049BEC0@l
    lhz r0, 0x18(r4)
    addi r3, r31, 0x80
    lwz r9, 0x8(r4)
    addi r7, r31, 0x8c
    clrlslwi r8, r0, 30, 2
    rlwinm r4, r0, 0, 26, 29
    rlwinm r5, r0, 28, 26, 29
    rlwinm r10, r9, 21, 25, 27
    addi r30, r31, 0x124
    addi r6, r31, 0xb4
    rlwinm r0, r0, 24, 26, 29
    rlwinm r9, r9, 18, 27, 27
    addi r29, r31, 0x184
    lwzx r3, r3, r8
    lwzx r4, r7, r4
    add r30, r30, r10
    lwzx r5, r7, r5
    add r29, r29, r9
    lwzx r6, r6, r0
    bl fn_8005F48C
    lwz r3, 0x0(r28)
    addi r4, r31, 0xf4
    lbz r5, 0x1d(r3)
    rlwinm r0, r5, 1, 27, 29
    clrlwi r3, r5, 31
    lwzx r4, r4, r0
    extrwi r5, r5, 1, 27
    bl fn_8005F538
    lwz r8, 0x0(r28)
    addi r7, r31, 0xf4
    addi r5, r31, 0x114
    lbz r0, 0x1a(r8)
    lbz r4, 0x1b(r8)
    clrlslwi r3, r0, 29, 2
    rlwinm r6, r0, 31, 28, 29
    rlwinm r0, r0, 29, 27, 29
    lwzx r5, r5, r6
    lwzx r3, r7, r3
    lwzx r6, r7, r0
    lbz r7, 0x1c(r8)
    bl fn_8005EEB0
    lwz r4, 0x0(r30)
    li r3, 0x0
    lwz r5, 0x4(r30)
    lwz r6, 0x8(r30)
    lwz r7, 0xc(r30)
    bl fn_8005EA6C
    lwz r4, 0x0(r29)
    li r3, 0x0
    lwz r5, 0x4(r29)
    lwz r6, 0x8(r29)
    lwz r7, 0xc(r29)
    bl fn_8005EAB0
    li r3, 0x0
    bl fn_8005E8DC
    li r3, 0x1
    bl fn_8005E8DC
    lwz r3, 0x0(r28)
    lbz r0, 0x1d(r3)
    extrwi r3, r0, 1, 26
    bl fn_8005F56C
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EA400(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    addi r4, r1, 0xc
    stmw r25, 0x24(r1)
    lwz r5, 0x4(r3)
    lwz r28, 0x0(r3)
    li r3, 0x1
    lwz r5, 0x24(r5)
    lbz r7, 0xb8(r28)
    lwz r5, 0x0(r5)
    addi r0, r7, 0x1
    lbz r6, 0xb9(r28)
    lbz r31, 0x34(r5)
    addi r8, r6, 0x1
    lbz r25, 0x35(r5)
    mullw r10, r31, r0
    lbz r7, 0xba(r28)
    lbz r6, 0xbb(r28)
    lbz r26, 0x36(r5)
    addi r0, r7, 0x1
    lbz r27, 0x37(r5)
    addi r9, r6, 0x1
    lbz r7, 0xbd(r28)
    mullw r11, r25, r8
    lbz r8, 0xbc(r28)
    extrwi r12, r10, 8, 16
    stb r31, 0x14(r1)
    lbz r6, 0xbe(r28)
    addi r8, r8, 0x1
    mullw r10, r26, r0
    lbz r28, 0x38(r5)
    lbz r29, 0x39(r5)
    addi r0, r6, 0x1
    lbz r30, 0x3a(r5)
    addi r7, r7, 0x1
    lbz r31, 0x3b(r5)
    mullw r9, r27, r9
    stb r25, 0x15(r1)
    extrwi r11, r11, 8, 16
    extrwi r10, r10, 8, 16
    stb r26, 0x16(r1)
    mullw r6, r28, r8
    stb r27, 0x17(r1)
    extrwi r8, r9, 8, 16
    stb r12, 0x14(r1)
    mullw r5, r29, r7
    stb r11, 0x15(r1)
    extrwi r7, r6, 8, 16
    stb r28, 0x10(r1)
    stb r10, 0x16(r1)
    mullw r0, r30, r0
    extrwi r6, r5, 8, 16
    stb r29, 0x11(r1)
    stb r8, 0x17(r1)
    extrwi r5, r0, 8, 16
    stb r30, 0x12(r1)
    lwz r0, 0x14(r1)
    stb r31, 0x13(r1)
    stb r7, 0x10(r1)
    stb r6, 0x11(r1)
    stb r5, 0x12(r1)
    stw r0, 0xc(r1)
    bl fn_8005EBC4
    lwz r0, 0x10(r1)
    addi r4, r1, 0x8
    li r3, 0x2
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    lmw r25, 0x24(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800EA528(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    opword  0xC0228DC4  // lfs f1, lbl_8053BD64@sda21(r0)
    lfs fp0, 0x84(r4)
    opword  0xC0428DC0  // lfs f2, lbl_8053BD60@sda21(r0)
    fsubs fp0, fp1, fp0
    fmuls fp3, fp2, fp0
    psq_st fp3, 0x8(r1), 1, 2
    lbz r0, 0x8(r1)
    stb r0, 0x96(r4)
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EA554(void)
{
    nofralloc
    opword  0xC0428DC4  // lfs f2, lbl_8053BD64@sda21(r0)
    lfs fp0, 0x84(r4)
    lfs fp1, 0x68(r4)
    fsubs fp0, fp2, fp0
    fmuls fp0, fp1, fp0
    stfs fp0, 0x60(r4)
    lfs fp0, 0x84(r4)
    lfs fp1, 0x6c(r4)
    fsubs fp0, fp2, fp0
    fmuls fp0, fp1, fp0
    stfs fp0, 0x64(r4)
    blr
}

ASM void fn_800EA584(void)
{
    nofralloc
    stw r4, 0x0(r3)
    blr
}

ASM void fn_800EA58C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r4, 0x19
    opword  0xC0628DC8  // lfs f3, lbl_8053BD68@sda21(r0)
    addi r5, r4, 0x660d
    opword  0xC0428DCC  // lfs f2, lbl_8053BD6C@sda21(r0)
    stfs fp3, 0x18(r3)
    opword  0xC0228DD0  // lfs f1, lbl_8053BD70@sda21(r0)
    stfs fp3, 0x14(r3)
    stfs fp3, 0x10(r3)
    lwz r6, 0x0(r3)
    lwz r0, 0xc4(r6)
    mullw r4, r0, r5
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r6)
    srwi r0, r0, 9
    oris r0, r0, 0x3f80
    lwz r6, 0x0(r3)
    stw r0, 0x10(r1)
    lwz r0, 0xc4(r6)
    lfs fp0, 0x10(r1)
    mullw r4, r0, r5
    fsubs fp0, fp0, fp2
    fsubs fp4, fp0, fp1
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r6)
    srwi r0, r0, 9
    oris r0, r0, 0x3f80
    lwz r6, 0x0(r3)
    stw r0, 0xc(r1)
    lwz r0, 0xc4(r6)
    lfs fp0, 0xc(r1)
    mullw r4, r0, r5
    fsubs fp0, fp0, fp2
    fsubs fp5, fp0, fp1
    addis r4, r4, 0x3c6f
    subi r4, r4, 0xca1
    srwi r0, r4, 9
    stw r4, 0xc4(r6)
    oris r0, r0, 0x3f80
    stw r0, 0x8(r1)
    lfs fp0, 0x8(r1)
    fsubs fp0, fp0, fp2
    fsubs fp0, fp0, fp1
    stfs fp0, 0x1c(r3)
    stfs fp5, 0x20(r3)
    stfs fp4, 0x24(r3)
    lfs fp1, 0x24(r3)
    lfs fp0, 0x1c(r3)
    stfs fp0, 0x28(r3)
    stfs fp3, 0x2c(r3)
    stfs fp1, 0x30(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EA668(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lwz r6, 0x0(r3)
    lwz r4, 0xe8(r6)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x41820078  // beq .L_800EA6FC
    lwz r0, 0x40(r3)
    lis r4, 0x4330
    lwz r5, 0x44(r3)
    xoris r0, r0, 0x8000
    stw r4, 0x18(r1)
    xoris r5, r5, 0x8000
    opword  0xC8828DD8  // lfd f4, lbl_8053BD78@sda21(r0)
    stw r0, 0x1c(r1)
    opword  0xC0028DCC  // lfs f0, lbl_8053BD6C@sda21(r0)
    lfd fp1, 0x18(r1)
    stw r5, 0x14(r1)
    fsubs fp2, fp1, fp4
    opword  0xC0228DD0  // lfs f1, lbl_8053BD70@sda21(r0)
    stw r4, 0x10(r1)
    lfs fp5, 0x34(r3)
    lfd fp3, 0x10(r1)
    fsubs fp2, fp2, fp0
    opword  0xC0028DC8  // lfs f0, lbl_8053BD68@sda21(r0)
    fsubs fp3, fp3, fp4
    stfs fp0, 0x10(r3)
    fdivs fp2, fp3, fp2
    stfs fp0, 0x14(r3)
    fsubs fp0, fp2, fp1
    fmuls fp0, fp5, fp0
    stfs fp0, 0x18(r3)
    lwz r4, 0x44(r3)
    addi r0, r4, 0x1
    stw r0, 0x44(r3)
    opword  0x48000058  // b .L_800EA750
L_800EA6FC:
    lis r4, 0x19
    lwz r5, 0xc4(r6)
    addi r0, r4, 0x660d
    opword  0xC0428DCC  // lfs f2, lbl_8053BD6C@sda21(r0)
    mullw r4, r5, r0
    opword  0xC0228DD0  // lfs f1, lbl_8053BD70@sda21(r0)
    opword  0xC0028DC8  // lfs f0, lbl_8053BD68@sda21(r0)
    addis r4, r4, 0x3c6f
    subi r4, r4, 0xca1
    srwi r0, r4, 9
    stw r4, 0xc4(r6)
    oris r0, r0, 0x3f80
    stw r0, 0x8(r1)
    lfs fp4, 0x34(r3)
    lfs fp3, 0x8(r1)
    stfs fp0, 0x10(r3)
    fsubs fp2, fp3, fp2
    stfs fp0, 0x14(r3)
    fsubs fp0, fp2, fp1
    fmuls fp0, fp4, fp0
    stfs fp0, 0x18(r3)
L_800EA750:
    lfs fp2, 0x18(r3)
    lfs fp1, 0x11c(r3)
    opword  0xC0028DC8  // lfs f0, lbl_8053BD68@sda21(r0)
    fmuls fp1, fp2, fp1
    stfs fp0, 0x1c(r3)
    stfs fp0, 0x20(r3)
    stfs fp1, 0x24(r3)
    lfs fp1, 0x18(r3)
    stfs fp0, 0x28(r3)
    stfs fp0, 0x2c(r3)
    stfs fp1, 0x30(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EA784(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lwz r6, 0x0(r3)
    lwz r4, 0xe8(r6)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x41820054  // beq .L_800EA7F4
    lwz r6, 0x44(r3)
    lis r0, 0x4330
    lwz r4, 0x40(r3)
    slwi r5, r6, 16
    stw r0, 0x10(r1)
    divw r4, r5, r4
    opword  0xC8428DD8  // lfd f2, lbl_8053BD78@sda21(r0)
    lfs fp0, 0x3c(r3)
    addi r0, r6, 0x1
    stw r0, 0x44(r3)
    extsh r0, r4
    xoris r0, r0, 0x8000
    stw r0, 0x14(r1)
    lfd fp1, 0x10(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x18(r1)
    lwz r6, 0x1c(r1)
    opword  0x48000058  // b .L_800EA848
L_800EA7F4:
    lis r4, 0x19
    lwz r5, 0xc4(r6)
    addi r4, r4, 0x660d
    lis r0, 0x4330
    mullw r4, r5, r4
    stw r0, 0x18(r1)
    opword  0xC8228DD8  // lfd f1, lbl_8053BD78@sda21(r0)
    addis r4, r4, 0x3c6f
    subi r4, r4, 0xca1
    srwi r0, r4, 16
    stw r4, 0xc4(r6)
    extsh r0, r0
    xoris r0, r0, 0x8000
    lfs fp2, 0x3c(r3)
    stw r0, 0x1c(r1)
    lfd fp0, 0x18(r1)
    fsubs fp0, fp0, fp1
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x10(r1)
    lwz r6, 0x14(r1)
L_800EA848:
    lwz r5, 0x0(r3)
    lis r4, 0x19
    addi r0, r4, 0x660d
    opword  0xC0028DCC  // lfs f0, lbl_8053BD6C@sda21(r0)
    lwz r4, 0xc4(r5)
    mullw r4, r4, r0
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r5)
    srwi r0, r0, 9
    oris r0, r0, 0x3f80
    lwz r4, 0x0(r3)
    stw r0, 0x8(r1)
    lwz r4, 0xe8(r4)
    lfs fp1, 0x8(r1)
    lwz r4, 0x2c(r4)
    fsubs fp1, fp1, fp0
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    fmr fp5, fp1
    clrlwi. r0, r0, 31
    opword  0x41820008  // beq .L_800EA8A4
    fnmsubs fp5, fp1, fp1, fp0
L_800EA8A4:
    lfs fp3, 0x38(r3)
    lis r4, lbl_8052EBC0@ha
    opword  0xC0028DCC  // lfs f0, lbl_8053BD6C@sda21(r0)
    addi r5, r4, lbl_8052EBC0@l
    rlwinm r0, r6, 30, 18, 28
    lfs fp4, 0x34(r3)
    fsubs fp2, fp0, fp3
    add r4, r5, r0
    lfsx fp0, r5, r0
    lfs fp1, 0x4(r4)
    fmadds fp3, fp5, fp2, fp3
    opword  0xC0428DC8  // lfs f2, lbl_8053BD68@sda21(r0)
    fmuls fp3, fp4, fp3
    fmuls fp0, fp3, fp0
    fmuls fp1, fp3, fp1
    stfs fp0, 0x10(r3)
    stfs fp2, 0x14(r3)
    stfs fp1, 0x18(r3)
    psq_l fp1, 0x10(r3), 0, 0
    psq_l fp0, 0x114(r3), 0, 0
    ps_mul fp0, fp1, fp0
    psq_st fp0, 0x1c(r3), 0, 0
    lfs fp1, 0x18(r3)
    lfs fp0, 0x11c(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x24(r3)
    lfs fp1, 0x18(r3)
    lfs fp0, 0x10(r3)
    stfs fp0, 0x28(r3)
    stfs fp2, 0x2c(r3)
    stfs fp1, 0x30(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EA928(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r4, 0x19
    addi r5, r4, 0x660d
    opword  0xC0828DCC  // lfs f4, lbl_8053BD6C@sda21(r0)
    lwz r6, 0x0(r3)
    opword  0xC0628DD0  // lfs f3, lbl_8053BD70@sda21(r0)
    lwz r0, 0xc4(r6)
    opword  0xC0028DC8  // lfs f0, lbl_8053BD68@sda21(r0)
    mullw r4, r0, r5
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r6)
    srwi r0, r0, 9
    oris r0, r0, 0x3f80
    lwz r6, 0x0(r3)
    stw r0, 0x10(r1)
    lwz r0, 0xc4(r6)
    lfs fp1, 0x10(r1)
    mullw r4, r0, r5
    lfs fp2, 0x34(r3)
    fsubs fp1, fp1, fp4
    fsubs fp1, fp1, fp3
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r6)
    srwi r0, r0, 9
    oris r0, r0, 0x3f80
    fmuls fp6, fp2, fp1
    lwz r6, 0x0(r3)
    stw r0, 0xc(r1)
    lwz r0, 0xc4(r6)
    lfs fp1, 0xc(r1)
    mullw r4, r0, r5
    lfs fp2, 0x34(r3)
    fsubs fp1, fp1, fp4
    fsubs fp1, fp1, fp3
    addis r4, r4, 0x3c6f
    subi r4, r4, 0xca1
    srwi r0, r4, 9
    fmuls fp5, fp2, fp1
    oris r0, r0, 0x3f80
    stw r4, 0xc4(r6)
    stw r0, 0x8(r1)
    lfs fp2, 0x34(r3)
    lfs fp1, 0x8(r1)
    fsubs fp1, fp1, fp4
    fsubs fp1, fp1, fp3
    fmuls fp1, fp2, fp1
    stfs fp1, 0x10(r3)
    stfs fp5, 0x14(r3)
    stfs fp6, 0x18(r3)
    psq_l fp2, 0x10(r3), 0, 0
    psq_l fp1, 0x114(r3), 0, 0
    ps_mul fp1, fp2, fp1
    psq_st fp1, 0x1c(r3), 0, 0
    lfs fp2, 0x18(r3)
    lfs fp1, 0x11c(r3)
    fmuls fp1, fp2, fp1
    stfs fp1, 0x24(r3)
    lfs fp2, 0x18(r3)
    lfs fp1, 0x10(r3)
    stfs fp1, 0x28(r3)
    stfs fp0, 0x2c(r3)
    stfs fp2, 0x30(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EAA30(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lwz r7, 0x0(r3)
    lwz r4, 0xe8(r7)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x418200EC  // beq .L_800EAB38
    lwz r6, 0x1ec(r3)
    lis r0, 0x4330
    lwz r4, 0x1f0(r3)
    slwi r5, r6, 16
    lwz r8, 0x1f4(r3)
    subi r4, r4, 0x1
    lwz r7, 0x1f8(r3)
    divw r4, r5, r4
    slwi r8, r8, 15
    subi r5, r7, 0x1
    stw r0, 0x10(r1)
    opword  0xC8628DE8  // lfd f3, lbl_8053BD88@sda21(r0)
    addi r0, r6, 0x1
    divw r5, r8, r5
    clrlwi r4, r4, 16
    stw r4, 0x14(r1)
    lfs fp1, 0x3c(r3)
    lfd fp2, 0x10(r1)
    opword  0xC0028DE0  // lfs f0, lbl_8053BD80@sda21(r0)
    stw r0, 0x1ec(r3)
    fsubs fp2, fp2, fp3
    addi r0, r5, 0x4000
    clrlwi r0, r0, 16
    lwz r5, 0x1ec(r3)
    fmadds fp0, fp2, fp1, fp0
    lwz r4, 0x1f0(r3)
    extsh r0, r0
    cmpw r5, r4
    fctiwz fp0, fp0
    stfd fp0, 0x18(r1)
    lwz r4, 0x1c(r1)
    opword  0x408200E8  // bne .L_800EABB4
    li r5, 0x0
    stw r5, 0x1ec(r3)
    lwz r5, 0x1f4(r3)
    addi r5, r5, 0x1
    stw r5, 0x1f4(r3)
    lwz r6, 0x1f4(r3)
    lwz r5, 0x1f8(r3)
    slwi r6, r6, 1
    cmpw r6, r5
    opword  0x40800024  // bge .L_800EAB18
    lwz r5, 0x1f0(r3)
    cmpwi r5, 0x1
    opword  0x4182000C  // beq .L_800EAB0C
    addi r5, r5, 0x4
    opword  0x48000008  // b .L_800EAB10
L_800EAB0C:
    addi r5, r5, 0x3
L_800EAB10:
    stw r5, 0x1f0(r3)
    opword  0x480000A0  // b .L_800EABB4
L_800EAB18:
    lwz r5, 0x1f0(r3)
    cmpwi r5, 0x4
    opword  0x4182000C  // beq .L_800EAB2C
    subi r5, r5, 0x4
    opword  0x48000008  // b .L_800EAB30
L_800EAB2C:
    li r5, 0x1
L_800EAB30:
    stw r5, 0x1f0(r3)
    opword  0x48000080  // b .L_800EABB4
L_800EAB38:
    lis r4, 0x19
    lwz r6, 0xc4(r7)
    addi r5, r4, 0x660d
    lis r0, 0x4330
    mullw r4, r6, r5
    stw r0, 0x18(r1)
    opword  0xC8228DD8  // lfd f1, lbl_8053BD78@sda21(r0)
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r7)
    srwi r0, r0, 16
    extsh r0, r0
    lwz r6, 0x0(r3)
    srawi r0, r0, 1
    extsh r0, r0
    lwz r4, 0xc4(r6)
    mullw r4, r4, r5
    addis r4, r4, 0x3c6f
    subi r5, r4, 0xca1
    srwi r4, r5, 16
    stw r5, 0xc4(r6)
    extsh r4, r4
    xoris r4, r4, 0x8000
    lfs fp2, 0x3c(r3)
    stw r4, 0x1c(r1)
    lfd fp0, 0x18(r1)
    fsubs fp0, fp0, fp1
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x10(r1)
    lwz r4, 0x14(r1)
L_800EABB4:
    lwz r7, 0x0(r3)
    lis r5, 0x19
    addi r5, r5, 0x660d
    opword  0xC0228DCC  // lfs f1, lbl_8053BD6C@sda21(r0)
    lwz r6, 0xc4(r7)
    mullw r5, r6, r5
    addis r5, r5, 0x3c6f
    subi r5, r5, 0xca1
    stw r5, 0xc4(r7)
    srwi r5, r5, 9
    oris r6, r5, 0x3f80
    lwz r5, 0x0(r3)
    stw r6, 0x8(r1)
    lwz r5, 0xe8(r5)
    lfs fp0, 0x8(r1)
    lwz r5, 0x2c(r5)
    fsubs fp2, fp0, fp1
    lwz r5, 0x0(r5)
    lwz r5, 0x8(r5)
    clrlwi. r5, r5, 31
    opword  0x4182000C  // beq .L_800EAC10
    fmuls fp0, fp2, fp2
    fnmsubs fp2, fp2, fp0, fp1
L_800EAC10:
    lfs fp1, 0x38(r3)
    lis r5, lbl_8052EBC0@ha
    opword  0xC0028DCC  // lfs f0, lbl_8053BD6C@sda21(r0)
    addi r5, r5, lbl_8052EBC0@l
    rlwinm r6, r4, 30, 18, 28
    lfs fp5, 0x34(r3)
    fsubs fp0, fp0, fp1
    addi r4, r5, 0x4
    rlwinm r0, r0, 30, 18, 28
    lfsx fp4, r4, r6
    lfsx fp3, r4, r0
    fmadds fp0, fp2, fp0, fp1
    lfsx fp1, r5, r6
    lfsx fp2, r5, r0
    fmuls fp6, fp5, fp0
    opword  0xC0028DC8  // lfs f0, lbl_8053BD68@sda21(r0)
    fmuls fp5, fp6, fp3
    fneg fp3, fp6
    fmuls fp1, fp5, fp1
    fmuls fp2, fp3, fp2
    fmuls fp3, fp5, fp4
    stfs fp1, 0x10(r3)
    stfs fp2, 0x14(r3)
    stfs fp3, 0x18(r3)
    psq_l fp2, 0x10(r3), 0, 0
    psq_l fp1, 0x114(r3), 0, 0
    ps_mul fp1, fp2, fp1
    psq_st fp1, 0x1c(r3), 0, 0
    lfs fp2, 0x18(r3)
    lfs fp1, 0x11c(r3)
    fmuls fp1, fp2, fp1
    stfs fp1, 0x24(r3)
    lfs fp2, 0x18(r3)
    lfs fp1, 0x10(r3)
    stfs fp1, 0x28(r3)
    stfs fp0, 0x2c(r3)
    stfs fp2, 0x30(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EACAC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r4, 0x19
    lis r0, 0x4330
    opword  0xC8428DD8  // lfd f2, lbl_8053BD78@sda21(r0)
    lwz r7, 0x0(r3)
    addi r5, r4, 0x660d
    stw r0, 0x10(r1)
    lwz r6, 0xc4(r7)
    opword  0xC0028DCC  // lfs f0, lbl_8053BD6C@sda21(r0)
    mullw r4, r6, r5
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r7)
    srwi r0, r0, 16
    extsh r0, r0
    lwz r6, 0x0(r3)
    xoris r0, r0, 0x8000
    stw r0, 0x14(r1)
    lwz r0, 0xc4(r6)
    lfd fp1, 0x10(r1)
    mullw r4, r0, r5
    lfs fp3, 0x3c(r3)
    fsubs fp1, fp1, fp2
    fmuls fp1, fp3, fp1
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r6)
    srwi r0, r0, 9
    oris r0, r0, 0x3f80
    fctiwz fp2, fp1
    lwz r7, 0x0(r3)
    stw r0, 0xc(r1)
    lwz r4, 0xe8(r7)
    lfs fp1, 0xc(r1)
    lwz r4, 0x2c(r4)
    stfd fp2, 0x18(r1)
    fsubs fp1, fp1, fp0
    lwz r4, 0x0(r4)
    lwz r8, 0x1c(r1)
    lwz r0, 0x8(r4)
    fmr fp2, fp1
    clrlwi. r0, r0, 31
    opword  0x41820008  // beq .L_800EAD5C
    fnmsubs fp2, fp1, fp1, fp0
L_800EAD5C:
    lis r4, 0x19
    lwz r5, 0xc4(r7)
    addi r0, r4, 0x660d
    lis r6, lbl_8052EBC0@ha
    mullw r4, r5, r0
    lfs fp1, 0x38(r3)
    opword  0xC0A28DCC  // lfs f5, lbl_8053BD6C@sda21(r0)
    addi r6, r6, lbl_8052EBC0@l
    rlwinm r8, r8, 30, 18, 28
    lfs fp3, 0x34(r3)
    addis r4, r4, 0x3c6f
    fsubs fp0, fp5, fp1
    subi r4, r4, 0xca1
    add r5, r6, r8
    srwi r0, r4, 9
    lfs fp4, 0x4(r5)
    oris r0, r0, 0x3f80
    stw r0, 0x8(r1)
    fmadds fp2, fp2, fp0, fp1
    opword  0xC0028DC8  // lfs f0, lbl_8053BD68@sda21(r0)
    lfs fp1, 0x8(r1)
    fmuls fp7, fp3, fp2
    stw r4, 0xc4(r7)
    fsubs fp6, fp1, fp5
    lfsx fp1, r6, r8
    lfs fp3, 0x34(r3)
    fmuls fp4, fp7, fp4
    fadds fp2, fp6, fp6
    fmuls fp1, fp7, fp1
    fsubs fp2, fp2, fp5
    stfs fp1, 0x10(r3)
    fmuls fp1, fp3, fp2
    stfs fp1, 0x14(r3)
    stfs fp4, 0x18(r3)
    psq_l fp2, 0x10(r3), 0, 0
    psq_l fp1, 0x114(r3), 0, 0
    ps_mul fp1, fp2, fp1
    psq_st fp1, 0x1c(r3), 0, 0
    lfs fp2, 0x18(r3)
    lfs fp1, 0x11c(r3)
    fmuls fp1, fp2, fp1
    stfs fp1, 0x24(r3)
    lfs fp2, 0x18(r3)
    lfs fp1, 0x10(r3)
    stfs fp1, 0x28(r3)
    stfs fp0, 0x2c(r3)
    stfs fp2, 0x30(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EAE20(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r5, 0x19
    lis r0, 0x4330
    lis r4, lbl_8052EBC0@ha
    lwz r8, 0x0(r3)
    addi r4, r4, lbl_8052EBC0@l
    addi r6, r5, 0x660d
    stw r0, 0x8(r1)
    lwz r7, 0xc4(r8)
    addi r9, r4, 0x4
    opword  0xC8228DD8  // lfd f1, lbl_8053BD78@sda21(r0)
    mullw r5, r7, r6
    addis r5, r5, 0x3c6f
    subi r5, r5, 0xca1
    srwi r0, r5, 16
    stw r5, 0xc4(r8)
    extsh r0, r0
    xoris r0, r0, 0x8000
    lwz r7, 0x0(r3)
    stw r0, 0xc(r1)
    lwz r0, 0xc4(r7)
    lfd fp0, 0x8(r1)
    mullw r5, r0, r6
    lfs fp2, 0x3c(r3)
    fsubs fp0, fp0, fp1
    fmuls fp0, fp2, fp0
    addis r5, r5, 0x3c6f
    subi r0, r5, 0xca1
    fctiwz fp0, fp0
    stw r0, 0xc4(r7)
    rlwinm r0, r0, 14, 18, 28
    lfs fp1, 0x34(r3)
    stfd fp0, 0x10(r1)
    lfs fp0, 0x38(r3)
    lwz r5, 0x14(r1)
    fmuls fp5, fp1, fp0
    lfsx fp1, r4, r0
    rlwinm r5, r5, 30, 18, 28
    lfsx fp4, r9, r0
    lfsx fp0, r4, r5
    lfsx fp2, r9, r5
    fmuls fp0, fp5, fp0
    fmuls fp3, fp5, fp1
    fmuls fp1, fp5, fp2
    fmuls fp0, fp0, fp4
    fmuls fp1, fp1, fp4
    stfs fp0, 0x28(r3)
    stfs fp3, 0x2c(r3)
    stfs fp1, 0x30(r3)
    lfs fp4, 0x34(r3)
    lfsx fp1, r4, r5
    lfs fp0, 0x28(r3)
    lfsx fp3, r9, r5
    fmadds fp0, fp4, fp1, fp0
    lfs fp2, 0x30(r3)
    lfs fp1, 0x2c(r3)
    fmadds fp2, fp4, fp3, fp2
    stfs fp0, 0x10(r3)
    stfs fp1, 0x14(r3)
    stfs fp2, 0x18(r3)
    psq_l fp1, 0x10(r3), 0, 0
    psq_l fp0, 0x114(r3), 0, 0
    ps_mul fp0, fp1, fp0
    psq_st fp0, 0x1c(r3), 0, 0
    lfs fp1, 0x18(r3)
    lfs fp0, 0x11c(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x24(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EAF38(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r4, 0x0(r3)
    bl fn_800EAF6C
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EAF6C(void)
{
    nofralloc
    lwz r4, 0x0(r3)
    lwz r0, 0x8(r4)
    extrwi r0, r0, 3, 21
    cmplwi r0, 0x6
    bgtlr
    lis r4, jumptable_8049C068@ha
    slwi r0, r0, 2
    addi r4, r4, jumptable_8049C068@l
    lwzx r0, r4, r0
    mtctr r0
    bctr
    lis r4, fn_800EA928@ha
    addi r0, r4, fn_800EA928@l
    stw r0, 0x4(r3)
    blr
    lis r4, fn_800EAA30@ha
    addi r0, r4, fn_800EAA30@l
    stw r0, 0x4(r3)
    blr
    lis r4, fn_800EACAC@ha
    addi r0, r4, fn_800EACAC@l
    stw r0, 0x4(r3)
    blr
    lis r4, fn_800EAE20@ha
    addi r0, r4, fn_800EAE20@l
    stw r0, 0x4(r3)
    blr
    lis r4, fn_800EA58C@ha
    addi r0, r4, fn_800EA58C@l
    stw r0, 0x4(r3)
    blr
    lis r4, fn_800EA784@ha
    addi r0, r4, fn_800EA784@l
    stw r0, 0x4(r3)
    blr
    lis r4, fn_800EA668@ha
    addi r0, r4, fn_800EA668@l
    stw r0, 0x4(r3)
    blr
}

ASM void fn_800EB008(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stw r31, 0x2c(r1)
    mr r31, r4
    stw r30, 0x28(r1)
    lwz r6, 0x0(r4)
    lwz r0, 0xf4(r6)
    rlwinm. r0, r0, 0, 26, 26
    opword  0x41820154  // beq .L_800EB180
    lwz r4, 0xe8(r6)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x41820040  // beq .L_800EB084
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 3, 21
    cmplwi r0, 0x1
    opword  0x40820018  // bne .L_800EB070
    lhz r3, 0x76(r3)
    slwi r0, r3, 2
    mullw r3, r3, r0
    addi r3, r3, 0x2
    opword  0x48000008  // b .L_800EB074
L_800EB070:
    lhz r3, 0x76(r3)
L_800EB074:
    li r0, 0x0
    mr r4, r3
    stw r0, 0x44(r31)
    opword  0x480000C4  // b .L_800EB144
L_800EB084:
    lis r4, 0x19
    lwz r5, 0xc4(r6)
    addi r4, r4, 0x660d
    lis r0, 0x4330
    mullw r4, r5, r4
    stw r0, 0x18(r1)
    opword  0xC0A28DCC  // lfs f5, lbl_8053BD6C@sda21(r0)
    opword  0xC8228DD8  // lfd f1, lbl_8053BD78@sda21(r0)
    addis r4, r4, 0x3c6f
    subi r4, r4, 0xca1
    srwi r0, r4, 9
    stw r4, 0xc4(r6)
    oris r0, r0, 0x3f80
    stw r0, 0x8(r1)
    lwz r3, 0x0(r3)
    lfs fp0, 0x8(r1)
    lwz r4, 0x0(r31)
    fsubs fp2, fp0, fp5
    lfs fp3, 0x50(r3)
    lfs fp4, 0x28(r4)
    lfs fp0, 0xf8(r4)
    fadds fp2, fp2, fp2
    fsubs fp2, fp2, fp5
    fmadds fp2, fp3, fp2, fp5
    fmuls fp3, fp4, fp2
    fadds fp2, fp0, fp3
    fctiwz fp0, fp2
    stfs fp2, 0xf8(r4)
    lwz r3, 0x0(r31)
    stfd fp0, 0x10(r1)
    lfs fp2, 0xf8(r3)
    lwz r4, 0x14(r1)
    xoris r0, r4, 0x8000
    stw r0, 0x1c(r1)
    lfd fp0, 0x18(r1)
    fsubs fp0, fp0, fp1
    fsubs fp0, fp2, fp0
    stfs fp0, 0xf8(r3)
    lwz r3, 0x0(r31)
    lwz r0, 0xf4(r3)
    rlwinm. r0, r0, 0, 27, 27
    opword  0x4182001C  // beq .L_800EB144
    opword  0xC0028DC8  // lfs f0, lbl_8053BD68@sda21(r0)
    fcmpo cr0, fp0, fp3
    opword  0x40800010  // bge .L_800EB144
    fcmpo cr0, fp3, fp5
    opword  0x40800008  // bge .L_800EB144
    li r4, 0x1
L_800EB144:
    stw r4, 0x40(r31)
    lwz r3, 0x0(r31)
    lwz r0, 0xf4(r3)
    clrlwi. r0, r0, 31
    opword  0x41820008  // beq .L_800EB15C
    li r4, 0x0
L_800EB15C:
    mr r30, r4
    opword  0x48000018  // b .L_800EB178
L_800EB164:
    lwz r3, 0x0(r31)
    bl fn_800EB5A0
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_800EB180
    subi r30, r30, 0x1
L_800EB178:
    cmpwi r30, 0x0
    opword  0x4181FFE8  // bgt .L_800EB164
L_800EB180:
    lwz r5, 0x0(r31)
    lha r3, 0x106(r5)
    addi r0, r3, 0x1
    sth r0, 0x106(r5)
    extsh r4, r0
    lbz r3, 0x56(r5)
    addi r0, r3, 0x1
    cmpw r4, r0
    opword  0x41800030  // blt .L_800EB1D0
    lwz r4, 0x0(r31)
    lbz r3, 0x56(r4)
    lha r0, 0x106(r4)
    addi r3, r3, 0x1
    subf r0, r3, r0
    sth r0, 0x106(r4)
    lwz r3, 0x0(r31)
    lwz r0, 0xf4(r3)
    ori r0, r0, 0x20
    stw r0, 0xf4(r3)
    opword  0x48000014  // b .L_800EB1E0
L_800EB1D0:
    lwz r3, 0x0(r31)
    lwz r0, 0xf4(r3)
    rlwinm r0, r0, 0, 27, 25
    stw r0, 0xf4(r3)
L_800EB1E0:
    lwz r3, 0x0(r31)
    lwz r0, 0xf4(r3)
    rlwinm r0, r0, 0, 28, 26
    stw r0, 0xf4(r3)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800EB208(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800EB238
    lis r5, lbl_80498978@ha
    extsh. r0, r4
    addi r0, r5, lbl_80498978@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800EB238
    bl dtor_80084580
L_800EB238:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EB250(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0xC0228DF0  // lfs f1, lbl_8053BD90@sda21(r0)
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r5
    stw r30, 0x8(r1)
    mr r30, r3
    lis r3, lbl_80539D44@ha
    stw r4, 0xe4(r30)
    stw r31, 0xe8(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp3, 0x18(r4)
    lfs fp2, 0x14(r4)
    lfs fp0, 0x10(r4)
    stfs fp0, 0x0(r30)
    stfs fp2, 0x4(r30)
    stfs fp3, 0x8(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp3, 0x24(r4)
    lfs fp2, 0x20(r4)
    lfs fp0, 0x1c(r4)
    stfs fp0, 0xc(r30)
    stfs fp2, 0x10(r30)
    stfs fp3, 0x14(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp3, 0x30(r4)
    lfs fp2, 0x2c(r4)
    lfs fp0, 0x28(r4)
    stfs fp0, 0x18(r30)
    stfs fp2, 0x1c(r30)
    stfs fp3, 0x20(r30)
    psq_l fp2, 0x18(r30), 0, 0
    lfs fp0, lbl_80539D44@l(r3)
    ps_mul fp2, fp2, fp2
    lfs fp5, 0x20(r30)
    fmuls fp0, fp1, fp0
    ps_madd fp5, fp5, fp5, fp2
    ps_sum0 fp5, fp5, fp2, fp2
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800EB364
    opword  0xC0028DF4  // lfs f0, lbl_8053BD94@sda21(r0)
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800EB328
    fmr fp4, fp5
    opword  0x48000028  // b .L_800EB34C
L_800EB328:
    frsqrte fp3, fp5
    opword  0xC0428DF8  // lfs f2, lbl_8053BD98@sda21(r0)
    opword  0xC0028DFC  // lfs f0, lbl_8053BD9C@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp5, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp4, fp0
L_800EB34C:
    psq_l fp1, 0x18(r30), 0, 0
    psq_l fp0, 0x20(r30), 1, 0
    ps_muls0 fp1, fp1, fp4
    ps_muls0 fp0, fp0, fp4
    psq_st fp1, 0x18(r30), 0, 0
    psq_st fp0, 0x20(r30), 1, 0
L_800EB364:
    lwz r4, 0xe8(r30)
    lis r3, 0x19
    addi r0, r3, 0x660d
    addi r3, r30, 0x68
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lha r6, 0x6c(r4)
    lha r5, 0x6a(r4)
    lha r4, 0x68(r4)
    sth r4, 0x4c(r30)
    sth r5, 0x4e(r30)
    sth r6, 0x50(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lha r4, 0x6e(r4)
    stw r4, 0x24(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lha r4, 0x72(r4)
    sth r4, 0x52(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lhz r4, 0x74(r4)
    sth r4, 0x54(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x4c(r4)
    stfs fp0, 0x28(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lbz r4, 0x78(r4)
    stb r4, 0x56(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x58(r4)
    stfs fp0, 0x2c(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x5c(r4)
    stfs fp0, 0x30(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x34(r4)
    stfs fp0, 0x34(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x38(r4)
    stfs fp0, 0x38(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x40(r4)
    stfs fp0, 0x3c(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x44(r4)
    stfs fp0, 0x40(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x3c(r4)
    stfs fp0, 0x44(r30)
    lwz r4, 0xe8(r30)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lfs fp0, 0x60(r4)
    stfs fp0, 0x48(r30)
    lwz r4, 0xe4(r30)
    lwz r5, 0x20(r4)
    lwz r4, 0xc(r5)
    mullw r4, r4, r0
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc(r5)
    stw r0, 0xc4(r30)
    bl PSMTXIdentity
    opword  0xC0228E00  // lfs f1, lbl_8053BDA0@sda21(r0)
    li r5, 0xff
    opword  0xC0028DF4  // lfs f0, lbl_8053BD94@sda21(r0)
    li r4, 0x0
    stfs fp1, 0x98(r30)
    li r3, 0x30
    li r0, 0x1
    stfs fp1, 0x9c(r30)
    stfs fp1, 0xa0(r30)
    stfs fp0, 0xac(r30)
    stfs fp0, 0xa8(r30)
    stfs fp0, 0xa4(r30)
    stfs fp1, 0xb0(r30)
    stfs fp1, 0xb4(r30)
    stb r5, 0xbf(r30)
    stb r5, 0xbe(r30)
    stb r5, 0xbd(r30)
    stb r5, 0xbc(r30)
    stb r5, 0xbb(r30)
    stb r5, 0xba(r30)
    stb r5, 0xb9(r30)
    stb r5, 0xb8(r30)
    lwz r5, 0x1c(r31)
    lwz r6, 0x0(r5)
    lbz r5, 0x26(r6)
    stb r5, 0x108(r30)
    lbz r5, 0x27(r6)
    stb r5, 0x109(r30)
    lbz r5, 0x28(r6)
    stb r5, 0x10a(r30)
    lbz r5, 0x29(r6)
    stb r5, 0x10b(r30)
    lwz r5, 0x1c(r31)
    lwz r6, 0x0(r5)
    lbz r5, 0x2a(r6)
    stb r5, 0x10c(r30)
    lbz r5, 0x2b(r6)
    stb r5, 0x10d(r30)
    lbz r5, 0x2c(r6)
    stb r5, 0x10e(r30)
    lbz r5, 0x2d(r6)
    stb r5, 0x10f(r30)
    stw r4, 0xc0(r30)
    stfs fp1, 0xfc(r30)
    stfs fp0, 0xf8(r30)
    stw r3, 0xf4(r30)
    stb r0, 0x110(r30)
    stw r4, 0x100(r30)
    sth r4, 0x104(r30)
    sth r4, 0x106(r30)
    stb r4, 0x111(r30)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EB5A0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r4, 0xe0(r3)
    lwz r0, 0x8(r4)
    cmplwi r0, 0x0
    opword  0x418200DC  // beq .L_800EB6A0
    cmplwi r0, 0x1
    li r31, 0x0
    opword  0x40820024  // bne .L_800EB5F4
    lwz r31, 0x0(r4)
    li r0, 0x0
    stw r0, 0x4(r4)
    stw r0, 0x0(r4)
    lwz r3, 0x8(r4)
    subi r0, r3, 0x1
    stw r0, 0x8(r4)
    opword  0x48000030  // b .L_800EB620
L_800EB5F4:
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_800EB620
    lwz r31, 0x0(r4)
    li r0, 0x0
    lwz r3, 0x4(r31)
    stw r0, 0x0(r3)
    lwz r0, 0x4(r31)
    stw r0, 0x0(r4)
    lwz r3, 0x8(r4)
    subi r0, r3, 0x1
    stw r0, 0x8(r4)
L_800EB620:
    lwz r0, 0xc8(r30)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_800EB64C
    li r0, 0x0
    stw r0, 0x0(r31)
    lwz r0, 0xc8(r30)
    stw r0, 0x4(r31)
    lwz r3, 0xc8(r30)
    stw r31, 0x0(r3)
    stw r31, 0xc8(r30)
    opword  0x48000018  // b .L_800EB660
L_800EB64C:
    stw r31, 0xcc(r30)
    li r0, 0x0
    stw r31, 0xc8(r30)
    stw r0, 0x0(r31)
    stw r0, 0x4(r31)
L_800EB660:
    lwz r3, 0xd0(r30)
    addi r0, r3, 0x1
    stw r0, 0xd0(r30)
    lwz r3, 0xe8(r30)
    lwz r5, 0xe4(r30)
    lwz r4, 0x2c(r3)
    lwz r3, 0x20(r5)
    lwz r12, 0x4(r4)
    mtctr r12
    bctrl
    lwz r4, 0xe4(r30)
    addi r3, r31, 0x8
    lwz r4, 0x20(r4)
    bl fn_800EF368
    addi r3, r31, 0x8
    opword  0x48000008  // b .L_800EB6A4
L_800EB6A0:
    li r3, 0x0
L_800EB6A4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EB6BC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r7, r3
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    lwz r5, 0xe0(r3)
    lwz r0, 0x8(r5)
    cmplwi r0, 0x0
    opword  0x418200C4  // beq .L_800EB7A0
    cmplwi r0, 0x1
    li r31, 0x0
    opword  0x40820024  // bne .L_800EB70C
    lwz r31, 0x0(r5)
    li r0, 0x0
    stw r0, 0x4(r5)
    stw r0, 0x0(r5)
    lwz r3, 0x8(r5)
    subi r0, r3, 0x1
    stw r0, 0x8(r5)
    opword  0x48000030  // b .L_800EB738
L_800EB70C:
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_800EB738
    lwz r31, 0x0(r5)
    li r0, 0x0
    lwz r3, 0x4(r31)
    stw r0, 0x0(r3)
    lwz r0, 0x4(r31)
    stw r0, 0x0(r5)
    lwz r3, 0x8(r5)
    subi r0, r3, 0x1
    stw r0, 0x8(r5)
L_800EB738:
    lwz r0, 0xd4(r7)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_800EB764
    li r0, 0x0
    stw r0, 0x0(r31)
    lwz r0, 0xd4(r7)
    stw r0, 0x4(r31)
    lwz r3, 0xd4(r7)
    stw r31, 0x0(r3)
    stw r31, 0xd4(r7)
    opword  0x48000018  // b .L_800EB778
L_800EB764:
    stw r31, 0xd8(r7)
    li r0, 0x0
    stw r31, 0xd4(r7)
    stw r0, 0x0(r31)
    stw r0, 0x4(r31)
L_800EB778:
    lwz r6, 0xdc(r7)
    mr r5, r4
    addi r3, r31, 0x8
    addi r0, r6, 0x1
    stw r0, 0xdc(r7)
    lwz r4, 0xe4(r7)
    lwz r4, 0x20(r4)
    bl fn_800EFC0C
    addi r3, r31, 0x8
    opword  0x48000008  // b .L_800EB7A4
L_800EB7A0:
    li r3, 0x0
L_800EB7A4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EB7B8(void)
{
    nofralloc
    opword  0x480000AC  // b .L_800EB864
L_800EB7BC:
    cmplwi r0, 0x1
    li r6, 0x0
    opword  0x40820024  // bne .L_800EB7E8
    lwz r6, 0xcc(r3)
    li r0, 0x0
    stw r0, 0xcc(r3)
    stw r0, 0xc8(r3)
    lwz r4, 0xd0(r3)
    subi r0, r4, 0x1
    stw r0, 0xd0(r3)
    opword  0x48000030  // b .L_800EB814
L_800EB7E8:
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_800EB814
    lwz r6, 0xcc(r3)
    li r0, 0x0
    lwz r4, 0x0(r6)
    stw r0, 0x4(r4)
    lwz r0, 0x0(r6)
    stw r0, 0xcc(r3)
    lwz r4, 0xd0(r3)
    subi r0, r4, 0x1
    stw r0, 0xd0(r3)
L_800EB814:
    lwz r5, 0xe0(r3)
    lwz r0, 0x0(r5)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_800EB844
    li r0, 0x0
    stw r0, 0x0(r6)
    lwz r0, 0x0(r5)
    stw r0, 0x4(r6)
    lwz r4, 0x0(r5)
    stw r6, 0x0(r4)
    stw r6, 0x0(r5)
    opword  0x48000018  // b .L_800EB858
L_800EB844:
    stw r6, 0x4(r5)
    li r0, 0x0
    stw r6, 0x0(r5)
    stw r0, 0x0(r6)
    stw r0, 0x4(r6)
L_800EB858:
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
L_800EB864:
    lwz r0, 0xd0(r3)
    cmplwi r0, 0x0
    opword  0x4082FF50  // bne .L_800EB7BC
    opword  0x480000AC  // b .L_800EB91C
L_800EB874:
    cmplwi r0, 0x1
    li r6, 0x0
    opword  0x40820024  // bne .L_800EB8A0
    lwz r6, 0xd8(r3)
    li r0, 0x0
    stw r0, 0xd8(r3)
    stw r0, 0xd4(r3)
    lwz r4, 0xdc(r3)
    subi r0, r4, 0x1
    stw r0, 0xdc(r3)
    opword  0x48000030  // b .L_800EB8CC
L_800EB8A0:
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_800EB8CC
    lwz r6, 0xd8(r3)
    li r0, 0x0
    lwz r4, 0x0(r6)
    stw r0, 0x4(r4)
    lwz r0, 0x0(r6)
    stw r0, 0xd8(r3)
    lwz r4, 0xdc(r3)
    subi r0, r4, 0x1
    stw r0, 0xdc(r3)
L_800EB8CC:
    lwz r5, 0xe0(r3)
    lwz r0, 0x0(r5)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_800EB8FC
    li r0, 0x0
    stw r0, 0x0(r6)
    lwz r0, 0x0(r5)
    stw r0, 0x4(r6)
    lwz r4, 0x0(r5)
    stw r6, 0x0(r4)
    stw r6, 0x0(r5)
    opword  0x48000018  // b .L_800EB910
L_800EB8FC:
    stw r6, 0x4(r5)
    li r0, 0x0
    stw r6, 0x0(r5)
    stw r0, 0x0(r6)
    stw r0, 0x4(r6)
L_800EB910:
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
L_800EB91C:
    lwz r0, 0xdc(r3)
    cmplwi r0, 0x0
    opword  0x4082FF50  // bne .L_800EB874
    blr
}

ASM void fn_800EB92C(void)
{
    nofralloc
    lwz r4, 0xe8(r3)
    lha r5, 0x104(r3)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lha r0, 0x70(r4)
    cmpw r5, r0
    opword  0x4180000C  // blt .L_800EB950
    li r3, 0x1
    blr
L_800EB950:
    lwz r0, 0xf4(r3)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x4082000C  // bne .L_800EB964
    addi r0, r5, 0x1
    sth r0, 0x104(r3)
L_800EB964:
    li r3, 0x0
    blr
}

ASM void fn_800EB96C(void)
{
    nofralloc
    lwz r0, 0xf4(r3)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x4182000C  // beq .L_800EB980
    li r3, 0x1
    blr
L_800EB980:
    lwz r4, 0x24(r3)
    cmpwi r4, 0x0
    opword  0x4082000C  // bne .L_800EB994
    li r3, 0x0
    blr
L_800EB994:
    opword  0x40800028  // bge .L_800EB9BC
    lwz r0, 0xf4(r3)
    ori r0, r0, 0x8
    stw r0, 0xf4(r3)
    lwz r4, 0xd0(r3)
    lwz r0, 0xdc(r3)
    add r0, r4, r0
    cntlzw r0, r0
    srwi r3, r0, 5
    blr
L_800EB9BC:
    lwz r0, 0x100(r3)
    cmplw r0, r4
    opword  0x4180003C  // blt .L_800EBA00
    lwz r0, 0xf4(r3)
    ori r0, r0, 0x8
    stw r0, 0xf4(r3)
    lwz r0, 0xf4(r3)
    rlwinm. r0, r0, 0, 25, 25
    opword  0x4182000C  // beq .L_800EB9E8
    li r3, 0x0
    blr
L_800EB9E8:
    lwz r4, 0xd0(r3)
    lwz r0, 0xdc(r3)
    add r0, r4, r0
    cntlzw r0, r0
    srwi r3, r0, 5
    blr
L_800EBA00:
    li r3, 0x0
    blr
}

ASM void fn_800EBA08(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lfs fp1, 0x98(r3)
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    mr r31, r4
    stw r30, 0x38(r1)
    mr r30, r3
    lfs fp2, 0x9c(r30)
    addi r3, r1, 0x8
    lfs fp3, 0xa0(r30)
    bl PSMTXScale
    addi r4, r1, 0x8
    addi r3, r30, 0x68
    mr r5, r4
    bl PSMTXConcat
    lfs fp2, 0xa4(r30)
    mr r5, r31
    lfs fp1, 0xa8(r30)
    addi r3, r1, 0x8
    lfs fp0, 0xac(r30)
    addi r4, r30, 0xc
    stfs fp2, 0x14(r1)
    stfs fp1, 0x24(r1)
    stfs fp0, 0x34(r1)
    bl PSMTXMultVec
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800EBA88(void)
{
    nofralloc
    lwz r3, 0xe4(r3)
    lwz r3, 0x20(r3)
    lwz r3, 0x40(r3)
    blr
}

ASM void fn_800EBA98(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r30, r3
    mr r26, r4
    mr r27, r5
    mr r31, r6
    mr r29, r7
    mr r28, r8
    addi r3, r30, 0x4
    bl fn_80086F44
    li r0, 0x0
    mr r4, r31
    stw r0, 0x10(r30)
    li r5, 0x0
    stw r0, 0x14(r30)
    stw r0, 0x18(r30)
    stw r27, 0x24(r30)
    stw r26, 0x28(r30)
    stb r29, 0x2c(r30)
    stb r28, 0x2d(r30)
    lwz r29, 0x24(r30)
    mulli r3, r29, 0x114
    addi r3, r3, 0x10
    bl fn_80084514
    lis r4, fn_800EBD70@ha
    lis r5, fn_800EBD10@ha
    addi r4, r4, fn_800EBD70@l
    mr r7, r29
    addi r5, r5, fn_800EBD10@l
    li r6, 0x114
    bl fn_800671B0
    li r28, 0x0
    mr r29, r3
    opword  0x48000018  // b .L_800EBB3C
L_800EBB28:
    addi r3, r30, 0x4
    addi r4, r29, 0x58
    bl fn_80087010
    addi r29, r29, 0x114
    addi r28, r28, 0x1
L_800EBB3C:
    lwz r0, 0x24(r30)
    cmplw r28, r0
    opword  0x4180FFE4  // blt .L_800EBB28
    lwz r29, 0x28(r30)
    mr r4, r31
    li r5, 0x0
    mulli r3, r29, 0xa0
    addi r3, r3, 0x10
    bl fn_80084514
    lis r4, fn_800EBD00@ha
    lis r5, fn_800EBCC4@ha
    addi r4, r4, fn_800EBD00@l
    mr r7, r29
    addi r5, r5, fn_800EBCC4@l
    li r6, 0xa0
    bl fn_800671B0
    li r6, 0x0
    li r5, 0x0
    opword  0x4800004C  // b .L_800EBBD0
L_800EBB88:
    lwz r0, 0x14(r30)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800EBBAC
    stw r0, 0x0(r3)
    stw r5, 0x4(r3)
    lwz r4, 0x14(r30)
    stw r3, 0x4(r4)
    stw r3, 0x14(r30)
    opword  0x48000014  // b .L_800EBBBC
L_800EBBAC:
    stw r3, 0x10(r30)
    stw r3, 0x14(r30)
    stw r5, 0x0(r3)
    stw r5, 0x4(r3)
L_800EBBBC:
    lwz r4, 0x18(r30)
    addi r3, r3, 0xa0
    addi r6, r6, 0x1
    addi r0, r4, 0x1
    stw r0, 0x18(r30)
L_800EBBD0:
    lwz r0, 0x28(r30)
    cmplw r6, r0
    opword  0x4180FFB0  // blt .L_800EBB88
    lbz r29, 0x2c(r30)
    mr r4, r31
    li r5, 0x0
    mulli r3, r29, 0xc
    addi r3, r3, 0x10
    bl fn_80084514
    lis r4, fn_800EBC94@ha
    lis r5, fn_800EBDC8@ha
    addi r4, r4, fn_800EBC94@l
    mr r7, r29
    addi r5, r5, fn_800EBDC8@l
    li r6, 0xc
    bl fn_800671B0
    stw r3, 0x0(r30)
    mr r4, r31
    li r5, 0x0
    lbz r0, 0x2d(r30)
    slwi r3, r0, 2
    bl fn_80084514
    li r5, 0x0
    stw r3, 0x1c(r30)
    mr r4, r5
    li r6, 0x0
    opword  0x48000014  // b .L_800EBC4C
L_800EBC3C:
    lwz r3, 0x1c(r30)
    addi r6, r6, 0x1
    stwx r4, r3, r5
    addi r5, r5, 0x4
L_800EBC4C:
    lbz r0, 0x2d(r30)
    cmpw r6, r0
    opword  0x4180FFE8  // blt .L_800EBC3C
    mr r4, r31
    li r3, 0x218
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_800EBC78
    li r0, 0x0
    stw r0, 0xc(r3)
L_800EBC78:
    stw r3, 0x20(r30)
    mr r3, r30
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EBC94(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_80086F44
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EBCC4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820010  // beq .L_800EBCE8
    extsh. r0, r4
    opword  0x40810008  // ble .L_800EBCE8
    bl dtor_80084580
L_800EBCE8:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EBD00(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    blr
}

ASM void fn_800EBD10(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_800EBD54
    addic. r0, r30, 0x58
    opword  0x41820010  // beq .L_800EBD44
    addi r3, r30, 0x58
    li r4, 0x0
    bl fn_80086E44
L_800EBD44:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800EBD54
    mr r3, r30
    bl dtor_80084580
L_800EBD54:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EBD70(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    mr r4, r31
    addi r3, r31, 0x58
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r31
    stw r0, 0xc4(r31)
    stw r0, 0xc8(r31)
    stw r0, 0xcc(r31)
    stw r0, 0xd0(r31)
    stw r0, 0xd4(r31)
    stw r0, 0xd8(r31)
    stw r0, 0xdc(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EBDC8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_800EBE00
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800EBE00
    mr r3, r30
    bl dtor_80084580
L_800EBE00:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EBE1C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    clrlslwi r0, r7, 24, 2
    stmw r24, 0x10(r1)
    mr r24, r3
    mr r25, r4
    mr r27, r7
    mr r26, r6
    mr r28, r8
    mr r29, r9
    mr r4, r5
    lwz r3, 0x1c(r3)
    lwzx r3, r3, r0
    bl fn_800F37A8
    mr. r30, r3
    opword  0x41820084  // beq .L_800EBEE0
    lwz r0, 0xc(r24)
    cmplwi r0, 0x0
    opword  0x41820078  // beq .L_800EBEE0
    lwz r31, 0x4(r24)
    addi r3, r24, 0x4
    mr r4, r31
    bl fn_80087298
    clrlwi r0, r26, 24
    lwz r3, 0x0(r24)
    mulli r0, r0, 0xc
    mr r4, r31
    add r3, r3, r0
    bl fn_80086F58
    lwz r31, 0x0(r31)
    mr r4, r24
    mr r5, r30
    mr r3, r31
    bl fn_800EB250
    addi r0, r24, 0x10
    lfs fp2, 0x0(r25)
    stw r0, 0xe0(r31)
    mr r3, r31
    lfs fp1, 0x4(r25)
    stw r28, 0xec(r31)
    lfs fp0, 0x8(r25)
    stw r29, 0xf0(r31)
    stb r26, 0x112(r31)
    stb r27, 0x113(r31)
    stfs fp2, 0xa4(r31)
    stfs fp1, 0xa8(r31)
    stfs fp0, 0xac(r31)
    opword  0x48000008  // b .L_800EBEE4
L_800EBEE0:
    li r3, 0x0
L_800EBEE4:
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800EBEF8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    clrlwi r0, r4, 24
    mulli r0, r0, 0xc
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r3, 0x0(r3)
    lwzx r3, r3, r0
    opword  0x48000040  // b .L_800EBF64
L_800EBF28:
    lwz r30, 0x0(r3)
    lwz r31, 0xc(r3)
    lwz r3, 0xe8(r30)
    mr r5, r30
    lwz r4, 0x20(r29)
    bl fn_800F1E2C
    clrlwi. r0, r3, 24
    opword  0x4182001C  // beq .L_800EBF60
    lwz r0, 0xf4(r30)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x40820010  // bne .L_800EBF60
    mr r3, r29
    mr r4, r30
    bl fn_800EC240
L_800EBF60:
    mr r3, r31
L_800EBF64:
    cmplwi r3, 0x0
    opword  0x4082FFC0  // bne .L_800EBF28
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EBF88(void)
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
    lwz r4, 0x20(r3)
    mr r3, r30
    addi r4, r4, 0x184
    bl PSMTXCopy
    lwz r4, 0x20(r29)
    addi r3, r30, 0x30
    addi r4, r4, 0x1b4
    bl PSMTXCopy
    mr r3, r29
    bl fn_800EC384
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EAF4
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EB5C
    li r3, 0x0
    li r4, 0x1
    li r5, 0x1
    bl fn_8005C424
    li r3, 0x1
    li r4, 0x1
    li r5, 0x1
    bl fn_8005C424
    li r3, 0x2
    li r4, 0x1
    li r5, 0x1
    bl fn_8005C424
    li r3, 0x0
    bl fn_8005C46C
    li r3, 0x0
    bl fn_8005C4B0
    bl fn_8005AD7C
    li r3, 0x9
    li r4, 0x2
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x2
    bl fn_8005A464
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    li r6, 0x1
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xd
    li r5, 0x1
    li r6, 0x1
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x1
    li r4, 0x9
    li r5, 0x1
    li r6, 0x4
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x1
    li r4, 0xd
    li r5, 0x1
    li r6, 0x4
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    bl fn_8005FE94
    li r3, 0x4
    li r4, 0x0
    li r5, 0x0
    li r6, 0x1
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    li r3, 0x5
    li r4, 0x0
    li r5, 0x0
    li r6, 0x1
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    li r3, 0x0
    bl fn_8005D3C8
    clrlwi r0, r31, 24
    lwz r3, 0x0(r29)
    mulli r0, r0, 0xc
    lwzx r31, r3, r0
    opword  0x4800003C  // b .L_800EC164
L_800EC12C:
    lwz r5, 0x0(r31)
    lwz r0, 0xf4(r5)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x40820028  // bne .L_800EC160
    lbz r0, 0x113(r5)
    lwz r4, 0x1c(r29)
    slwi r0, r0, 2
    lwz r3, 0x20(r29)
    lwzx r0, r4, r0
    stw r0, 0x8(r3)
    lwz r3, 0xe8(r5)
    lwz r4, 0x20(r29)
    bl fn_800F2388
L_800EC160:
    lwz r31, 0xc(r31)
L_800EC164:
    cmplwi r31, 0x0
    opword  0x4082FFC4  // bne .L_800EC12C
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC188(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    li r31, 0x0
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x48000014  // b .L_800EC1B8
L_800EC1A8:
    mr r3, r30
    mr r4, r31
    bl fn_800EC1E0
    addi r31, r31, 0x1
L_800EC1B8:
    lbz r0, 0x2c(r30)
    clrlwi r3, r31, 24
    cmplw r3, r0
    opword  0x4180FFE4  // blt .L_800EC1A8
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EC1E0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi r0, r4, 24
    stw r31, 0xc(r1)
    mulli r31, r0, 0xc
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x48000014  // b .L_800EC214
L_800EC204:
    lwz r4, 0x4(r3)
    mr r3, r30
    lwz r4, 0x0(r4)
    bl fn_800EC240
L_800EC214:
    lwz r0, 0x0(r30)
    add r3, r31, r0
    lwz r0, 0x8(r3)
    cmplwi r0, 0x0
    opword  0x4082FFE0  // bne .L_800EC204
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EC240(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    mr r3, r31
    bl fn_800EB7B8
    lwz r0, 0xf4(r31)
    addi r4, r31, 0x58
    ori r0, r0, 0x300
    stw r0, 0xf4(r31)
    lbz r0, 0x112(r31)
    lwz r3, 0x0(r30)
    mulli r0, r0, 0xc
    add r3, r3, r0
    bl fn_80087298
    addi r3, r30, 0x4
    addi r4, r31, 0x58
    bl fn_80087010
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EC2AC(void)
{
    nofralloc
    lwz r3, 0x1c(r3)
    clrlslwi r0, r5, 24, 2
    stwx r4, r3, r0
    blr
}

ASM void fn_800EC2BC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r27, r4
    mr r26, r3
    clrlwi r31, r4, 24
    li r28, 0x0
    opword  0x48000074  // b .L_800EC350
L_800EC2E0:
    clrlwi r0, r28, 24
    lwz r3, 0x0(r26)
    mulli r0, r0, 0xc
    lwzx r3, r3, r0
    opword  0x48000054  // b .L_800EC344
L_800EC2F4:
    lwz r29, 0x0(r3)
    lwz r30, 0xc(r3)
    lbz r0, 0x113(r29)
    cmplw r31, r0
    opword  0x4082003C  // bne .L_800EC340
    mr r3, r29
    bl fn_800EB7B8
    lwz r0, 0xf4(r29)
    addi r4, r29, 0x58
    ori r0, r0, 0x300
    stw r0, 0xf4(r29)
    lbz r0, 0x112(r29)
    lwz r3, 0x0(r26)
    mulli r0, r0, 0xc
    add r3, r3, r0
    bl fn_80087298
    addi r3, r26, 0x4
    addi r4, r29, 0x58
    bl fn_80087010
L_800EC340:
    mr r3, r30
L_800EC344:
    cmplwi r3, 0x0
    opword  0x4082FFAC  // bne .L_800EC2F4
    addi r28, r28, 0x1
L_800EC350:
    lbz r0, 0x2c(r26)
    clrlwi r3, r28, 24
    cmplw r3, r0
    opword  0x4180FF84  // blt .L_800EC2E0
    lwz r3, 0x1c(r26)
    clrlslwi r0, r27, 24, 2
    li r4, 0x0
    stwx r4, r3, r0
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC384(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r4, lbl_80539D44@ha
    opword  0xC0428E08  // lfs f2, lbl_8053BDA8@sda21(r0)
    lwz r5, 0x20(r3)
    stfs fp2, 0x8(r1)
    lfs fp0, 0x198(r5)
    lfs fp3, 0x1a8(r5)
    stfs fp0, 0xc(r1)
    opword  0xC0228E0C  // lfs f1, lbl_8053BDAC@sda21(r0)
    psq_l fp6, 0x8(r1), 0, 0
    lfs fp0, lbl_80539D44@l(r4)
    ps_mul fp6, fp6, fp6
    stfs fp3, 0x10(r1)
    fmuls fp0, fp1, fp0
    ps_madd fp5, fp3, fp3, fp6
    ps_sum0 fp5, fp5, fp6, fp6
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x41820054  // beq .L_800EC420
    fcmpo cr0, fp5, fp2
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800EC3E4
    fmr fp4, fp5
    opword  0x48000028  // b .L_800EC408
L_800EC3E4:
    frsqrte fp3, fp5
    opword  0xC0428E10  // lfs f2, lbl_8053BDB0@sda21(r0)
    opword  0xC0028E14  // lfs f0, lbl_8053BDB4@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp5, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp4, fp0
L_800EC408:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp4
    ps_muls0 fp0, fp0, fp4
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800EC420:
    opword  0xC0028E18  // lfs f0, lbl_8053BDB8@sda21(r0)
    lwz r4, 0x20(r3)
    lfs fp1, 0x10(r1)
    stfs fp0, 0x154(r4)
    opword  0xC0828E08  // lfs f4, lbl_8053BDA8@sda21(r0)
    fneg fp0, fp1
    lwz r4, 0x20(r3)
    lfs fp2, 0xc(r1)
    stfs fp4, 0x158(r4)
    lwz r4, 0x20(r3)
    stfs fp4, 0x15c(r4)
    lwz r4, 0x20(r3)
    lfs fp3, 0x190(r4)
    stfs fp3, 0x160(r4)
    lwz r4, 0x20(r3)
    stfs fp4, 0x164(r4)
    lwz r4, 0x20(r3)
    stfs fp2, 0x168(r4)
    lwz r4, 0x20(r3)
    stfs fp0, 0x16c(r4)
    lwz r4, 0x20(r3)
    lfs fp0, 0x1a0(r4)
    stfs fp0, 0x170(r4)
    lwz r4, 0x20(r3)
    stfs fp4, 0x174(r4)
    lwz r4, 0x20(r3)
    stfs fp1, 0x178(r4)
    lwz r4, 0x20(r3)
    stfs fp2, 0x17c(r4)
    lwz r3, 0x20(r3)
    lfs fp0, 0x1b0(r3)
    stfs fp0, 0x180(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC4A8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    li r3, 0x1
    lwz r4, 0x4(r30)
    lwz r31, 0x28(r4)
    lwz r4, 0x0(r31)
    lwz r0, 0x8(r4)
    clrlwi. r0, r0, 31
    opword  0x41820058  // beq .L_800EC530
    li r3, 0x1
    li r4, 0x1
    li r5, 0x4
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    lwz r3, 0x0(r31)
    li r4, 0x2
    lwz r5, 0x4(r30)
    lbz r0, 0x25(r3)
    lwz r3, 0x38(r5)
    slwi r0, r0, 1
    lwz r5, 0x8(r30)
    lhzx r0, r3, r0
    lwz r3, 0x8(r5)
    slwi r0, r0, 2
    lwzx r3, r3, r0
    addi r3, r3, 0x4
    bl fn_80092984
    li r3, 0x2
L_800EC530:
    lwz r4, 0x0(r31)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x41820050  // beq .L_800EC58C
    li r4, 0x1
    li r5, 0x4
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    lwz r3, 0x0(r31)
    li r4, 0x3
    lwz r5, 0x4(r30)
    lbz r0, 0x26(r3)
    lwz r3, 0x38(r5)
    slwi r0, r0, 1
    lwz r5, 0x8(r30)
    lhzx r0, r3, r0
    lwz r3, 0x8(r5)
    slwi r0, r0, 2
    lwzx r3, r3, r0
    addi r3, r3, 0x4
    bl fn_80092984
L_800EC58C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EC5A4(void)
{
    nofralloc
    stw r4, 0x0(r3)
    blr
}

ASM void fn_800EC5AC(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lfs fp3, 0x1fc(r3)
    lwz r5, 0x20(r5)
    lwz r3, 0x0(r5)
    lfs fp0, 0xc(r3)
    fcmpo cr0, fp3, fp0
    opword  0x40800020  // bge .L_800EC5E4
    lfs fp1, 0xc(r5)
    lfs fp0, 0x14(r3)
    lfs fp2, 0x68(r4)
    fmadds fp0, fp3, fp1, fp0
    fmuls fp0, fp2, fp0
    stfs fp0, 0x60(r4)
    blr
L_800EC5E4:
    lfs fp0, 0x10(r3)
    fcmpo cr0, fp3, fp0
    opword  0x40810024  // ble .L_800EC610
    fsubs fp1, fp3, fp0
    lfs fp2, 0x14(r5)
    opword  0xC0028E20  // lfs f0, lbl_8053BDC0@sda21(r0)
    lfs fp3, 0x68(r4)
    fmadds fp0, fp2, fp1, fp0
    fmuls fp0, fp3, fp0
    stfs fp0, 0x60(r4)
    blr
L_800EC610:
    lfs fp0, 0x68(r4)
    stfs fp0, 0x60(r4)
    blr
}

ASM void fn_800EC61C(void)
{
    nofralloc
    lwz r5, 0x4(r3)
    lfs fp3, 0x1fc(r3)
    lwz r5, 0x20(r5)
    lwz r3, 0x0(r5)
    lfs fp0, 0xc(r3)
    fcmpo cr0, fp3, fp0
    opword  0x40800020  // bge .L_800EC654
    lfs fp1, 0x10(r5)
    lfs fp0, 0x1c(r3)
    lfs fp2, 0x68(r4)
    fmadds fp0, fp3, fp1, fp0
    fmuls fp0, fp2, fp0
    stfs fp0, 0x64(r4)
    blr
L_800EC654:
    lfs fp0, 0x10(r3)
    fcmpo cr0, fp3, fp0
    opword  0x40810024  // ble .L_800EC680
    fsubs fp1, fp3, fp0
    lfs fp2, 0x18(r5)
    opword  0xC0028E20  // lfs f0, lbl_8053BDC0@sda21(r0)
    lfs fp3, 0x68(r4)
    fmadds fp0, fp2, fp1, fp0
    fmuls fp0, fp3, fp0
    stfs fp0, 0x64(r4)
    blr
L_800EC680:
    lfs fp0, 0x68(r4)
    stfs fp0, 0x64(r4)
    blr
}

ASM void fn_800EC68C(void)
{
    nofralloc
    lfs fp0, 0x60(r4)
    stfs fp0, 0x64(r4)
    blr
}

ASM void fn_800EC698(void)
{
    nofralloc
    lfs fp0, 0x84(r4)
    stfs fp0, 0x1fc(r3)
    blr
}

ASM void fn_800EC6A4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r0, 0x4330
    opword  0xC8428E28  // lfd f2, lbl_8053BDC8@sda21(r0)
    lwz r6, 0x4(r3)
    lha r5, 0x80(r4)
    lwz r4, 0x20(r6)
    stw r0, 0x8(r1)
    lwz r4, 0x0(r4)
    stw r0, 0x10(r1)
    lha r6, 0x28(r4)
    divw r4, r5, r6
    xoris r0, r6, 0x8000
    stw r0, 0x14(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    mullw r0, r4, r6
    subf r0, r0, r5
    xoris r0, r0, 0x8000
    stw r0, 0xc(r1)
    lfd fp1, 0x8(r1)
    fsubs fp1, fp1, fp2
    fdivs fp0, fp1, fp0
    stfs fp0, 0x1fc(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC708(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r0, 0x4330
    opword  0xC8428E28  // lfd f2, lbl_8053BDC8@sda21(r0)
    lwz r6, 0x4(r3)
    lha r5, 0x80(r4)
    lwz r4, 0x20(r6)
    stw r0, 0x8(r1)
    lwz r4, 0x0(r4)
    stw r0, 0x10(r1)
    lha r6, 0x2a(r4)
    divw r4, r5, r6
    xoris r0, r6, 0x8000
    stw r0, 0x14(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    mullw r0, r4, r6
    subf r0, r0, r5
    xoris r0, r0, 0x8000
    stw r0, 0xc(r1)
    lfd fp1, 0x8(r1)
    fsubs fp1, fp1, fp2
    fdivs fp0, fp1, fp0
    stfs fp0, 0x1fc(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC76C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r5, 0x4330
    opword  0xC8A28E28  // lfd f5, lbl_8053BDC8@sda21(r0)
    lwz r6, 0x4(r3)
    lha r7, 0x80(r4)
    lwz r4, 0x20(r6)
    stw r5, 0x8(r1)
    lwz r4, 0x0(r4)
    stw r5, 0x10(r1)
    lha r4, 0x28(r4)
    stw r5, 0x18(r1)
    divw r6, r7, r4
    xoris r0, r4, 0x8000
    stw r0, 0x14(r1)
    opword  0xC0228E30  // lfs f1, lbl_8053BDD0@sda21(r0)
    lfd fp0, 0x10(r1)
    fsubs fp3, fp0, fp5
    mullw r4, r6, r4
    clrlwi r0, r6, 31
    opword  0xC0028E20  // lfs f0, lbl_8053BDC0@sda21(r0)
    xoris r0, r0, 0x8000
    stw r0, 0x1c(r1)
    subf r0, r4, r7
    xoris r0, r0, 0x8000
    lfd fp2, 0x18(r1)
    stw r0, 0xc(r1)
    fsubs fp2, fp2, fp5
    lfd fp4, 0x8(r1)
    fsubs fp4, fp4, fp5
    fdivs fp3, fp4, fp3
    fnmsubs fp0, fp1, fp3, fp0
    fmadds fp0, fp2, fp0, fp3
    stfs fp0, 0x1fc(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC7F8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r5, 0x4330
    opword  0xC8A28E28  // lfd f5, lbl_8053BDC8@sda21(r0)
    lwz r6, 0x4(r3)
    lha r7, 0x80(r4)
    lwz r4, 0x20(r6)
    stw r5, 0x8(r1)
    lwz r4, 0x0(r4)
    stw r5, 0x10(r1)
    lha r4, 0x2a(r4)
    stw r5, 0x18(r1)
    divw r6, r7, r4
    xoris r0, r4, 0x8000
    stw r0, 0x14(r1)
    opword  0xC0228E30  // lfs f1, lbl_8053BDD0@sda21(r0)
    lfd fp0, 0x10(r1)
    fsubs fp3, fp0, fp5
    mullw r4, r6, r4
    clrlwi r0, r6, 31
    opword  0xC0028E20  // lfs f0, lbl_8053BDC0@sda21(r0)
    xoris r0, r0, 0x8000
    stw r0, 0x1c(r1)
    subf r0, r4, r7
    xoris r0, r0, 0x8000
    lfd fp2, 0x18(r1)
    stw r0, 0xc(r1)
    fsubs fp2, fp2, fp5
    lfd fp4, 0x8(r1)
    fsubs fp4, fp4, fp5
    fdivs fp3, fp4, fp3
    fnmsubs fp0, fp1, fp3, fp0
    fmadds fp0, fp2, fp0, fp3
    stfs fp0, 0x1fc(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC884(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    lwz r3, 0x4(r3)
    lfs fp3, 0x84(r4)
    lwz r5, 0x20(r3)
    lwz r3, 0x0(r5)
    lfs fp0, 0x2c(r3)
    fcmpo cr0, fp3, fp0
    opword  0x4080001C  // bge .L_800EC8BC
    lfs fp1, 0x4(r5)
    lfs fp0, 0x34(r3)
    opword  0xC0428E34  // lfs f2, lbl_8053BDD4@sda21(r0)
    fmadds fp0, fp3, fp1, fp0
    fmuls fp4, fp2, fp0
    opword  0x48000038  // b .L_800EC8F0
L_800EC8BC:
    lfs fp0, 0x30(r3)
    fcmpo cr0, fp3, fp0
    opword  0x40810020  // ble .L_800EC8E4
    fsubs fp2, fp3, fp0
    lfs fp1, 0x8(r5)
    lfs fp0, 0x38(r3)
    opword  0xC0628E34  // lfs f3, lbl_8053BDD4@sda21(r0)
    fmadds fp0, fp2, fp1, fp0
    fmuls fp4, fp3, fp0
    opword  0x48000010  // b .L_800EC8F0
L_800EC8E4:
    opword  0xC0228E34  // lfs f1, lbl_8053BDD4@sda21(r0)
    lfs fp0, 0x38(r3)
    fmuls fp4, fp1, fp0
L_800EC8F0:
    psq_st fp4, 0x8(r1), 1, 2
    lbz r0, 0x8(r1)
    stb r0, 0x96(r4)
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EC904(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lwz r3, 0x4(r3)
    lfs fp2, 0x84(r4)
    lwz r3, 0x20(r3)
    lwz r6, 0x0(r3)
    lfs fp0, 0x2c(r6)
    fcmpo cr0, fp2, fp0
    opword  0x40800014  // bge .L_800EC934
    lfs fp1, 0x4(r3)
    lfs fp0, 0x34(r6)
    fmadds fp7, fp2, fp1, fp0
    opword  0x48000028  // b .L_800EC958
L_800EC934:
    lfs fp0, 0x30(r6)
    fcmpo cr0, fp2, fp0
    opword  0x40810018  // ble .L_800EC954
    fsubs fp2, fp2, fp0
    lfs fp1, 0x8(r3)
    lfs fp0, 0x38(r6)
    fmadds fp7, fp2, fp1, fp0
    opword  0x48000008  // b .L_800EC958
L_800EC954:
    lfs fp7, 0x38(r6)
L_800EC958:
    lha r5, 0x80(r4)
    lis r0, 0x4330
    stw r0, 0x10(r1)
    lis r3, lbl_8052EBC0@ha
    xoris r0, r5, 0x8000
    opword  0xC8228E28  // lfd f1, lbl_8053BDC8@sda21(r0)
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8052EBC0@l
    lfs fp4, 0x6c(r4)
    lfd fp0, 0x10(r1)
    opword  0xC0A28E3C  // lfs f5, lbl_8053BDDC@sda21(r0)
    fsubs fp3, fp0, fp1
    opword  0xC0428E20  // lfs f2, lbl_8053BDC0@sda21(r0)
    lfs fp1, 0x40(r6)
    lfs fp0, 0x48(r6)
    fmuls fp3, fp4, fp3
    opword  0xC0828E38  // lfs f4, lbl_8053BDD8@sda21(r0)
    fsubs fp1, fp2, fp1
    opword  0xC0C28E34  // lfs f6, lbl_8053BDD4@sda21(r0)
    fmuls fp3, fp5, fp3
    fmuls fp1, fp3, fp1
    fctiwz fp1, fp1
    stfd fp1, 0x18(r1)
    lwz r0, 0x1c(r1)
    rlwinm r0, r0, 30, 18, 28
    lfsx fp1, r3, r0
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fmadds fp0, fp4, fp0, fp2
    fmuls fp0, fp6, fp0
    fmuls fp7, fp7, fp0
    psq_st fp7, 0x8(r1), 1, 2
    lbz r0, 0x8(r1)
    stb r0, 0x96(r4)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EC9E8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r4, 0x0(r3)
    bl fn_800ECA1C
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800ECA1C(void)
{
    nofralloc
    lwz r4, 0x0(r3)
    opword  0xC0028E40  // lfs f0, lbl_8053BDE0@sda21(r0)
    lfs fp2, 0x2c(r4)
    fcmpu cr0, fp0, fp2
    opword  0x41820018  // beq .L_800ECA44
    lfs fp1, 0x38(r4)
    lfs fp0, 0x34(r4)
    fsubs fp0, fp1, fp0
    fdivs fp0, fp0, fp2
    opword  0x48000008  // b .L_800ECA48
L_800ECA44:
    opword  0xC0028E20  // lfs f0, lbl_8053BDC0@sda21(r0)
L_800ECA48:
    stfs fp0, 0x4(r3)
    opword  0xC0028E20  // lfs f0, lbl_8053BDC0@sda21(r0)
    lwz r4, 0x0(r3)
    lfs fp1, 0x30(r4)
    fcmpu cr0, fp0, fp1
    opword  0x41820018  // beq .L_800ECA74
    lfs fp2, 0x3c(r4)
    fsubs fp0, fp0, fp1
    lfs fp1, 0x38(r4)
    fsubs fp1, fp2, fp1
    fdivs fp0, fp1, fp0
L_800ECA74:
    stfs fp0, 0x8(r3)
    opword  0xC0028E40  // lfs f0, lbl_8053BDE0@sda21(r0)
    lwz r4, 0x0(r3)
    lfs fp1, 0xc(r4)
    fcmpu cr0, fp0, fp1
    opword  0x41820034  // beq .L_800ECABC
    opword  0xC0428E20  // lfs f2, lbl_8053BDC0@sda21(r0)
    lfs fp0, 0x14(r4)
    fsubs fp0, fp2, fp0
    fdivs fp0, fp0, fp1
    stfs fp0, 0xc(r3)
    lwz r4, 0x0(r3)
    lfs fp1, 0x1c(r4)
    lfs fp0, 0xc(r4)
    fsubs fp1, fp2, fp1
    fdivs fp0, fp1, fp0
    stfs fp0, 0x10(r3)
    opword  0x48000010  // b .L_800ECAC8
L_800ECABC:
    opword  0xC0028E20  // lfs f0, lbl_8053BDC0@sda21(r0)
    stfs fp0, 0x10(r3)
    stfs fp0, 0xc(r3)
L_800ECAC8:
    lwz r4, 0x0(r3)
    opword  0xC0428E20  // lfs f2, lbl_8053BDC0@sda21(r0)
    lfs fp0, 0x10(r4)
    fcmpu cr0, fp2, fp0
    opword  0x41820038  // beq .L_800ECB10
    lfs fp1, 0x18(r4)
    fsubs fp0, fp2, fp0
    fsubs fp1, fp1, fp2
    fdivs fp0, fp1, fp0
    stfs fp0, 0x14(r3)
    lwz r4, 0x0(r3)
    lfs fp1, 0x20(r4)
    lfs fp0, 0x10(r4)
    fsubs fp1, fp1, fp2
    fsubs fp0, fp2, fp0
    fdivs fp0, fp1, fp0
    stfs fp0, 0x18(r3)
    blr
L_800ECB10:
    stfs fp2, 0x18(r3)
    stfs fp2, 0x14(r3)
    blr
}

ASM void fn_800ECB1C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stfd fp31, 0x10(r1)
    psq_st fp31, 0x18(r1), 0, 0
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r3, 0x0(r5)
    mr r31, r5
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 16, 30, 30
    opword  0x41820024  // beq .L_800ECB70
    lfs fp2, 0x28(r31)
    psq_l fp1, 0x1c(r31), 0, 0
    psq_l fp0, 0x24(r31), 1, 0
    ps_muls0 fp1, fp1, fp2
    ps_muls0 fp0, fp0, fp2
    psq_st fp1, 0x4(r30), 0, 0
    psq_st fp0, 0xc(r30), 1, 0
    opword  0x48000030  // b .L_800ECB9C
L_800ECB70:
    addi r3, r4, 0x78
    addi r4, r31, 0x1c
    addi r5, r30, 0x4
    bl PSMTXMultVecSR
    lfs fp31, 0x28(r31)
    psq_l fp1, 0x4(r30), 0, 0
    psq_l fp0, 0xc(r30), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x4(r30), 0, 0
    psq_st fp0, 0xc(r30), 1, 0
L_800ECB9C:
    psq_l fp31, 0x18(r1), 0, 0
    lwz r0, 0x24(r1)
    lfd fp31, 0x10(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800ECBBC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lwz r0, 0x7c(r6)
    psq_l fp1, 0x4(r3), 0, 0
    lfs fp0, 0xc(r3)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp1, 0x8(r1), 0, 0
    stfs fp0, 0x10(r1)
    opword  0x408200BC  // bne .L_800ECC94
    lwz r4, 0x0(r5)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A8  // beq .L_800ECC94
    rlwinm. r0, r3, 0, 28, 28
    lfs fp3, 0x84(r6)
    opword  0xC0428E48  // lfs f2, lbl_8053BDE8@sda21(r0)
    opword  0x41820010  // beq .L_800ECC0C
    lfs fp0, 0x38(r4)
    fcmpo cr0, fp3, fp0
    opword  0x4180001C  // blt .L_800ECC24
L_800ECC0C:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800ECC2C
    lfs fp0, 0x3c(r4)
    fcmpo cr0, fp3, fp0
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800ECC2C
L_800ECC24:
    opword  0xC0428E4C  // lfs f2, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800ECC7C
L_800ECC2C:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800ECC58
    lfs fp0, 0x34(r4)
    fcmpo cr0, fp3, fp0
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800ECC58
    lfs fp1, 0x3c(r4)
    lfs fp0, 0xc(r5)
    fsubs fp1, fp1, fp3
    fmuls fp2, fp1, fp0
    opword  0x48000028  // b .L_800ECC7C
L_800ECC58:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800ECC7C
    lfs fp0, 0x30(r4)
    fcmpo cr0, fp3, fp0
    opword  0x40800014  // bge .L_800ECC7C
    lfs fp1, 0x38(r4)
    lfs fp0, 0x8(r5)
    fsubs fp1, fp3, fp1
    fmuls fp2, fp1, fp0
L_800ECC7C:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp2
    ps_muls0 fp0, fp0, fp2
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800ECC94:
    lwz r3, 0x0(r5)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800ECCE8
    opword  0x40800010  // bge .L_800ECCB8
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800ECCC4
    opword  0x48000078  // b .L_800ECD2C
L_800ECCB8:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800ECD2C
    opword  0x4800004C  // b .L_800ECD0C
L_800ECCC4:
    psq_l fp2, 0x3c(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r6), 0, 0
    psq_l fp1, 0x44(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r6), 1, 0
    opword  0x48000048  // b .L_800ECD2C
L_800ECCE8:
    psq_l fp2, 0x30(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r6), 0, 0
    psq_l fp1, 0x38(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r6), 1, 0
    opword  0x48000024  // b .L_800ECD2C
L_800ECD0C:
    psq_l fp2, 0x48(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r6), 0, 0
    psq_l fp1, 0x50(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r6), 1, 0
L_800ECD2C:
    addi r1, r1, 0x20
    blr
}

ASM void fn_800ECD34(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stfd fp31, 0x20(r1)
    psq_st fp31, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r31, r5
    lis r5, lbl_80539D44@ha
    psq_l fp4, 0x1c(r31), 0, 0
    mr r30, r3
    lfs fp2, 0x24(r31)
    ps_mul fp4, fp4, fp4
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r5)
    ps_madd fp5, fp2, fp2, fp4
    fmuls fp0, fp1, fp0
    ps_sum0 fp5, fp5, fp4, fp4
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x40820018  // bne .L_800ECD9C
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    stfs fp0, 0x10(r1)
    stfs fp0, 0xc(r1)
    stfs fp0, 0x8(r1)
    opword  0x48000058  // b .L_800ECDF0
L_800ECD9C:
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800ECDB4
    fmr fp3, fp5
    opword  0x48000028  // b .L_800ECDD8
L_800ECDB4:
    frsqrte fp4, fp5
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp4, fp4
    fmuls fp1, fp4, fp4
    fmuls fp2, fp2, fp4
    fnmsubs fp0, fp5, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp3, fp0
L_800ECDD8:
    psq_l fp1, 0x1c(r31), 0, 0
    psq_l fp0, 0x24(r31), 1, 0
    ps_muls0 fp1, fp1, fp3
    ps_muls0 fp0, fp0, fp3
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800ECDF0:
    lwz r3, 0x0(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 16, 30, 30
    opword  0x41820024  // beq .L_800ECE20
    lfs fp6, 0x28(r31)
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp6
    ps_muls0 fp0, fp0, fp6
    psq_st fp1, 0x4(r30), 0, 0
    psq_st fp0, 0xc(r30), 1, 0
    opword  0x48000030  // b .L_800ECE4C
L_800ECE20:
    addi r3, r4, 0x78
    addi r4, r1, 0x8
    addi r5, r30, 0x4
    bl PSMTXMultVecSR
    lfs fp31, 0x28(r31)
    psq_l fp1, 0x4(r30), 0, 0
    psq_l fp0, 0xc(r30), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x4(r30), 0, 0
    psq_st fp0, 0xc(r30), 1, 0
L_800ECE4C:
    psq_l fp31, 0x28(r1), 0, 0
    lwz r0, 0x34(r1)
    lfd fp31, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800ECE6C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stfd fp31, 0x20(r1)
    psq_st fp31, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    lwz r0, 0x7c(r6)
    mr r31, r6
    psq_l fp1, 0x4(r3), 0, 0
    mr r30, r5
    lfs fp0, 0xc(r3)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp1, 0x8(r1), 0, 0
    stfs fp0, 0x10(r1)
    opword  0x408200BC  // bne .L_800ECF64
    lwz r4, 0x0(r30)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A8  // beq .L_800ECF64
    rlwinm. r0, r3, 0, 28, 28
    lfs fp3, 0x84(r31)
    opword  0xC0428E48  // lfs f2, lbl_8053BDE8@sda21(r0)
    opword  0x41820010  // beq .L_800ECEDC
    lfs fp0, 0x38(r4)
    fcmpo cr0, fp3, fp0
    opword  0x4180001C  // blt .L_800ECEF4
L_800ECEDC:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800ECEFC
    lfs fp0, 0x3c(r4)
    fcmpo cr0, fp3, fp0
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800ECEFC
L_800ECEF4:
    opword  0xC0428E4C  // lfs f2, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800ECF4C
L_800ECEFC:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800ECF28
    lfs fp0, 0x34(r4)
    fcmpo cr0, fp3, fp0
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800ECF28
    lfs fp1, 0x3c(r4)
    lfs fp0, 0xc(r30)
    fsubs fp1, fp1, fp3
    fmuls fp2, fp1, fp0
    opword  0x48000028  // b .L_800ECF4C
L_800ECF28:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800ECF4C
    lfs fp0, 0x30(r4)
    fcmpo cr0, fp3, fp0
    opword  0x40800014  // bge .L_800ECF4C
    lfs fp1, 0x38(r4)
    lfs fp0, 0x8(r30)
    fsubs fp1, fp3, fp1
    fmuls fp2, fp1, fp0
L_800ECF4C:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp2
    ps_muls0 fp0, fp0, fp2
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800ECF64:
    lwz r3, 0x0(r30)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800ECFB8
    opword  0x40800010  // bge .L_800ECF88
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800ECF94
    opword  0x48000078  // b .L_800ECFFC
L_800ECF88:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800ECFFC
    opword  0x4800004C  // b .L_800ECFDC
L_800ECF94:
    psq_l fp2, 0x3c(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r31), 0, 0
    psq_l fp1, 0x44(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r31), 1, 0
    opword  0x48000048  // b .L_800ECFFC
L_800ECFB8:
    psq_l fp2, 0x30(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r31), 0, 0
    psq_l fp1, 0x38(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r31), 1, 0
    opword  0x48000024  // b .L_800ECFFC
L_800ECFDC:
    psq_l fp2, 0x48(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r31), 0, 0
    psq_l fp1, 0x50(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r31), 1, 0
L_800ECFFC:
    lwz r3, 0x0(r30)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 16, 29, 29
    opword  0x41820038  // beq .L_800ED040
    addi r3, r31, 0x30
    bl PSVECMag
    lwz r3, 0x0(r30)
    lfs fp0, 0x28(r3)
    fcmpo cr0, fp1, fp0
    opword  0x40810020  // ble .L_800ED040
    fdivs fp31, fp0, fp1
    psq_l fp1, 0x30(r31), 0, 0
    psq_l fp0, 0x38(r31), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x30(r31), 0, 0
    psq_st fp0, 0x38(r31), 1, 0
L_800ED040:
    psq_l fp31, 0x28(r1), 0, 0
    lwz r0, 0x34(r1)
    lfd fp31, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800ED060(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    addi r6, r3, 0x10
    addi r3, r4, 0x78
    stw r0, 0x14(r1)
    psq_l fp1, 0x10(r5), 0, 0
    psq_l fp0, 0x108(r4), 0, 0
    ps_sub fp0, fp1, fp0
    psq_st fp0, 0x0(r6), 0, 0
    psq_l fp1, 0x18(r5), 1, 0
    mr r5, r6
    psq_l fp0, 0x110(r4), 1, 0
    mr r4, r6
    ps_sub fp0, fp1, fp0
    psq_st fp0, 0x8(r6), 1, 0
    bl PSMTXMultVecSR
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800ED0B0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r4, lbl_80539D44@ha
    opword  0xC0428E50  // lfs f2, lbl_8053BDF0@sda21(r0)
    psq_l fp3, 0x10(r3), 0, 0
    psq_l fp1, 0xc(r6), 0, 0
    ps_sub fp1, fp3, fp1
    psq_st fp1, 0x4(r3), 0, 0
    psq_l fp3, 0x18(r3), 1, 0
    psq_l fp1, 0x14(r6), 1, 0
    ps_sub fp1, fp3, fp1
    psq_st fp1, 0xc(r3), 1, 0
    psq_l fp3, 0x4(r3), 0, 0
    lfs fp4, 0xc(r3)
    ps_mul fp3, fp3, fp3
    lfs fp1, lbl_80539D44@l(r4)
    lfs fp6, 0x28(r5)
    fmuls fp1, fp2, fp1
    ps_madd fp7, fp4, fp4, fp3
    ps_sum0 fp7, fp7, fp3, fp3
    fcmpo cr0, fp7, fp1
    cror eq, lt, eq
    opword  0x41820054  // beq .L_800ED158
    opword  0xC0228E4C  // lfs f1, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp7, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800ED11C
    opword  0x48000024  // b .L_800ED13C
L_800ED11C:
    frsqrte fp4, fp7
    opword  0xC0628E54  // lfs f3, lbl_8053BDF4@sda21(r0)
    opword  0xC0228E58  // lfs f1, lbl_8053BDF8@sda21(r0)
    frsp fp4, fp4
    fmuls fp2, fp4, fp4
    fmuls fp3, fp3, fp4
    fnmsubs fp1, fp7, fp2, fp1
    fmuls fp7, fp3, fp1
L_800ED13C:
    fmuls fp5, fp7, fp6
    psq_l fp2, 0x4(r3), 0, 0
    psq_l fp1, 0xc(r3), 1, 0
    ps_muls0 fp2, fp2, fp5
    ps_muls0 fp1, fp1, fp5
    psq_st fp2, 0x4(r3), 0, 0
    psq_st fp1, 0xc(r3), 1, 0
L_800ED158:
    lwz r0, 0x7c(r6)
    psq_l fp2, 0x4(r3), 0, 0
    lfs fp1, 0xc(r3)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp2, 0x8(r1), 0, 0
    stfs fp1, 0x10(r1)
    opword  0x408200BC  // bne .L_800ED22C
    lwz r4, 0x0(r5)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A8  // beq .L_800ED22C
    rlwinm. r0, r3, 0, 28, 28
    lfs fp3, 0x84(r6)
    opword  0xC0028E48  // lfs f0, lbl_8053BDE8@sda21(r0)
    opword  0x41820010  // beq .L_800ED1A4
    lfs fp1, 0x38(r4)
    fcmpo cr0, fp3, fp1
    opword  0x4180001C  // blt .L_800ED1BC
L_800ED1A4:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800ED1C4
    lfs fp1, 0x3c(r4)
    fcmpo cr0, fp3, fp1
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800ED1C4
L_800ED1BC:
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800ED214
L_800ED1C4:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800ED1F0
    lfs fp1, 0x34(r4)
    fcmpo cr0, fp3, fp1
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800ED1F0
    lfs fp2, 0x3c(r4)
    lfs fp1, 0xc(r5)
    fsubs fp2, fp2, fp3
    fmuls fp0, fp2, fp1
    opword  0x48000028  // b .L_800ED214
L_800ED1F0:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800ED214
    lfs fp1, 0x30(r4)
    fcmpo cr0, fp3, fp1
    opword  0x40800014  // bge .L_800ED214
    lfs fp2, 0x38(r4)
    lfs fp1, 0x8(r5)
    fsubs fp2, fp3, fp2
    fmuls fp0, fp2, fp1
L_800ED214:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp2, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp0
    ps_muls0 fp0, fp2, fp0
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800ED22C:
    lwz r3, 0x0(r5)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800ED280
    opword  0x40800010  // bge .L_800ED250
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800ED25C
    opword  0x48000078  // b .L_800ED2C4
L_800ED250:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800ED2C4
    opword  0x4800004C  // b .L_800ED2A4
L_800ED25C:
    psq_l fp2, 0x3c(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r6), 0, 0
    psq_l fp1, 0x44(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r6), 1, 0
    opword  0x48000048  // b .L_800ED2C4
L_800ED280:
    psq_l fp2, 0x30(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r6), 0, 0
    psq_l fp1, 0x38(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r6), 1, 0
    opword  0x48000024  // b .L_800ED2C4
L_800ED2A4:
    psq_l fp2, 0x48(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r6), 0, 0
    psq_l fp1, 0x50(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r6), 1, 0
L_800ED2C4:
    addi r1, r1, 0x20
    blr
}

ASM void fn_800ED2CC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r5
    stw r30, 0x8(r1)
    mr r30, r3
    addi r5, r30, 0x10
    addi r3, r4, 0x78
    psq_l fp1, 0x10(r31), 0, 0
    psq_l fp0, 0x108(r4), 0, 0
    ps_sub fp0, fp1, fp0
    psq_st fp0, 0x0(r5), 0, 0
    psq_l fp0, 0x110(r4), 1, 0
    mr r4, r5
    psq_l fp1, 0x18(r31), 1, 0
    ps_sub fp0, fp1, fp0
    psq_st fp0, 0x8(r5), 1, 0
    bl PSMTXMultVecSR
    lwz r3, 0x0(r31)
    lfs fp0, 0x2c(r3)
    fmuls fp0, fp0, fp0
    stfs fp0, 0x1c(r30)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800ED340(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    psq_l fp2, 0x10(r3), 0, 0
    psq_l fp1, 0xc(r6), 0, 0
    ps_sub fp1, fp2, fp1
    psq_st fp1, 0x4(r3), 0, 0
    psq_l fp2, 0x18(r3), 1, 0
    psq_l fp1, 0x14(r6), 1, 0
    ps_sub fp1, fp2, fp1
    psq_st fp1, 0xc(r3), 1, 0
    psq_l fp1, 0x4(r3), 0, 0
    lfs fp5, 0xc(r3)
    ps_mul fp1, fp1, fp1
    lfs fp8, 0x1c(r3)
    ps_madd fp4, fp5, fp5, fp1
    ps_sum0 fp4, fp4, fp1, fp1
    fcmpo cr0, fp4, fp8
    opword  0x40810098  // ble .L_800ED418
    opword  0xC0428E5C  // lfs f2, lbl_8053BDFC@sda21(r0)
    lis r4, lbl_80539D44@ha
    lfs fp1, 0x28(r5)
    psq_l fp7, 0x4(r3), 0, 0
    fmuls fp3, fp2, fp1
    opword  0xC0428E50  // lfs f2, lbl_8053BDF0@sda21(r0)
    lfs fp1, lbl_80539D44@l(r4)
    ps_mul fp7, fp7, fp7
    fmuls fp3, fp8, fp3
    ps_madd fp8, fp5, fp5, fp7
    fmuls fp1, fp2, fp1
    fdivs fp4, fp3, fp4
    ps_sum0 fp8, fp8, fp7, fp7
    fcmpo cr0, fp8, fp1
    cror eq, lt, eq
    opword  0x418200E0  // beq .L_800ED4A0
    opword  0xC0228E4C  // lfs f1, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp8, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800ED3D8
    opword  0x48000024  // b .L_800ED3F8
L_800ED3D8:
    frsqrte fp5, fp8
    opword  0xC0628E54  // lfs f3, lbl_8053BDF4@sda21(r0)
    opword  0xC0228E58  // lfs f1, lbl_8053BDF8@sda21(r0)
    frsp fp5, fp5
    fmuls fp2, fp5, fp5
    fmuls fp3, fp3, fp5
    fnmsubs fp1, fp8, fp2, fp1
    fmuls fp8, fp3, fp1
L_800ED3F8:
    fmuls fp6, fp8, fp4
    psq_l fp2, 0x4(r3), 0, 0
    psq_l fp1, 0xc(r3), 1, 0
    ps_muls0 fp2, fp2, fp6
    ps_muls0 fp1, fp1, fp6
    psq_st fp2, 0x4(r3), 0, 0
    psq_st fp1, 0xc(r3), 1, 0
    opword  0x4800008C  // b .L_800ED4A0
L_800ED418:
    psq_l fp7, 0x4(r3), 0, 0
    lis r4, lbl_80539D44@ha
    opword  0xC0428E50  // lfs f2, lbl_8053BDF0@sda21(r0)
    ps_mul fp7, fp7, fp7
    lfs fp1, lbl_80539D44@l(r4)
    opword  0xC0828E5C  // lfs f4, lbl_8053BDFC@sda21(r0)
    lfs fp3, 0x28(r5)
    fmuls fp1, fp2, fp1
    ps_madd fp8, fp5, fp5, fp7
    fmuls fp4, fp4, fp3
    ps_sum0 fp8, fp8, fp7, fp7
    fcmpo cr0, fp8, fp1
    cror eq, lt, eq
    opword  0x41820054  // beq .L_800ED4A0
    opword  0xC0228E4C  // lfs f1, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp8, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800ED464
    opword  0x48000024  // b .L_800ED484
L_800ED464:
    frsqrte fp5, fp8
    opword  0xC0628E54  // lfs f3, lbl_8053BDF4@sda21(r0)
    opword  0xC0228E58  // lfs f1, lbl_8053BDF8@sda21(r0)
    frsp fp5, fp5
    fmuls fp2, fp5, fp5
    fmuls fp3, fp3, fp5
    fnmsubs fp1, fp8, fp2, fp1
    fmuls fp8, fp3, fp1
L_800ED484:
    fmuls fp6, fp8, fp4
    psq_l fp2, 0x4(r3), 0, 0
    psq_l fp1, 0xc(r3), 1, 0
    ps_muls0 fp2, fp2, fp6
    ps_muls0 fp1, fp1, fp6
    psq_st fp2, 0x4(r3), 0, 0
    psq_st fp1, 0xc(r3), 1, 0
L_800ED4A0:
    lwz r0, 0x7c(r6)
    psq_l fp2, 0x4(r3), 0, 0
    lfs fp1, 0xc(r3)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp2, 0x8(r1), 0, 0
    stfs fp1, 0x10(r1)
    opword  0x408200BC  // bne .L_800ED574
    lwz r4, 0x0(r5)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A8  // beq .L_800ED574
    rlwinm. r0, r3, 0, 28, 28
    lfs fp3, 0x84(r6)
    opword  0xC0028E48  // lfs f0, lbl_8053BDE8@sda21(r0)
    opword  0x41820010  // beq .L_800ED4EC
    lfs fp1, 0x38(r4)
    fcmpo cr0, fp3, fp1
    opword  0x4180001C  // blt .L_800ED504
L_800ED4EC:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800ED50C
    lfs fp1, 0x3c(r4)
    fcmpo cr0, fp3, fp1
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800ED50C
L_800ED504:
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800ED55C
L_800ED50C:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800ED538
    lfs fp1, 0x34(r4)
    fcmpo cr0, fp3, fp1
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800ED538
    lfs fp2, 0x3c(r4)
    lfs fp1, 0xc(r5)
    fsubs fp2, fp2, fp3
    fmuls fp0, fp2, fp1
    opword  0x48000028  // b .L_800ED55C
L_800ED538:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800ED55C
    lfs fp1, 0x30(r4)
    fcmpo cr0, fp3, fp1
    opword  0x40800014  // bge .L_800ED55C
    lfs fp2, 0x38(r4)
    lfs fp1, 0x8(r5)
    fsubs fp2, fp3, fp2
    fmuls fp0, fp2, fp1
L_800ED55C:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp2, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp0
    ps_muls0 fp0, fp2, fp0
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800ED574:
    lwz r3, 0x0(r5)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800ED5C8
    opword  0x40800010  // bge .L_800ED598
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800ED5A4
    opword  0x48000078  // b .L_800ED60C
L_800ED598:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800ED60C
    opword  0x4800004C  // b .L_800ED5EC
L_800ED5A4:
    psq_l fp2, 0x3c(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r6), 0, 0
    psq_l fp1, 0x44(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r6), 1, 0
    opword  0x48000048  // b .L_800ED60C
L_800ED5C8:
    psq_l fp2, 0x30(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r6), 0, 0
    psq_l fp1, 0x38(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r6), 1, 0
    opword  0x48000024  // b .L_800ED60C
L_800ED5EC:
    psq_l fp2, 0x48(r6), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r6), 0, 0
    psq_l fp1, 0x50(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r6), 1, 0
L_800ED60C:
    addi r1, r1, 0x20
    blr
}

ASM void fn_800ED614(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stfd fp31, 0x20(r1)
    psq_st fp31, 0x28(r1), 0, 0
    stfd fp30, 0x10(r1)
    psq_st fp30, 0x18(r1), 0, 0
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    mr r31, r5
    addi r3, r4, 0xa8
    addi r4, r31, 0x1c
    addi r5, r30, 0x10
    bl PSMTXMultVecSR
    psq_l fp2, 0x10(r30), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp30, 0x18(r30)
    ps_mul fp2, fp2, fp2
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp30, fp30, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800ED6D4
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800ED698
    fmr fp31, fp4
    opword  0x48000028  // b .L_800ED6BC
L_800ED698:
    frsqrte fp3, fp4
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp31, fp0
L_800ED6BC:
    psq_l fp1, 0x10(r30), 0, 0
    psq_l fp0, 0x18(r30), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x10(r30), 0, 0
    psq_st fp0, 0x18(r30), 1, 0
L_800ED6D4:
    lfs fp0, 0x18(r31)
    opword  0xC0228E48  // lfs f1, lbl_8053BDE8@sda21(r0)
    fmuls fp0, fp0, fp0
    stfs fp0, 0x1c(r30)
    lfs fp0, 0x1c(r30)
    fdivs fp0, fp1, fp0
    stfs fp0, 0x20(r30)
    psq_l fp31, 0x28(r1), 0, 0
    lfd fp31, 0x20(r1)
    psq_l fp30, 0x18(r1), 0, 0
    lfd fp30, 0x10(r1)
    lwz r31, 0xc(r1)
    lwz r0, 0x34(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800ED718(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stfd fp31, 0x40(r1)
    psq_st fp31, 0x48(r1), 0, 0
    stfd fp30, 0x30(r1)
    psq_st fp30, 0x38(r1), 0, 0
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    mr r29, r3
    mr r31, r6
    psq_l fp6, 0x14(r29), 0, 0
    mr r30, r5
    psq_l fp4, 0x10(r31), 0, 0
    psq_l fp1, 0x10(r29), 0, 0
    ps_mul fp6, fp6, fp4
    psq_l fp2, 0xc(r31), 0, 0
    psq_l fp0, 0x18(r29), 1, 0
    ps_madd fp4, fp1, fp2, fp6
    ps_sum0 fp4, fp4, fp6, fp6
    ps_muls0 fp1, fp1, fp4
    ps_muls0 fp0, fp0, fp4
    ps_sub fp2, fp2, fp1
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
    ps_mul fp4, fp2, fp2
    psq_st fp2, 0x14(r1), 0, 0
    psq_l fp1, 0x14(r31), 1, 0
    ps_sub fp0, fp1, fp0
    psq_st fp0, 0x1c(r1), 1, 0
    lfs fp3, 0x1c(r1)
    lfs fp0, 0x1c(r3)
    ps_madd fp1, fp3, fp3, fp4
    ps_sum0 fp1, fp1, fp4, fp4
    fmr fp30, fp1
    fcmpo cr0, fp1, fp0
    opword  0x40810010  // ble .L_800ED7BC
    lwz r3, 0x0(r30)
    lfs fp30, 0x28(r3)
    opword  0x48000028  // b .L_800ED7E0
L_800ED7BC:
    lfs fp0, 0x20(r29)
    lwz r3, 0x0(r30)
    fmuls fp30, fp30, fp0
    opword  0xC0428E48  // lfs f2, lbl_8053BDE8@sda21(r0)
    lfs fp0, 0x28(r3)
    lfs fp1, 0x28(r30)
    fsubs fp2, fp2, fp30
    fmuls fp0, fp30, fp0
    fmadds fp30, fp2, fp1, fp0
L_800ED7E0:
    psq_l fp2, 0x14(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp7, 0x1c(r1)
    ps_mul fp2, fp2, fp2
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp7, fp7, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800ED864
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800ED828
    fmr fp5, fp4
    opword  0x48000028  // b .L_800ED84C
L_800ED828:
    frsqrte fp3, fp4
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp5, fp0
L_800ED84C:
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_muls0 fp1, fp1, fp5
    ps_muls0 fp0, fp0, fp5
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
L_800ED864:
    addi r3, r1, 0x14
    addi r4, r29, 0x10
    addi r5, r29, 0x4
    bl PSVECCrossProduct
    psq_l fp1, 0x4(r29), 0, 0
    psq_l fp0, 0xc(r29), 1, 0
    ps_muls0 fp1, fp1, fp30
    ps_muls0 fp0, fp0, fp30
    psq_st fp1, 0x4(r29), 0, 0
    psq_st fp0, 0xc(r29), 1, 0
    lwz r0, 0x7c(r31)
    psq_l fp1, 0x4(r29), 0, 0
    lfs fp0, 0xc(r29)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp1, 0x8(r1), 0, 0
    stfs fp0, 0x10(r1)
    opword  0x408200BC  // bne .L_800ED960
    lwz r4, 0x0(r30)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A8  // beq .L_800ED960
    rlwinm. r0, r3, 0, 28, 28
    lfs fp2, 0x84(r31)
    opword  0xC3E28E48  // lfs f31, lbl_8053BDE8@sda21(r0)
    opword  0x41820010  // beq .L_800ED8D8
    lfs fp0, 0x38(r4)
    fcmpo cr0, fp2, fp0
    opword  0x4180001C  // blt .L_800ED8F0
L_800ED8D8:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800ED8F8
    lfs fp0, 0x3c(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800ED8F8
L_800ED8F0:
    opword  0xC3E28E4C  // lfs f31, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800ED948
L_800ED8F8:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800ED924
    lfs fp0, 0x34(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800ED924
    lfs fp1, 0x3c(r4)
    lfs fp0, 0xc(r30)
    fsubs fp1, fp1, fp2
    fmuls fp31, fp1, fp0
    opword  0x48000028  // b .L_800ED948
L_800ED924:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800ED948
    lfs fp0, 0x30(r4)
    fcmpo cr0, fp2, fp0
    opword  0x40800014  // bge .L_800ED948
    lfs fp1, 0x38(r4)
    lfs fp0, 0x8(r30)
    fsubs fp1, fp2, fp1
    fmuls fp31, fp1, fp0
L_800ED948:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800ED960:
    lwz r3, 0x0(r30)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800ED9B4
    opword  0x40800010  // bge .L_800ED984
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800ED990
    opword  0x48000078  // b .L_800ED9F8
L_800ED984:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800ED9F8
    opword  0x4800004C  // b .L_800ED9D8
L_800ED990:
    psq_l fp2, 0x3c(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r31), 0, 0
    psq_l fp1, 0x44(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r31), 1, 0
    opword  0x48000048  // b .L_800ED9F8
L_800ED9B4:
    psq_l fp2, 0x30(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r31), 0, 0
    psq_l fp1, 0x38(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r31), 1, 0
    opword  0x48000024  // b .L_800ED9F8
L_800ED9D8:
    psq_l fp2, 0x48(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r31), 0, 0
    psq_l fp1, 0x50(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r31), 1, 0
L_800ED9F8:
    psq_l fp31, 0x48(r1), 0, 0
    lfd fp31, 0x40(r1)
    psq_l fp30, 0x38(r1), 0, 0
    lfd fp30, 0x30(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r0, 0x54(r1)
    lwz r29, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800EDA24(void)
{
    nofralloc
    stwu r1, -0x90(r1)
    mflr r0
    stw r0, 0x94(r1)
    stfd fp31, 0x80(r1)
    psq_st fp31, 0x88(r1), 0, 0
    stfd fp30, 0x70(r1)
    psq_st fp30, 0x78(r1), 0, 0
    stfd fp29, 0x60(r1)
    psq_st fp29, 0x68(r1), 0, 0
    stfd fp28, 0x50(r1)
    psq_st fp28, 0x58(r1), 0, 0
    stfd fp27, 0x40(r1)
    psq_st fp27, 0x48(r1), 0, 0
    stfd fp26, 0x30(r1)
    psq_st fp26, 0x38(r1), 0, 0
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    mr r31, r5
    mr r29, r3
    mr r30, r4
    addi r5, r1, 0x8
    addi r3, r31, 0x10
    addi r4, r31, 0x1c
    bl PSVECCrossProduct
    addi r3, r31, 0x1c
    addi r4, r1, 0x8
    addi r5, r1, 0x14
    bl PSVECCrossProduct
    addi r3, r30, 0xa8
    addi r4, r1, 0x14
    addi r5, r29, 0x10
    bl PSMTXMultVecSR
    addi r3, r30, 0xa8
    addi r4, r31, 0x1c
    addi r5, r29, 0x1c
    bl PSMTXMultVecSR
    addi r3, r30, 0xa8
    addi r4, r1, 0x8
    addi r5, r29, 0x28
    bl PSMTXMultVecSR
    psq_l fp2, 0x10(r29), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp26, 0x18(r29)
    ps_mul fp2, fp2, fp2
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp26, fp26, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800EDB4C
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800EDB10
    fmr fp27, fp4
    opword  0x48000028  // b .L_800EDB34
L_800EDB10:
    frsqrte fp3, fp4
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp27, fp0
L_800EDB34:
    psq_l fp1, 0x10(r29), 0, 0
    psq_l fp0, 0x18(r29), 1, 0
    ps_muls0 fp1, fp1, fp27
    ps_muls0 fp0, fp0, fp27
    psq_st fp1, 0x10(r29), 0, 0
    psq_st fp0, 0x18(r29), 1, 0
L_800EDB4C:
    psq_l fp2, 0x1c(r29), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp29, 0x24(r29)
    ps_mul fp2, fp2, fp2
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp29, fp29, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800EDBD0
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800EDB94
    fmr fp31, fp4
    opword  0x48000028  // b .L_800EDBB8
L_800EDB94:
    frsqrte fp3, fp4
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp31, fp0
L_800EDBB8:
    psq_l fp1, 0x1c(r29), 0, 0
    psq_l fp0, 0x24(r29), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x1c(r29), 0, 0
    psq_st fp0, 0x24(r29), 1, 0
L_800EDBD0:
    psq_l fp2, 0x28(r29), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp28, 0x30(r29)
    ps_mul fp2, fp2, fp2
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp28, fp28, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800EDC54
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800EDC18
    fmr fp30, fp4
    opword  0x48000028  // b .L_800EDC3C
L_800EDC18:
    frsqrte fp3, fp4
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp30, fp0
L_800EDC3C:
    psq_l fp1, 0x28(r29), 0, 0
    psq_l fp0, 0x30(r29), 1, 0
    ps_muls0 fp1, fp1, fp30
    ps_muls0 fp0, fp0, fp30
    psq_st fp1, 0x28(r29), 0, 0
    psq_st fp0, 0x30(r29), 1, 0
L_800EDC54:
    psq_l fp31, 0x88(r1), 0, 0
    lfd fp31, 0x80(r1)
    psq_l fp30, 0x78(r1), 0, 0
    lfd fp30, 0x70(r1)
    psq_l fp29, 0x68(r1), 0, 0
    lfd fp29, 0x60(r1)
    psq_l fp28, 0x58(r1), 0, 0
    lfd fp28, 0x50(r1)
    psq_l fp27, 0x48(r1), 0, 0
    lfd fp27, 0x40(r1)
    psq_l fp26, 0x38(r1), 0, 0
    lfd fp26, 0x30(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r0, 0x94(r1)
    lwz r29, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x90
    blr
}

ASM void fn_800EDCA0(void)
{
    nofralloc
    stwu r1, -0x80(r1)
    mflr r0
    stw r0, 0x84(r1)
    stfd fp31, 0x70(r1)
    psq_st fp31, 0x78(r1), 0, 0
    stfd fp30, 0x60(r1)
    psq_st fp30, 0x68(r1), 0, 0
    stfd fp29, 0x50(r1)
    psq_st fp29, 0x58(r1), 0, 0
    stw r31, 0x4c(r1)
    stw r30, 0x48(r1)
    stw r29, 0x44(r1)
    mr r29, r3
    mr r31, r6
    psq_l fp7, 0x14(r29), 0, 0
    lis r3, lbl_80539D44@ha
    psq_l fp6, 0x10(r31), 0, 0
    mr r30, r5
    psq_l fp2, 0x10(r29), 0, 0
    ps_mul fp7, fp7, fp6
    psq_l fp4, 0xc(r31), 0, 0
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp6, fp2, fp4, fp7
    psq_l fp3, 0x18(r29), 1, 0
    fmuls fp0, fp1, fp0
    ps_sum0 fp1, fp6, fp7, fp7
    ps_muls0 fp2, fp2, fp1
    ps_muls0 fp1, fp3, fp1
    psq_st fp2, 0x2c(r1), 0, 0
    psq_st fp1, 0x34(r1), 1, 0
    psq_l fp8, 0x2c(r29), 0, 0
    psq_l fp7, 0x10(r31), 0, 0
    psq_l fp6, 0x28(r29), 0, 0
    ps_mul fp8, fp8, fp7
    psq_l fp3, 0x30(r29), 1, 0
    ps_madd fp7, fp6, fp4, fp8
    ps_sum0 fp4, fp7, fp8, fp8
    ps_muls0 fp3, fp3, fp4
    ps_muls0 fp4, fp6, fp4
    ps_add fp1, fp1, fp3
    psq_st fp3, 0x1c(r1), 1, 0
    ps_add fp2, fp2, fp4
    psq_st fp4, 0x14(r1), 0, 0
    psq_st fp1, 0x34(r1), 1, 0
    ps_mul fp1, fp2, fp2
    lfs fp9, 0x34(r1)
    psq_st fp2, 0x2c(r1), 0, 0
    ps_madd fp6, fp9, fp9, fp1
    lwz r3, 0x0(r5)
    ps_sum0 fp6, fp6, fp1, fp1
    lfs fp4, 0x2c(r3)
    fcmpo cr0, fp6, fp0
    cror eq, lt, eq
    opword  0x40820018  // bne .L_800EDD90
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    stfs fp0, 0x34(r1)
    stfs fp0, 0x30(r1)
    stfs fp0, 0x2c(r1)
    opword  0x48000054  // b .L_800EDDE0
L_800EDD90:
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp6, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800EDDA4
    opword  0x48000024  // b .L_800EDDC4
L_800EDDA4:
    frsqrte fp3, fp6
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp6, fp1, fp0
    fmuls fp6, fp2, fp0
L_800EDDC4:
    fmuls fp5, fp6, fp4
    psq_l fp1, 0x2c(r1), 0, 0
    psq_l fp0, 0x34(r1), 1, 0
    ps_muls0 fp1, fp1, fp5
    ps_muls0 fp0, fp0, fp5
    psq_st fp1, 0x2c(r1), 0, 0
    psq_st fp0, 0x34(r1), 1, 0
L_800EDDE0:
    addi r4, r1, 0x2c
    psq_l fp2, 0xc(r31), 0, 0
    psq_l fp1, 0x0(r4), 0, 0
    addi r3, r29, 0x1c
    psq_l fp0, 0x8(r4), 1, 0
    addi r5, r1, 0x14
    ps_sub fp1, fp2, fp1
    psq_st fp1, 0x20(r1), 0, 0
    psq_l fp1, 0x14(r31), 1, 0
    ps_sub fp0, fp1, fp0
    psq_st fp0, 0x28(r1), 1, 0
    bl PSVECCrossProduct
    addi r3, r1, 0x14
    addi r4, r1, 0x20
    addi r5, r29, 0x4
    bl PSVECCrossProduct
    psq_l fp2, 0x4(r29), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp30, 0xc(r29)
    ps_mul fp2, fp2, fp2
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    lfs fp4, 0x28(r30)
    ps_madd fp5, fp30, fp30, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp5, fp5, fp2, fp2
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x41820054  // beq .L_800EDEA4
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800EDE68
    opword  0x48000024  // b .L_800EDE88
L_800EDE68:
    frsqrte fp3, fp5
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp5, fp1, fp0
    fmuls fp5, fp2, fp0
L_800EDE88:
    fmuls fp31, fp5, fp4
    psq_l fp1, 0x4(r29), 0, 0
    psq_l fp0, 0xc(r29), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x4(r29), 0, 0
    psq_st fp0, 0xc(r29), 1, 0
L_800EDEA4:
    lwz r0, 0x7c(r31)
    psq_l fp1, 0x4(r29), 0, 0
    lfs fp0, 0xc(r29)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp1, 0x8(r1), 0, 0
    stfs fp0, 0x10(r1)
    opword  0x408200BC  // bne .L_800EDF78
    lwz r4, 0x0(r30)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A8  // beq .L_800EDF78
    rlwinm. r0, r3, 0, 28, 28
    lfs fp2, 0x84(r31)
    opword  0xC3A28E48  // lfs f29, lbl_8053BDE8@sda21(r0)
    opword  0x41820010  // beq .L_800EDEF0
    lfs fp0, 0x38(r4)
    fcmpo cr0, fp2, fp0
    opword  0x4180001C  // blt .L_800EDF08
L_800EDEF0:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800EDF10
    lfs fp0, 0x3c(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800EDF10
L_800EDF08:
    opword  0xC3A28E4C  // lfs f29, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800EDF60
L_800EDF10:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800EDF3C
    lfs fp0, 0x34(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800EDF3C
    lfs fp1, 0x3c(r4)
    lfs fp0, 0xc(r30)
    fsubs fp1, fp1, fp2
    fmuls fp29, fp1, fp0
    opword  0x48000028  // b .L_800EDF60
L_800EDF3C:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800EDF60
    lfs fp0, 0x30(r4)
    fcmpo cr0, fp2, fp0
    opword  0x40800014  // bge .L_800EDF60
    lfs fp1, 0x38(r4)
    lfs fp0, 0x8(r30)
    fsubs fp1, fp2, fp1
    fmuls fp29, fp1, fp0
L_800EDF60:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp29
    ps_muls0 fp0, fp0, fp29
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800EDF78:
    lwz r3, 0x0(r30)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800EDFCC
    opword  0x40800010  // bge .L_800EDF9C
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800EDFA8
    opword  0x48000078  // b .L_800EE010
L_800EDF9C:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800EE010
    opword  0x4800004C  // b .L_800EDFF0
L_800EDFA8:
    psq_l fp2, 0x3c(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r31), 0, 0
    psq_l fp1, 0x44(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r31), 1, 0
    opword  0x48000048  // b .L_800EE010
L_800EDFCC:
    psq_l fp2, 0x30(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r31), 0, 0
    psq_l fp1, 0x38(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r31), 1, 0
    opword  0x48000024  // b .L_800EE010
L_800EDFF0:
    psq_l fp2, 0x48(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r31), 0, 0
    psq_l fp1, 0x50(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r31), 1, 0
L_800EE010:
    psq_l fp31, 0x78(r1), 0, 0
    lfd fp31, 0x70(r1)
    psq_l fp30, 0x68(r1), 0, 0
    lfd fp30, 0x60(r1)
    psq_l fp29, 0x58(r1), 0, 0
    lfd fp29, 0x50(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    lwz r0, 0x84(r1)
    lwz r29, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x80
    blr
}

ASM void fn_800EE044(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lha r8, 0x80(r6)
    extsh. r0, r8
    opword  0x41820024  // beq .L_800EE074
    lwz r7, 0x0(r5)
    lbz r7, 0x40(r7)
    cmplwi r7, 0x0
    opword  0x4182023C  // beq .L_800EE29C
    divw r0, r8, r7
    mullw r0, r0, r7
    subf. r0, r0, r8
    opword  0x4082022C  // bne .L_800EE29C
L_800EE074:
    lwz r8, 0x0(r4)
    lis r4, 0x19
    addi r7, r4, 0x660d
    opword  0xC0428E48  // lfs f2, lbl_8053BDE8@sda21(r0)
    lwz r0, 0xc4(r8)
    opword  0xC0228E54  // lfs f1, lbl_8053BDF4@sda21(r0)
    mullw r4, r0, r7
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    stw r0, 0xc4(r8)
    srwi r0, r0, 9
    oris r4, r0, 0x3f80
    lwz r0, 0xc4(r8)
    stw r4, 0x10(r1)
    mullw r4, r0, r7
    lfs fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    addis r4, r4, 0x3c6f
    subi r0, r4, 0xca1
    fsubs fp3, fp0, fp1
    stw r0, 0xc4(r8)
    srwi r0, r0, 9
    oris r4, r0, 0x3f80
    lwz r0, 0xc4(r8)
    stw r4, 0xc(r1)
    mullw r4, r0, r7
    lfs fp0, 0xc(r1)
    fsubs fp0, fp0, fp2
    addis r4, r4, 0x3c6f
    subi r4, r4, 0xca1
    fsubs fp4, fp0, fp1
    srwi r0, r4, 9
    stw r4, 0xc4(r8)
    oris r0, r0, 0x3f80
    stw r0, 0x8(r1)
    lfs fp0, 0x8(r1)
    fsubs fp0, fp0, fp2
    fsubs fp0, fp0, fp1
    stfs fp0, 0x4(r3)
    stfs fp4, 0x8(r3)
    stfs fp3, 0xc(r3)
    lfs fp5, 0x28(r5)
    psq_l fp1, 0x4(r3), 0, 0
    psq_l fp0, 0xc(r3), 1, 0
    ps_muls0 fp1, fp1, fp5
    ps_muls0 fp0, fp0, fp5
    psq_st fp1, 0x4(r3), 0, 0
    psq_st fp0, 0xc(r3), 1, 0
    lwz r0, 0x7c(r6)
    psq_l fp1, 0x4(r3), 0, 0
    lfs fp0, 0xc(r3)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp1, 0x14(r1), 0, 0
    stfs fp0, 0x1c(r1)
    opword  0x408200B8  // bne .L_800EE204
    lwz r4, 0x0(r5)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A4  // beq .L_800EE204
    rlwinm. r0, r3, 0, 28, 28
    lfs fp3, 0x84(r6)
    opword  0x41820010  // beq .L_800EE17C
    lfs fp0, 0x38(r4)
    fcmpo cr0, fp3, fp0
    opword  0x4180001C  // blt .L_800EE194
L_800EE17C:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800EE19C
    lfs fp0, 0x3c(r4)
    fcmpo cr0, fp3, fp0
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800EE19C
L_800EE194:
    opword  0xC0428E4C  // lfs f2, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800EE1EC
L_800EE19C:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800EE1C8
    lfs fp0, 0x34(r4)
    fcmpo cr0, fp3, fp0
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800EE1C8
    lfs fp1, 0x3c(r4)
    lfs fp0, 0xc(r5)
    fsubs fp1, fp1, fp3
    fmuls fp2, fp1, fp0
    opword  0x48000028  // b .L_800EE1EC
L_800EE1C8:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800EE1EC
    lfs fp0, 0x30(r4)
    fcmpo cr0, fp3, fp0
    opword  0x40800014  // bge .L_800EE1EC
    lfs fp1, 0x38(r4)
    lfs fp0, 0x8(r5)
    fsubs fp1, fp3, fp1
    fmuls fp2, fp1, fp0
L_800EE1EC:
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_muls0 fp1, fp1, fp2
    ps_muls0 fp0, fp0, fp2
    psq_st fp1, 0x14(r1), 0, 0
    psq_st fp0, 0x1c(r1), 1, 0
L_800EE204:
    lwz r3, 0x0(r5)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800EE258
    opword  0x40800010  // bge .L_800EE228
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800EE234
    opword  0x48000078  // b .L_800EE29C
L_800EE228:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800EE29C
    opword  0x4800004C  // b .L_800EE27C
L_800EE234:
    psq_l fp2, 0x3c(r6), 0, 0
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r6), 0, 0
    psq_l fp1, 0x44(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r6), 1, 0
    opword  0x48000048  // b .L_800EE29C
L_800EE258:
    psq_l fp2, 0x30(r6), 0, 0
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r6), 0, 0
    psq_l fp1, 0x38(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r6), 1, 0
    opword  0x48000024  // b .L_800EE29C
L_800EE27C:
    psq_l fp2, 0x48(r6), 0, 0
    psq_l fp1, 0x14(r1), 0, 0
    psq_l fp0, 0x1c(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r6), 0, 0
    psq_l fp1, 0x50(r6), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r6), 1, 0
L_800EE29C:
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EE2A4(void)
{
    nofralloc
    lwz r0, 0x7c(r6)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x408200BC  // bne .L_800EE368
    lwz r4, 0x0(r5)
    lfs fp2, 0x84(r6)
    lwz r3, 0x8(r4)
    opword  0xC0628E48  // lfs f3, lbl_8053BDE8@sda21(r0)
    rlwinm. r0, r3, 16, 28, 28
    srwi r3, r3, 16
    opword  0x41820010  // beq .L_800EE2D8
    lfs fp0, 0x38(r4)
    fcmpo cr0, fp2, fp0
    opword  0x4180001C  // blt .L_800EE2F0
L_800EE2D8:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800EE2F8
    lfs fp0, 0x3c(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800EE2F8
L_800EE2F0:
    opword  0xC0628E4C  // lfs f3, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800EE348
L_800EE2F8:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800EE324
    lfs fp0, 0x34(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800EE324
    lfs fp1, 0x3c(r4)
    lfs fp0, 0xc(r5)
    fsubs fp1, fp1, fp2
    fmuls fp3, fp1, fp0
    opword  0x48000028  // b .L_800EE348
L_800EE324:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800EE348
    lfs fp0, 0x30(r4)
    fcmpo cr0, fp2, fp0
    opword  0x40800014  // bge .L_800EE348
    lfs fp1, 0x38(r4)
    lfs fp0, 0x8(r5)
    fsubs fp1, fp2, fp1
    fmuls fp3, fp1, fp0
L_800EE348:
    opword  0xC0228E48  // lfs f1, lbl_8053BDE8@sda21(r0)
    lfs fp0, 0x28(r5)
    lfs fp2, 0x74(r6)
    fsubs fp0, fp1, fp0
    fnmsubs fp0, fp3, fp0, fp1
    fmuls fp0, fp2, fp0
    stfs fp0, 0x74(r6)
    blr
L_800EE368:
    lfs fp1, 0x74(r6)
    lfs fp0, 0x28(r5)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x74(r6)
    blr
}

ASM void fn_800EE37C(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stfd fp31, 0x60(r1)
    psq_st fp31, 0x68(r1), 0, 0
    stfd fp30, 0x50(r1)
    psq_st fp30, 0x58(r1), 0, 0
    stw r31, 0x4c(r1)
    stw r30, 0x48(r1)
    mr r31, r5
    mr r30, r3
    addi r3, r4, 0xa8
    addi r5, r1, 0x8
    addi r4, r31, 0x1c
    bl PSMTXMultVecSR
    psq_l fp2, 0x8(r1), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp30, 0x10(r1)
    ps_mul fp2, fp2, fp2
    opword  0xC0228E50  // lfs f1, lbl_8053BDF0@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp4, fp30, fp30, fp2
    fmuls fp0, fp1, fp0
    ps_sum0 fp4, fp4, fp2, fp2
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x41820058  // beq .L_800EE43C
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x4082000C  // bne .L_800EE400
    fmr fp31, fp4
    opword  0x48000028  // b .L_800EE424
L_800EE400:
    frsqrte fp3, fp4
    opword  0xC0428E54  // lfs f2, lbl_8053BDF4@sda21(r0)
    opword  0xC0028E58  // lfs f0, lbl_8053BDF8@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmr fp31, fp0
L_800EE424:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800EE43C:
    lfs fp1, 0x28(r31)
    addi r3, r1, 0x14
    addi r4, r1, 0x8
    bl PSMTXRotAxisRad
    lfs fp2, 0x34(r1)
    lfs fp1, 0x24(r1)
    lfs fp0, 0x14(r1)
    stfs fp0, 0x10(r30)
    stfs fp1, 0x14(r30)
    stfs fp2, 0x18(r30)
    lfs fp2, 0x38(r1)
    lfs fp1, 0x28(r1)
    lfs fp0, 0x18(r1)
    stfs fp0, 0x1c(r30)
    stfs fp1, 0x20(r30)
    stfs fp2, 0x24(r30)
    lfs fp2, 0x3c(r1)
    lfs fp1, 0x2c(r1)
    lfs fp0, 0x1c(r1)
    stfs fp0, 0x28(r30)
    stfs fp1, 0x2c(r30)
    stfs fp2, 0x30(r30)
    psq_l fp31, 0x68(r1), 0, 0
    lfd fp31, 0x60(r1)
    psq_l fp30, 0x58(r1), 0, 0
    lfd fp30, 0x50(r1)
    lwz r31, 0x4c(r1)
    lwz r0, 0x74(r1)
    lwz r30, 0x48(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_800EE4BC(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stfd fp31, 0x60(r1)
    psq_st fp31, 0x68(r1), 0, 0
    stw r31, 0x5c(r1)
    stw r30, 0x58(r1)
    stw r29, 0x54(r1)
    mr r29, r3
    mr r31, r6
    lfs fp1, 0x10(r3)
    mr r30, r5
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    addi r3, r1, 0x20
    stfs fp1, 0x20(r1)
    addi r4, r31, 0xc
    addi r5, r1, 0x14
    lfs fp1, 0x14(r29)
    stfs fp1, 0x30(r1)
    lfs fp1, 0x18(r29)
    stfs fp1, 0x40(r1)
    lfs fp1, 0x1c(r29)
    stfs fp1, 0x24(r1)
    lfs fp1, 0x20(r29)
    stfs fp1, 0x34(r1)
    lfs fp1, 0x24(r29)
    stfs fp1, 0x44(r1)
    lfs fp1, 0x28(r29)
    stfs fp1, 0x28(r1)
    lfs fp1, 0x2c(r29)
    stfs fp1, 0x38(r1)
    lfs fp1, 0x30(r29)
    stfs fp1, 0x48(r1)
    stfs fp0, 0x4c(r1)
    stfs fp0, 0x3c(r1)
    stfs fp0, 0x2c(r1)
    bl PSMTXMultVecSR
    lfs fp1, 0x14(r1)
    lfs fp0, 0xc(r31)
    lfs fp3, 0x18(r1)
    lfs fp2, 0x10(r31)
    fsubs fp0, fp1, fp0
    lfs fp4, 0x1c(r1)
    lfs fp1, 0x14(r31)
    fsubs fp2, fp3, fp2
    stfs fp0, 0x4(r29)
    fsubs fp0, fp4, fp1
    stfs fp2, 0x8(r29)
    stfs fp0, 0xc(r29)
    lwz r0, 0x7c(r31)
    psq_l fp1, 0x4(r29), 0, 0
    lfs fp0, 0xc(r29)
    rlwinm. r0, r0, 0, 29, 29
    psq_st fp1, 0x8(r1), 0, 0
    stfs fp0, 0x10(r1)
    opword  0x408200BC  // bne .L_800EE654
    lwz r4, 0x0(r30)
    lwz r3, 0x8(r4)
    rlwinm. r0, r3, 16, 25, 28
    srwi r3, r3, 16
    opword  0x418200A8  // beq .L_800EE654
    rlwinm. r0, r3, 0, 28, 28
    lfs fp2, 0x84(r31)
    opword  0xC3E28E48  // lfs f31, lbl_8053BDE8@sda21(r0)
    opword  0x41820010  // beq .L_800EE5CC
    lfs fp0, 0x38(r4)
    fcmpo cr0, fp2, fp0
    opword  0x4180001C  // blt .L_800EE5E4
L_800EE5CC:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_800EE5EC
    lfs fp0, 0x3c(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_800EE5EC
L_800EE5E4:
    opword  0xC3E28E4C  // lfs f31, lbl_8053BDEC@sda21(r0)
    opword  0x48000054  // b .L_800EE63C
L_800EE5EC:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820028  // beq .L_800EE618
    lfs fp0, 0x34(r4)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x40820018  // bne .L_800EE618
    lfs fp1, 0x3c(r4)
    lfs fp0, 0xc(r30)
    fsubs fp1, fp1, fp2
    fmuls fp31, fp1, fp0
    opword  0x48000028  // b .L_800EE63C
L_800EE618:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820020  // beq .L_800EE63C
    lfs fp0, 0x30(r4)
    fcmpo cr0, fp2, fp0
    opword  0x40800014  // bge .L_800EE63C
    lfs fp1, 0x38(r4)
    lfs fp0, 0x8(r30)
    fsubs fp1, fp2, fp1
    fmuls fp31, fp1, fp0
L_800EE63C:
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800EE654:
    lwz r3, 0x0(r30)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_800EE6A8
    opword  0x40800010  // bge .L_800EE678
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800EE684
    opword  0x48000078  // b .L_800EE6EC
L_800EE678:
    cmpwi r0, 0x3
    opword  0x40800070  // bge .L_800EE6EC
    opword  0x4800004C  // b .L_800EE6CC
L_800EE684:
    psq_l fp2, 0x3c(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x3c(r31), 0, 0
    psq_l fp1, 0x44(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x44(r31), 1, 0
    opword  0x48000048  // b .L_800EE6EC
L_800EE6A8:
    psq_l fp2, 0x30(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x30(r31), 0, 0
    psq_l fp1, 0x38(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x38(r31), 1, 0
    opword  0x48000024  // b .L_800EE6EC
L_800EE6CC:
    psq_l fp2, 0x48(r31), 0, 0
    psq_l fp1, 0x8(r1), 0, 0
    psq_l fp0, 0x10(r1), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x48(r31), 0, 0
    psq_l fp1, 0x50(r31), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r31), 1, 0
L_800EE6EC:
    psq_l fp31, 0x68(r1), 0, 0
    lwz r0, 0x74(r1)
    lfd fp31, 0x60(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_800EE710(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r4, 0x0(r3)
    mr r4, r5
    bl fn_800EE748
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EE748(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x0(r3)
    lfs fp2, 0x30(r3)
    lfs fp1, 0x38(r3)
    fsubs fp1, fp2, fp1
    stfs fp1, 0x8(r31)
    lfs fp1, 0x8(r31)
    fcmpu cr0, fp0, fp1
    opword  0x40820010  // bne .L_800EE78C
    opword  0xC0028E48  // lfs f0, lbl_8053BDE8@sda21(r0)
    stfs fp0, 0x8(r31)
    opword  0x48000010  // b .L_800EE798
L_800EE78C:
    opword  0xC0028E48  // lfs f0, lbl_8053BDE8@sda21(r0)
    fdivs fp0, fp0, fp1
    stfs fp0, 0x8(r31)
L_800EE798:
    lwz r3, 0x0(r31)
    opword  0xC0028E4C  // lfs f0, lbl_8053BDEC@sda21(r0)
    lfs fp2, 0x3c(r3)
    lfs fp1, 0x34(r3)
    fsubs fp1, fp2, fp1
    stfs fp1, 0xc(r31)
    lfs fp1, 0xc(r31)
    fcmpu cr0, fp0, fp1
    opword  0x40820010  // bne .L_800EE7C8
    opword  0xC0028E48  // lfs f0, lbl_8053BDE8@sda21(r0)
    stfs fp0, 0xc(r31)
    opword  0x48000010  // b .L_800EE7D4
L_800EE7C8:
    opword  0xC0028E48  // lfs f0, lbl_8053BDE8@sda21(r0)
    fdivs fp0, fp0, fp1
    stfs fp0, 0xc(r31)
L_800EE7D4:
    lwz r3, 0x0(r31)
    lfs fp0, 0xc(r3)
    stfs fp0, 0x10(r31)
    lfs fp0, 0x10(r3)
    stfs fp0, 0x14(r31)
    lfs fp0, 0x14(r3)
    stfs fp0, 0x18(r31)
    lwz r3, 0x0(r31)
    lfs fp0, 0x18(r3)
    stfs fp0, 0x1c(r31)
    lfs fp0, 0x1c(r3)
    stfs fp0, 0x20(r31)
    lfs fp0, 0x20(r3)
    stfs fp0, 0x24(r31)
    lwz r3, 0x0(r31)
    lfs fp0, 0x24(r3)
    stfs fp0, 0x28(r31)
    lwz r3, 0x0(r31)
    lwz r0, 0x8(r3)
    clrlwi r0, r0, 28
    cmplwi r0, 0x8
    opword  0x418101F0  // bgt .L_800EEA18
    lis r3, jumptable_8049C088@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049C088@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    li r3, 0x10
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE870
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C160@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C160@l
    stw r0, 0x0(r3)
L_800EE870:
    stw r3, 0x4(r31)
    opword  0x480001AC  // b .L_800EEA20
    li r3, 0x10
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE8A4
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C14C@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C14C@l
    stw r0, 0x0(r3)
L_800EE8A4:
    stw r3, 0x4(r31)
    opword  0x48000178  // b .L_800EEA20
    li r3, 0x1c
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE8D8
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C138@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C138@l
    stw r0, 0x0(r3)
L_800EE8D8:
    stw r3, 0x4(r31)
    opword  0x48000144  // b .L_800EEA20
    li r3, 0x20
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE90C
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C124@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C124@l
    stw r0, 0x0(r3)
L_800EE90C:
    stw r3, 0x4(r31)
    opword  0x48000110  // b .L_800EEA20
    li r3, 0x24
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE940
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C110@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C110@l
    stw r0, 0x0(r3)
L_800EE940:
    stw r3, 0x4(r31)
    opword  0x480000DC  // b .L_800EEA20
    li r3, 0x10
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE974
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C0E8@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C0E8@l
    stw r0, 0x0(r3)
L_800EE974:
    stw r3, 0x4(r31)
    opword  0x480000A8  // b .L_800EEA20
    li r3, 0x10
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE9A8
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C0D4@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C0D4@l
    stw r0, 0x0(r3)
L_800EE9A8:
    stw r3, 0x4(r31)
    opword  0x48000074  // b .L_800EEA20
    li r3, 0x34
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EE9DC
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C0FC@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C0FC@l
    stw r0, 0x0(r3)
L_800EE9DC:
    stw r3, 0x4(r31)
    opword  0x48000040  // b .L_800EEA20
    li r3, 0x34
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800EEA10
    lis r5, lbl_8049C0AC@ha
    lis r4, lbl_8049C0C0@ha
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049C0C0@l
    stw r0, 0x0(r3)
L_800EEA10:
    stw r3, 0x4(r31)
    opword  0x4800000C  // b .L_800EEA20
L_800EEA18:
    li r0, 0x0
    stw r0, 0x4(r31)
L_800EEA20:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEA34(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800EEA64
    lis r5, lbl_8049C0AC@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049C0AC@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800EEA64
    bl dtor_80084580
L_800EEA64:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEA7C(void)
{
    nofralloc
    blr
}

ASM void fn_800EEA80(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EEAC4
    lis r3, lbl_8049C0C0@ha
    addi r0, r3, lbl_8049C0C0@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EEAB4
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EEAB4:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EEAC4
    mr r3, r31
    bl dtor_80084580
L_800EEAC4:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEADC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EEB20
    lis r3, lbl_8049C0D4@ha
    addi r0, r3, lbl_8049C0D4@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EEB10
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EEB10:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EEB20
    mr r3, r31
    bl dtor_80084580
L_800EEB20:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEB38(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EEB7C
    lis r3, lbl_8049C0E8@ha
    addi r0, r3, lbl_8049C0E8@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EEB6C
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EEB6C:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EEB7C
    mr r3, r31
    bl dtor_80084580
L_800EEB7C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEB94(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EEBD8
    lis r3, lbl_8049C0FC@ha
    addi r0, r3, lbl_8049C0FC@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EEBC8
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EEBC8:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EEBD8
    mr r3, r31
    bl dtor_80084580
L_800EEBD8:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEBF0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EEC34
    lis r3, lbl_8049C110@ha
    addi r0, r3, lbl_8049C110@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EEC24
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EEC24:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EEC34
    mr r3, r31
    bl dtor_80084580
L_800EEC34:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEC4C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EEC90
    lis r3, lbl_8049C124@ha
    addi r0, r3, lbl_8049C124@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EEC80
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EEC80:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EEC90
    mr r3, r31
    bl dtor_80084580
L_800EEC90:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EECA8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EECEC
    lis r3, lbl_8049C138@ha
    addi r0, r3, lbl_8049C138@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EECDC
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EECDC:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EECEC
    mr r3, r31
    bl dtor_80084580
L_800EECEC:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EED04(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EED48
    lis r3, lbl_8049C14C@ha
    addi r0, r3, lbl_8049C14C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EED38
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EED38:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EED48
    mr r3, r31
    bl dtor_80084580
L_800EED48:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EED60(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800EEDA4
    lis r3, lbl_8049C160@ha
    addi r0, r3, lbl_8049C160@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800EED94
    lis r3, lbl_8049C0AC@ha
    addi r0, r3, lbl_8049C0AC@l
    stw r0, 0x0(r31)
L_800EED94:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800EEDA4
    mr r3, r31
    bl dtor_80084580
L_800EEDA4:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EEDBC(void)
{
    nofralloc
    stw r4, 0x0(r3)
    addi r0, r4, 0xc
    stw r0, 0x4(r3)
    blr
}

ASM void fn_800EEDCC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r6, r3
    stw r0, 0x24(r1)
    lwz r5, 0x0(r3)
    lbz r0, 0xb(r5)
    cmpwi r0, 0x0
    opword  0x4182005C  // beq .L_800EEE44
    lbz r3, 0x9(r5)
    fctiwz fp0, fp1
    lis r0, 0x4330
    lwz r4, 0x4(r6)
    subi r3, r3, 0x1
    stw r0, 0x18(r1)
    slwi r0, r3, 4
    lfsx fp2, r4, r0
    stfd fp0, 0x10(r1)
    fctiwz fp0, fp2
    opword  0xC8428E60  // lfd f2, lbl_8053BE00@sda21(r0)
    lwz r0, 0x14(r1)
    stfd fp0, 0x8(r1)
    lwz r3, 0xc(r1)
    addi r3, r3, 0x1
    divw r0, r0, r3
    mullw r0, r0, r3
    xoris r0, r0, 0x8000
    stw r0, 0x1c(r1)
    lfd fp0, 0x18(r1)
    fsubs fp0, fp0, fp2
    fsubs fp1, fp1, fp0
L_800EEE44:
    lbz r3, 0x9(r5)
    lwz r4, 0x4(r6)
    bl fn_800EF258
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EEE60(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stfd fp31, 0x20(r1)
    psq_st fp31, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r3
    opword  0xC0028E6C  // lfs f0, lbl_8053BE0C@sda21(r0)
    lfs fp2, 0x0(r3)
    mr r31, r4
    lfs fp1, 0x4(r3)
    addi r3, r1, 0x8
    fneg fp2, fp2
    stfs fp0, 0x10(r1)
    stfs fp1, 0x8(r1)
    stfs fp2, 0xc(r1)
    bl PSVECMag
    lis r3, lbl_80539D44@ha
    opword  0xC0428E70  // lfs f2, lbl_8053BE10@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    fmuls fp0, fp2, fp0
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x40820018  // bne .L_800EEED8
    opword  0xC0028E6C  // lfs f0, lbl_8053BE0C@sda21(r0)
    stfs fp0, 0x10(r1)
    stfs fp0, 0xc(r1)
    stfs fp0, 0x8(r1)
    opword  0x48000024  // b .L_800EEEF8
L_800EEED8:
    opword  0xC0028E68  // lfs f0, lbl_8053BE08@sda21(r0)
    psq_l fp2, 0x8(r1), 0, 0
    fdivs fp31, fp0, fp1
    psq_l fp0, 0x10(r1), 1, 0
    ps_muls0 fp2, fp2, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp2, 0x8(r1), 0, 0
    psq_st fp0, 0x10(r1), 1, 0
L_800EEEF8:
    lfs fp8, 0x8(r1)
    lfs fp4, 0xc(r1)
    fmuls fp10, fp8, fp8
    opword  0xC0E28E68  // lfs f7, lbl_8053BE08@sda21(r0)
    lfs fp9, 0x8(r30)
    fmuls fp12, fp4, fp1
    fmuls fp11, fp4, fp4
    opword  0xC0628E6C  // lfs f3, lbl_8053BE0C@sda21(r0)
    fsubs fp2, fp7, fp10
    lfs fp0, 0x8(r30)
    fsubs fp6, fp7, fp9
    fmuls fp5, fp8, fp4
    fmadds fp4, fp9, fp2, fp10
    fsubs fp2, fp7, fp11
    fmuls fp6, fp6, fp5
    stfs fp4, 0x0(r31)
    fneg fp4, fp12
    fmuls fp5, fp8, fp1
    stfs fp6, 0x4(r31)
    fmadds fp2, fp9, fp2, fp11
    stfs fp4, 0x8(r31)
    fneg fp1, fp5
    stfs fp3, 0xc(r31)
    stfs fp6, 0x10(r31)
    stfs fp2, 0x14(r31)
    stfs fp5, 0x18(r31)
    stfs fp3, 0x1c(r31)
    stfs fp12, 0x20(r31)
    stfs fp1, 0x24(r31)
    stfs fp0, 0x28(r31)
    stfs fp3, 0x2c(r31)
    psq_l fp31, 0x28(r1), 0, 0
    lwz r0, 0x34(r1)
    lfd fp31, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800EEF94(void)
{
    nofralloc
    lis r6, lbl_8052EBC0@ha
    rlwinm r0, r3, 30, 18, 28
    addi r3, r6, lbl_8052EBC0@l
    opword  0xC0028E6C  // lfs f0, lbl_8053BE0C@sda21(r0)
    rlwinm r6, r4, 30, 18, 28
    lfsx fp8, r3, r0
    addi r4, r3, 0x4
    lfsx fp2, r3, r6
    lfsx fp6, r4, r0
    lfsx fp7, r4, r6
    fneg fp5, fp2
    fmuls fp3, fp6, fp2
    fmuls fp1, fp6, fp7
    fmuls fp4, fp8, fp7
    fmuls fp2, fp8, fp2
    stfs fp1, 0x0(r5)
    fneg fp1, fp8
    stfs fp5, 0x4(r5)
    stfs fp4, 0x8(r5)
    stfs fp3, 0x10(r5)
    stfs fp7, 0x14(r5)
    stfs fp2, 0x18(r5)
    stfs fp1, 0x20(r5)
    stfs fp6, 0x28(r5)
    stfs fp0, 0x2c(r5)
    stfs fp0, 0x24(r5)
    stfs fp0, 0x1c(r5)
    stfs fp0, 0xc(r5)
    blr
}

ASM void fn_800EF008(void)
{
    nofralloc
    lis r7, lbl_8052EBC0@ha
    rlwinm r8, r4, 30, 18, 28
    addi r7, r7, lbl_8052EBC0@l
    rlwinm r5, r5, 30, 18, 28
    addi r4, r7, 0x4
    rlwinm r0, r3, 30, 18, 28
    lfsx fp5, r4, r8
    lfsx fp6, r4, r5
    lfsx fp9, r7, r5
    lfsx fp7, r7, r0
    fmuls fp0, fp5, fp6
    lfsx fp4, r4, r0
    fmuls fp2, fp5, fp9
    lfsx fp8, r7, r8
    fmuls fp3, fp7, fp5
    fmuls fp10, fp4, fp9
    stfs fp0, 0x0(r6)
    fneg fp1, fp8
    fmuls fp11, fp7, fp6
    opword  0xC0028E6C  // lfs f0, lbl_8053BE0C@sda21(r0)
    stfs fp2, 0x10(r6)
    fmuls fp2, fp4, fp5
    stfs fp1, 0x20(r6)
    fmsubs fp1, fp11, fp8, fp10
    fmuls fp5, fp7, fp9
    stfs fp3, 0x24(r6)
    fmuls fp4, fp4, fp6
    fmsubs fp3, fp10, fp8, fp11
    stfs fp2, 0x28(r6)
    fmadds fp2, fp4, fp8, fp5
    stfs fp1, 0x4(r6)
    fmadds fp1, fp5, fp8, fp4
    stfs fp3, 0x18(r6)
    stfs fp2, 0x8(r6)
    stfs fp1, 0x14(r6)
    stfs fp0, 0x2c(r6)
    stfs fp0, 0x1c(r6)
    stfs fp0, 0xc(r6)
    blr
}

ASM void fn_800EF0A4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    addi r5, r1, 0x14
    addi r6, r1, 0x8
    bl fn_800EF0CC
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800EF0CC(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lfs fp2, 0x20(r3)
    stw r0, 0x34(r1)
    lfs fp1, 0x10(r3)
    stw r31, 0x2c(r1)
    mr r31, r6
    lfs fp0, 0x0(r3)
    stw r30, 0x28(r1)
    mr r30, r5
    stw r29, 0x24(r1)
    mr r29, r4
    stw r28, 0x20(r1)
    mr r28, r3
    addi r3, r1, 0x8
    stfs fp1, 0xc(r1)
    stfs fp0, 0x8(r1)
    stfs fp2, 0x10(r1)
    bl PSVECMag
    stfs fp1, 0x0(r30)
    addi r3, r1, 0x8
    lfs fp2, 0x24(r28)
    lfs fp1, 0x14(r28)
    lfs fp0, 0x4(r28)
    stfs fp1, 0xc(r1)
    stfs fp0, 0x8(r1)
    stfs fp2, 0x10(r1)
    bl PSVECMag
    stfs fp1, 0x4(r30)
    addi r3, r1, 0x8
    lfs fp2, 0x28(r28)
    lfs fp1, 0x18(r28)
    lfs fp0, 0x8(r28)
    stfs fp1, 0xc(r1)
    stfs fp0, 0x8(r1)
    stfs fp2, 0x10(r1)
    bl PSVECMag
    stfs fp1, 0x8(r30)
    mr r3, r29
    bl PSMTXIdentity
    opword  0xC0028E6C  // lfs f0, lbl_8053BE0C@sda21(r0)
    lfs fp1, 0x0(r30)
    fcmpu cr0, fp0, fp1
    opword  0x41820030  // beq .L_800EF1A8
    opword  0xC0028E68  // lfs f0, lbl_8053BE08@sda21(r0)
    lfs fp2, 0x0(r28)
    fdivs fp3, fp0, fp1
    lfs fp1, 0x10(r28)
    lfs fp0, 0x20(r28)
    fmuls fp2, fp2, fp3
    fmuls fp1, fp1, fp3
    fmuls fp0, fp0, fp3
    stfs fp2, 0x0(r29)
    stfs fp1, 0x10(r29)
    stfs fp0, 0x20(r29)
L_800EF1A8:
    opword  0xC0028E6C  // lfs f0, lbl_8053BE0C@sda21(r0)
    lfs fp1, 0x4(r30)
    fcmpu cr0, fp0, fp1
    opword  0x41820030  // beq .L_800EF1E4
    opword  0xC0028E68  // lfs f0, lbl_8053BE08@sda21(r0)
    lfs fp2, 0x4(r28)
    fdivs fp3, fp0, fp1
    lfs fp1, 0x14(r28)
    lfs fp0, 0x24(r28)
    fmuls fp2, fp2, fp3
    fmuls fp1, fp1, fp3
    fmuls fp0, fp0, fp3
    stfs fp2, 0x4(r29)
    stfs fp1, 0x14(r29)
    stfs fp0, 0x24(r29)
L_800EF1E4:
    opword  0xC0028E6C  // lfs f0, lbl_8053BE0C@sda21(r0)
    lfs fp1, 0x8(r30)
    fcmpu cr0, fp0, fp1
    opword  0x41820030  // beq .L_800EF220
    opword  0xC0028E68  // lfs f0, lbl_8053BE08@sda21(r0)
    lfs fp2, 0x8(r28)
    fdivs fp3, fp0, fp1
    lfs fp1, 0x18(r28)
    lfs fp0, 0x28(r28)
    fmuls fp2, fp2, fp3
    fmuls fp1, fp1, fp3
    fmuls fp0, fp0, fp3
    stfs fp2, 0x8(r29)
    stfs fp1, 0x18(r29)
    stfs fp0, 0x28(r29)
L_800EF220:
    lfs fp0, 0xc(r28)
    lfs fp1, 0x1c(r28)
    stfs fp0, 0x0(r31)
    lfs fp0, 0x2c(r28)
    stfs fp1, 0x4(r31)
    stfs fp0, 0x8(r31)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800EF258(void)
{
    nofralloc
    lfs fp0, 0x0(r4)
    fcmpo cr0, fp1, fp0
    opword  0x4080000C  // bge .L_800EF26C
    lfs fp1, 0x4(r4)
    blr
L_800EF26C:
    clrlwi r3, r3, 16
    subi r0, r3, 0x1
    slwi r0, r0, 4
    lfsx fp0, r4, r0
    fcmpo cr0, fp0, fp1
    cror eq, lt, eq
    opword  0x40820044  // bne .L_800EF2C8
    add r3, r4, r0
    lfs fp1, 0x4(r3)
    blr
    opword  0x48000034  // b .L_800EF2C8
L_800EF298:
    srwi r0, r3, 31
    add r0, r0, r3
    srawi r5, r0, 1
    slwi r0, r5, 4
    lfsx fp0, r4, r0
    fcmpo cr0, fp1, fp0
    cror eq, gt, eq
    opword  0x40820010  // bne .L_800EF2C4
    add r4, r4, r0
    subf r3, r5, r3
    opword  0x48000008  // b .L_800EF2C8
L_800EF2C4:
    mr r3, r5
L_800EF2C8:
    cmpwi r3, 0x1
    opword  0x4181FFCC  // bgt .L_800EF298
    lfs fp0, 0x0(r4)
    lfs fp2, 0x10(r4)
    fsubs fp5, fp1, fp0
    lfs fp6, 0x4(r4)
    fsubs fp4, fp2, fp0
    lfs fp2, 0x14(r4)
    lfs fp7, 0xc(r4)
    lfs fp8, 0x18(r4)
    fdivs fp3, fp5, fp4
    fmuls fp0, fp3, fp3
    fsubs fp4, fp6, fp2
    fadds fp1, fp3, fp3
    fsubs fp2, fp0, fp3
    fmsubs fp0, fp1, fp2, fp0
    fmadds fp1, fp7, fp2, fp7
    fmadds fp0, fp0, fp4, fp6
    fmadds fp1, fp8, fp2, fp1
    fmsubs fp1, fp3, fp7, fp1
    fnmsubs fp1, fp5, fp1, fp0
    blr
}

ASM void fn_800EF320(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800EF350
    lis r5, lbl_8049C178@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049C178@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800EF350
    bl dtor_80084580
L_800EF350:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800EF368(void)
{
    nofralloc
    stwu r1, -0xf0(r1)
    mflr r0
    stw r0, 0xf4(r1)
    stfd fp31, 0xe0(r1)
    psq_st fp31, 0xe8(r1), 0, 0
    stfd fp30, 0xd0(r1)
    psq_st fp30, 0xd8(r1), 0, 0
    stfd fp29, 0xc0(r1)
    psq_st fp29, 0xc8(r1), 0, 0
    stfd fp28, 0xb0(r1)
    psq_st fp28, 0xb8(r1), 0, 0
    stmw r26, 0x98(r1)
    mr r27, r4
    mr r26, r3
    lwz r5, 0x4(r4)
    lis r3, 0x19
    lis r6, 0x4330
    lwz r30, 0x0(r4)
    lwz r31, 0x20(r5)
    li r4, -0x1
    lwz r29, 0x1c(r5)
    addi r7, r3, 0x660d
    lwz r28, 0x2c(r5)
    li r0, 0x0
    opword  0xC0428E78  // lfs f2, lbl_8053BE18@sda21(r0)
    addi r3, r27, 0xd8
    sth r4, 0x80(r26)
    addi r4, r27, 0x10
    opword  0xC8A28E90  // lfd f5, lbl_8053BE30@sda21(r0)
    addi r5, r26, 0xc
    lwz r8, 0xc4(r30)
    stw r6, 0x88(r1)
    mullw r6, r8, r7
    opword  0xC0028E7C  // lfs f0, lbl_8053BE1C@sda21(r0)
    addis r6, r6, 0x3c6f
    subi r6, r6, 0xca1
    stw r6, 0xc4(r30)
    srwi r6, r6, 9
    oris r6, r6, 0x3f80
    stw r6, 0x38(r1)
    lha r6, 0x52(r30)
    lfs fp1, 0x38(r1)
    xoris r7, r6, 0x8000
    lwz r6, 0x0(r28)
    stw r7, 0x8c(r1)
    fsubs fp1, fp1, fp2
    lfs fp3, 0x54(r6)
    lfd fp4, 0x88(r1)
    fnmsubs fp1, fp3, fp1, fp2
    fsubs fp2, fp4, fp5
    fmuls fp1, fp2, fp1
    fctiwz fp1, fp1
    stfd fp1, 0x90(r1)
    lwz r6, 0x94(r1)
    sth r6, 0x82(r26)
    stfs fp0, 0x84(r26)
    stw r0, 0x7c(r26)
    bl PSMTXMultVecSR
    lwz r3, 0xe8(r30)
    lwz r3, 0x2c(r3)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x41820010  // beq .L_800EF474
    lwz r0, 0x7c(r26)
    ori r0, r0, 0x20
    stw r0, 0x7c(r26)
L_800EF474:
    lfs fp0, 0x138(r27)
    opword  0xC0428E7C  // lfs f2, lbl_8053BE1C@sda21(r0)
    stfs fp0, 0x18(r26)
    lfs fp0, 0x13c(r27)
    stfs fp0, 0x1c(r26)
    lfs fp0, 0x140(r27)
    stfs fp0, 0x20(r26)
    lfs fp3, 0xc(r26)
    lfs fp1, 0x12c(r27)
    lfs fp0, 0x18(r26)
    lfs fp4, 0x10(r26)
    fmadds fp0, fp3, fp1, fp0
    lfs fp3, 0x130(r27)
    lfs fp1, 0x1c(r26)
    lfs fp6, 0x14(r26)
    lfs fp5, 0x134(r27)
    fmadds fp3, fp4, fp3, fp1
    lfs fp1, 0x20(r26)
    stfs fp0, 0x0(r26)
    fmadds fp0, fp6, fp5, fp1
    stfs fp3, 0x4(r26)
    stfs fp0, 0x8(r26)
    lfs fp4, 0x34(r30)
    fcmpu cr0, fp4, fp2
    opword  0x41820094  // beq .L_800EF568
    psq_l fp3, 0x1c(r27), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp29, 0x24(r27)
    ps_mul fp3, fp3, fp3
    opword  0xC0228E80  // lfs f1, lbl_8053BE20@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp5, fp29, fp29, fp3
    fmuls fp0, fp1, fp0
    ps_sum0 fp5, fp5, fp3, fp3
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x40820014  // bne .L_800EF518
    stfs fp2, 0x50(r1)
    stfs fp2, 0x4c(r1)
    stfs fp2, 0x48(r1)
    opword  0x48000060  // b .L_800EF574
L_800EF518:
    fcmpo cr0, fp5, fp2
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800EF528
    opword  0x48000024  // b .L_800EF548
L_800EF528:
    frsqrte fp3, fp5
    opword  0xC0428E84  // lfs f2, lbl_8053BE24@sda21(r0)
    opword  0xC0028E88  // lfs f0, lbl_8053BE28@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp5, fp1, fp0
    fmuls fp5, fp2, fp0
L_800EF548:
    fmuls fp31, fp5, fp4
    psq_l fp1, 0x1c(r27), 0, 0
    psq_l fp0, 0x24(r27), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x48(r1), 0, 0
    psq_st fp0, 0x50(r1), 1, 0
    opword  0x48000010  // b .L_800EF574
L_800EF568:
    stfs fp2, 0x50(r1)
    stfs fp2, 0x4c(r1)
    stfs fp2, 0x48(r1)
L_800EF574:
    lfs fp4, 0x38(r30)
    opword  0xC0428E7C  // lfs f2, lbl_8053BE1C@sda21(r0)
    fcmpu cr0, fp4, fp2
    opword  0x41820094  // beq .L_800EF614
    psq_l fp3, 0x28(r27), 0, 0
    lis r3, lbl_80539D44@ha
    lfs fp28, 0x30(r27)
    ps_mul fp3, fp3, fp3
    opword  0xC0228E80  // lfs f1, lbl_8053BE20@sda21(r0)
    lfs fp0, lbl_80539D44@l(r3)
    ps_madd fp5, fp28, fp28, fp3
    fmuls fp0, fp1, fp0
    ps_sum0 fp5, fp5, fp3, fp3
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x40820014  // bne .L_800EF5C4
    stfs fp2, 0x44(r1)
    stfs fp2, 0x40(r1)
    stfs fp2, 0x3c(r1)
    opword  0x48000060  // b .L_800EF620
L_800EF5C4:
    fcmpo cr0, fp5, fp2
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800EF5D4
    opword  0x48000024  // b .L_800EF5F4
L_800EF5D4:
    frsqrte fp3, fp5
    opword  0xC0428E84  // lfs f2, lbl_8053BE24@sda21(r0)
    opword  0xC0028E88  // lfs f0, lbl_8053BE28@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp5, fp1, fp0
    fmuls fp5, fp2, fp0
L_800EF5F4:
    fmuls fp30, fp5, fp4
    psq_l fp1, 0x28(r27), 0, 0
    psq_l fp0, 0x30(r27), 1, 0
    ps_muls0 fp1, fp1, fp30
    ps_muls0 fp0, fp0, fp30
    psq_st fp1, 0x3c(r1), 0, 0
    psq_st fp0, 0x44(r1), 1, 0
    opword  0x48000010  // b .L_800EF620
L_800EF614:
    stfs fp2, 0x44(r1)
    stfs fp2, 0x40(r1)
    stfs fp2, 0x3c(r1)
L_800EF620:
    lfs fp1, 0x3c(r30)
    opword  0xC0028E7C  // lfs f0, lbl_8053BE1C@sda21(r0)
    fcmpu cr0, fp1, fp0
    opword  0x418200B0  // beq .L_800EF6DC
    lis r3, 0x19
    lwz r0, 0xc4(r30)
    addi r6, r3, 0x660d
    opword  0xC0628E78  // lfs f3, lbl_8053BE18@sda21(r0)
    mullw r3, r0, r6
    opword  0xC0228E8C  // lfs f1, lbl_8053BE2C@sda21(r0)
    addi r5, r1, 0x54
    addis r3, r3, 0x3c6f
    subi r0, r3, 0xca1
    stw r0, 0xc4(r30)
    srwi r0, r0, 16
    extsh r4, r0
    lwz r0, 0xc4(r30)
    mullw r3, r0, r6
    addis r3, r3, 0x3c6f
    subi r3, r3, 0xca1
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x2c(r1)
    lfs fp2, 0x40(r30)
    lfs fp0, 0x2c(r1)
    fsubs fp0, fp0, fp3
    fadds fp0, fp0, fp0
    fsubs fp0, fp0, fp3
    fmuls fp0, fp1, fp0
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x90(r1)
    lwz r3, 0x94(r1)
    bl fn_800EEF94
    addi r4, r1, 0x54
    addi r3, r27, 0x48
    mr r5, r4
    bl PSMTXConcat
    lfs fp3, 0x3c(r30)
    lfs fp2, 0x5c(r1)
    lfs fp1, 0x6c(r1)
    lfs fp0, 0x7c(r1)
    fmuls fp6, fp3, fp2
    fmuls fp8, fp3, fp1
    fmuls fp0, fp3, fp0
    opword  0x4800000C  // b .L_800EF6E4
L_800EF6DC:
    fmr fp8, fp0
    fmr fp6, fp0
L_800EF6E4:
    lfs fp2, 0x44(r30)
    opword  0xC0228E7C  // lfs f1, lbl_8053BE1C@sda21(r0)
    fcmpu cr0, fp2, fp1
    opword  0x418200B4  // beq .L_800EF7A4
    lis r3, 0x19
    lwz r0, 0xc4(r30)
    addi r4, r3, 0x660d
    opword  0xC0A28E78  // lfs f5, lbl_8053BE18@sda21(r0)
    mullw r3, r0, r4
    opword  0xC0828E84  // lfs f4, lbl_8053BE24@sda21(r0)
    addis r3, r3, 0x3c6f
    subi r0, r3, 0xca1
    stw r0, 0xc4(r30)
    srwi r0, r0, 9
    oris r3, r0, 0x3f80
    lwz r0, 0xc4(r30)
    stw r3, 0x10(r1)
    mullw r3, r0, r4
    lfs fp2, 0x44(r30)
    lfs fp1, 0x10(r1)
    fsubs fp1, fp1, fp5
    addis r3, r3, 0x3c6f
    subi r0, r3, 0xca1
    fsubs fp1, fp1, fp4
    stw r0, 0xc4(r30)
    srwi r0, r0, 9
    oris r3, r0, 0x3f80
    lwz r0, 0xc4(r30)
    fmuls fp1, fp2, fp1
    stw r3, 0xc(r1)
    mullw r3, r0, r4
    lfs fp3, 0x44(r30)
    lfs fp2, 0xc(r1)
    fsubs fp2, fp2, fp5
    addis r3, r3, 0x3c6f
    subi r3, r3, 0xca1
    fsubs fp2, fp2, fp4
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x8(r1)
    fmuls fp9, fp3, fp2
    lfs fp3, 0x44(r30)
    lfs fp2, 0x8(r1)
    fsubs fp2, fp2, fp5
    fsubs fp2, fp2, fp4
    fmuls fp5, fp3, fp2
    opword  0x4800000C  // b .L_800EF7AC
L_800EF7A4:
    fmr fp9, fp1
    fmr fp5, fp1
L_800EF7AC:
    lis r3, 0x19
    lwz r4, 0xc4(r30)
    addi r0, r3, 0x660d
    lfs fp3, 0x48(r1)
    mullw r3, r4, r0
    lfs fp2, 0x3c(r1)
    lfs fp4, 0x4c(r1)
    fadds fp2, fp3, fp2
    lfs fp3, 0x40(r1)
    opword  0xC0E28E78  // lfs f7, lbl_8053BE18@sda21(r0)
    addis r3, r3, 0x3c6f
    fadds fp3, fp4, fp3
    subi r3, r3, 0xca1
    fadds fp2, fp6, fp2
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x28(r1)
    fadds fp3, fp8, fp3
    fadds fp2, fp5, fp2
    lwz r3, 0x0(r28)
    lfs fp4, 0x28(r1)
    lfs fp5, 0x50(r1)
    fadds fp3, fp9, fp3
    fsubs fp8, fp4, fp7
    lfs fp4, 0x44(r1)
    lfs fp6, 0x48(r3)
    fadds fp4, fp5, fp4
    fadds fp5, fp8, fp8
    fadds fp0, fp0, fp4
    fsubs fp4, fp5, fp7
    fadds fp1, fp1, fp0
    fmadds fp4, fp4, fp6, fp7
    fmuls fp0, fp4, fp2
    fmuls fp2, fp4, fp3
    fmuls fp1, fp4, fp1
    stfs fp0, 0x30(r26)
    stfs fp2, 0x34(r26)
    stfs fp1, 0x38(r26)
    lwz r3, 0xe8(r30)
    lwz r3, 0x2c(r3)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x41820024  // beq .L_800EF880
    psq_l fp1, 0x30(r26), 0, 0
    psq_l fp0, 0x0(r30), 0, 0
    ps_mul fp0, fp1, fp0
    psq_st fp0, 0x30(r26), 0, 0
    lfs fp1, 0x38(r26)
    lfs fp0, 0x8(r30)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x38(r26)
L_800EF880:
    addi r4, r26, 0x30
    addi r3, r27, 0xa8
    mr r5, r4
    bl PSMTXMultVecSR
    opword  0xC0028E7C  // lfs f0, lbl_8053BE1C@sda21(r0)
    lis r4, 0x19
    lis r3, 0x4330
    opword  0xC0628E78  // lfs f3, lbl_8053BE18@sda21(r0)
    stfs fp0, 0x44(r26)
    addi r0, r4, 0x660d
    li r4, 0x0
    opword  0xC8228E98  // lfd f1, lbl_8053BE38@sda21(r0)
    stfs fp0, 0x40(r26)
    cmplwi r31, 0x0
    stfs fp0, 0x3c(r26)
    lwz r5, 0xc4(r30)
    stw r3, 0x90(r1)
    mullw r3, r5, r0
    addis r3, r3, 0x3c6f
    subi r5, r3, 0xca1
    srwi r3, r5, 9
    stw r5, 0xc4(r30)
    oris r3, r3, 0x3f80
    stw r3, 0x34(r1)
    lwz r3, 0x0(r28)
    lfs fp0, 0x34(r1)
    lfs fp2, 0x64(r3)
    fsubs fp0, fp0, fp3
    fnmsubs fp0, fp2, fp0, fp3
    stfs fp0, 0x70(r26)
    stfs fp3, 0x74(r26)
    stw r4, 0x78(r26)
    lfs fp4, 0xcc(r27)
    lfs fp2, 0xbc(r27)
    lfs fp0, 0xac(r27)
    stfs fp0, 0x54(r26)
    stfs fp2, 0x58(r26)
    stfs fp4, 0x5c(r26)
    lbz r3, 0x108(r30)
    stb r3, 0x8c(r26)
    lbz r3, 0x109(r30)
    stb r3, 0x8d(r26)
    lbz r3, 0x10a(r30)
    stb r3, 0x8e(r26)
    lbz r3, 0x10b(r30)
    stb r3, 0x8f(r26)
    lbz r3, 0x10c(r30)
    stb r3, 0x90(r26)
    lbz r3, 0x10d(r30)
    stb r3, 0x91(r26)
    lbz r3, 0x10e(r30)
    stb r3, 0x92(r26)
    lbz r3, 0x10f(r30)
    stb r3, 0x93(r26)
    lwz r3, 0xc4(r30)
    lwz r4, 0x0(r29)
    mullw r3, r3, r0
    lbz r4, 0x2e(r4)
    stw r4, 0x94(r1)
    addis r3, r3, 0x3c6f
    lfd fp0, 0x90(r1)
    subi r4, r3, 0xca1
    srwi r3, r4, 9
    fsubs fp0, fp0, fp1
    oris r3, r3, 0x3f80
    stw r4, 0xc4(r30)
    stw r3, 0x30(r1)
    lfs fp1, 0x30(r1)
    fsubs fp1, fp1, fp3
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x88(r1)
    lwz r3, 0x8c(r1)
    stb r3, 0x95(r26)
    opword  0x41820068  // beq .L_800EFA10
    lwz r3, 0x0(r31)
    lwz r3, 0x8(r3)
    clrlwi. r3, r3, 31
    opword  0x41820058  // beq .L_800EFA10
    lwz r3, 0xc4(r30)
    mullw r3, r3, r0
    addis r3, r3, 0x3c6f
    subi r3, r3, 0xca1
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x24(r1)
    lwz r3, 0x0(r31)
    lfs fp1, 0x24(r1)
    lfs fp0, 0x24(r3)
    fsubs fp1, fp1, fp3
    lfs fp2, 0xfc(r30)
    fadds fp1, fp1, fp1
    fsubs fp1, fp1, fp3
    fmadds fp0, fp1, fp0, fp3
    fmuls fp0, fp2, fp0
    stfs fp0, 0x68(r26)
    stfs fp0, 0x64(r26)
    stfs fp0, 0x60(r26)
    opword  0x48000014  // b .L_800EFA20
L_800EFA10:
    lfs fp0, 0xfc(r30)
    stfs fp0, 0x68(r26)
    stfs fp0, 0x64(r26)
    stfs fp0, 0x60(r26)
L_800EFA20:
    li r0, 0xff
    cmplwi r31, 0x0
    stb r0, 0x96(r26)
    opword  0x41820064  // beq .L_800EFA90
    lwz r3, 0x0(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 14, 14
    opword  0x41820054  // beq .L_800EFA90
    lis r3, 0x19
    lwz r4, 0xc4(r30)
    addi r0, r3, 0x660d
    opword  0xC0428E78  // lfs f2, lbl_8053BE18@sda21(r0)
    mullw r3, r4, r0
    addis r3, r3, 0x3c6f
    subi r3, r3, 0xca1
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x20(r1)
    lwz r3, 0x0(r31)
    lfs fp1, 0x20(r1)
    lfs fp0, 0x44(r3)
    fsubs fp1, fp1, fp2
    fadds fp1, fp1, fp1
    fsubs fp1, fp1, fp2
    fmadds fp0, fp1, fp0, fp2
    stfs fp0, 0x6c(r26)
    opword  0x4800000C  // b .L_800EFA98
L_800EFA90:
    opword  0xC0028E78  // lfs f0, lbl_8053BE18@sda21(r0)
    stfs fp0, 0x6c(r26)
L_800EFA98:
    cmplwi r31, 0x0
    opword  0x41820130  // beq .L_800EFBCC
    lwz r3, 0x0(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 7, 7
    opword  0x41820110  // beq .L_800EFBBC
    lis r3, 0x19
    lwz r0, 0xc4(r30)
    addi r4, r3, 0x660d
    opword  0xC0628E78  // lfs f3, lbl_8053BE18@sda21(r0)
    mullw r3, r0, r4
    opword  0xC0228E84  // lfs f1, lbl_8053BE24@sda21(r0)
    addis r3, r3, 0x3c6f
    subi r3, r3, 0xca1
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x1c(r1)
    lwz r3, 0x0(r31)
    lfs fp0, 0x1c(r1)
    lfs fp4, 0x50(r3)
    fsubs fp2, fp0, fp3
    lfs fp0, 0x4c(r3)
    fsubs fp1, fp2, fp1
    fmadds fp0, fp4, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x90(r1)
    lwz r0, 0x94(r1)
    sth r0, 0x88(r26)
    lwz r0, 0xc4(r30)
    mullw r3, r0, r4
    addis r3, r3, 0x3c6f
    subi r3, r3, 0xca1
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x18(r1)
    lwz r3, 0x0(r31)
    lfs fp0, 0x18(r1)
    lfs fp1, 0x58(r3)
    fsubs fp0, fp0, fp3
    lfs fp2, 0x54(r3)
    fadds fp0, fp0, fp0
    fsubs fp0, fp0, fp3
    fmadds fp0, fp1, fp0, fp3
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x88(r1)
    lwz r0, 0x8c(r1)
    sth r0, 0x8a(r26)
    lwz r0, 0xc4(r30)
    mullw r3, r0, r4
    addis r3, r3, 0x3c6f
    subi r3, r3, 0xca1
    srwi r0, r3, 9
    stw r3, 0xc4(r30)
    oris r0, r0, 0x3f80
    stw r0, 0x14(r1)
    lwz r3, 0x0(r31)
    lfs fp1, 0x14(r1)
    lfs fp0, 0x5c(r3)
    fsubs fp1, fp1, fp3
    fadds fp1, fp1, fp1
    fsubs fp1, fp1, fp3
    fcmpo cr0, fp1, fp0
    opword  0x4080000C  // bge .L_800EFBA8
    lha r0, 0x8a(r26)
    opword  0x48000010  // b .L_800EFBB4
L_800EFBA8:
    lha r0, 0x8a(r26)
    neg r0, r0
    extsh r0, r0
L_800EFBB4:
    sth r0, 0x8a(r26)
    opword  0x48000020  // b .L_800EFBD8
L_800EFBBC:
    li r0, 0x0
    sth r0, 0x88(r26)
    sth r0, 0x8a(r26)
    opword  0x48000010  // b .L_800EFBD8
L_800EFBCC:
    li r0, 0x0
    sth r0, 0x88(r26)
    sth r0, 0x8a(r26)
L_800EFBD8:
    psq_l fp31, 0xe8(r1), 0, 0
    lfd fp31, 0xe0(r1)
    psq_l fp30, 0xd8(r1), 0, 0
    lfd fp30, 0xd0(r1)
    psq_l fp29, 0xc8(r1), 0, 0
    lfd fp29, 0xc0(r1)
    psq_l fp28, 0xb8(r1), 0, 0
    lfd fp28, 0xb0(r1)
    lmw r26, 0x98(r1)
    lwz r0, 0xf4(r1)
    mtlr r0
    addi r1, r1, 0xf0
    blr
}

ASM void fn_800EFC0C(void)
{
    nofralloc
    stwu r1, -0xc0(r1)
    mflr r0
    stw r0, 0xc4(r1)
    stfd fp31, 0xb0(r1)
    psq_st fp31, 0xb8(r1), 0, 0
    stw r31, 0xac(r1)
    stw r30, 0xa8(r1)
    stw r29, 0xa4(r1)
    lwz r6, 0x4(r4)
    mr r29, r3
    lwz r3, 0x0(r4)
    li r4, -0x1
    lwz r31, 0x24(r6)
    li r0, 0x4
    opword  0xC0C28E7C  // lfs f6, lbl_8053BE1C@sda21(r0)
    mr r30, r5
    sth r4, 0x80(r29)
    lwz r4, 0x0(r31)
    lha r4, 0x40(r4)
    sth r4, 0x82(r29)
    stfs fp6, 0x84(r29)
    stw r0, 0x7c(r29)
    lfs fp1, 0xc(r5)
    stfs fp1, 0xc(r29)
    lfs fp1, 0x10(r5)
    stfs fp1, 0x10(r29)
    lfs fp1, 0x14(r5)
    stfs fp1, 0x14(r29)
    lwz r4, 0x0(r31)
    lfs fp9, 0xc(r4)
    fcmpu cr0, fp6, fp9
    opword  0x41820164  // beq .L_800EFDEC
    lis r4, 0x19
    lwz r0, 0xc4(r3)
    addi r6, r4, 0x660d
    opword  0xC0A28E78  // lfs f5, lbl_8053BE18@sda21(r0)
    mullw r5, r0, r6
    opword  0xC0828E84  // lfs f4, lbl_8053BE24@sda21(r0)
    lis r4, lbl_80539D44@ha
    opword  0xC0428E80  // lfs f2, lbl_8053BE20@sda21(r0)
    addis r5, r5, 0x3c6f
    subi r0, r5, 0xca1
    stw r0, 0xc4(r3)
    srwi r0, r0, 9
    oris r5, r0, 0x3f80
    lwz r0, 0xc4(r3)
    stw r5, 0x1c(r1)
    mullw r5, r0, r6
    lfs fp1, 0x1c(r1)
    fsubs fp1, fp1, fp5
    addis r5, r5, 0x3c6f
    subi r0, r5, 0xca1
    fsubs fp3, fp1, fp4
    stw r0, 0xc4(r3)
    srwi r0, r0, 9
    oris r5, r0, 0x3f80
    lwz r0, 0xc4(r3)
    stw r5, 0x18(r1)
    mullw r5, r0, r6
    lfs fp1, 0x18(r1)
    stfs fp3, 0x3c(r1)
    fsubs fp1, fp1, fp5
    addis r5, r5, 0x3c6f
    subi r5, r5, 0xca1
    fsubs fp8, fp1, fp4
    srwi r0, r5, 9
    stw r5, 0xc4(r3)
    oris r0, r0, 0x3f80
    stw r0, 0x14(r1)
    lwz r0, 0xc4(r3)
    lfs fp1, 0x14(r1)
    mullw r5, r0, r6
    stfs fp8, 0x38(r1)
    fsubs fp1, fp1, fp5
    fsubs fp1, fp1, fp4
    addis r5, r5, 0x3c6f
    subi r5, r5, 0xca1
    stfs fp1, 0x34(r1)
    srwi r0, r5, 9
    oris r0, r0, 0x3f80
    psq_l fp8, 0x34(r1), 0, 0
    stw r5, 0xc4(r3)
    ps_mul fp8, fp8, fp8
    lfs fp1, lbl_80539D44@l(r4)
    stw r0, 0x24(r1)
    ps_madd fp10, fp3, fp3, fp8
    lfs fp3, 0x24(r1)
    fmuls fp1, fp2, fp1
    ps_sum0 fp10, fp10, fp8, fp8
    fsubs fp2, fp3, fp5
    fcmpo cr0, fp10, fp1
    fmuls fp5, fp9, fp2
    cror eq, lt, eq
    opword  0x4182004C  // beq .L_800EFDCC
    fcmpo cr0, fp10, fp6
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800EFD94
    opword  0x48000020  // b .L_800EFDB0
L_800EFD94:
    frsqrte fp3, fp10
    opword  0xC0228E88  // lfs f1, lbl_8053BE28@sda21(r0)
    frsp fp3, fp3
    fmuls fp2, fp3, fp3
    fmuls fp3, fp4, fp3
    fnmsubs fp1, fp10, fp2, fp1
    fmuls fp10, fp3, fp1
L_800EFDB0:
    fmuls fp7, fp10, fp5
    psq_l fp2, 0x34(r1), 0, 0
    psq_l fp1, 0x3c(r1), 1, 0
    ps_muls0 fp2, fp2, fp7
    ps_muls0 fp1, fp1, fp7
    psq_st fp2, 0x34(r1), 0, 0
    psq_st fp1, 0x3c(r1), 1, 0
L_800EFDCC:
    psq_l fp3, 0xc(r29), 0, 0
    psq_l fp2, 0x34(r1), 0, 0
    psq_l fp1, 0x3c(r1), 1, 0
    ps_add fp2, fp3, fp2
    psq_st fp2, 0xc(r29), 0, 0
    psq_l fp2, 0x14(r29), 1, 0
    ps_add fp1, fp2, fp1
    psq_st fp1, 0x14(r29), 1, 0
L_800EFDEC:
    lwz r4, 0xe8(r3)
    lwz r4, 0x2c(r4)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 27, 27
    opword  0x41820010  // beq .L_800EFE10
    lwz r0, 0x7c(r29)
    ori r0, r0, 0x20
    stw r0, 0x7c(r29)
L_800EFE10:
    lfs fp1, 0x18(r30)
    lis r5, 0x19
    addi r7, r5, 0x660d
    opword  0xC0C28E78  // lfs f6, lbl_8053BE18@sda21(r0)
    stfs fp1, 0x18(r29)
    lis r4, lbl_80539D44@ha
    opword  0xC0428E80  // lfs f2, lbl_8053BE20@sda21(r0)
    lfs fp1, 0x1c(r30)
    stfs fp1, 0x1c(r29)
    lfs fp1, 0x20(r30)
    stfs fp1, 0x20(r29)
    lwz r0, 0xc4(r3)
    mullw r5, r0, r7
    addis r5, r5, 0x3c6f
    subi r0, r5, 0xca1
    stw r0, 0xc4(r3)
    srwi r0, r0, 9
    oris r6, r0, 0x3f80
    lwz r0, 0xc4(r3)
    lwz r8, 0x0(r31)
    mullw r5, r0, r7
    stw r6, 0x20(r1)
    lfs fp5, 0x10(r8)
    lfs fp1, 0x20(r1)
    lfs fp4, 0x14(r8)
    fsubs fp1, fp1, fp6
    addis r5, r5, 0x3c6f
    subi r0, r5, 0xca1
    fadds fp1, fp1, fp1
    stw r0, 0xc4(r3)
    srwi r0, r0, 9
    oris r5, r0, 0x3f80
    lwz r0, 0xc4(r3)
    fsubs fp3, fp1, fp6
    stw r5, 0x10(r1)
    mullw r5, r0, r7
    lfs fp1, 0x10(r1)
    fmadds fp3, fp4, fp3, fp6
    fsubs fp1, fp1, fp6
    fmuls fp7, fp5, fp3
    addis r5, r5, 0x3c6f
    subi r0, r5, 0xca1
    fadds fp1, fp1, fp1
    stw r0, 0xc4(r3)
    srwi r0, r0, 9
    oris r5, r0, 0x3f80
    lwz r0, 0xc4(r3)
    fsubs fp3, fp1, fp6
    stw r5, 0xc(r1)
    mullw r5, r0, r7
    lfs fp1, 0xc(r1)
    fsubs fp1, fp1, fp6
    addis r5, r5, 0x3c6f
    subi r5, r5, 0xca1
    fadds fp1, fp1, fp1
    srwi r0, r5, 9
    stw r5, 0xc4(r3)
    oris r0, r0, 0x3f80
    stw r0, 0x8(r1)
    fsubs fp4, fp1, fp6
    lfs fp1, lbl_80539D44@l(r4)
    lfs fp5, 0x8(r1)
    fmuls fp1, fp2, fp1
    stfs fp4, 0x2c(r1)
    fsubs fp2, fp5, fp6
    stfs fp3, 0x30(r1)
    fadds fp2, fp2, fp2
    fsubs fp2, fp2, fp6
    stfs fp2, 0x28(r1)
    psq_l fp2, 0x28(r1), 0, 0
    ps_mul fp2, fp2, fp2
    ps_madd fp5, fp3, fp3, fp2
    ps_sum0 fp5, fp5, fp2, fp2
    fcmpo cr0, fp5, fp1
    cror eq, lt, eq
    opword  0x41820054  // beq .L_800EFF90
    opword  0xC0228E7C  // lfs f1, lbl_8053BE1C@sda21(r0)
    fcmpo cr0, fp5, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800EFF54
    opword  0x48000024  // b .L_800EFF74
L_800EFF54:
    frsqrte fp4, fp5
    opword  0xC0628E84  // lfs f3, lbl_8053BE24@sda21(r0)
    opword  0xC0228E88  // lfs f1, lbl_8053BE28@sda21(r0)
    frsp fp4, fp4
    fmuls fp2, fp4, fp4
    fmuls fp3, fp3, fp4
    fnmsubs fp1, fp5, fp2, fp1
    fmuls fp5, fp3, fp1
L_800EFF74:
    fmuls fp0, fp5, fp7
    psq_l fp1, 0x28(r1), 0, 0
    psq_l fp2, 0x30(r1), 1, 0
    ps_muls0 fp1, fp1, fp0
    ps_muls0 fp0, fp2, fp0
    psq_st fp1, 0x28(r1), 0, 0
    psq_st fp0, 0x30(r1), 1, 0
L_800EFF90:
    lwz r6, 0x0(r31)
    addi r3, r30, 0x30
    addi r4, r1, 0x28
    addi r5, r29, 0x30
    lfs fp1, 0x18(r6)
    bl fn_800932AC
    lwz r3, 0x0(r31)
    psq_l fp1, 0x48(r30), 0, 0
    lfs fp31, 0x18(r3)
    psq_l fp0, 0x50(r30), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x3c(r29), 0, 0
    psq_st fp0, 0x44(r29), 1, 0
    lfs fp0, 0x70(r30)
    stfs fp0, 0x70(r29)
    lwz r3, 0x0(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 10, 10
    opword  0x41820010  // beq .L_800EFFEC
    lfs fp0, 0x74(r30)
    stfs fp0, 0x74(r29)
    opword  0x48000018  // b .L_800F0000
L_800EFFEC:
    lwz r0, 0x7c(r29)
    opword  0xC0028E78  // lfs f0, lbl_8053BE18@sda21(r0)
    ori r0, r0, 0x40
    stw r0, 0x7c(r29)
    stfs fp0, 0x74(r29)
L_800F0000:
    lwz r0, 0x78(r30)
    stw r0, 0x78(r29)
    lfs fp0, 0x3c(r29)
    stfs fp0, 0x48(r29)
    lfs fp0, 0x40(r29)
    stfs fp0, 0x4c(r29)
    lfs fp0, 0x44(r29)
    stfs fp0, 0x50(r29)
    lfs fp3, 0x70(r29)
    lfs fp2, 0x74(r29)
    lfs fp1, 0x30(r29)
    fmuls fp4, fp3, fp2
    lfs fp0, 0x48(r29)
    lfs fp2, 0x34(r29)
    fadds fp0, fp1, fp0
    lfs fp1, 0x4c(r29)
    lfs fp3, 0x38(r29)
    fadds fp1, fp2, fp1
    lfs fp2, 0x50(r29)
    fmuls fp0, fp4, fp0
    fadds fp2, fp3, fp2
    fmuls fp1, fp4, fp1
    stfs fp0, 0x24(r29)
    fmuls fp0, fp4, fp2
    stfs fp1, 0x28(r29)
    stfs fp0, 0x2c(r29)
    lfs fp0, 0x54(r30)
    stfs fp0, 0x54(r29)
    lfs fp0, 0x58(r30)
    stfs fp0, 0x58(r29)
    lfs fp0, 0x5c(r30)
    stfs fp0, 0x5c(r29)
    lwz r3, 0x0(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 15, 15
    opword  0x41820034  // beq .L_800F00C0
    lfs fp1, 0x60(r30)
    lfs fp0, 0x28(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x68(r29)
    stfs fp0, 0x60(r29)
    lwz r3, 0x0(r31)
    lfs fp1, 0x64(r30)
    lfs fp0, 0x28(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x6c(r29)
    stfs fp0, 0x64(r29)
    opword  0x48000018  // b .L_800F00D4
L_800F00C0:
    opword  0xC0028E78  // lfs f0, lbl_8053BE18@sda21(r0)
    stfs fp0, 0x6c(r29)
    stfs fp0, 0x64(r29)
    stfs fp0, 0x68(r29)
    stfs fp0, 0x60(r29)
L_800F00D4:
    lwz r4, 0x0(r31)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 13, 13
    opword  0x4182012C  // beq .L_800F020C
    lbz r3, 0x8c(r30)
    lis r0, 0x4330
    stw r0, 0x40(r1)
    opword  0xC8428E98  // lfd f2, lbl_8053BE38@sda21(r0)
    stw r3, 0x44(r1)
    lfs fp0, 0x30(r4)
    lfd fp1, 0x40(r1)
    stw r0, 0x50(r1)
    fsubs fp1, fp1, fp2
    stw r0, 0x60(r1)
    fmuls fp0, fp1, fp0
    stw r0, 0x70(r1)
    stw r0, 0x80(r1)
    fctiwz fp0, fp0
    stw r0, 0x90(r1)
    stfd fp0, 0x48(r1)
    lwz r0, 0x4c(r1)
    stb r0, 0x8c(r29)
    lbz r0, 0x8d(r30)
    lwz r3, 0x0(r31)
    stw r0, 0x54(r1)
    lfs fp0, 0x30(r3)
    lfd fp1, 0x50(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x58(r1)
    lwz r0, 0x5c(r1)
    stb r0, 0x8d(r29)
    lbz r0, 0x8e(r30)
    lwz r3, 0x0(r31)
    stw r0, 0x64(r1)
    lfs fp0, 0x30(r3)
    lfd fp1, 0x60(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x68(r1)
    lwz r0, 0x6c(r1)
    stb r0, 0x8e(r29)
    lbz r0, 0x90(r30)
    lwz r3, 0x0(r31)
    stw r0, 0x74(r1)
    lfs fp0, 0x30(r3)
    lfd fp1, 0x70(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x78(r1)
    lwz r0, 0x7c(r1)
    stb r0, 0x90(r29)
    lbz r0, 0x91(r30)
    lwz r3, 0x0(r31)
    stw r0, 0x84(r1)
    lfs fp0, 0x30(r3)
    lfd fp1, 0x80(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x88(r1)
    lwz r0, 0x8c(r1)
    stb r0, 0x91(r29)
    lbz r0, 0x92(r30)
    lwz r3, 0x0(r31)
    stw r0, 0x94(r1)
    lfs fp0, 0x30(r3)
    lfd fp1, 0x90(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x98(r1)
    lwz r0, 0x9c(r1)
    stb r0, 0x92(r29)
    opword  0x48000048  // b .L_800F0250
L_800F020C:
    lbz r0, 0x34(r4)
    stb r0, 0x8c(r29)
    lbz r0, 0x35(r4)
    stb r0, 0x8d(r29)
    lbz r0, 0x36(r4)
    stb r0, 0x8e(r29)
    lbz r0, 0x37(r4)
    stb r0, 0x8f(r29)
    lwz r3, 0x0(r31)
    lbz r0, 0x38(r3)
    stb r0, 0x90(r29)
    lbz r0, 0x39(r3)
    stb r0, 0x91(r29)
    lbz r0, 0x3a(r3)
    stb r0, 0x92(r29)
    lbz r0, 0x3b(r3)
    stb r0, 0x93(r29)
L_800F0250:
    li r0, 0xff
    stb r0, 0x96(r29)
    lwz r5, 0x0(r31)
    lwz r0, 0x8(r5)
    rlwinm. r0, r0, 0, 14, 14
    opword  0x4182004C  // beq .L_800F02B0
    lbz r3, 0x96(r30)
    lis r0, 0x4330
    lbz r4, 0x8f(r30)
    addi r3, r3, 0x1
    stw r0, 0x98(r1)
    mullw r0, r4, r3
    opword  0xC8428E98  // lfd f2, lbl_8053BE38@sda21(r0)
    lfs fp0, 0x2c(r5)
    extrwi r0, r0, 8, 16
    stw r0, 0x9c(r1)
    lfd fp1, 0x98(r1)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x90(r1)
    lwz r0, 0x94(r1)
    stb r0, 0x8f(r29)
    opword  0x4800000C  // b .L_800F02B8
L_800F02B0:
    lbz r0, 0x37(r5)
    stb r0, 0x8f(r29)
L_800F02B8:
    lhz r0, 0x88(r30)
    sth r0, 0x88(r29)
    lwz r3, 0x0(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 7, 7
    opword  0x41820010  // beq .L_800F02DC
    lha r0, 0x46(r3)
    sth r0, 0x8a(r29)
    opword  0x4800000C  // b .L_800F02E4
L_800F02DC:
    li r0, 0x0
    sth r0, 0x8a(r29)
L_800F02E4:
    li r0, 0x0
    stb r0, 0x94(r29)
    psq_l fp31, 0xb8(r1), 0, 0
    lwz r0, 0xc4(r1)
    lfd fp31, 0xb0(r1)
    lwz r31, 0xac(r1)
    lwz r30, 0xa8(r1)
    lwz r29, 0xa4(r1)
    mtlr r0
    addi r1, r1, 0xc0
    blr
}

ASM void fn_800F0310(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stfd fp31, 0x30(r1)
    psq_st fp31, 0x38(r1), 0, 0
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    mr r30, r3
    mr r31, r4
    lha r3, 0x80(r3)
    addi r0, r3, 0x1
    sth r0, 0x80(r30)
    extsh r3, r0
    lha r0, 0x82(r30)
    cmpw r3, r0
    opword  0x4180000C  // blt .L_800F035C
    li r3, 0x1
    opword  0x48000220  // b .L_800F0578
L_800F035C:
    lha r4, 0x80(r30)
    lis r3, 0x4330
    xoris r0, r0, 0x8000
    stw r3, 0x8(r1)
    xoris r4, r4, 0x8000
    opword  0xC8428E90  // lfd f2, lbl_8053BE30@sda21(r0)
    stw r4, 0xc(r1)
    lfd fp0, 0x8(r1)
    stw r0, 0x14(r1)
    fsubs fp1, fp0, fp2
    stw r3, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp1, fp0
    stfs fp0, 0x84(r30)
    lwz r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 26, 26
    opword  0x4182001C  // beq .L_800F03BC
    lfs fp0, 0x138(r31)
    stfs fp0, 0x18(r30)
    lfs fp0, 0x13c(r31)
    stfs fp0, 0x1c(r30)
    lfs fp0, 0x140(r31)
    stfs fp0, 0x20(r30)
L_800F03BC:
    opword  0xC0028E7C  // lfs f0, lbl_8053BE1C@sda21(r0)
    stfs fp0, 0x50(r30)
    stfs fp0, 0x4c(r30)
    stfs fp0, 0x48(r30)
    lwz r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 25, 25
    opword  0x40820014  // bne .L_800F03E8
    lwz r3, 0x4(r31)
    mr r4, r31
    mr r5, r30
    bl fn_800F2F60
L_800F03E8:
    psq_l fp1, 0x48(r30), 0, 0
    psq_l fp0, 0x3c(r30), 0, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x48(r30), 0, 0
    psq_l fp1, 0x50(r30), 1, 0
    psq_l fp0, 0x44(r30), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r30), 1, 0
    lwz r3, 0x0(r31)
    psq_l fp1, 0x30(r30), 0, 0
    lfs fp31, 0x48(r3)
    psq_l fp0, 0x38(r30), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x30(r30), 0, 0
    psq_st fp0, 0x38(r30), 1, 0
    lfs fp3, 0x70(r30)
    lfs fp2, 0x74(r30)
    lfs fp1, 0x30(r30)
    lfs fp0, 0x48(r30)
    fmuls fp4, fp3, fp2
    lfs fp2, 0x34(r30)
    fadds fp0, fp1, fp0
    lfs fp1, 0x4c(r30)
    lfs fp3, 0x38(r30)
    fadds fp1, fp2, fp1
    lfs fp2, 0x50(r30)
    fmuls fp0, fp4, fp0
    fadds fp2, fp3, fp2
    fmuls fp1, fp4, fp1
    stfs fp0, 0x24(r30)
    fmuls fp0, fp4, fp2
    stfs fp1, 0x28(r30)
    stfs fp0, 0x2c(r30)
    lwz r4, 0x0(r31)
    lwz r3, 0xf0(r4)
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800F0494
    lwz r12, 0x0(r3)
    mr r5, r30
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
L_800F0494:
    lwz r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x4182000C  // beq .L_800F04A8
    li r3, 0x1
    opword  0x480000D4  // b .L_800F0578
L_800F04A8:
    lwz r3, 0x4(r31)
    mr r4, r31
    mr r5, r30
    bl fn_800F2E78
    lhz r3, 0x88(r30)
    lha r0, 0x8a(r30)
    add r0, r3, r0
    sth r0, 0x88(r30)
    lwz r3, 0x4(r31)
    lwz r0, 0x24(r3)
    cmplwi r0, 0x0
    opword  0x41820044  // beq .L_800F0518
    mr r3, r30
    mr r4, r31
    bl fn_800F07FC
    clrlwi. r0, r3, 24
    opword  0x41820030  // beq .L_800F0518
    lwz r3, 0x4(r31)
    lwz r3, 0x24(r3)
    lwz r3, 0x0(r3)
    lha r29, 0x42(r3)
    opword  0x48000014  // b .L_800F0510
L_800F0500:
    lwz r3, 0x0(r31)
    mr r4, r30
    bl fn_800EB6BC
    subi r29, r29, 0x1
L_800F0510:
    cmpwi r29, 0x0
    opword  0x4181FFEC  // bgt .L_800F0500
L_800F0518:
    psq_l fp1, 0xc(r30), 0, 0
    li r3, 0x0
    psq_l fp0, 0x24(r30), 0, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0xc(r30), 0, 0
    psq_l fp1, 0x14(r30), 1, 0
    psq_l fp0, 0x2c(r30), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x14(r30), 1, 0
    lfs fp2, 0xc(r30)
    lfs fp1, 0x12c(r31)
    lfs fp0, 0x18(r30)
    lfs fp3, 0x10(r30)
    fmadds fp0, fp2, fp1, fp0
    lfs fp2, 0x130(r31)
    lfs fp1, 0x1c(r30)
    lfs fp5, 0x14(r30)
    lfs fp4, 0x134(r31)
    fmadds fp2, fp3, fp2, fp1
    lfs fp1, 0x20(r30)
    stfs fp0, 0x0(r30)
    fmadds fp0, fp5, fp4, fp1
    stfs fp2, 0x4(r30)
    stfs fp0, 0x8(r30)
L_800F0578:
    psq_l fp31, 0x38(r1), 0, 0
    lwz r0, 0x44(r1)
    lfd fp31, 0x30(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800F059C(void)
{
    nofralloc
    blr
}

ASM void fn_800F05A0(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stfd fp31, 0x20(r1)
    psq_st fp31, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r3
    mr r31, r4
    lha r3, 0x80(r3)
    addi r0, r3, 0x1
    sth r0, 0x80(r30)
    extsh r3, r0
    lha r0, 0x82(r30)
    cmpw r3, r0
    opword  0x4180000C  // blt .L_800F05E8
    li r3, 0x1
    opword  0x480001F8  // b .L_800F07DC
L_800F05E8:
    lha r4, 0x80(r30)
    lis r3, 0x4330
    xoris r0, r0, 0x8000
    stw r3, 0x8(r1)
    xoris r4, r4, 0x8000
    opword  0xC8428E90  // lfd f2, lbl_8053BE30@sda21(r0)
    stw r4, 0xc(r1)
    lfd fp0, 0x8(r1)
    stw r0, 0x14(r1)
    fsubs fp1, fp0, fp2
    stw r3, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp1, fp0
    stfs fp0, 0x84(r30)
    lha r0, 0x80(r30)
    cmpwi r0, 0x0
    opword  0x418200F8  // beq .L_800F0724
    lwz r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 26, 26
    opword  0x4182001C  // beq .L_800F0654
    lfs fp0, 0x138(r31)
    stfs fp0, 0x18(r30)
    lfs fp0, 0x13c(r31)
    stfs fp0, 0x1c(r30)
    lfs fp0, 0x140(r31)
    stfs fp0, 0x20(r30)
L_800F0654:
    lwz r3, 0x4(r31)
    lfs fp2, 0x34(r30)
    lwz r3, 0x24(r3)
    opword  0xC0028E7C  // lfs f0, lbl_8053BE1C@sda21(r0)
    lwz r3, 0x0(r3)
    lfs fp1, 0x1c(r3)
    fsubs fp1, fp2, fp1
    stfs fp1, 0x34(r30)
    stfs fp0, 0x50(r30)
    stfs fp0, 0x4c(r30)
    stfs fp0, 0x48(r30)
    lwz r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 25, 25
    opword  0x40820014  // bne .L_800F069C
    lwz r3, 0x4(r31)
    mr r4, r31
    mr r5, r30
    bl fn_800F2F60
L_800F069C:
    psq_l fp1, 0x48(r30), 0, 0
    psq_l fp0, 0x3c(r30), 0, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x48(r30), 0, 0
    psq_l fp1, 0x50(r30), 1, 0
    psq_l fp0, 0x44(r30), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x50(r30), 1, 0
    lwz r3, 0x0(r31)
    psq_l fp1, 0x30(r30), 0, 0
    lfs fp31, 0x48(r3)
    psq_l fp0, 0x38(r30), 1, 0
    ps_muls0 fp1, fp1, fp31
    ps_muls0 fp0, fp0, fp31
    psq_st fp1, 0x30(r30), 0, 0
    psq_st fp0, 0x38(r30), 1, 0
    lfs fp3, 0x70(r30)
    lfs fp2, 0x74(r30)
    lfs fp1, 0x30(r30)
    lfs fp0, 0x48(r30)
    fmuls fp4, fp3, fp2
    lfs fp2, 0x34(r30)
    fadds fp0, fp1, fp0
    lfs fp1, 0x4c(r30)
    lfs fp3, 0x38(r30)
    fadds fp1, fp2, fp1
    lfs fp2, 0x50(r30)
    fmuls fp0, fp4, fp0
    fadds fp2, fp3, fp2
    fmuls fp1, fp4, fp1
    stfs fp0, 0x24(r30)
    fmuls fp0, fp4, fp2
    stfs fp1, 0x28(r30)
    stfs fp0, 0x2c(r30)
L_800F0724:
    lwz r4, 0x0(r31)
    lwz r3, 0xf0(r4)
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800F0748
    lwz r12, 0x0(r3)
    mr r5, r30
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
L_800F0748:
    lwz r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x4182000C  // beq .L_800F075C
    li r3, 0x1
    opword  0x48000084  // b .L_800F07DC
L_800F075C:
    lwz r3, 0x4(r31)
    mr r4, r31
    mr r5, r30
    bl fn_800F2EEC
    lhz r4, 0x88(r30)
    li r3, 0x0
    lha r0, 0x8a(r30)
    add r0, r4, r0
    sth r0, 0x88(r30)
    psq_l fp1, 0xc(r30), 0, 0
    psq_l fp0, 0x24(r30), 0, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0xc(r30), 0, 0
    psq_l fp1, 0x14(r30), 1, 0
    psq_l fp0, 0x2c(r30), 1, 0
    ps_add fp0, fp1, fp0
    psq_st fp0, 0x14(r30), 1, 0
    lfs fp2, 0xc(r30)
    lfs fp1, 0x12c(r31)
    lfs fp0, 0x18(r30)
    lfs fp3, 0x10(r30)
    fmadds fp0, fp2, fp1, fp0
    lfs fp2, 0x130(r31)
    lfs fp1, 0x1c(r30)
    lfs fp5, 0x14(r30)
    fmadds fp2, fp3, fp2, fp1
    lfs fp4, 0x134(r31)
    lfs fp1, 0x20(r30)
    stfs fp0, 0x0(r30)
    fmadds fp0, fp5, fp4, fp1
    stfs fp2, 0x4(r30)
    stfs fp0, 0x8(r30)
L_800F07DC:
    psq_l fp31, 0x28(r1), 0, 0
    lwz r0, 0x34(r1)
    lfd fp31, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800F07FC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r0, 0x4330
    opword  0xC8428E90  // lfd f2, lbl_8053BE30@sda21(r0)
    li r6, 0x0
    lha r5, 0x82(r3)
    lwz r4, 0x4(r4)
    subi r5, r5, 0x1
    stw r0, 0x8(r1)
    xoris r0, r5, 0x8000
    lwz r4, 0x24(r4)
    stw r0, 0xc(r1)
    lwz r4, 0x0(r4)
    lfd fp1, 0x8(r1)
    lfs fp0, 0x3c(r4)
    fsubs fp1, fp1, fp2
    lha r0, 0x80(r3)
    fmuls fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x10(r1)
    lwz r3, 0x14(r1)
    subf. r5, r3, r0
    opword  0x41800020  // blt .L_800F0870
    lbz r3, 0x44(r4)
    addi r3, r3, 0x1
    divw r0, r5, r3
    mullw r0, r0, r3
    subf. r0, r0, r5
    opword  0x40820008  // bne .L_800F0870
    li r6, 0x1
L_800F0870:
    mr r3, r6
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F087C(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x8(r3)
    stw r0, 0x4(r3)
    stw r0, 0x0(r3)
    stw r0, 0x18(r3)
    stw r0, 0x14(r3)
    stw r0, 0x10(r3)
    stw r0, 0xc(r3)
    stw r0, 0x1c(r3)
    stw r0, 0x20(r3)
    stw r0, 0x24(r3)
    stw r0, 0x28(r3)
    stw r0, 0x2c(r3)
    stw r0, 0x30(r3)
    stw r0, 0x34(r3)
    stw r0, 0x38(r3)
    stb r0, 0x47(r3)
    stb r0, 0x46(r3)
    stb r0, 0x45(r3)
    stb r0, 0x44(r3)
    stb r0, 0x43(r3)
    stb r0, 0x42(r3)
    stb r0, 0x41(r3)
    stb r0, 0x40(r3)
    stb r0, 0x3f(r3)
    stb r0, 0x3e(r3)
    sth r0, 0x3c(r3)
    blr
}

ASM void fn_800F08EC(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    li r5, 0x0
    stw r0, 0x64(r1)
    stmw r14, 0x18(r1)
    mr r16, r4
    mr r15, r3
    lwz r4, 0x1c(r3)
    lwz r3, 0x20(r3)
    lwz r4, 0x0(r4)
    cmplwi r3, 0x0
    lwz r0, 0x8(r4)
    lbz r6, 0x21(r4)
    lbz r4, 0x1e(r4)
    rlwinm r31, r0, 0, 19, 19
    rlwinm r27, r0, 0, 17, 17
    rlwinm r30, r6, 0, 30, 30
    clrlwi r28, r4, 31
    rlwinm r4, r0, 0, 7, 7
    stw r4, 0x14(r1)
    rlwinm r4, r0, 0, 11, 11
    rlwinm r29, r6, 0, 28, 28
    stw r4, 0x10(r1)
    opword  0x41820018  // beq .L_800F0960
    lwz r4, 0x0(r3)
    lwz r4, 0x8(r4)
    clrlwi. r4, r4, 31
    opword  0x41820008  // beq .L_800F0960
    li r5, 0x1
L_800F0960:
    cmplwi r3, 0x0
    clrlwi r26, r5, 24
    li r5, 0x0
    opword  0x41820018  // beq .L_800F0984
    lwz r4, 0x0(r3)
    lwz r4, 0x8(r4)
    rlwinm. r4, r4, 0, 15, 15
    opword  0x41820008  // beq .L_800F0984
    li r5, 0x1
L_800F0984:
    cmplwi r3, 0x0
    clrlwi r25, r5, 24
    li r6, 0x0
    opword  0x41820020  // beq .L_800F09B0
    lwz r4, 0x0(r3)
    lwz r5, 0x8(r4)
    rlwinm. r4, r5, 0, 15, 15
    opword  0x41820010  // beq .L_800F09B0
    rlwinm. r4, r5, 0, 14, 14
    opword  0x41820008  // beq .L_800F09B0
    li r6, 0x1
L_800F09B0:
    cmplwi r3, 0x0
    clrlwi r14, r6, 24
    li r4, 0x0
    opword  0x41820018  // beq .L_800F09D4
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r3, r3, 0, 7, 7
    opword  0x41820008  // beq .L_800F09D4
    li r4, 0x1
L_800F09D4:
    clrlwi. r24, r4, 24
    li r4, 0x0
    opword  0x40820020  // bne .L_800F09FC
    lwz r3, 0x24(r15)
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800F0A00
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r3, r3, 0, 7, 7
    opword  0x41820008  // beq .L_800F0A00
L_800F09FC:
    li r4, 0x1
L_800F0A00:
    clrlwi r5, r0, 28
    clrlwi r23, r4, 24
    cmplwi r5, 0x5
    li r6, 0x1
    opword  0x41820010  // beq .L_800F0A20
    cmplwi r5, 0x6
    opword  0x41820008  // beq .L_800F0A20
    li r6, 0x0
L_800F0A20:
    subfic r3, r5, 0x1
    li r7, 0x1
    orc r4, r7, r5
    cntlzw r5, r5
    srwi r3, r3, 1
    clrlwi r22, r6, 24
    subf r3, r3, r4
    srwi. r4, r3, 31
    extrwi r3, r5, 8, 19
    stw r3, 0xc(r1)
    opword  0x40820008  // bne .L_800F0A50
    li r7, 0x0
L_800F0A50:
    lwz r3, 0x24(r15)
    clrlwi r21, r7, 24
    li r5, 0x0
    cmplwi r3, 0x0
    opword  0x41820034  // beq .L_800F0A94
    lwz r4, 0x0(r3)
    li r6, 0x1
    lwz r4, 0x8(r4)
    clrlwi r4, r4, 28
    cmplwi r4, 0x5
    opword  0x41820010  // beq .L_800F0A88
    cmplwi r4, 0x6
    opword  0x41820008  // beq .L_800F0A88
    mr r6, r5
L_800F0A88:
    clrlwi. r4, r6, 24
    opword  0x41820008  // beq .L_800F0A94
    li r5, 0x1
L_800F0A94:
    cmplwi r3, 0x0
    clrlwi r20, r5, 24
    li r5, 0x0
    opword  0x41820018  // beq .L_800F0AB8
    lwz r4, 0x0(r3)
    lwz r4, 0x8(r4)
    clrlwi. r4, r4, 28
    opword  0x40820008  // bne .L_800F0AB8
    li r5, 0x1
L_800F0AB8:
    clrlwi r4, r5, 24
    cmplwi r3, 0x0
    stw r4, 0x8(r1)
    li r4, 0x0
    opword  0x41820030  // beq .L_800F0AF8
    lwz r3, 0x0(r3)
    li r5, 0x1
    lwz r3, 0x8(r3)
    clrlwi. r3, r3, 28
    opword  0x41820010  // beq .L_800F0AEC
    cmplwi r3, 0x1
    opword  0x41820008  // beq .L_800F0AEC
    mr r5, r4
L_800F0AEC:
    clrlwi. r3, r5, 24
    opword  0x41820008  // beq .L_800F0AF8
    li r4, 0x1
L_800F0AF8:
    extrwi r3, r0, 1, 4
    extrwi r0, r0, 1, 3
    cntlzw r3, r3
    cmpwi r27, 0x0
    cntlzw r0, r0
    clrlwi r19, r4, 24
    extrwi r18, r3, 8, 19
    extrwi r17, r0, 8, 19
    opword  0x41820018  // beq .L_800F0B30
    cmpwi r28, 0x0
    opword  0x41820010  // beq .L_800F0B30
    lbz r3, 0x41(r15)
    addi r0, r3, 0x1
    stb r0, 0x41(r15)
L_800F0B30:
    cmpwi r31, 0x0
    opword  0x41820048  // beq .L_800F0B7C
    cmpwi r30, 0x0
    opword  0x41820010  // beq .L_800F0B4C
    lbz r3, 0x41(r15)
    addi r0, r3, 0x1
    stb r0, 0x41(r15)
L_800F0B4C:
    cmpwi r29, 0x0
    opword  0x41820010  // beq .L_800F0B60
    lbz r3, 0x41(r15)
    addi r0, r3, 0x1
    stb r0, 0x41(r15)
L_800F0B60:
    cmpwi r30, 0x0
    opword  0x4082000C  // bne .L_800F0B70
    cmpwi r29, 0x0
    opword  0x41820010  // beq .L_800F0B7C
L_800F0B70:
    lbz r3, 0x41(r15)
    addi r0, r3, 0x1
    stb r0, 0x41(r15)
L_800F0B7C:
    lbz r0, 0x41(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F0B9C
    mr r5, r16
    clrlslwi r3, r0, 24, 2
    li r4, 0x4
    bl fn_80083868
    stw r3, 0x0(r15)
L_800F0B9C:
    cmpwi r27, 0x0
    li r3, 0x0
    opword  0x418200AC  // beq .L_800F0C50
    cmpwi r28, 0x0
    opword  0x418200A4  // beq .L_800F0C50
    lwz r3, 0x1c(r15)
    lwz r3, 0x0(r3)
    lbz r0, 0x1e(r3)
    extrwi r0, r0, 3, 27
    cmpwi r0, 0x2
    opword  0x41820050  // beq .L_800F0C14
    opword  0x40800014  // bge .L_800F0BDC
    cmpwi r0, 0x0
    opword  0x4182001C  // beq .L_800F0BEC
    opword  0x4080002C  // bge .L_800F0C00
    opword  0x48000074  // b .L_800F0C4C
L_800F0BDC:
    cmpwi r0, 0x4
    opword  0x4182005C  // beq .L_800F0C3C
    opword  0x40800068  // bge .L_800F0C4C
    opword  0x48000040  // b .L_800F0C28
L_800F0BEC:
    lis r4, fn_800E74F0@ha
    lwz r3, 0x0(r15)
    addi r0, r4, fn_800E74F0@l
    stw r0, 0x0(r3)
    opword  0x48000050  // b .L_800F0C4C
L_800F0C00:
    lis r4, fn_800E7564@ha
    lwz r3, 0x0(r15)
    addi r0, r4, fn_800E7564@l
    stw r0, 0x0(r3)
    opword  0x4800003C  // b .L_800F0C4C
L_800F0C14:
    lis r4, fn_800E75E0@ha
    lwz r3, 0x0(r15)
    addi r0, r4, fn_800E75E0@l
    stw r0, 0x0(r3)
    opword  0x48000028  // b .L_800F0C4C
L_800F0C28:
    lis r4, fn_800E768C@ha
    lwz r3, 0x0(r15)
    addi r0, r4, fn_800E768C@l
    stw r0, 0x0(r3)
    opword  0x48000014  // b .L_800F0C4C
L_800F0C3C:
    lis r4, fn_800E7720@ha
    lwz r3, 0x0(r15)
    addi r0, r4, fn_800E7720@l
    stw r0, 0x0(r3)
L_800F0C4C:
    li r3, 0x1
L_800F0C50:
    cmpwi r31, 0x0
    opword  0x41820104  // beq .L_800F0D58
    cmpwi r30, 0x0
    opword  0x4182001C  // beq .L_800F0C78
    lis r5, fn_800E6F10@ha
    lwz r4, 0x0(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E6F10@l
    stwx r5, r4, r0
L_800F0C78:
    cmpwi r29, 0x0
    opword  0x4182001C  // beq .L_800F0C98
    lis r5, fn_800E6F8C@ha
    lwz r4, 0x0(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E6F8C@l
    stwx r5, r4, r0
L_800F0C98:
    cmpwi r30, 0x0
    opword  0x4082000C  // bne .L_800F0CA8
    cmpwi r29, 0x0
    opword  0x418200B4  // beq .L_800F0D58
L_800F0CA8:
    lwz r4, 0x1c(r15)
    lwz r4, 0x0(r4)
    lbz r0, 0x21(r4)
    extrwi r0, r0, 3, 25
    cmpwi r0, 0x2
    opword  0x41820058  // beq .L_800F0D14
    opword  0x40800014  // bge .L_800F0CD4
    cmpwi r0, 0x0
    opword  0x4182001C  // beq .L_800F0CE4
    opword  0x40800030  // bge .L_800F0CFC
    opword  0x48000088  // b .L_800F0D58
L_800F0CD4:
    cmpwi r0, 0x4
    opword  0x4182006C  // beq .L_800F0D44
    opword  0x4080007C  // bge .L_800F0D58
    opword  0x4800004C  // b .L_800F0D2C
L_800F0CE4:
    lis r5, fn_800E6D08@ha
    lwz r4, 0x0(r15)
    addi r5, r5, fn_800E6D08@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000060  // b .L_800F0D58
L_800F0CFC:
    lis r5, fn_800E6D5C@ha
    lwz r4, 0x0(r15)
    addi r5, r5, fn_800E6D5C@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000048  // b .L_800F0D58
L_800F0D14:
    lis r5, fn_800E6DC8@ha
    lwz r4, 0x0(r15)
    addi r5, r5, fn_800E6DC8@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000030  // b .L_800F0D58
L_800F0D2C:
    lis r5, fn_800E6E54@ha
    lwz r4, 0x0(r15)
    addi r5, r5, fn_800E6E54@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000018  // b .L_800F0D58
L_800F0D44:
    lis r5, fn_800E6ED0@ha
    lwz r4, 0x0(r15)
    addi r5, r5, fn_800E6ED0@l
    slwi r0, r3, 2
    stwx r5, r4, r0
L_800F0D58:
    cmpwi r27, 0x0
    opword  0x40820018  // bne .L_800F0D74
    cmpwi r28, 0x0
    opword  0x41820010  // beq .L_800F0D74
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
L_800F0D74:
    cmpwi r22, 0x0
    opword  0x40820020  // bne .L_800F0D98
    cmpwi r25, 0x0
    opword  0x4082000C  // bne .L_800F0D8C
    cmpwi r14, 0x0
    opword  0x41820010  // beq .L_800F0D98
L_800F0D8C:
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
L_800F0D98:
    cmpwi r31, 0x0
    opword  0x4082004C  // bne .L_800F0DE8
    cmpwi r30, 0x0
    opword  0x41820010  // beq .L_800F0DB4
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
L_800F0DB4:
    cmpwi r29, 0x0
    opword  0x41820010  // beq .L_800F0DC8
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
L_800F0DC8:
    cmpwi r30, 0x0
    opword  0x4082000C  // bne .L_800F0DD8
    cmpwi r29, 0x0
    opword  0x41820020  // beq .L_800F0DF4
L_800F0DD8:
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
    opword  0x48000010  // b .L_800F0DF4
L_800F0DE8:
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
L_800F0DF4:
    cmpwi r26, 0x0
    opword  0x4182008C  // beq .L_800F0E84
    lwz r3, 0x1c(r15)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi. r0, r0, 28
    opword  0x41820060  // beq .L_800F0E6C
    lwz r3, 0x20(r15)
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r0, r3, 0, 30, 30
    opword  0x41820040  // beq .L_800F0E60
    extrwi. r0, r3, 2, 22
    opword  0x4082001C  // bne .L_800F0E44
    extrwi. r0, r3, 2, 20
    opword  0x40820014  // bne .L_800F0E44
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
    opword  0x4800002C  // b .L_800F0E6C
L_800F0E44:
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
    opword  0x48000010  // b .L_800F0E6C
L_800F0E60:
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
L_800F0E6C:
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
    lbz r3, 0x44(r15)
    addi r0, r3, 0x1
    stb r0, 0x44(r15)
L_800F0E84:
    lbz r0, 0x44(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F0EA4
    mr r5, r16
    clrlslwi r3, r0, 24, 2
    li r4, 0x4
    bl fn_80083868
    stw r3, 0xc(r15)
L_800F0EA4:
    cmpwi r27, 0x0
    li r3, 0x0
    opword  0x408200AC  // bne .L_800F0F58
    cmpwi r28, 0x0
    opword  0x418200A4  // beq .L_800F0F58
    lwz r3, 0x1c(r15)
    lwz r3, 0x0(r3)
    lbz r0, 0x1e(r3)
    extrwi r0, r0, 3, 27
    cmpwi r0, 0x2
    opword  0x41820050  // beq .L_800F0F1C
    opword  0x40800014  // bge .L_800F0EE4
    cmpwi r0, 0x0
    opword  0x4182001C  // beq .L_800F0EF4
    opword  0x4080002C  // bge .L_800F0F08
    opword  0x48000074  // b .L_800F0F54
L_800F0EE4:
    cmpwi r0, 0x4
    opword  0x4182005C  // beq .L_800F0F44
    opword  0x40800068  // bge .L_800F0F54
    opword  0x48000040  // b .L_800F0F30
L_800F0EF4:
    lis r4, fn_800E752C@ha
    lwz r3, 0xc(r15)
    addi r0, r4, fn_800E752C@l
    stw r0, 0x0(r3)
    opword  0x48000050  // b .L_800F0F54
L_800F0F08:
    lis r4, fn_800E759C@ha
    lwz r3, 0xc(r15)
    addi r0, r4, fn_800E759C@l
    stw r0, 0x0(r3)
    opword  0x4800003C  // b .L_800F0F54
L_800F0F1C:
    lis r4, fn_800E7630@ha
    lwz r3, 0xc(r15)
    addi r0, r4, fn_800E7630@l
    stw r0, 0x0(r3)
    opword  0x48000028  // b .L_800F0F54
L_800F0F30:
    lis r4, fn_800E76A8@ha
    lwz r3, 0xc(r15)
    addi r0, r4, fn_800E76A8@l
    stw r0, 0x0(r3)
    opword  0x48000014  // b .L_800F0F54
L_800F0F44:
    lis r4, fn_800E773C@ha
    lwz r3, 0xc(r15)
    addi r0, r4, fn_800E773C@l
    stw r0, 0x0(r3)
L_800F0F54:
    li r3, 0x1
L_800F0F58:
    cmpwi r22, 0x0
    opword  0x40820050  // bne .L_800F0FAC
    cmpwi r25, 0x0
    opword  0x4082000C  // bne .L_800F0F70
    cmpwi r14, 0x0
    opword  0x41820040  // beq .L_800F0FAC
L_800F0F70:
    cmpwi r14, 0x0
    opword  0x41820020  // beq .L_800F0F94
    lis r5, fn_800EC904@ha
    lwz r4, 0xc(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800EC904@l
    stwx r5, r4, r0
    opword  0x4800001C  // b .L_800F0FAC
L_800F0F94:
    lis r5, fn_800EC884@ha
    lwz r4, 0xc(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800EC884@l
    stwx r5, r4, r0
L_800F0FAC:
    cmpwi r31, 0x0
    opword  0x4082010C  // bne .L_800F10BC
    cmpwi r30, 0x0
    opword  0x4182001C  // beq .L_800F0FD4
    lis r5, fn_800E6F50@ha
    lwz r4, 0xc(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E6F50@l
    stwx r5, r4, r0
L_800F0FD4:
    cmpwi r29, 0x0
    opword  0x4182001C  // beq .L_800F0FF4
    lis r5, fn_800E6FCC@ha
    lwz r4, 0xc(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E6FCC@l
    stwx r5, r4, r0
L_800F0FF4:
    cmpwi r30, 0x0
    opword  0x4082000C  // bne .L_800F1004
    cmpwi r29, 0x0
    opword  0x418200D4  // beq .L_800F10D4
L_800F1004:
    lwz r4, 0x1c(r15)
    lwz r4, 0x0(r4)
    lbz r0, 0x21(r4)
    extrwi r0, r0, 3, 25
    cmpwi r0, 0x2
    opword  0x41820058  // beq .L_800F1070
    opword  0x40800014  // bge .L_800F1030
    cmpwi r0, 0x0
    opword  0x4182001C  // beq .L_800F1040
    opword  0x40800030  // bge .L_800F1058
    opword  0x48000088  // b .L_800F10B4
L_800F1030:
    cmpwi r0, 0x4
    opword  0x4182006C  // beq .L_800F10A0
    opword  0x4080007C  // bge .L_800F10B4
    opword  0x4800004C  // b .L_800F1088
L_800F1040:
    lis r5, fn_800E6D34@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800E6D34@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000060  // b .L_800F10B4
L_800F1058:
    lis r5, fn_800E6D8C@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800E6D8C@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000048  // b .L_800F10B4
L_800F1070:
    lis r5, fn_800E6E08@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800E6E08@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000030  // b .L_800F10B4
L_800F1088:
    lis r5, fn_800E6E60@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800E6E60@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000018  // b .L_800F10B4
L_800F10A0:
    lis r5, fn_800E6EDC@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800E6EDC@l
    slwi r0, r3, 2
    stwx r5, r4, r0
L_800F10B4:
    addi r3, r3, 0x1
    opword  0x4800001C  // b .L_800F10D4
L_800F10BC:
    lis r5, fn_800E7008@ha
    lwz r4, 0xc(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7008@l
    stwx r5, r4, r0
L_800F10D4:
    cmpwi r26, 0x0
    opword  0x41820180  // beq .L_800F1258
    lwz r4, 0x1c(r15)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    clrlwi. r0, r0, 28
    opword  0x418200D4  // beq .L_800F11C0
    lwz r4, 0x20(r15)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x418200A8  // beq .L_800F11A8
    lis r5, fn_800EC61C@ha
    lwz r4, 0xc(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800EC61C@l
    stwx r5, r4, r0
    lwz r4, 0x20(r15)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    extrwi. r4, r0, 2, 20
    opword  0x4082000C  // bne .L_800F1138
    extrwi. r0, r0, 2, 22
    opword  0x4182008C  // beq .L_800F11C0
L_800F1138:
    cmpwi r4, 0x1
    opword  0x41820038  // beq .L_800F1174
    opword  0x40800010  // bge .L_800F1150
    cmpwi r4, 0x0
    opword  0x40800014  // bge .L_800F115C
    opword  0x48000054  // b .L_800F11A0
L_800F1150:
    cmpwi r4, 0x3
    opword  0x4080004C  // bge .L_800F11A0
    opword  0x48000034  // b .L_800F118C
L_800F115C:
    lis r5, fn_800EC698@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800EC698@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000030  // b .L_800F11A0
L_800F1174:
    lis r5, fn_800EC708@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800EC708@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000018  // b .L_800F11A0
L_800F118C:
    lis r5, fn_800EC7F8@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800EC7F8@l
    slwi r0, r3, 2
    stwx r5, r4, r0
L_800F11A0:
    addi r3, r3, 0x1
    opword  0x4800001C  // b .L_800F11C0
L_800F11A8:
    lis r5, fn_800EC68C@ha
    lwz r4, 0xc(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800EC68C@l
    stwx r5, r4, r0
L_800F11C0:
    lis r5, fn_800EC5AC@ha
    lwz r4, 0xc(r15)
    addi r5, r5, fn_800EC5AC@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    lwz r4, 0x20(r15)
    lwz r4, 0x0(r4)
    lwz r0, 0x8(r4)
    extrwi r0, r0, 2, 22
    cmpwi r0, 0x1
    opword  0x4182003C  // beq .L_800F1224
    opword  0x40800010  // bge .L_800F11FC
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800F1208
    opword  0x48000060  // b .L_800F1258
L_800F11FC:
    cmpwi r0, 0x3
    opword  0x40800058  // bge .L_800F1258
    opword  0x4800003C  // b .L_800F1240
L_800F1208:
    addi r0, r3, 0x1
    lis r4, fn_800EC698@ha
    lwz r3, 0xc(r15)
    addi r4, r4, fn_800EC698@l
    slwi r0, r0, 2
    stwx r4, r3, r0
    opword  0x48000038  // b .L_800F1258
L_800F1224:
    addi r0, r3, 0x1
    lis r4, fn_800EC6A4@ha
    lwz r3, 0xc(r15)
    addi r4, r4, fn_800EC6A4@l
    slwi r0, r0, 2
    stwx r4, r3, r0
    opword  0x4800001C  // b .L_800F1258
L_800F1240:
    addi r0, r3, 0x1
    lis r4, fn_800EC76C@ha
    lwz r3, 0xc(r15)
    addi r4, r4, fn_800EC76C@l
    slwi r0, r0, 2
    stwx r4, r3, r0
L_800F1258:
    lwz r3, 0x24(r15)
    cmplwi r3, 0x0
    opword  0x41820020  // beq .L_800F1280
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 9, 9
    opword  0x41820010  // beq .L_800F1280
    lbz r3, 0x46(r15)
    addi r0, r3, 0x1
    stb r0, 0x46(r15)
L_800F1280:
    lwz r3, 0x24(r15)
    cmplwi r3, 0x0
    opword  0x41820020  // beq .L_800F12A8
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 8, 8
    opword  0x41820010  // beq .L_800F12A8
    lbz r3, 0x46(r15)
    addi r0, r3, 0x1
    stb r0, 0x46(r15)
L_800F12A8:
    lbz r0, 0x46(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F12C8
    mr r5, r16
    clrlslwi r3, r0, 24, 2
    li r4, 0x4
    bl fn_80083868
    stw r3, 0x14(r15)
L_800F12C8:
    lwz r3, 0x24(r15)
    li r0, 0x0
    cmplwi r3, 0x0
    opword  0x41820028  // beq .L_800F12FC
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r3, r3, 0, 9, 9
    opword  0x41820018  // beq .L_800F12FC
    lis r4, fn_800EA554@ha
    lwz r3, 0x14(r15)
    addi r4, r4, fn_800EA554@l
    li r0, 0x1
    stw r4, 0x0(r3)
L_800F12FC:
    lwz r3, 0x24(r15)
    cmplwi r3, 0x0
    opword  0x41820028  // beq .L_800F132C
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r3, r3, 0, 8, 8
    opword  0x41820018  // beq .L_800F132C
    lis r4, fn_800EA528@ha
    lwz r3, 0x14(r15)
    addi r4, r4, fn_800EA528@l
    slwi r0, r0, 2
    stwx r4, r3, r0
L_800F132C:
    cmpwi r18, 0x0
    opword  0x41820018  // beq .L_800F1348
    cmpwi r22, 0x0
    opword  0x41820010  // beq .L_800F1348
    lbz r3, 0x42(r15)
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
L_800F1348:
    lbz r3, 0x42(r15)
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
    lwz r0, 0x28(r15)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_800F136C
    lbz r3, 0x42(r15)
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
L_800F136C:
    cmpwi r27, 0x0
    opword  0x4082000C  // bne .L_800F137C
    cmpwi r28, 0x0
    opword  0x40820010  // bne .L_800F1388
L_800F137C:
    lbz r3, 0x42(r15)
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
L_800F1388:
    lbz r3, 0x42(r15)
    cmpwi r21, 0x0
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
    opword  0x41820010  // beq .L_800F13A8
    lbz r3, 0x42(r15)
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
L_800F13A8:
    cmpwi r21, 0x0
    opword  0x41820018  // beq .L_800F13C4
    cmpwi r26, 0x0
    opword  0x40820010  // bne .L_800F13C4
    lbz r3, 0x42(r15)
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
L_800F13C4:
    cmpwi r31, 0x0
    opword  0x4082001C  // bne .L_800F13E4
    cmpwi r30, 0x0
    opword  0x4082000C  // bne .L_800F13DC
    cmpwi r25, 0x0
    opword  0x4182000C  // beq .L_800F13E4
L_800F13DC:
    cmpwi r29, 0x0
    opword  0x40820010  // bne .L_800F13F0
L_800F13E4:
    lbz r3, 0x42(r15)
    addi r0, r3, 0x1
    stb r0, 0x42(r15)
L_800F13F0:
    lbz r0, 0x42(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F1410
    mr r5, r16
    clrlslwi r3, r0, 24, 2
    li r4, 0x4
    bl fn_80083868
    stw r3, 0x4(r15)
L_800F1410:
    cmpwi r18, 0x0
    li r3, 0x0
    opword  0x41820050  // beq .L_800F1468
    cmpwi r22, 0x0
    opword  0x41820048  // beq .L_800F1468
    lwz r3, 0x1c(r15)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi r0, r0, 28
    cmplwi r0, 0x5
    opword  0x4082001C  // bne .L_800F1454
    lis r3, fn_800E8E68@ha
    lwz r4, 0x4(r15)
    addi r0, r3, fn_800E8E68@l
    li r3, 0x1
    stw r0, 0x0(r4)
    opword  0x48000018  // b .L_800F1468
L_800F1454:
    lis r3, fn_800E9458@ha
    lwz r4, 0x4(r15)
    addi r0, r3, fn_800E9458@l
    li r3, 0x1
    stw r0, 0x0(r4)
L_800F1468:
    lis r5, fn_800E9EA4@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E9EA4@l
    stwx r5, r4, r0
    lwz r0, 0x28(r15)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800F14A4
    lis r5, fn_800EC4A8@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800EC4A8@l
    stwx r5, r4, r0
L_800F14A4:
    cmpwi r28, 0x0
    opword  0x40820020  // bne .L_800F14C8
    lis r5, fn_800E7400@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7400@l
    stwx r5, r4, r0
    opword  0x48000024  // b .L_800F14E8
L_800F14C8:
    cmpwi r27, 0x0
    opword  0x4182001C  // beq .L_800F14E8
    lis r5, fn_800E7454@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7454@l
    stwx r5, r4, r0
L_800F14E8:
    cmpwi r21, 0x0
    opword  0x41820020  // beq .L_800F150C
    lis r5, fn_800E7050@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7050@l
    stwx r5, r4, r0
    opword  0x48000090  // b .L_800F1598
L_800F150C:
    lwz r0, 0x10(r1)
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_800F1534
    lis r5, fn_800E70C0@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E70C0@l
    stwx r5, r4, r0
    opword  0x48000068  // b .L_800F1598
L_800F1534:
    lwz r0, 0x14(r1)
    cmpwi r0, 0x0
    opword  0x41820044  // beq .L_800F1580
    cmpwi r22, 0x0
    opword  0x41820020  // beq .L_800F1564
    lis r5, fn_800E70F8@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E70F8@l
    stwx r5, r4, r0
    opword  0x48000038  // b .L_800F1598
L_800F1564:
    lis r5, fn_800E7088@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7088@l
    stwx r5, r4, r0
    opword  0x4800001C  // b .L_800F1598
L_800F1580:
    lis r5, fn_800E7050@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7050@l
    stwx r5, r4, r0
L_800F1598:
    cmpwi r21, 0x0
    opword  0x4182001C  // beq .L_800F15B8
    lis r5, fn_800E7778@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7778@l
    stwx r5, r4, r0
L_800F15B8:
    cmpwi r21, 0x0
    opword  0x4182004C  // beq .L_800F1608
    cmpwi r26, 0x0
    opword  0x40820044  // bne .L_800F1608
    lwz r0, 0xc(r1)
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_800F15F0
    lis r5, fn_800E6594@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E6594@l
    stwx r5, r4, r0
    opword  0x4800001C  // b .L_800F1608
L_800F15F0:
    lis r5, fn_800E65D0@ha
    lwz r4, 0x4(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E65D0@l
    stwx r5, r4, r0
L_800F1608:
    cmpwi r31, 0x0
    opword  0x41820048  // beq .L_800F1654
    cmpwi r22, 0x0
    opword  0x4082000C  // bne .L_800F1620
    cmpwi r25, 0x0
    opword  0x4082001C  // bne .L_800F1638
L_800F1620:
    lis r5, fn_800E67B4@ha
    lwz r4, 0x4(r15)
    addi r5, r5, fn_800E67B4@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000084  // b .L_800F16B8
L_800F1638:
    opword  0x41820080  // beq .L_800F16B8
    lis r5, fn_800E6730@ha
    lwz r4, 0x4(r15)
    addi r5, r5, fn_800E6730@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000068  // b .L_800F16B8
L_800F1654:
    cmpwi r30, 0x0
    opword  0x40820044  // bne .L_800F169C
    cmpwi r25, 0x0
    opword  0x4082003C  // bne .L_800F169C
    cmpwi r29, 0x0
    opword  0x4082001C  // bne .L_800F1684
    lis r5, fn_800E67B4@ha
    lwz r4, 0x4(r15)
    addi r5, r5, fn_800E67B4@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000038  // b .L_800F16B8
L_800F1684:
    lis r5, fn_800E6694@ha
    lwz r4, 0x4(r15)
    addi r5, r5, fn_800E6694@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000020  // b .L_800F16B8
L_800F169C:
    cmpwi r29, 0x0
    opword  0x40820018  // bne .L_800F16B8
    lis r5, fn_800E6730@ha
    lwz r4, 0x4(r15)
    addi r5, r5, fn_800E6730@l
    slwi r0, r3, 2
    stwx r5, r4, r0
L_800F16B8:
    cmpwi r17, 0x0
    opword  0x41820018  // beq .L_800F16D4
    cmpwi r20, 0x0
    opword  0x41820010  // beq .L_800F16D4
    lbz r3, 0x43(r15)
    addi r0, r3, 0x1
    stb r0, 0x43(r15)
L_800F16D4:
    lbz r3, 0x43(r15)
    cmpwi r19, 0x0
    addi r0, r3, 0x1
    stb r0, 0x43(r15)
    opword  0x41820010  // beq .L_800F16F4
    lbz r3, 0x43(r15)
    addi r0, r3, 0x1
    stb r0, 0x43(r15)
L_800F16F4:
    lwz r3, 0x24(r15)
    cmplwi r3, 0x0
    opword  0x41820030  // beq .L_800F172C
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r0, r3, 0, 8, 8
    opword  0x40820020  // bne .L_800F172C
    rlwinm. r0, r3, 0, 14, 14
    opword  0x40820018  // bne .L_800F172C
    rlwinm. r0, r3, 0, 13, 13
    opword  0x40820010  // bne .L_800F172C
    lbz r3, 0x43(r15)
    addi r0, r3, 0x1
    stb r0, 0x43(r15)
L_800F172C:
    lbz r0, 0x43(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F174C
    mr r5, r16
    clrlslwi r3, r0, 24, 2
    li r4, 0x4
    bl fn_80083868
    stw r3, 0x8(r15)
L_800F174C:
    cmpwi r17, 0x0
    li r3, 0x0
    opword  0x41820050  // beq .L_800F17A4
    cmpwi r20, 0x0
    opword  0x41820048  // beq .L_800F17A4
    lwz r3, 0x24(r15)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi r0, r0, 28
    cmplwi r0, 0x5
    opword  0x4082001C  // bne .L_800F1790
    lis r3, fn_800E8E68@ha
    lwz r4, 0x8(r15)
    addi r0, r3, fn_800E8E68@l
    li r3, 0x1
    stw r0, 0x0(r4)
    opword  0x48000018  // b .L_800F17A4
L_800F1790:
    lis r3, fn_800E9458@ha
    lwz r4, 0x8(r15)
    addi r0, r3, fn_800E9458@l
    li r3, 0x1
    stw r0, 0x0(r4)
L_800F17A4:
    lis r5, fn_800E9EA4@ha
    lwz r4, 0x8(r15)
    slwi r0, r3, 2
    cmpwi r19, 0x0
    addi r5, r5, fn_800E9EA4@l
    addi r3, r3, 0x1
    stwx r5, r4, r0
    opword  0x4182001C  // beq .L_800F17DC
    lis r5, fn_800E7778@ha
    lwz r4, 0x8(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7778@l
    stwx r5, r4, r0
L_800F17DC:
    lwz r4, 0x24(r15)
    cmplwi r4, 0x0
    opword  0x41820038  // beq .L_800F181C
    lwz r4, 0x0(r4)
    lwz r4, 0x8(r4)
    rlwinm. r0, r4, 0, 8, 8
    opword  0x40820028  // bne .L_800F181C
    rlwinm. r0, r4, 0, 14, 14
    opword  0x40820020  // bne .L_800F181C
    rlwinm. r0, r4, 0, 13, 13
    opword  0x40820018  // bne .L_800F181C
    lis r5, fn_800EA400@ha
    lwz r4, 0x8(r15)
    addi r5, r5, fn_800EA400@l
    slwi r0, r3, 2
    stwx r5, r4, r0
L_800F181C:
    cmpwi r18, 0x0
    opword  0x41820018  // beq .L_800F1838
    cmpwi r22, 0x0
    opword  0x40820010  // bne .L_800F1838
    lbz r3, 0x45(r15)
    addi r0, r3, 0x1
    stb r0, 0x45(r15)
L_800F1838:
    lbz r3, 0x45(r15)
    cmpwi r27, 0x0
    addi r0, r3, 0x1
    stb r0, 0x45(r15)
    opword  0x40820018  // bne .L_800F1860
    cmpwi r28, 0x0
    opword  0x41820010  // beq .L_800F1860
    lbz r3, 0x45(r15)
    addi r0, r3, 0x1
    stb r0, 0x45(r15)
L_800F1860:
    cmpwi r21, 0x0
    opword  0x4182000C  // beq .L_800F1870
    cmpwi r26, 0x0
    opword  0x4082001C  // bne .L_800F1888
L_800F1870:
    lwz r0, 0x14(r1)
    cmpwi r0, 0x0
    opword  0x4182001C  // beq .L_800F1894
    lwz r0, 0x10(r1)
    cmpwi r0, 0x0
    opword  0x40820010  // bne .L_800F1894
L_800F1888:
    lbz r3, 0x45(r15)
    addi r0, r3, 0x1
    stb r0, 0x45(r15)
L_800F1894:
    cmpwi r31, 0x0
    opword  0x4082001C  // bne .L_800F18B4
    cmpwi r30, 0x0
    opword  0x4082002C  // bne .L_800F18CC
    cmpwi r29, 0x0
    opword  0x40820024  // bne .L_800F18CC
    cmpwi r25, 0x0
    opword  0x4082001C  // bne .L_800F18CC
L_800F18B4:
    cmpwi r31, 0x0
    opword  0x41820020  // beq .L_800F18D8
    cmpwi r25, 0x0
    opword  0x41820018  // beq .L_800F18D8
    cmpwi r22, 0x0
    opword  0x40820010  // bne .L_800F18D8
L_800F18CC:
    lbz r3, 0x45(r15)
    addi r0, r3, 0x1
    stb r0, 0x45(r15)
L_800F18D8:
    lbz r0, 0x45(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F18F8
    mr r5, r16
    clrlslwi r3, r0, 24, 2
    li r4, 0x4
    bl fn_80083868
    stw r3, 0x10(r15)
L_800F18F8:
    cmpwi r18, 0x0
    li r3, 0x0
    opword  0x4182011C  // beq .L_800F1A1C
    cmpwi r22, 0x0
    opword  0x40820114  // bne .L_800F1A1C
    lwz r3, 0x1c(r15)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi r0, r0, 28
    cmplwi r0, 0xa
    opword  0x418100F8  // bgt .L_800F1A18
    lis r3, jumptable_8049C34C@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049C34C@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    cmpwi r24, 0x0
    opword  0x41820018  // beq .L_800F1958
    lis r4, fn_800E7A70@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E7A70@l
    stw r0, 0x0(r3)
    opword  0x480000C4  // b .L_800F1A18
L_800F1958:
    lis r4, fn_800E7988@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E7988@l
    stw r0, 0x0(r3)
    opword  0x480000B0  // b .L_800F1A18
    cmpwi r24, 0x0
    opword  0x41820018  // beq .L_800F1988
    lis r4, fn_800E7C84@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E7C84@l
    stw r0, 0x0(r3)
    opword  0x48000094  // b .L_800F1A18
L_800F1988:
    lis r4, fn_800E7B88@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E7B88@l
    stw r0, 0x0(r3)
    opword  0x48000080  // b .L_800F1A18
    cmpwi r24, 0x0
    opword  0x41820018  // beq .L_800F19B8
    lis r4, fn_800E8490@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E8490@l
    stw r0, 0x0(r3)
    opword  0x48000064  // b .L_800F1A18
L_800F19B8:
    lis r4, fn_800E80F8@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E80F8@l
    stw r0, 0x0(r3)
    opword  0x48000050  // b .L_800F1A18
    lis r4, fn_800E88A4@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E88A4@l
    stw r0, 0x0(r3)
    opword  0x4800003C  // b .L_800F1A18
    lis r4, fn_800E8AC4@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E8AC4@l
    stw r0, 0x0(r3)
    opword  0x48000028  // b .L_800F1A18
    lis r4, fn_800E8C14@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E8C14@l
    stw r0, 0x0(r3)
    opword  0x48000014  // b .L_800F1A18
    lis r4, fn_800E8CB0@ha
    lwz r3, 0x10(r15)
    addi r0, r4, fn_800E8CB0@l
    stw r0, 0x0(r3)
L_800F1A18:
    li r3, 0x1
L_800F1A1C:
    lis r5, fn_800E9EE0@ha
    lwz r4, 0x10(r15)
    slwi r0, r3, 2
    cmpwi r27, 0x0
    addi r5, r5, fn_800E9EE0@l
    addi r3, r3, 0x1
    stwx r5, r4, r0
    opword  0x40820024  // bne .L_800F1A5C
    cmpwi r28, 0x0
    opword  0x4182001C  // beq .L_800F1A5C
    lis r5, fn_800E74A4@ha
    lwz r4, 0x10(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E74A4@l
    stwx r5, r4, r0
L_800F1A5C:
    cmpwi r21, 0x0
    opword  0x41820050  // beq .L_800F1AB0
    cmpwi r26, 0x0
    opword  0x41820048  // beq .L_800F1AB0
    lwz r0, 0xc(r1)
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_800F1A94
    lis r5, fn_800E660C@ha
    lwz r4, 0x10(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E660C@l
    stwx r5, r4, r0
    opword  0x48000050  // b .L_800F1AE0
L_800F1A94:
    lis r5, fn_800E6650@ha
    lwz r4, 0x10(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E6650@l
    stwx r5, r4, r0
    opword  0x48000034  // b .L_800F1AE0
L_800F1AB0:
    lwz r0, 0x14(r1)
    cmpwi r0, 0x0
    opword  0x41820028  // beq .L_800F1AE0
    lwz r0, 0x10(r1)
    cmpwi r0, 0x0
    opword  0x4082001C  // bne .L_800F1AE0
    lis r5, fn_800E7290@ha
    lwz r4, 0x10(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E7290@l
    stwx r5, r4, r0
L_800F1AE0:
    cmpwi r31, 0x0
    opword  0x408200A4  // bne .L_800F1B88
    cmpwi r30, 0x0
    opword  0x4182003C  // beq .L_800F1B28
    cmpwi r29, 0x0
    opword  0x4182001C  // beq .L_800F1B10
    lis r5, fn_800E6A2C@ha
    lwz r4, 0x10(r15)
    addi r5, r5, fn_800E6A2C@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x480000A0  // b .L_800F1BAC
L_800F1B10:
    lis r5, fn_800E697C@ha
    lwz r4, 0x10(r15)
    addi r5, r5, fn_800E697C@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000088  // b .L_800F1BAC
L_800F1B28:
    cmpwi r25, 0x0
    opword  0x4182003C  // beq .L_800F1B68
    cmpwi r29, 0x0
    opword  0x4182001C  // beq .L_800F1B50
    lis r5, fn_800E6B60@ha
    lwz r4, 0x10(r15)
    addi r5, r5, fn_800E6B60@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000060  // b .L_800F1BAC
L_800F1B50:
    lis r5, fn_800E68CC@ha
    lwz r4, 0x10(r15)
    addi r5, r5, fn_800E68CC@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000048  // b .L_800F1BAC
L_800F1B68:
    cmpwi r29, 0x0
    opword  0x41820040  // beq .L_800F1BAC
    lis r5, fn_800E6C84@ha
    lwz r4, 0x10(r15)
    addi r5, r5, fn_800E6C84@l
    slwi r0, r3, 2
    stwx r5, r4, r0
    opword  0x48000028  // b .L_800F1BAC
L_800F1B88:
    cmpwi r25, 0x0
    opword  0x41820020  // beq .L_800F1BAC
    cmpwi r22, 0x0
    opword  0x40820018  // bne .L_800F1BAC
    lis r5, fn_800E68CC@ha
    lwz r4, 0x10(r15)
    addi r5, r5, fn_800E68CC@l
    slwi r0, r3, 2
    stwx r5, r4, r0
L_800F1BAC:
    cmpwi r17, 0x0
    opword  0x41820024  // beq .L_800F1BD4
    lwz r0, 0x24(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F1BD4
    cmpwi r20, 0x0
    opword  0x40820010  // bne .L_800F1BD4
    lbz r3, 0x47(r15)
    addi r0, r3, 0x1
    stb r0, 0x47(r15)
L_800F1BD4:
    lbz r3, 0x47(r15)
    cmpwi r19, 0x0
    addi r0, r3, 0x1
    stb r0, 0x47(r15)
    opword  0x41820010  // beq .L_800F1BF4
    lbz r3, 0x47(r15)
    addi r0, r3, 0x1
    stb r0, 0x47(r15)
L_800F1BF4:
    lwz r3, 0x24(r15)
    cmplwi r3, 0x0
    opword  0x41820030  // beq .L_800F1C2C
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r0, r3, 0, 8, 8
    opword  0x40820014  // bne .L_800F1C20
    rlwinm. r0, r3, 0, 14, 14
    opword  0x4082000C  // bne .L_800F1C20
    rlwinm. r0, r3, 0, 13, 13
    opword  0x41820010  // beq .L_800F1C2C
L_800F1C20:
    lbz r3, 0x47(r15)
    addi r0, r3, 0x1
    stb r0, 0x47(r15)
L_800F1C2C:
    lbz r0, 0x47(r15)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F1C4C
    mr r5, r16
    clrlslwi r3, r0, 24, 2
    li r4, 0x4
    bl fn_80083868
    stw r3, 0x18(r15)
L_800F1C4C:
    cmpwi r17, 0x0
    li r3, 0x0
    opword  0x41820124  // beq .L_800F1D78
    lwz r4, 0x24(r15)
    cmplwi r4, 0x0
    opword  0x41820118  // beq .L_800F1D78
    cmpwi r20, 0x0
    opword  0x40820110  // bne .L_800F1D78
    lwz r3, 0x0(r4)
    lwz r0, 0x8(r3)
    clrlwi r0, r0, 28
    cmplwi r0, 0xa
    opword  0x418100F8  // bgt .L_800F1D74
    lis r3, jumptable_8049C320@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049C320@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    cmpwi r23, 0x0
    opword  0x41820018  // beq .L_800F1CB4
    lis r4, fn_800E7A70@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E7A70@l
    stw r0, 0x0(r3)
    opword  0x480000C4  // b .L_800F1D74
L_800F1CB4:
    lis r4, fn_800E7988@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E7988@l
    stw r0, 0x0(r3)
    opword  0x480000B0  // b .L_800F1D74
    cmpwi r23, 0x0
    opword  0x41820018  // beq .L_800F1CE4
    lis r4, fn_800E7C84@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E7C84@l
    stw r0, 0x0(r3)
    opword  0x48000094  // b .L_800F1D74
L_800F1CE4:
    lis r4, fn_800E7B88@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E7B88@l
    stw r0, 0x0(r3)
    opword  0x48000080  // b .L_800F1D74
    cmpwi r23, 0x0
    opword  0x41820018  // beq .L_800F1D14
    lis r4, fn_800E8490@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E8490@l
    stw r0, 0x0(r3)
    opword  0x48000064  // b .L_800F1D74
L_800F1D14:
    lis r4, fn_800E80F8@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E80F8@l
    stw r0, 0x0(r3)
    opword  0x48000050  // b .L_800F1D74
    lis r4, fn_800E88A4@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E88A4@l
    stw r0, 0x0(r3)
    opword  0x4800003C  // b .L_800F1D74
    lis r4, fn_800E8AC4@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E8AC4@l
    stw r0, 0x0(r3)
    opword  0x48000028  // b .L_800F1D74
    lis r4, fn_800E8C14@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E8C14@l
    stw r0, 0x0(r3)
    opword  0x48000014  // b .L_800F1D74
    lis r4, fn_800E8CB0@ha
    lwz r3, 0x18(r15)
    addi r0, r4, fn_800E8CB0@l
    stw r0, 0x0(r3)
L_800F1D74:
    li r3, 0x1
L_800F1D78:
    lis r5, fn_800E9EE0@ha
    lwz r4, 0x18(r15)
    slwi r0, r3, 2
    cmpwi r19, 0x0
    addi r5, r5, fn_800E9EE0@l
    addi r3, r3, 0x1
    stwx r5, r4, r0
    opword  0x41820044  // beq .L_800F1DD8
    lwz r0, 0x8(r1)
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_800F1DC0
    lis r5, fn_800E660C@ha
    lwz r4, 0x18(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E660C@l
    stwx r5, r4, r0
    opword  0x4800001C  // b .L_800F1DD8
L_800F1DC0:
    lis r5, fn_800E6650@ha
    lwz r4, 0x18(r15)
    slwi r0, r3, 2
    addi r3, r3, 0x1
    addi r5, r5, fn_800E6650@l
    stwx r5, r4, r0
L_800F1DD8:
    lwz r4, 0x24(r15)
    cmplwi r4, 0x0
    opword  0x41820038  // beq .L_800F1E18
    lwz r4, 0x0(r4)
    lwz r4, 0x8(r4)
    rlwinm. r0, r4, 0, 8, 8
    opword  0x40820014  // bne .L_800F1E04
    rlwinm. r0, r4, 0, 14, 14
    opword  0x4082000C  // bne .L_800F1E04
    rlwinm. r0, r4, 0, 13, 13
    opword  0x41820018  // beq .L_800F1E18
L_800F1E04:
    lis r5, fn_800E6A2C@ha
    lwz r4, 0x18(r15)
    addi r5, r5, fn_800E6A2C@l
    slwi r0, r3, 2
    stwx r5, r4, r0
L_800F1E18:
    lmw r14, 0x18(r1)
    lwz r0, 0x64(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_800F1E2C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stmw r27, 0xc(r1)
    mr r29, r5
    mr r30, r3
    mr r28, r4
    mr r3, r29
    stw r29, 0x0(r4)
    stw r30, 0x4(r4)
    stw r0, 0x40(r4)
    bl fn_800EB92C
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_800F1E70
    li r3, 0x0
    opword  0x48000508  // b .L_800F2374
L_800F1E70:
    mr r3, r29
    bl fn_800EB96C
    clrlwi. r0, r3, 24
    opword  0x4182000C  // beq .L_800F1E88
    li r3, 0x1
    opword  0x480004F0  // b .L_800F2374
L_800F1E88:
    lwz r0, 0xf4(r29)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x41820064  // beq .L_800F1EF4
    lwz r3, 0xec(r29)
    cmplwi r3, 0x0
    opword  0x418204D4  // beq .L_800F2370
    lwz r12, 0x0(r3)
    mr r4, r29
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0xf4(r29)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x4182000C  // beq .L_800F1EC8
    li r3, 0x1
    opword  0x480004B0  // b .L_800F2374
L_800F1EC8:
    lwz r3, 0xec(r29)
    mr r4, r29
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r0, 0xf4(r29)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x41820488  // beq .L_800F2370
    li r3, 0x1
    opword  0x48000484  // b .L_800F2374
L_800F1EF4:
    mr r3, r30
    mr r4, r28
    bl fn_800F2FD4
    lbz r3, 0x3e(r30)
    subic. r3, r3, 0x1
    slwi r6, r3, 2
    addi r3, r3, 0x1
    opword  0x41800114  // blt .L_800F2024
    srwi. r0, r3, 1
    mtctr r0
    opword  0x418200B0  // beq .L_800F1FCC
L_800F1F20:
    lwz r4, 0x30(r30)
    lwzx r5, r4, r6
    subi r6, r6, 0x4
    lwz r4, 0x0(r5)
    lfs fp0, 0xc(r4)
    stfs fp0, 0x10(r5)
    lfs fp0, 0x10(r4)
    stfs fp0, 0x14(r5)
    lfs fp0, 0x14(r4)
    stfs fp0, 0x18(r5)
    lwz r4, 0x0(r5)
    lfs fp0, 0x18(r4)
    stfs fp0, 0x1c(r5)
    lfs fp0, 0x1c(r4)
    stfs fp0, 0x20(r5)
    lfs fp0, 0x20(r4)
    stfs fp0, 0x24(r5)
    lwz r4, 0x0(r5)
    lfs fp0, 0x24(r4)
    stfs fp0, 0x28(r5)
    lwz r4, 0x30(r30)
    lwzx r5, r4, r6
    subi r6, r6, 0x4
    lwz r4, 0x0(r5)
    lfs fp0, 0xc(r4)
    stfs fp0, 0x10(r5)
    lfs fp0, 0x10(r4)
    stfs fp0, 0x14(r5)
    lfs fp0, 0x14(r4)
    stfs fp0, 0x18(r5)
    lwz r4, 0x0(r5)
    lfs fp0, 0x18(r4)
    stfs fp0, 0x1c(r5)
    lfs fp0, 0x1c(r4)
    stfs fp0, 0x20(r5)
    lfs fp0, 0x20(r4)
    stfs fp0, 0x24(r5)
    lwz r4, 0x0(r5)
    lfs fp0, 0x24(r4)
    stfs fp0, 0x28(r5)
    opword  0x4200FF60  // bdnz .L_800F1F20
    andi. r3, r3, 0x1
    opword  0x4182005C  // beq .L_800F2024
L_800F1FCC:
    mtctr r3
L_800F1FD0:
    lwz r4, 0x30(r30)
    lwzx r5, r4, r6
    subi r6, r6, 0x4
    lwz r4, 0x0(r5)
    lfs fp0, 0xc(r4)
    stfs fp0, 0x10(r5)
    lfs fp0, 0x10(r4)
    stfs fp0, 0x14(r5)
    lfs fp0, 0x14(r4)
    stfs fp0, 0x18(r5)
    lwz r4, 0x0(r5)
    lfs fp0, 0x18(r4)
    stfs fp0, 0x1c(r5)
    lfs fp0, 0x1c(r4)
    stfs fp0, 0x20(r5)
    lfs fp0, 0x20(r4)
    stfs fp0, 0x24(r5)
    lwz r4, 0x0(r5)
    lfs fp0, 0x24(r4)
    stfs fp0, 0x28(r5)
    opword  0x4200FFB0  // bdnz .L_800F1FD0
L_800F2024:
    lwz r3, 0xec(r29)
    cmplwi r3, 0x0
    opword  0x4182002C  // beq .L_800F2058
    lwz r12, 0x0(r3)
    mr r4, r29
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0xf4(r29)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x4182000C  // beq .L_800F2058
    li r3, 0x1
    opword  0x48000320  // b .L_800F2374
L_800F2058:
    mr r3, r30
    mr r4, r28
    bl fn_800F310C
    lbz r3, 0x41(r30)
    subi r27, r3, 0x1
    slwi r31, r27, 2
    opword  0x48000020  // b .L_800F2090
L_800F2074:
    lwz r4, 0x0(r30)
    mr r3, r28
    lwzx r12, r4, r31
    mtctr r12
    bctrl
    subi r31, r31, 0x4
    subi r27, r27, 0x1
L_800F2090:
    cmpwi r27, 0x0
    opword  0x4080FFE0  // bge .L_800F2074
    lbz r3, 0x3e(r30)
    subi r27, r3, 0x1
    slwi r31, r27, 2
    opword  0x4800002C  // b .L_800F20D0
L_800F20A8:
    lwz r3, 0x30(r30)
    mr r4, r28
    lwzx r5, r3, r31
    lwz r3, 0x4(r5)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    subi r31, r31, 0x4
    subi r27, r27, 0x1
L_800F20D0:
    cmpwi r27, 0x0
    opword  0x4080FFD4  // bge .L_800F20A8
    lwz r0, 0xf4(r29)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x40820010  // bne .L_800F20F0
    lwz r3, 0x2c(r30)
    mr r4, r28
    bl fn_800EB008
L_800F20F0:
    lwz r3, 0xec(r29)
    cmplwi r3, 0x0
    opword  0x4182002C  // beq .L_800F2124
    lwz r12, 0x0(r3)
    mr r4, r29
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r0, 0xf4(r29)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x4182000C  // beq .L_800F2124
    li r3, 0x1
    opword  0x48000254  // b .L_800F2374
L_800F2124:
    lwz r30, 0xc8(r29)
    opword  0x48000114  // b .L_800F223C
L_800F212C:
    lwz r31, 0x4(r30)
    mr r4, r28
    addi r3, r30, 0x8
    bl fn_800F0310
    clrlwi. r0, r3, 24
    opword  0x418200F8  // beq .L_800F2238
    lwz r3, 0x4(r30)
    cmplwi r3, 0x0
    opword  0x41820030  // beq .L_800F217C
    lwz r4, 0x0(r30)
    cmplwi r4, 0x0
    opword  0x41820024  // beq .L_800F217C
    stw r3, 0x4(r4)
    lwz r0, 0x0(r30)
    lwz r3, 0x4(r30)
    stw r0, 0x0(r3)
    lwz r3, 0xd0(r29)
    subi r0, r3, 0x1
    stw r0, 0xd0(r29)
    opword  0x48000070  // b .L_800F21E8
L_800F217C:
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_800F21A4
    li r0, 0x0
    stw r0, 0x0(r3)
    lwz r0, 0x4(r30)
    stw r0, 0xc8(r29)
    lwz r3, 0xd0(r29)
    subi r0, r3, 0x1
    stw r0, 0xd0(r29)
    opword  0x48000048  // b .L_800F21E8
L_800F21A4:
    lwz r3, 0x0(r30)
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_800F21D0
    li r0, 0x0
    stw r0, 0x4(r3)
    lwz r0, 0x0(r30)
    stw r0, 0xcc(r29)
    lwz r3, 0xd0(r29)
    subi r0, r3, 0x1
    stw r0, 0xd0(r29)
    opword  0x4800001C  // b .L_800F21E8
L_800F21D0:
    li r0, 0x0
    stw r0, 0xcc(r29)
    stw r0, 0xc8(r29)
    lwz r3, 0xd0(r29)
    subi r0, r3, 0x1
    stw r0, 0xd0(r29)
L_800F21E8:
    lwz r4, 0xe0(r29)
    lwz r0, 0x0(r4)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_800F2218
    li r0, 0x0
    stw r0, 0x0(r30)
    lwz r0, 0x0(r4)
    stw r0, 0x4(r30)
    lwz r3, 0x0(r4)
    stw r30, 0x0(r3)
    stw r30, 0x0(r4)
    opword  0x48000018  // b .L_800F222C
L_800F2218:
    stw r30, 0x4(r4)
    li r0, 0x0
    stw r30, 0x0(r4)
    stw r0, 0x0(r30)
    stw r0, 0x4(r30)
L_800F222C:
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
L_800F2238:
    mr r30, r31
L_800F223C:
    cmplwi r30, 0x0
    opword  0x4082FEEC  // bne .L_800F212C
    lwz r30, 0xd4(r29)
    opword  0x48000114  // b .L_800F235C
L_800F224C:
    lwz r31, 0x4(r30)
    mr r4, r28
    addi r3, r30, 0x8
    bl fn_800F05A0
    clrlwi. r0, r3, 24
    opword  0x418200F8  // beq .L_800F2358
    lwz r3, 0x4(r30)
    cmplwi r3, 0x0
    opword  0x41820030  // beq .L_800F229C
    lwz r4, 0x0(r30)
    cmplwi r4, 0x0
    opword  0x41820024  // beq .L_800F229C
    stw r3, 0x4(r4)
    lwz r0, 0x0(r30)
    lwz r3, 0x4(r30)
    stw r0, 0x0(r3)
    lwz r3, 0xdc(r29)
    subi r0, r3, 0x1
    stw r0, 0xdc(r29)
    opword  0x48000070  // b .L_800F2308
L_800F229C:
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_800F22C4
    li r0, 0x0
    stw r0, 0x0(r3)
    lwz r0, 0x4(r30)
    stw r0, 0xd4(r29)
    lwz r3, 0xdc(r29)
    subi r0, r3, 0x1
    stw r0, 0xdc(r29)
    opword  0x48000048  // b .L_800F2308
L_800F22C4:
    lwz r3, 0x0(r30)
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_800F22F0
    li r0, 0x0
    stw r0, 0x4(r3)
    lwz r0, 0x0(r30)
    stw r0, 0xd8(r29)
    lwz r3, 0xdc(r29)
    subi r0, r3, 0x1
    stw r0, 0xdc(r29)
    opword  0x4800001C  // b .L_800F2308
L_800F22F0:
    li r0, 0x0
    stw r0, 0xd8(r29)
    stw r0, 0xd4(r29)
    lwz r3, 0xdc(r29)
    subi r0, r3, 0x1
    stw r0, 0xdc(r29)
L_800F2308:
    lwz r4, 0xe0(r29)
    lwz r0, 0x0(r4)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_800F2338
    li r0, 0x0
    stw r0, 0x0(r30)
    lwz r0, 0x0(r4)
    stw r0, 0x4(r30)
    lwz r3, 0x0(r4)
    stw r30, 0x0(r3)
    stw r30, 0x0(r4)
    opword  0x48000018  // b .L_800F234C
L_800F2338:
    stw r30, 0x4(r4)
    li r0, 0x0
    stw r30, 0x0(r4)
    stw r0, 0x0(r30)
    stw r0, 0x4(r30)
L_800F234C:
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
L_800F2358:
    mr r30, r31
L_800F235C:
    cmplwi r30, 0x0
    opword  0x4082FEEC  // bne .L_800F224C
    lwz r3, 0x100(r29)
    addi r0, r3, 0x1
    stw r0, 0x100(r29)
L_800F2370:
    li r3, 0x0
L_800F2374:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F2388(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    stw r30, 0x0(r4)
    stw r28, 0x4(r4)
    stb r0, 0x216(r4)
    bl fn_800F32D8
    lwz r3, 0x1c(r28)
    mr r4, r29
    bl fn_800EA2C0
    li r31, 0x1
    opword  0x48000078  // b .L_800F244C
L_800F23D8:
    lbz r3, 0x216(r29)
    addi r0, r3, 0x1
    stb r0, 0x216(r29)
    lwz r3, 0x1c(r28)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 9, 9
    opword  0x4182001C  // beq .L_800F2410
    lwz r0, 0x24(r28)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_800F2410
    mr r3, r28
    mr r4, r29
    bl fn_800F27AC
L_800F2410:
    mr r3, r28
    mr r4, r29
    bl fn_800F2478
    lwz r3, 0x1c(r28)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 9, 9
    opword  0x4082001C  // bne .L_800F2448
    lwz r0, 0x24(r28)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_800F2448
    mr r3, r28
    mr r4, r29
    bl fn_800F27AC
L_800F2448:
    addi r31, r31, 0x1
L_800F244C:
    lbz r0, 0x110(r30)
    cmpw r31, r0
    opword  0x4081FF84  // ble .L_800F23D8
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F2478(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r27, 0x1c(r1)
    mr r30, r3
    mr r31, r4
    lwz r3, 0x0(r4)
    lwz r0, 0xf4(r3)
    rlwinm r0, r0, 0, 25, 23
    stw r0, 0xf4(r3)
    lwz r3, 0x1c(r30)
    lwz r4, 0x0(r4)
    lwz r3, 0x0(r3)
    lfs fp1, 0xb0(r4)
    lfs fp0, 0x10(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x144(r31)
    lwz r3, 0x1c(r30)
    lwz r4, 0x0(r31)
    lwz r3, 0x0(r3)
    lfs fp1, 0xb4(r4)
    lfs fp0, 0x14(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x148(r31)
    lwz r3, 0x1c(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi. r0, r0, 28
    opword  0x40820018  // bne .L_800F2500
    lfs fp1, 0x144(r31)
    opword  0xC0028EA0  // lfs f0, lbl_8053BE40@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x144(r31)
    opword  0x4800002C  // b .L_800F2528
L_800F2500:
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_800F2528
    lfs fp2, 0x144(r31)
    opword  0xC0228EA0  // lfs f1, lbl_8053BE40@sda21(r0)
    opword  0xC0028EA4  // lfs f0, lbl_8053BE44@sda21(r0)
    fmuls fp1, fp2, fp1
    stfs fp1, 0x144(r31)
    lfs fp1, 0x148(r31)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x148(r31)
L_800F2528:
    lwz r3, 0x20(r30)
    cmplwi r3, 0x0
    opword  0x41820068  // beq .L_800F2598
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    clrlwi. r0, r3, 31
    opword  0x41820058  // beq .L_800F2598
    lis r0, 0x4330
    extrwi r3, r3, 2, 18
    stw r3, 0xc(r1)
    opword  0xC8428EB0  // lfd f2, lbl_8053BE50@sda21(r0)
    stw r0, 0x8(r1)
    opword  0xC0228EA8  // lfs f1, lbl_8053BE48@sda21(r0)
    lfd fp0, 0x8(r1)
    stw r0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fsubs fp0, fp0, fp1
    stfs fp0, 0x14c(r31)
    lwz r3, 0x20(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 2, 16
    stw r0, 0x14(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fsubs fp0, fp0, fp1
    stfs fp0, 0x150(r31)
    opword  0x48000010  // b .L_800F25A4
L_800F2598:
    opword  0xC0028EAC  // lfs f0, lbl_8053BE4C@sda21(r0)
    stfs fp0, 0x150(r31)
    stfs fp0, 0x14c(r31)
L_800F25A4:
    lwz r3, 0x1c(r30)
    li r4, 0x1
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 3, 25
    stw r0, 0x200(r31)
    lwz r3, 0x1c(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 3, 22
    stw r0, 0x204(r31)
    lwz r3, 0x1c(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi r0, r0, 28
    cmplwi r0, 0x4
    opword  0x41820010  // beq .L_800F25F4
    cmplwi r0, 0x8
    opword  0x41820008  // beq .L_800F25F4
    li r4, 0x0
L_800F25F4:
    clrlwi r0, r4, 24
    stw r0, 0x20c(r31)
    lwz r0, 0x20c(r31)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800F2610
    li r0, 0x2
    opword  0x48000014  // b .L_800F2620
L_800F2610:
    lwz r3, 0x1c(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 1, 21
L_800F2620:
    stw r0, 0x208(r31)
    lwz r3, 0x1c(r30)
    lwz r3, 0x0(r3)
    lwz r3, 0x8(r3)
    rlwinm. r0, r3, 0, 11, 11
    opword  0x41820010  // beq .L_800F2644
    extrwi r3, r3, 1, 7
    addi r0, r3, 0x1
    opword  0x48000008  // b .L_800F2648
L_800F2644:
    li r0, 0x0
L_800F2648:
    stw r0, 0x210(r31)
    mr r3, r30
    lwz r4, 0x0(r31)
    addi r0, r4, 0xc8
    stw r0, 0x1e4(r31)
    bl fn_800F2A9C
    lbz r3, 0x42(r30)
    subi r28, r3, 0x1
    slwi r29, r28, 2
    opword  0x48000020  // b .L_800F268C
L_800F2670:
    lwz r4, 0x4(r30)
    mr r3, r31
    lwzx r12, r4, r29
    mtctr r12
    bctrl
    subi r29, r29, 0x4
    subi r28, r28, 0x1
L_800F268C:
    cmpwi r28, 0x0
    opword  0x4080FFE0  // bge .L_800F2670
    lwz r3, 0x1c(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 10, 10
    opword  0x41820068  // beq .L_800F270C
    lwz r3, 0x0(r31)
    lwz r28, 0xcc(r3)
    opword  0x48000050  // b .L_800F2700
L_800F26B4:
    stw r28, 0x1e8(r31)
    lwz r0, 0x10(r30)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800F26FC
    lbz r3, 0x45(r30)
    subi r27, r3, 0x1
    slwi r29, r27, 2
    opword  0x48000024  // b .L_800F26F4
L_800F26D4:
    lwz r5, 0x10(r30)
    mr r3, r31
    addi r4, r28, 0x8
    lwzx r12, r5, r29
    mtctr r12
    bctrl
    subi r29, r29, 0x4
    subi r27, r27, 0x1
L_800F26F4:
    cmpwi r27, 0x0
    opword  0x4080FFDC  // bge .L_800F26D4
L_800F26FC:
    lwz r28, 0x0(r28)
L_800F2700:
    cmplwi r28, 0x0
    opword  0x4082FFB0  // bne .L_800F26B4
    opword  0x48000064  // b .L_800F276C
L_800F270C:
    lwz r3, 0x0(r31)
    lwz r27, 0xc8(r3)
    opword  0x48000050  // b .L_800F2764
L_800F2718:
    stw r27, 0x1e8(r31)
    lwz r0, 0x10(r30)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800F2760
    lbz r3, 0x45(r30)
    subi r28, r3, 0x1
    slwi r29, r28, 2
    opword  0x48000024  // b .L_800F2758
L_800F2738:
    lwz r5, 0x10(r30)
    mr r3, r31
    addi r4, r27, 0x8
    lwzx r12, r5, r29
    mtctr r12
    bctrl
    subi r29, r29, 0x4
    subi r28, r28, 0x1
L_800F2758:
    cmpwi r28, 0x0
    opword  0x4080FFDC  // bge .L_800F2738
L_800F2760:
    lwz r27, 0x4(r27)
L_800F2764:
    cmplwi r27, 0x0
    opword  0x4082FFB0  // bne .L_800F2718
L_800F276C:
    li r3, 0x1
    li r4, 0x0
    bl GXSetMisc
    lwz r4, 0x0(r31)
    lwz r3, 0xec(r4)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_800F2798
    lwz r12, 0x0(r3)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
L_800F2798:
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800F27AC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r30, r3
    mr r31, r4
    lwz r3, 0x0(r4)
    lwz r0, 0xf4(r3)
    ori r0, r0, 0x80
    stw r0, 0xf4(r3)
    lwz r3, 0x24(r30)
    lwz r4, 0x0(r3)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 15, 15
    opword  0x41820040  // beq .L_800F2824
    lwz r3, 0x1c(r30)
    lwz r4, 0x0(r31)
    lwz r3, 0x0(r3)
    lfs fp1, 0xb0(r4)
    lfs fp0, 0x10(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x144(r31)
    lwz r3, 0x1c(r30)
    lwz r4, 0x0(r31)
    lwz r3, 0x0(r3)
    lfs fp1, 0xb4(r4)
    lfs fp0, 0x14(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x148(r31)
    opword  0x48000034  // b .L_800F2854
L_800F2824:
    lwz r3, 0x0(r31)
    lfs fp0, 0x20(r4)
    lfs fp1, 0xb0(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x144(r31)
    lwz r3, 0x24(r30)
    lwz r4, 0x0(r31)
    lwz r3, 0x0(r3)
    lfs fp1, 0xb4(r4)
    lfs fp0, 0x24(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x148(r31)
L_800F2854:
    lwz r3, 0x24(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi. r0, r0, 28
    opword  0x40820018  // bne .L_800F287C
    lfs fp1, 0x144(r31)
    opword  0xC0028EA0  // lfs f0, lbl_8053BE40@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x144(r31)
    opword  0x4800002C  // b .L_800F28A4
L_800F287C:
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_800F28A4
    lfs fp2, 0x144(r31)
    opword  0xC0228EA0  // lfs f1, lbl_8053BE40@sda21(r0)
    opword  0xC0028EA4  // lfs f0, lbl_8053BE44@sda21(r0)
    fmuls fp1, fp2, fp1
    stfs fp1, 0x144(r31)
    lfs fp1, 0x148(r31)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x148(r31)
L_800F28A4:
    opword  0xC0028EAC  // lfs f0, lbl_8053BE4C@sda21(r0)
    li r4, 0x1
    stfs fp0, 0x150(r31)
    stfs fp0, 0x14c(r31)
    lwz r3, 0x24(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 3, 25
    stw r0, 0x200(r31)
    lwz r3, 0x24(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 3, 22
    stw r0, 0x204(r31)
    lwz r3, 0x24(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi r0, r0, 28
    cmplwi r0, 0x4
    opword  0x41820010  // beq .L_800F2900
    cmplwi r0, 0x8
    opword  0x41820008  // beq .L_800F2900
    li r4, 0x0
L_800F2900:
    clrlwi r0, r4, 24
    stw r0, 0x20c(r31)
    lwz r0, 0x20c(r31)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800F291C
    li r0, 0x2
    opword  0x48000014  // b .L_800F292C
L_800F291C:
    lwz r3, 0x24(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    extrwi r0, r0, 1, 21
L_800F292C:
    stw r0, 0x208(r31)
    li r0, 0x0
    mr r3, r30
    mr r4, r31
    stw r0, 0x210(r31)
    lwz r5, 0x0(r31)
    addi r0, r5, 0xd4
    stw r0, 0x1e4(r31)
    bl fn_800F2D14
    lbz r3, 0x43(r30)
    subi r28, r3, 0x1
    slwi r29, r28, 2
    opword  0x48000020  // b .L_800F297C
L_800F2960:
    lwz r4, 0x8(r30)
    mr r3, r31
    lwzx r12, r4, r29
    mtctr r12
    bctrl
    subi r29, r29, 0x4
    subi r28, r28, 0x1
L_800F297C:
    cmpwi r28, 0x0
    opword  0x4080FFE0  // bge .L_800F2960
    lwz r3, 0x1c(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 10, 10
    opword  0x41820068  // beq .L_800F29FC
    lwz r3, 0x0(r31)
    lwz r28, 0xd8(r3)
    opword  0x48000050  // b .L_800F29F0
L_800F29A4:
    stw r28, 0x1e8(r31)
    lwz r0, 0x18(r30)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800F29EC
    lbz r3, 0x47(r30)
    subi r27, r3, 0x1
    slwi r29, r27, 2
    opword  0x48000024  // b .L_800F29E4
L_800F29C4:
    lwz r5, 0x18(r30)
    mr r3, r31
    addi r4, r28, 0x8
    lwzx r12, r5, r29
    mtctr r12
    bctrl
    subi r29, r29, 0x4
    subi r27, r27, 0x1
L_800F29E4:
    cmpwi r27, 0x0
    opword  0x4080FFDC  // bge .L_800F29C4
L_800F29EC:
    lwz r28, 0x0(r28)
L_800F29F0:
    cmplwi r28, 0x0
    opword  0x4082FFB0  // bne .L_800F29A4
    opword  0x48000064  // b .L_800F2A5C
L_800F29FC:
    lwz r3, 0x0(r31)
    lwz r27, 0xd4(r3)
    opword  0x48000050  // b .L_800F2A54
L_800F2A08:
    stw r27, 0x1e8(r31)
    lwz r0, 0x18(r30)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800F2A50
    lbz r3, 0x47(r30)
    subi r28, r3, 0x1
    slwi r29, r28, 2
    opword  0x48000024  // b .L_800F2A48
L_800F2A28:
    lwz r5, 0x18(r30)
    mr r3, r31
    addi r4, r27, 0x8
    lwzx r12, r5, r29
    mtctr r12
    bctrl
    subi r29, r29, 0x4
    subi r28, r28, 0x1
L_800F2A48:
    cmpwi r28, 0x0
    opword  0x4080FFDC  // bge .L_800F2A28
L_800F2A50:
    lwz r27, 0x4(r27)
L_800F2A54:
    cmplwi r27, 0x0
    opword  0x4082FFB0  // bne .L_800F2A08
L_800F2A5C:
    li r3, 0x1
    li r4, 0x0
    bl GXSetMisc
    lwz r4, 0x0(r31)
    lwz r3, 0xec(r4)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_800F2A88
    lwz r12, 0x0(r3)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
L_800F2A88:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F2A9C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    li r0, 0x1
    stmw r26, 0x18(r1)
    mr r26, r3
    li r30, 0x1
    li r29, 0x1
    li r28, 0x1
    li r27, 0x0
    lwz r3, 0x1c(r3)
    lwz r3, 0x0(r3)
    lwz r31, 0x8(r3)
    clrlwi r3, r31, 28
    cmplwi r3, 0x3
    opword  0x41820010  // beq .L_800F2AE8
    cmplwi r3, 0x7
    opword  0x41820008  // beq .L_800F2AE8
    li r0, 0x0
L_800F2AE8:
    clrlwi r4, r0, 24
    lwz r5, 0x20(r26)
    neg r3, r4
    extrwi r0, r31, 1, 21
    or r3, r3, r4
    cmplwi r5, 0x0
    srawi r3, r3, 31
    and r4, r0, r3
    opword  0x41820024  // beq .L_800F2B2C
    lwz r3, 0x0(r5)
    lwz r3, 0x8(r3)
    extrwi r0, r3, 2, 16
    extrwi r3, r3, 2, 18
    mulli r0, r0, 0x3
    add r0, r3, r0
    mulli r6, r0, 0xc
    opword  0x48000008  // b .L_800F2B30
L_800F2B2C:
    li r6, 0x30
L_800F2B30:
    mulli r5, r4, 0x6c
    lis r4, lbl_8049C1A0@ha
    li r3, 0x9
    addi r0, r4, lbl_8049C1A0@l
    add r4, r6, r5
    li r5, 0x3
    add r4, r4, r0
    bl fn_8005B620
    extrwi r3, r31, 1, 6
    rlwinm r0, r31, 7, 30, 30
    add r0, r3, r0
    li r5, 0x2
    lis r3, lbl_8049C300@ha
    slwi r4, r0, 3
    addi r0, r3, lbl_8049C300@l
    li r3, 0xd
    add r4, r0, r4
    bl fn_8005B620
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0xff
    bl fn_8005EF80
    lwz r3, 0x28(r26)
    cmplwi r3, 0x0
    opword  0x41820120  // beq .L_800F2CB4
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    clrlwi. r0, r0, 31
    opword  0x41820078  // beq .L_800F2C1C
    li r3, 0x0
    li r4, 0x1
    li r5, 0x2
    bl fn_8005E7CC
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    bl fn_8005E688
    lwz r4, 0x28(r26)
    li r3, 0x1
    lwz r4, 0x0(r4)
    lbz r5, 0x24(r4)
    addi r4, r4, 0xc
    bl fn_8005E510
    li r0, 0x0
    li r3, 0x0
    stw r0, 0x8(r1)
    li r4, 0x0
    li r5, 0x0
    li r6, 0x7
    stw r0, 0xc(r1)
    li r7, 0x1
    li r8, 0x0
    li r9, 0x0
    li r10, 0x0
    bl fn_8005E4A4
    li r30, 0x2
    li r27, 0x1
    li r28, 0x2
L_800F2C1C:
    lwz r3, 0x28(r26)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x41820088  // beq .L_800F2CB4
    mr r4, r30
    li r3, 0x1
    li r5, 0x3
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0x1
    li r4, 0xf
    li r5, 0x8
    li r6, 0x0
    li r7, 0xf
    bl fn_8005EA6C
    li r3, 0x1
    li r4, 0x7
    li r5, 0x4
    li r6, 0x0
    li r7, 0x7
    bl fn_8005EAB0
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EAF4
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EB5C
    li r29, 0x2
    addi r28, r28, 0x1
L_800F2CB4:
    mr r3, r29
    bl fn_8005F11C
    mr r3, r27
    bl fn_8005E8B8
    lwz r3, 0x1c(r26)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 8, 8
    opword  0x4182001C  // beq .L_800F2CF0
    li r3, 0x1
    li r4, 0x8
    bl GXSetMisc
    li r3, 0x0
    bl fn_800601C0
    opword  0x4800000C  // b .L_800F2CF8
L_800F2CF0:
    li r3, 0x1
    bl fn_800601C0
L_800F2CF8:
    mr r3, r28
    bl fn_8005B93C
    lmw r26, 0x18(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800F2D14(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    li r0, 0x1
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r3, 0x24(r3)
    lwz r3, 0x0(r3)
    lwz r4, 0x8(r3)
    clrlwi r3, r4, 28
    cmplwi r3, 0x3
    opword  0x41820010  // beq .L_800F2D58
    cmplwi r3, 0x7
    opword  0x41820008  // beq .L_800F2D58
    li r0, 0x0
L_800F2D58:
    clrlwi r5, r0, 24
    lis r3, lbl_8049C1A0@ha
    neg r0, r5
    extrwi r4, r4, 1, 21
    or r5, r0, r5
    addi r0, r3, lbl_8049C1A0@l
    srawi r5, r5, 31
    li r3, 0x9
    and r4, r4, r5
    li r5, 0x3
    mulli r4, r4, 0x6c
    add r4, r4, r0
    addi r4, r4, 0x30
    bl fn_8005B620
    lis r4, lbl_8049C300@ha
    li r3, 0xd
    addi r4, r4, lbl_8049C300@l
    li r5, 0x2
    bl fn_8005B620
    li r3, 0x0
    li r4, 0x0
    li r5, 0x1
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0x0
    li r4, 0x1
    li r5, 0x4
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x0
    bl fn_8005E8DC
    li r3, 0x1
    bl fn_8005F11C
    li r3, 0x0
    bl fn_8005E8B8
    lwz r3, 0x24(r30)
    lwz r3, 0x0(r3)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 11, 11
    opword  0x4182001C  // beq .L_800F2E18
    li r3, 0x1
    li r4, 0x8
    bl GXSetMisc
    li r3, 0x0
    bl fn_800601C0
    opword  0x4800000C  // b .L_800F2E20
L_800F2E18:
    li r3, 0x1
    bl fn_800601C0
L_800F2E20:
    li r3, 0x1
    bl fn_8005B93C
    lwz r3, 0x24(r30)
    li r4, 0x1
    lwz r5, 0x4(r31)
    lwz r3, 0x0(r3)
    lwz r6, 0x8(r31)
    lbz r0, 0x45(r3)
    lwz r3, 0x38(r5)
    slwi r0, r0, 1
    lwz r5, 0x8(r6)
    lhzx r0, r3, r0
    slwi r0, r0, 2
    lwzx r3, r5, r0
    addi r3, r3, 0x4
    bl fn_80092984
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800F2E78(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    lwz r0, 0xc(r3)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800F2ED8
    lbz r3, 0x44(r27)
    subi r30, r3, 0x1
    slwi r31, r30, 2
    opword  0x48000024  // b .L_800F2ED0
L_800F2EB0:
    lwz r5, 0xc(r27)
    mr r3, r28
    mr r4, r29
    lwzx r12, r5, r31
    mtctr r12
    bctrl
    subi r31, r31, 0x4
    subi r30, r30, 0x1
L_800F2ED0:
    cmpwi r30, 0x0
    opword  0x4080FFDC  // bge .L_800F2EB0
L_800F2ED8:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F2EEC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    lwz r0, 0x14(r3)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800F2F4C
    lbz r3, 0x46(r27)
    subi r30, r3, 0x1
    slwi r31, r30, 2
    opword  0x48000024  // b .L_800F2F44
L_800F2F24:
    lwz r5, 0x14(r27)
    mr r3, r28
    mr r4, r29
    lwzx r12, r5, r31
    mtctr r12
    bctrl
    subi r31, r31, 0x4
    subi r30, r30, 0x1
L_800F2F44:
    cmpwi r30, 0x0
    opword  0x4080FFDC  // bge .L_800F2F24
L_800F2F4C:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F2F60(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    lbz r3, 0x3e(r3)
    subi r30, r3, 0x1
    slwi r31, r30, 2
    opword  0x48000030  // b .L_800F2FB8
L_800F2F8C:
    lwz r3, 0x30(r27)
    mr r4, r28
    mr r6, r29
    lwzx r5, r3, r31
    lwz r3, 0x4(r5)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    subi r31, r31, 0x4
    subi r30, r30, 0x1
L_800F2FB8:
    cmpwi r30, 0x0
    opword  0x4080FFD0  // bge .L_800F2F8C
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F2FD4(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stfd fp31, 0x30(r1)
    psq_st fp31, 0x38(r1), 0, 0
    stmw r27, 0x1c(r1)
    mr r27, r3
    opword  0xCBE28EB0  // lfd f31, lbl_8053BE50@sda21(r0)
    lbz r3, 0x3f(r3)
    mr r28, r4
    lis r31, 0x4330
    subi r29, r3, 0x1
    slwi r30, r29, 2
    opword  0x480000E0  // b .L_800F30E8
L_800F300C:
    lwz r3, 0x0(r28)
    lwz r4, 0x34(r27)
    lwz r0, 0x100(r3)
    stw r31, 0x8(r1)
    lwzx r3, r4, r30
    stw r0, 0xc(r1)
    lfd fp0, 0x8(r1)
    fsubs fp1, fp0, fp31
    bl fn_800EEDCC
    lwz r3, 0x34(r27)
    lwzx r3, r3, r30
    lwz r3, 0x0(r3)
    lbz r0, 0x8(r3)
    cmplwi r0, 0xa
    opword  0x4181009C  // bgt .L_800F30E0
    lis r3, jumptable_8049C378@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049C378@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    lwz r3, 0x0(r28)
    stfs fp1, 0x28(r3)
    opword  0x48000078  // b .L_800F30E0
    fctiwz fp0, fp1
    lwz r3, 0x0(r28)
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    sth r0, 0x54(r3)
    opword  0x48000060  // b .L_800F30E0
    lwz r3, 0x0(r28)
    stfs fp1, 0x30(r3)
    opword  0x48000054  // b .L_800F30E0
    fctiwz fp0, fp1
    lwz r3, 0x0(r28)
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    sth r0, 0x52(r3)
    opword  0x4800003C  // b .L_800F30E0
    lwz r3, 0x0(r28)
    stfs fp1, 0x34(r3)
    opword  0x48000030  // b .L_800F30E0
    lwz r3, 0x0(r28)
    stfs fp1, 0x38(r3)
    opword  0x48000024  // b .L_800F30E0
    lwz r3, 0x0(r28)
    stfs fp1, 0x3c(r3)
    opword  0x48000018  // b .L_800F30E0
    lwz r3, 0x0(r28)
    stfs fp1, 0x40(r3)
    opword  0x4800000C  // b .L_800F30E0
    lwz r3, 0x0(r28)
    stfs fp1, 0xfc(r3)
L_800F30E0:
    subi r30, r30, 0x4
    subi r29, r29, 0x1
L_800F30E8:
    cmpwi r29, 0x0
    opword  0x4080FF20  // bge .L_800F300C
    psq_l fp31, 0x38(r1), 0, 0
    lfd fp31, 0x30(r1)
    lmw r27, 0x1c(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800F310C(void)
{
    nofralloc
    stwu r1, -0xb0(r1)
    mflr r0
    opword  0xC8228EB0  // lfd f1, lbl_8053BE50@sda21(r0)
    stw r0, 0xb4(r1)
    lis r0, 0x4330
    stw r31, 0xac(r1)
    mr r31, r4
    lwz r5, 0x0(r4)
    li r4, 0x0
    stw r0, 0x98(r1)
    li r0, 0x1
    lhz r5, 0x54(r5)
    stw r5, 0x9c(r1)
    lfd fp0, 0x98(r1)
    fsubs fp0, fp0, fp1
    stfs fp0, 0x34(r31)
    lwz r5, 0x0(r31)
    lfs fp0, 0x30(r5)
    stfs fp0, 0x38(r31)
    lwz r5, 0x0(r31)
    lfs fp0, 0x2c(r5)
    stfs fp0, 0x3c(r31)
    stw r4, 0x1f4(r31)
    stw r4, 0x1ec(r31)
    stw r0, 0x1f0(r31)
    lwz r4, 0x2c(r3)
    addi r3, r1, 0x68
    lwz r4, 0x0(r4)
    lhz r0, 0x76(r4)
    slwi r4, r0, 1
    addi r0, r4, 0x1
    stw r0, 0x1f8(r31)
    lwz r4, 0x0(r31)
    lfs fp1, 0x0(r4)
    lfs fp2, 0x4(r4)
    lfs fp3, 0x8(r4)
    bl PSMTXScale
    lwz r5, 0x0(r31)
    addi r6, r1, 0x38
    lha r4, 0x4c(r5)
    lha r3, 0x4e(r5)
    lha r0, 0x50(r5)
    mulli r5, r4, 0xb6
    mulli r4, r3, 0xb6
    extsh r3, r5
    mulli r0, r0, 0xb6
    extsh r4, r4
    extsh r5, r0
    bl fn_800EF008
    lwz r4, 0x0(r31)
    addi r3, r1, 0x8
    lfs fp1, 0x98(r4)
    lfs fp2, 0x9c(r4)
    lfs fp3, 0xa0(r4)
    bl PSMTXScale
    lwz r3, 0x0(r31)
    addi r4, r1, 0x8
    mr r5, r4
    addi r3, r3, 0x68
    bl PSMTXConcat
    lwz r5, 0x0(r31)
    addi r4, r31, 0x78
    lfs fp0, 0xa4(r5)
    addi r3, r5, 0x68
    stfs fp0, 0x14(r1)
    lfs fp0, 0xa8(r5)
    stfs fp0, 0x24(r1)
    lfs fp0, 0xac(r5)
    stfs fp0, 0x34(r1)
    bl PSMTXCopy
    addi r3, r31, 0x78
    addi r4, r1, 0x38
    addi r5, r31, 0xa8
    bl PSMTXConcat
    addi r3, r31, 0xa8
    addi r4, r1, 0x68
    addi r5, r31, 0xd8
    bl PSMTXConcat
    lwz r3, 0x0(r31)
    addi r4, r31, 0x48
    lfs fp0, 0xc(r3)
    stfs fp0, 0x108(r31)
    lfs fp0, 0x10(r3)
    stfs fp0, 0x10c(r31)
    lfs fp0, 0x14(r3)
    stfs fp0, 0x110(r31)
    lwz r3, 0x0(r31)
    psq_l fp1, 0x98(r3), 0, 0
    psq_l fp0, 0x0(r3), 0, 0
    ps_mul fp0, fp1, fp0
    psq_st fp0, 0x114(r31), 0, 0
    lfs fp1, 0xa0(r3)
    lfs fp0, 0x8(r3)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x11c(r31)
    lwz r3, 0x0(r31)
    addi r3, r3, 0x18
    bl fn_800EEE60
    lwz r4, 0x0(r31)
    addi r3, r1, 0x8
    addi r5, r31, 0x138
    lfs fp0, 0x98(r4)
    stfs fp0, 0x12c(r31)
    lfs fp0, 0x9c(r4)
    stfs fp0, 0x130(r31)
    lfs fp0, 0xa0(r4)
    stfs fp0, 0x134(r31)
    lwz r4, 0x0(r31)
    addi r4, r4, 0xc
    bl PSMTXMultVec
    lwz r0, 0xb4(r1)
    lwz r31, 0xac(r1)
    mtlr r0
    addi r1, r1, 0xb0
    blr
}

ASM void fn_800F32D8(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    addi r6, r1, 0x8
    stw r31, 0x3c(r1)
    mr r31, r4
    lwz r5, 0x0(r4)
    lha r0, 0x50(r5)
    lha r4, 0x4c(r5)
    lha r3, 0x4e(r5)
    mulli r0, r0, 0xb6
    mulli r5, r4, 0xb6
    mulli r4, r3, 0xb6
    extsh r3, r5
    extsh r5, r0
    extsh r4, r4
    bl fn_800EF008
    lwz r3, 0x0(r31)
    addi r4, r1, 0x8
    addi r5, r31, 0xa8
    addi r3, r3, 0x68
    bl PSMTXConcat
    lwz r4, 0x0(r31)
    addi r3, r31, 0xa8
    addi r5, r31, 0x120
    addi r4, r4, 0x18
    bl PSMTXMultVecSR
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800F3358(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r6, 0x4(r4)
    stw r0, 0x14(r1)
    subis r0, r6, 0x322d
    stw r31, 0xc(r1)
    cmplwi r0, 0x3130
    mr r31, r3
    opword  0x40820008  // bne .L_800F3380
    bl fn_800F3398
L_800F3380:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800F3398(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lhz r3, 0x8(r4)
    stw r0, 0x44(r1)
    lhz r0, 0xa(r4)
    stmw r18, 0x8(r1)
    mr r20, r5
    mr r23, r4
    lwz r30, 0x0(r5)
    li r5, 0x0
    sth r3, 0xc(r20)
    mr r4, r30
    sth r0, 0x10(r20)
    lhz r0, 0xc(r20)
    slwi r3, r0, 2
    bl fn_80084514
    stw r3, 0x4(r20)
    mr r4, r30
    li r5, 0x0
    lhz r0, 0x10(r20)
    slwi r3, r0, 2
    bl fn_80084514
    lis r4, 0x464c
    stw r3, 0x8(r20)
    lhz r18, 0x8(r23)
    addi r22, r4, 0x4431
    li r26, 0x10
    li r19, 0x0
    opword  0x480002D8  // b .L_800F36E0
L_800F340C:
    mr r4, r30
    add r24, r23, r26
    li r3, 0x48
    li r5, 0x0
    bl fn_8008440C
    mr. r31, r3
    opword  0x4182000C  // beq .L_800F3430
    bl fn_800F087C
    mr r31, r3
L_800F3430:
    lbz r0, 0x4(r24)
    stb r0, 0x3e(r31)
    lbz r0, 0x3e(r31)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F3458
    mr r4, r30
    clrlslwi r3, r0, 24, 2
    li r5, 0x0
    bl fn_80084514
    opword  0x48000008  // b .L_800F345C
L_800F3458:
    li r3, 0x0
L_800F345C:
    stw r3, 0x30(r31)
    lbz r0, 0x5(r24)
    stb r0, 0x3f(r31)
    lbz r0, 0x3f(r31)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800F3488
    mr r4, r30
    clrlslwi r3, r0, 24, 2
    li r5, 0x0
    bl fn_80084514
    opword  0x48000008  // b .L_800F348C
L_800F3488:
    li r3, 0x0
L_800F348C:
    stw r3, 0x34(r31)
    li r29, 0x0
    lbz r3, 0x6(r24)
    mr r28, r29
    lhz r0, 0x0(r24)
    li r27, 0x0
    stb r3, 0x40(r31)
    addi r26, r26, 0x8
    stw r29, 0x38(r31)
    sth r0, 0x3c(r31)
    opword  0x48000204  // b .L_800F36B8
L_800F34B8:
    add r21, r23, r26
    lwz r4, 0x0(r21)
    lwz r25, 0x4(r21)
    cmpw r4, r22
    opword  0x41820094  // beq .L_800F355C
    opword  0x40800054  // bge .L_800F3520
    lis r3, 0x4553
    addi r0, r3, 0x5031
    cmpw r4, r0
    opword  0x41820148  // beq .L_800F3624
    opword  0x4080002C  // bge .L_800F350C
    lis r3, 0x4253
    addi r0, r3, 0x5031
    cmpw r4, r0
    opword  0x41820104  // beq .L_800F35F4
    opword  0x408001BC  // bge .L_800F36B0
    lis r3, 0x4245
    addi r0, r3, 0x4d31
    cmpw r4, r0
    opword  0x418200C4  // beq .L_800F35C8
    opword  0x480001A8  // b .L_800F36B0
L_800F350C:
    lis r3, 0x4554
    addi r0, r3, 0x5831
    cmpw r4, r0
    opword  0x41820164  // beq .L_800F367C
    opword  0x48000194  // b .L_800F36B0
L_800F3520:
    lis r3, 0x5353
    addi r0, r3, 0x5031
    cmpw r4, r0
    opword  0x41820124  // beq .L_800F3650
    opword  0x40800018  // bge .L_800F3548
    lis r3, 0x4b46
    addi r0, r3, 0x4131
    cmpw r4, r0
    opword  0x41820054  // beq .L_800F3594
    opword  0x4800016C  // b .L_800F36B0
L_800F3548:
    lis r3, 0x5444
    addi r0, r3, 0x4231
    cmpw r4, r0
    opword  0x41820154  // beq .L_800F36A8
    opword  0x48000158  // b .L_800F36B0
L_800F355C:
    mr r4, r30
    li r3, 0x2c
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820014  // beq .L_800F3584
    mr r4, r21
    mr r5, r30
    bl fn_800EE710
    mr r0, r3
L_800F3584:
    lwz r3, 0x30(r31)
    stwx r0, r3, r29
    addi r29, r29, 0x4
    opword  0x48000120  // b .L_800F36B0
L_800F3594:
    mr r4, r30
    li r3, 0x8
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_800F35B8
    mr r4, r21
    bl fn_800EEDBC
    mr r0, r3
L_800F35B8:
    lwz r3, 0x34(r31)
    stwx r0, r3, r28
    addi r28, r28, 0x4
    opword  0x480000EC  // b .L_800F36B0
L_800F35C8:
    mr r4, r30
    li r3, 0x8
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_800F35EC
    mr r4, r21
    bl fn_800EAF38
    mr r0, r3
L_800F35EC:
    stw r0, 0x2c(r31)
    opword  0x480000C0  // b .L_800F36B0
L_800F35F4:
    mr r4, r30
    li r3, 0x14
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820014  // beq .L_800F361C
    mr r4, r21
    mr r5, r30
    bl fn_800EA1AC
    mr r0, r3
L_800F361C:
    stw r0, 0x1c(r31)
    opword  0x48000090  // b .L_800F36B0
L_800F3624:
    mr r4, r30
    li r3, 0x1c
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_800F3648
    mr r4, r21
    bl fn_800EC9E8
    mr r0, r3
L_800F3648:
    stw r0, 0x20(r31)
    opword  0x48000064  // b .L_800F36B0
L_800F3650:
    mr r4, r30
    li r3, 0x4
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_800F3674
    mr r4, r21
    bl fn_800EA584
    mr r0, r3
L_800F3674:
    stw r0, 0x24(r31)
    opword  0x48000038  // b .L_800F36B0
L_800F367C:
    mr r4, r30
    li r3, 0x4
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_800F36A0
    mr r4, r21
    bl fn_800EC5A4
    mr r0, r3
L_800F36A0:
    stw r0, 0x28(r31)
    opword  0x4800000C  // b .L_800F36B0
L_800F36A8:
    addi r0, r21, 0x8
    stw r0, 0x38(r31)
L_800F36B0:
    add r26, r26, r25
    addi r27, r27, 0x1
L_800F36B8:
    lhz r0, 0x2(r24)
    cmpw r27, r0
    opword  0x4180FDF8  // blt .L_800F34B8
    mr r3, r31
    mr r4, r30
    bl fn_800F08EC
    mr r3, r20
    mr r4, r31
    bl fn_800F3884
    addi r19, r19, 0x1
L_800F36E0:
    cmpw r19, r18
    opword  0x4180FD28  // blt .L_800F340C
    lwz r21, 0xc(r23)
    li r22, 0x0
    lhz r18, 0xa(r23)
    opword  0x48000040  // b .L_800F3734
L_800F36F8:
    add r19, r23, r21
    mr r4, r30
    lwz r24, 0x4(r19)
    li r3, 0x48
    li r5, 0x0
    bl fn_8008440C
    mr. r4, r3
    opword  0x41820010  // beq .L_800F3724
    mr r4, r19
    bl fn_800F3920
    mr r4, r3
L_800F3724:
    mr r3, r20
    bl fn_800F38A4
    add r21, r21, r24
    addi r22, r22, 0x1
L_800F3734:
    cmpw r22, r18
    opword  0x4180FFC0  // blt .L_800F36F8
    lmw r18, 0x8(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800F3750(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r0, 0x4(r3)
    addi r3, r1, 0x8
    stw r0, 0x8(r31)
    sth r0, 0xc(r31)
    sth r0, 0xe(r31)
    sth r0, 0x10(r31)
    sth r0, 0x12(r31)
    stw r5, 0x0(r31)
    mr r5, r31
    bl fn_800F3358
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F37A8(void)
{
    nofralloc
    lhz r6, 0xe(r3)
    clrlwi r4, r4, 16
    lwz r5, 0x4(r3)
    li r7, 0x0
    opword  0x4800001C  // b .L_800F37D4
L_800F37BC:
    clrlslwi r0, r7, 16, 2
    lwzx r3, r5, r0
    lhz r0, 0x3c(r3)
    cmplw r4, r0
    beqlr
    addi r7, r7, 0x1
L_800F37D4:
    clrlwi r0, r7, 16
    cmplw r0, r6
    opword  0x4180FFE0  // blt .L_800F37BC
    li r3, 0x0
    blr
}

ASM void fn_800F37E8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r26, r3
    mr r27, r4
    mr r28, r5
    li r30, 0x0
    li r29, 0x0
    li r31, 0x0
    opword  0x48000050  // b .L_800F3860
L_800F3814:
    lwz r4, 0x8(r26)
    mr r3, r28
    lwzx r4, r4, r31
    lwz r4, 0x44(r4)
    addi r4, r4, 0xc
    bl strcmp
    cmpwi r3, 0x0
    opword  0x40820028  // bne .L_800F3858
    lwz r3, 0x8(r26)
    slwi r0, r29, 2
    mr r4, r27
    li r5, 0x0
    lwzx r3, r3, r0
    addi r3, r3, 0x4
    lwz r30, 0x20(r3)
    bl fn_800923D8
    opword  0x48000018  // b .L_800F386C
L_800F3858:
    addi r31, r31, 0x4
    addi r29, r29, 0x1
L_800F3860:
    lhz r0, 0x12(r26)
    cmpw r29, r0
    opword  0x4180FFAC  // blt .L_800F3814
L_800F386C:
    mr r3, r30
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800F3884(void)
{
    nofralloc
    lhz r0, 0xe(r3)
    lwz r5, 0x4(r3)
    slwi r0, r0, 2
    stwx r4, r5, r0
    lhz r4, 0xe(r3)
    addi r0, r4, 0x1
    sth r0, 0xe(r3)
    blr
}

ASM void fn_800F38A4(void)
{
    nofralloc
    lhz r0, 0x12(r3)
    lwz r5, 0x8(r3)
    slwi r0, r0, 2
    stwx r4, r5, r0
    lhz r4, 0x12(r3)
    addi r0, r4, 0x1
    sth r0, 0x12(r3)
    blr
}

ASM void fn_800F38C4(void)
{
    nofralloc
    lhz r7, 0xe(r3)
    clrlwi r4, r4, 16
    lwz r5, 0x4(r3)
    li r3, 0x0
    li r6, 0x0
    opword  0x48000020  // b .L_800F38F8
L_800F38DC:
    clrlslwi r0, r6, 16, 2
    lwzx r8, r5, r0
    lhz r0, 0x3c(r8)
    cmplw r4, r0
    opword  0x40820008  // bne .L_800F38F4
    opword  0x48000018  // b .L_800F3908
L_800F38F4:
    addi r6, r6, 0x1
L_800F38F8:
    clrlwi r0, r6, 16
    cmplw r0, r7
    opword  0x4180FFDC  // blt .L_800F38DC
    li r8, 0x0
L_800F3908:
    cmplwi r8, 0x0
    beqlr
    lwz r3, 0x2c(r8)
    lwz r3, 0x0(r3)
    lwz r3, 0xc(r3)
    blr
}

ASM void fn_800F3920(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_8049C3A8@ha
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r5, lbl_8049C3A8@l
    li r5, 0x0
    stw r3, 0x0(r31)
    addi r3, r31, 0x4
    lbz r6, 0x3f(r31)
    rlwinm r6, r6, 0, 30, 30
    stb r6, 0x3f(r31)
    stw r0, 0x2c(r31)
    stw r0, 0x24(r31)
    stw r4, 0x44(r31)
    lwz r4, 0x44(r31)
    addi r4, r4, 0x20
    bl fn_800923D8
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800F3988(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182002C  // beq .L_800F39D0
    lis r4, lbl_8049C3A8@ha
    addi r3, r30, 0x4
    addi r0, r4, lbl_8049C3A8@l
    li r4, -0x1
    stw r0, 0x0(r30)
    bl dtor_80092364
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800F39D0
    mr r3, r30
    bl dtor_80084580
L_800F39D0:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

