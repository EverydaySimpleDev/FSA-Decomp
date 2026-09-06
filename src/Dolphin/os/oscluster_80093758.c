#include "types.h"

extern f32 jumptable_80499570;
extern f32 lbl_80499520;
extern f32 lbl_80499548;
extern f32 lbl_80499590;
extern f32 lbl_80536C40;
extern f32 lbl_8053A9B0;
extern f32 lbl_8053B948;
extern f32 lbl_8053B990;
extern f32 lbl_8053B998;
extern f32 lbl_8053B99C;
extern f32 lbl_8053B9A0;
extern f32 lbl_8053B9A8;
extern f32 lbl_8053B9B0;
extern f32 lbl_8053B9B4;
extern f32 lbl_8053B9B8;
extern f32 lbl_8053B9C0;
extern f32 lbl_8053B9C8;
extern f32 lbl_8053B9CC;
extern f32 lbl_8053B9D0;
extern f32 lbl_8053B9D4;

extern void __cvt_fp2unsigned(void);
extern void ceil(void);
extern void dtor_80084580(void);
extern void PSMTXIdentity(void);
extern void PSMTXCopy(void);
extern void PSMTXConcat(void);
extern void PSMTXRotRad(void);
extern void PSMTXTrans(void);
extern void PSMTXTransApply(void);
extern void PSMTXScaleApply(void);
extern void PSMTXLightFrustum(void);
extern void fn_8005A464(void);
extern void fn_8005AD7C(void);
extern void fn_8005ADB4(void);
extern void fn_8005B6BC(void);
extern void fn_8005B93C(void);
extern void fn_8005C24C(void);
extern void fn_8005C3A4(void);
extern void fn_8005C46C(void);
extern void fn_8005D3C8(void);
extern void fn_8005D404(void);
extern void fn_8005E8B8(void);
extern void fn_8005E8DC(void);
extern void fn_8005E9E0(void);
extern void fn_8005EEB0(void);
extern void fn_8005EF80(void);
extern void fn_8005F11C(void);
extern void fn_8005F48C(void);
extern void fn_8005F538(void);
extern void fn_8005F56C(void);
extern void fn_8005FCC4(void);
extern void fn_8005FDF4(void);
extern void fn_8005FE94(void);
extern void fn_8005FEC8(void);
extern void fn_8006000C(void);
extern void fn_800600C0(void);
extern void fn_80086AF8(void);
extern void fn_80086BD8(void);
extern void fn_80086CC0(void);
extern void fn_80086D7C(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80086F44(void);
extern void fn_80086F58(void);
extern void fn_8009209C(void);
extern void fn_800A6938(void);

ASM void fn_80093758(void);
ASM void fn_80093768(void);
ASM void fn_800937B0(void);
ASM void fn_80093894(void);
ASM void fn_800938EC(void);
ASM void fn_80093920(void);
ASM void fn_8009395C(void);
ASM void fn_80093A68(void);
ASM void fn_80093BD0(void);
ASM void fn_80093C18(void);
ASM void fn_80093CE4(void);
ASM void fn_80093D30(void);
ASM void fn_80093E14(void);
ASM void fn_80093E1C(void);
ASM void fn_80093E64(void);
ASM void fn_80093F10(void);
ASM void fn_80093FA0(void);
ASM void fn_8009417C(void);
ASM void fn_80094424(void);
ASM void fn_80094448(void);
ASM void fn_8009447C(void);
ASM void fn_80094598(void);
ASM void fn_800945C4(void);
ASM void fn_800946C0(void);
ASM void fn_800947D0(void);
ASM void fn_800948D4(void);
ASM void fn_800948DC(void);
ASM void fn_800948E0(void);
ASM void fn_800949A0(void);
ASM void fn_800949E0(void);
ASM void fn_80094A1C(void);
ASM void fn_80094AA4(void);
ASM void fn_80094B2C(void);
ASM void fn_80094C4C(void);
ASM void fn_80094CC4(void);
ASM void fn_80094DB8(void);
ASM void fn_80094ED8(void);
ASM void fn_80095218(void);
ASM void fn_800953D4(void);
ASM void fn_800954B4(void);
ASM void fn_8009556C(void);
ASM void fn_80095BC4(void);
ASM void fn_80095BC8(void);
ASM void fn_80095BCC(void);
ASM void fn_80095E14(void);
ASM void fn_80095E68(void);
ASM void fn_80095EAC(void);
ASM void fn_80095FB4(void);
ASM void fn_80096094(void);
ASM void fn_800960C4(void);
ASM void fn_8009611C(void);
ASM void fn_8009614C(void);
ASM void fn_800961C8(void);
ASM void fn_80096278(void);
ASM void fn_80096328(void);
ASM void fn_800963B0(void);
ASM void fn_80096438(void);
ASM void fn_80096578(void);
ASM void fn_800965F0(void);
ASM void fn_800965F8(void);
ASM void fn_80096630(void);
ASM void fn_80096668(void);
ASM void fn_80096684(void);
ASM void fn_80096890(void);
ASM void fn_80096948(void);
ASM void fn_80096A94(void);
ASM void fn_80096B64(void);
ASM void fn_80096B68(void);
ASM void fn_80096B6C(void);
ASM void fn_80096B70(void);
ASM void fn_80096B74(void);
ASM void fn_80096B78(void);
ASM void fn_80096B7C(void);
ASM void fn_80096B84(void);
ASM void fn_80096BBC(void);
ASM void fn_80096C38(void);
ASM void fn_80096CD8(void);
ASM void fn_80096D60(void);
ASM void fn_80096D8C(void);
ASM void fn_80096E14(void);
ASM void fn_80096E40(void);
ASM void fn_80096EE0(void);
ASM void fn_80096FE8(void);
ASM void fn_80096FEC(void);
ASM void fn_80096FF4(void);
ASM void fn_80097030(void);
ASM void fn_80097040(void);
ASM void fn_80097044(void);

ASM void fn_80093758(void)
{
    nofralloc
    opword  0xC00289A8  // lfs f0, lbl_8053B948@sda21(r0)
    stfs fp0, 0x0(r3)
    stfs fp0, 0x4(r3)
    blr
}

ASM void fn_80093768(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_80093798
    lis r5, lbl_80499548@ha
    extsh. r0, r4
    addi r0, r5, lbl_80499548@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_80093798
    bl dtor_80084580
L_80093798:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800937B0(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    stfd fp31, 0x50(r1)
    psq_st fp31, 0x58(r1), 0, 0
    stfd fp30, 0x40(r1)
    psq_st fp30, 0x48(r1), 0, 0
    stfd fp29, 0x30(r1)
    psq_st fp29, 0x38(r1), 0, 0
    stfd fp28, 0x20(r1)
    psq_st fp28, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    fmr fp28, fp3
    mr r31, r3
    fmr fp29, fp4
    fmr fp30, fp5
    fmr fp31, fp6
    bl fn_80093E64
    opword  0xC04289F0  // lfs f2, lbl_8053B990@sda21(r0)
    lis r3, lbl_80499520@ha
    addi r0, r3, lbl_80499520@l
    stfs fp28, 0x10(r1)
    fneg fp1, fp31
    mr r3, r31
    stfs fp2, 0x8(r1)
    fneg fp0, fp30
    lwz r4, 0x10(r1)
    stfs fp2, 0xc(r1)
    lwz r5, 0x8(r1)
    stw r0, 0x0(r31)
    lwz r0, 0xc(r1)
    stw r5, 0xbc(r31)
    stfs fp29, 0x14(r1)
    stw r0, 0xc0(r31)
    lwz r0, 0x14(r1)
    stw r4, 0xc4(r31)
    stw r0, 0xc8(r31)
    stfs fp1, 0xcc(r31)
    stfs fp0, 0xd0(r31)
    lwz r12, 0x0(r31)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    mr r3, r31
    psq_l fp31, 0x58(r1), 0, 0
    lfd fp31, 0x50(r1)
    psq_l fp30, 0x48(r1), 0, 0
    lfd fp30, 0x40(r1)
    psq_l fp29, 0x38(r1), 0, 0
    lfd fp29, 0x30(r1)
    psq_l fp28, 0x28(r1), 0, 0
    lfd fp28, 0x20(r1)
    lwz r0, 0x64(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_80093894(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_80093F10
    lfs fp1, 0xc0(r31)
    addi r3, r31, 0x40
    lfs fp2, 0xc8(r31)
    lfs fp3, 0xbc(r31)
    lfs fp4, 0xc4(r31)
    lfs fp5, 0xcc(r31)
    lfs fp6, 0xd0(r31)
    bl PSMTXLightFrustum
    addi r3, r31, 0x40
    li r4, 0x1
    bl fn_8005FCC4
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800938EC(void)
{
    nofralloc
    lwz r5, 0x0(r4)
    fneg fp2, fp2
    lwz r0, 0x4(r4)
    fneg fp0, fp1
    stw r5, 0xbc(r3)
    lwz r5, 0x8(r4)
    stw r0, 0xc0(r3)
    lwz r0, 0xc(r4)
    stw r5, 0xc4(r3)
    stw r0, 0xc8(r3)
    stfs fp2, 0xcc(r3)
    stfs fp0, 0xd0(r3)
    blr
}

ASM void fn_80093920(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r31, 0x80
    bl PSMTXIdentity
    addi r3, r31, 0x80
    li r4, 0x0
    bl fn_8005FDF4
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8009395C(void)
{
    nofralloc
    lfs fp0, 0xc(r3)
    lfs fp6, 0x4(r3)
    lfs fp1, 0xc4(r3)
    lfs fp8, 0xbc(r3)
    fsubs fp4, fp0, fp6
    lfs fp0, 0x10(r3)
    lfs fp7, 0x8(r3)
    fsubs fp3, fp1, fp8
    lfs fp1, 0xc8(r3)
    lfs fp9, 0xc0(r3)
    fsubs fp2, fp0, fp7
    fdivs fp4, fp4, fp3
    opword  0xC00289F0  // lfs f0, lbl_8053B990@sda21(r0)
    fsubs fp1, fp1, fp9
    fcmpo cr0, fp6, fp0
    fdivs fp5, fp2, fp1
    cror eq, gt, eq
    opword  0x40820008  // bne .L_800939A8
    opword  0x48000008  // b .L_800939AC
L_800939A8:
    fmr fp6, fp0
L_800939AC:
    opword  0xC00289F0  // lfs f0, lbl_8053B990@sda21(r0)
    fcmpo cr0, fp7, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_800939C0
    opword  0x48000008  // b .L_800939C4
L_800939C0:
    fmr fp7, fp0
L_800939C4:
    lfs fp0, 0x0(r5)
    lfs fp1, 0x4(r5)
    fsubs fp0, fp0, fp8
    lfs fp3, 0x8(r5)
    fsubs fp2, fp1, fp9
    lfs fp1, 0xc(r5)
    fsubs fp3, fp3, fp8
    fmadds fp0, fp4, fp0, fp6
    fsubs fp1, fp1, fp9
    fmadds fp2, fp5, fp2, fp7
    stfs fp0, 0x0(r4)
    fmadds fp0, fp4, fp3, fp6
    fmadds fp1, fp5, fp1, fp7
    stfs fp2, 0x4(r4)
    stfs fp0, 0x8(r4)
    stfs fp1, 0xc(r4)
    lfs fp0, 0x0(r4)
    lfs fp1, 0x14(r3)
    fcmpo cr0, fp0, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_80093A1C
    stfs fp1, 0x0(r4)
L_80093A1C:
    lfs fp0, 0x4(r4)
    lfs fp1, 0x18(r3)
    fcmpo cr0, fp0, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_80093A34
    stfs fp1, 0x4(r4)
L_80093A34:
    lfs fp0, 0x8(r4)
    lfs fp1, 0x1c(r3)
    fcmpo cr0, fp0, fp1
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80093A4C
    stfs fp1, 0x8(r4)
L_80093A4C:
    lfs fp0, 0xc(r4)
    lfs fp1, 0x20(r3)
    fcmpo cr0, fp0, fp1
    cror eq, gt, eq
    bnelr
    stfs fp1, 0xc(r4)
    blr
}

ASM void fn_80093A68(void)
{
    nofralloc
    stwu r1, -0x160(r1)
    mflr r0
    stw r0, 0x164(r1)
    stfd fp31, 0x150(r1)
    psq_st fp31, 0x158(r1), 0, 0
    stfd fp30, 0x140(r1)
    psq_st fp30, 0x148(r1), 0, 0
    stfd fp29, 0x130(r1)
    psq_st fp29, 0x138(r1), 0, 0
    stfd fp28, 0x120(r1)
    psq_st fp28, 0x128(r1), 0, 0
    stw r31, 0x11c(r1)
    stw r30, 0x118(r1)
    stw r29, 0x114(r1)
    fmr fp28, fp1
    opword  0xC02289F0  // lfs f1, lbl_8053B990@sda21(r0)
    fmr fp29, fp2
    addi r29, r1, 0x3c
    fmr fp30, fp3
    mr r30, r3
    fmr fp31, fp4
    mr r31, r4
    fmr fp2, fp1
    mr r3, r29
    fmr fp3, fp1
    fmr fp4, fp1
    bl fn_80093E64
    lis r4, lbl_80499520@ha
    mr r3, r29
    addi r0, r4, lbl_80499520@l
    stw r0, 0x3c(r1)
    lwz r12, 0x0(r29)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    mr r3, r29
    clrlwi r4, r31, 24
    bl fn_80094598
    lwz r0, 0x0(r30)
    mr r3, r29
    addi r4, r1, 0x8
    addi r5, r1, 0xc
    stw r0, 0x18(r1)
    addi r6, r1, 0x10
    addi r7, r1, 0x14
    stw r0, 0x14(r1)
    stw r0, 0x10(r1)
    stw r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8009447C
    stfs fp28, 0x34(r1)
    mr r3, r29
    addi r4, r1, 0x1c
    stfs fp29, 0x38(r1)
    lwz r5, 0x34(r1)
    lwz r0, 0x38(r1)
    stw r5, 0x2c(r1)
    stw r0, 0x30(r1)
    lfs fp1, 0x2c(r1)
    stfs fp30, 0x24(r1)
    lfs fp0, 0x30(r1)
    stfs fp31, 0x28(r1)
    lwz r5, 0x24(r1)
    lwz r0, 0x28(r1)
    stfs fp1, 0x74(r1)
    stfs fp0, 0x78(r1)
    stw r5, 0x1c(r1)
    stw r0, 0x20(r1)
    bl fn_800947D0
    lis r4, lbl_80499520@ha
    lis r3, lbl_80499548@ha
    addi r0, r4, lbl_80499520@l
    stw r0, 0x3c(r1)
    addi r0, r3, lbl_80499548@l
    stw r0, 0x3c(r1)
    psq_l fp31, 0x158(r1), 0, 0
    lfd fp31, 0x150(r1)
    psq_l fp30, 0x148(r1), 0, 0
    lfd fp30, 0x140(r1)
    psq_l fp29, 0x138(r1), 0, 0
    lfd fp29, 0x130(r1)
    psq_l fp28, 0x128(r1), 0, 0
    lfd fp28, 0x120(r1)
    lwz r31, 0x11c(r1)
    lwz r30, 0x118(r1)
    lwz r0, 0x164(r1)
    lwz r29, 0x114(r1)
    mtlr r0
    addi r1, r1, 0x160
    blr
}

ASM void fn_80093BD0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    fadds fp3, fp1, fp3
    stw r0, 0x24(r1)
    fadds fp0, fp2, fp4
    lwz r0, 0x0(r3)
    addi r3, r1, 0xc
    stfs fp1, 0xc(r1)
    addi r4, r1, 0x8
    stw r0, 0x8(r1)
    stfs fp2, 0x10(r1)
    stfs fp3, 0x14(r1)
    stfs fp0, 0x18(r1)
    bl fn_80093C18
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80093C18(void)
{
    nofralloc
    stwu r1, -0x100(r1)
    mflr r0
    opword  0xC02289F0  // lfs f1, lbl_8053B990@sda21(r0)
    stw r0, 0x104(r1)
    fmr fp2, fp1
    stw r31, 0xfc(r1)
    fmr fp3, fp1
    fmr fp4, fp1
    mr r31, r4
    stw r30, 0xf8(r1)
    mr r30, r3
    stw r29, 0xf4(r1)
    addi r29, r1, 0x1c
    mr r3, r29
    bl fn_80093E64
    lis r4, lbl_80499520@ha
    mr r3, r29
    addi r0, r4, lbl_80499520@l
    stw r0, 0x1c(r1)
    lwz r12, 0x0(r29)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r0, 0x0(r31)
    mr r3, r29
    addi r4, r1, 0x8
    addi r5, r1, 0xc
    stw r0, 0x18(r1)
    addi r6, r1, 0x10
    addi r7, r1, 0x14
    stw r0, 0x14(r1)
    stw r0, 0x10(r1)
    stw r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8009447C
    mr r4, r30
    mr r3, r29
    bl fn_800945C4
    lis r4, lbl_80499520@ha
    lis r3, lbl_80499548@ha
    addi r0, r4, lbl_80499520@l
    stw r0, 0x1c(r1)
    addi r0, r3, lbl_80499548@l
    stw r0, 0x1c(r1)
    lwz r31, 0xfc(r1)
    lwz r30, 0xf8(r1)
    lwz r29, 0xf4(r1)
    lwz r0, 0x104(r1)
    mtlr r0
    addi r1, r1, 0x100
    blr
}

ASM void fn_80093CE4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    fadds fp3, fp1, fp3
    mr r5, r4
    stw r0, 0x24(r1)
    fadds fp0, fp2, fp4
    lwz r0, 0x0(r3)
    addi r3, r1, 0xc
    stw r0, 0x8(r1)
    addi r4, r1, 0x8
    stfs fp1, 0xc(r1)
    stfs fp2, 0x10(r1)
    stfs fp3, 0x14(r1)
    stfs fp0, 0x18(r1)
    bl fn_80093D30
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80093D30(void)
{
    nofralloc
    stwu r1, -0x100(r1)
    mflr r0
    opword  0xC02289F0  // lfs f1, lbl_8053B990@sda21(r0)
    stw r0, 0x104(r1)
    fmr fp2, fp1
    stw r31, 0xfc(r1)
    fmr fp3, fp1
    fmr fp4, fp1
    mr r31, r5
    stw r30, 0xf8(r1)
    mr r30, r4
    stw r29, 0xf4(r1)
    mr r29, r3
    stw r28, 0xf0(r1)
    addi r28, r1, 0x1c
    mr r3, r28
    bl fn_80093E64
    lis r4, lbl_80499520@ha
    mr r3, r28
    addi r0, r4, lbl_80499520@l
    stw r0, 0x1c(r1)
    lwz r12, 0x0(r28)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r0, 0x0(r30)
    mr r3, r28
    addi r4, r1, 0x8
    addi r5, r1, 0xc
    stw r0, 0x18(r1)
    addi r6, r1, 0x10
    addi r7, r1, 0x14
    stw r0, 0x14(r1)
    stw r0, 0x10(r1)
    stw r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_8009447C
    mr r4, r31
    mr r3, r28
    bl fn_80094598
    mr r4, r29
    mr r3, r28
    bl fn_800946C0
    lis r4, lbl_80499520@ha
    lis r3, lbl_80499548@ha
    addi r0, r4, lbl_80499520@l
    stw r0, 0x1c(r1)
    addi r0, r3, lbl_80499548@l
    stw r0, 0x1c(r1)
    lwz r31, 0xfc(r1)
    lwz r30, 0xf8(r1)
    lwz r29, 0xf4(r1)
    lwz r28, 0xf0(r1)
    lwz r0, 0x104(r1)
    mtlr r0
    addi r1, r1, 0x100
    blr
}

ASM void fn_80093E14(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_80093E1C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    fadds fp3, fp1, fp3
    stw r0, 0x24(r1)
    fadds fp0, fp2, fp4
    addi r4, r1, 0x8
    stfs fp1, 0x8(r1)
    stfs fp2, 0xc(r1)
    stfs fp3, 0x10(r1)
    stfs fp0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80093E64(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r4, lbl_80499548@ha
    fadds fp0, fp1, fp3
    stw r0, 0x34(r1)
    li r0, -0x1
    addi r4, r4, lbl_80499548@l
    fadds fp3, fp2, fp4
    stw r31, 0x2c(r1)
    mr r31, r3
    addi r5, r1, 0x10
    stw r4, 0x0(r3)
    addi r4, r1, 0xc
    addi r6, r1, 0x14
    addi r7, r1, 0x18
    stfs fp1, 0x4(r3)
    stfs fp2, 0x8(r3)
    stfs fp0, 0xc(r3)
    stfs fp3, 0x10(r3)
    stfs fp1, 0x14(r3)
    stfs fp2, 0x18(r3)
    stfs fp0, 0x1c(r3)
    stfs fp3, 0x20(r3)
    stw r0, 0x24(r3)
    stw r0, 0x28(r3)
    stw r0, 0x2c(r3)
    stw r0, 0x30(r3)
    stw r0, 0x1c(r1)
    stw r0, 0x8(r1)
    stw r0, 0x18(r1)
    stw r0, 0x14(r1)
    stw r0, 0x10(r1)
    stw r0, 0xc(r1)
    bl fn_8009447C
    mr r3, r31
    li r4, 0x6
    bl fn_80094598
    lwz r0, 0x34(r1)
    mr r3, r31
    lwz r31, 0x2c(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80093F10(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    lfs fp1, 0x4(r31)
    opword  0xC00289F8  // lfs f0, lbl_8053B998@sda21(r0)
    lfs fp2, 0x8(r31)
    fcmpo cr0, fp1, fp0
    lfs fp3, 0xc(r31)
    lfs fp4, 0x10(r31)
    opword  0x40800008  // bge .L_80093F68
    fmr fp1, fp0
L_80093F68:
    opword  0xC00289F8  // lfs f0, lbl_8053B998@sda21(r0)
    fcmpo cr0, fp2, fp0
    opword  0x40800008  // bge .L_80093F78
    fmr fp2, fp0
L_80093F78:
    fsubs fp3, fp3, fp1
    opword  0xC0A289F8  // lfs f5, lbl_8053B998@sda21(r0)
    fsubs fp4, fp4, fp2
    opword  0xC0C289FC  // lfs f6, lbl_8053B99C@sda21(r0)
    bl fn_8006000C
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80093FA0(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    stw r30, 0x38(r1)
    mr r30, r3
    li r3, 0x0
    bl fn_8005E8B8
    li r31, 0x0
L_80093FC4:
    mr r3, r31
    bl fn_8005E8DC
    addi r31, r31, 0x1
    cmpwi r31, 0x10
    opword  0x4180FFF0  // blt .L_80093FC4
    li r3, 0x0
    bl fn_8005F56C
    li r3, 0x4
    li r4, 0x0
    li r5, 0x1
    li r6, 0x4
    li r7, 0x0
    bl fn_8005EEB0
    li r3, 0x0
    li r4, 0x3
    li r5, 0x0
    bl fn_8005F538
    li r3, 0x0
    li r4, 0x4
    bl fn_8005E9E0
    li r3, 0x1
    bl fn_8005D3C8
    li r3, 0x1
    bl fn_8005F11C
    li r3, 0x0
    bl fn_8005B93C
    li r3, 0x0
    li r4, 0xff
    li r5, 0xff
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x0
    bl fn_8005C46C
    addi r3, r30, 0x80
    li r4, 0x0
    bl fn_8005FDF4
    addi r3, r1, 0x8
    bl PSMTXIdentity
    addi r3, r1, 0x8
    li r4, 0x3c
    li r5, 0x0
    bl fn_8005FEC8
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
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    li r3, 0x0
    bl fn_8005FE94
    li r3, 0x0
    li r4, 0x1
    li r5, 0x4
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    li r6, 0x3
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xb
    li r5, 0x1
    li r6, 0x5
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xd
    li r5, 0x1
    li r6, 0x2
    li r7, 0xf
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xe
    li r5, 0x1
    li r6, 0x2
    li r7, 0xf
    bl fn_8005ADB4
    lbz r3, 0x34(r30)
    li r4, 0x0
    bl fn_8005C3A4
    bl fn_8005AD7C
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xb
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x0
    bl fn_8005A464
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_8009417C(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stfd fp31, 0x60(r1)
    psq_st fp31, 0x68(r1), 0, 0
    stfd fp30, 0x50(r1)
    psq_st fp30, 0x58(r1), 0, 0
    stfd fp29, 0x40(r1)
    psq_st fp29, 0x48(r1), 0, 0
    stfd fp28, 0x30(r1)
    psq_st fp28, 0x38(r1), 0, 0
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    lfs fp1, 0x14(r3)
    opword  0xC00289F8  // lfs f0, lbl_8053B998@sda21(r0)
    lfs fp29, 0x18(r3)
    fcmpo cr0, fp1, fp0
    lfs fp31, 0x1c(r3)
    lfs fp30, 0x20(r3)
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800941D8
    stfs fp0, 0x14(r3)
L_800941D8:
    lfs fp2, 0x18(r3)
    opword  0xC00289F8  // lfs f0, lbl_8053B998@sda21(r0)
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800941F0
    stfs fp0, 0x18(r3)
L_800941F0:
    lfs fp2, 0x1c(r3)
    opword  0xC0028A00  // lfs f0, lbl_8053B9A0@sda21(r0)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094208
    stfs fp0, 0x1c(r3)
L_80094208:
    lfs fp2, 0x20(r3)
    opword  0xC0028A00  // lfs f0, lbl_8053B9A0@sda21(r0)
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094220
    stfs fp0, 0x20(r3)
L_80094220:
    fcmpo cr0, fp31, fp1
    li r0, 0x0
    cror eq, gt, eq
    opword  0x40820014  // bne .L_80094240
    fcmpo cr0, fp30, fp29
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094240
    li r0, 0x1
L_80094240:
    clrlwi. r0, r0, 24
    opword  0x40820084  // bne .L_800942C8
    fcmpo cr0, fp1, fp1
    fmr fp0, fp1
    fmr fp2, fp29
    fmr fp3, fp31
    fmr fp4, fp30
    cror eq, gt, eq
    fcmpo cr0, fp29, fp29
    cror eq, gt, eq
    fcmpo cr0, fp1, fp31
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094278
    fmr fp1, fp31
L_80094278:
    fcmpo cr0, fp29, fp30
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094288
    fmr fp29, fp30
L_80094288:
    fcmpo cr0, fp31, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_80094298
    fmr fp31, fp0
L_80094298:
    fcmpo cr0, fp30, fp2
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800942A8
    fmr fp30, fp2
L_800942A8:
    fcmpo cr0, fp31, fp3
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800942B8
    fmr fp31, fp3
L_800942B8:
    fcmpo cr0, fp30, fp4
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800942C8
    fmr fp30, fp4
L_800942C8:
    opword  0xC00289F8  // lfs f0, lbl_8053B998@sda21(r0)
    fcmpo cr0, fp1, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800942DC
    fmr fp1, fp0
L_800942DC:
    opword  0xC00289F8  // lfs f0, lbl_8053B998@sda21(r0)
    fcmpo cr0, fp29, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800942F0
    fmr fp29, fp0
L_800942F0:
    opword  0xC0028A00  // lfs f0, lbl_8053B9A0@sda21(r0)
    fcmpo cr0, fp31, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094304
    fmr fp31, fp0
L_80094304:
    opword  0xC0028A00  // lfs f0, lbl_8053B9A0@sda21(r0)
    fcmpo cr0, fp30, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094318
    fmr fp30, fp0
L_80094318:
    fcmpo cr0, fp31, fp1
    li r0, 0x0
    cror eq, gt, eq
    opword  0x40820014  // bne .L_80094338
    fcmpo cr0, fp30, fp29
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80094338
    li r0, 0x1
L_80094338:
    clrlwi. r0, r0, 24
    opword  0x41820098  // beq .L_800943D4
    bl __cvt_fp2unsigned
    lis r0, 0x4330
    stw r3, 0xc(r1)
    opword  0xC8428A08  // lfd f2, lbl_8053B9A8@sda21(r0)
    fmr fp1, fp29
    stw r0, 0x8(r1)
    lfd fp0, 0x8(r1)
    fsubs fp29, fp0, fp2
    bl __cvt_fp2unsigned
    lis r0, 0x4330
    stw r3, 0x14(r1)
    opword  0xC8428A08  // lfd f2, lbl_8053B9A8@sda21(r0)
    fmr fp1, fp31
    stw r0, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp31, fp0, fp2
    bl ceil
    frsp fp28, fp1
    fmr fp1, fp30
    bl ceil
    frsp fp0, fp1
    fsubs fp1, fp0, fp31
    bl __cvt_fp2unsigned
    fsubs fp1, fp28, fp29
    mr r29, r3
    bl __cvt_fp2unsigned
    fmr fp1, fp31
    mr r30, r3
    bl __cvt_fp2unsigned
    fmr fp1, fp29
    mr r31, r3
    bl __cvt_fp2unsigned
    mr r4, r31
    mr r5, r30
    mr r6, r29
    bl fn_800600C0
    opword  0x48000018  // b .L_800943E8
L_800943D4:
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    bl fn_800600C0
L_800943E8:
    psq_l fp31, 0x68(r1), 0, 0
    lfd fp31, 0x60(r1)
    psq_l fp30, 0x58(r1), 0, 0
    lfd fp30, 0x50(r1)
    psq_l fp29, 0x48(r1), 0, 0
    lfd fp29, 0x40(r1)
    psq_l fp28, 0x38(r1), 0, 0
    lfd fp28, 0x30(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r0, 0x74(r1)
    lwz r29, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_80094424(void)
{
    nofralloc
    lwz r5, 0x0(r4)
    lwz r0, 0x4(r4)
    stw r5, 0x14(r3)
    lwz r5, 0x8(r4)
    stw r0, 0x18(r3)
    lwz r0, 0xc(r4)
    stw r5, 0x1c(r3)
    stw r0, 0x20(r3)
    blr
}

ASM void fn_80094448(void)
{
    nofralloc
    lwz r7, 0x0(r4)
    lwz r6, 0x4(r4)
    stw r7, 0x4(r3)
    lwz r5, 0x8(r4)
    stw r6, 0x8(r3)
    lwz r0, 0xc(r4)
    stw r5, 0xc(r3)
    stw r0, 0x10(r3)
    stw r7, 0x14(r3)
    stw r6, 0x18(r3)
    stw r5, 0x1c(r3)
    stw r0, 0x20(r3)
    blr
}

ASM void fn_8009447C(void)
{
    nofralloc
    lbz r0, 0x0(r4)
    li r9, 0x1
    lbz r11, 0x1(r4)
    li r8, 0x4
    stb r0, 0x24(r3)
    li r0, 0x5
    lbz r10, 0x2(r4)
    stb r11, 0x25(r3)
    lbz r4, 0x3(r4)
    stb r10, 0x26(r3)
    lbz r10, 0x0(r5)
    stb r4, 0x27(r3)
    lbz r4, 0x1(r5)
    stb r10, 0x28(r3)
    lbz r10, 0x2(r5)
    stb r4, 0x29(r3)
    lbz r4, 0x3(r5)
    stb r10, 0x2a(r3)
    lbz r5, 0x0(r6)
    stb r4, 0x2b(r3)
    lbz r4, 0x1(r6)
    stb r5, 0x2c(r3)
    lbz r5, 0x2(r6)
    stb r4, 0x2d(r3)
    lbz r4, 0x3(r6)
    stb r5, 0x2e(r3)
    lbz r5, 0x0(r7)
    stb r4, 0x2f(r3)
    lbz r4, 0x1(r7)
    stb r5, 0x30(r3)
    lbz r5, 0x2(r7)
    stb r4, 0x31(r3)
    lbz r4, 0x3(r7)
    stb r5, 0x32(r3)
    stb r4, 0x33(r3)
    stb r9, 0xb0(r3)
    stb r8, 0xb1(r3)
    stb r0, 0xb2(r3)
    stb r9, 0xb3(r3)
    stb r8, 0xb4(r3)
    stb r0, 0xb5(r3)
    stb r9, 0xb6(r3)
    stb r8, 0xb7(r3)
    stb r0, 0xb8(r3)
    lwz r0, 0x24(r3)
    clrlwi r0, r0, 24
    cmplwi r0, 0xff
    bnelr
    li r4, 0x0
    stb r4, 0xb0(r3)
    stb r9, 0xb1(r3)
    stb r4, 0xb2(r3)
    lwz r0, 0x2c(r3)
    clrlwi r0, r0, 24
    cmplwi r0, 0xff
    bnelr
    stb r4, 0xb3(r3)
    stb r9, 0xb4(r3)
    stb r4, 0xb5(r3)
    lwz r0, 0x28(r3)
    clrlwi r0, r0, 24
    cmplwi r0, 0xff
    bnelr
    lwz r0, 0x30(r3)
    clrlwi r0, r0, 24
    cmplwi r0, 0xff
    bnelr
    stb r4, 0xb6(r3)
    stb r9, 0xb7(r3)
    stb r4, 0xb8(r3)
    blr
}

ASM void fn_80094598(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stb r4, 0x34(r3)
    li r4, 0x0
    lbz r3, 0x34(r3)
    bl fn_8005C3A4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800945C4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r6, 0xf
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lbz r3, 0xb6(r3)
    lbz r4, 0xb7(r30)
    lbz r5, 0xb8(r30)
    bl fn_8005F48C
    addi r3, r30, 0x80
    li r4, 0x0
    bl fn_8005FDF4
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    li r6, 0x4
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x80
    li r4, 0x0
    li r5, 0x4
    bl fn_8005C24C
    lfs fp2, 0x0(r31)
    lis r8, 0xcc01
    lfs fp3, 0x4(r31)
    li r3, 0x0
    stfs fp2, -0x8000(r8)
    li r4, 0x9
    opword  0xC02289F8  // lfs f1, lbl_8053B998@sda21(r0)
    li r5, 0x1
    stfs fp3, -0x8000(r8)
    li r6, 0x3
    lfs fp0, 0x8(r31)
    li r7, 0x0
    stfs fp1, -0x8000(r8)
    lfs fp4, 0xc(r31)
    lwz r0, 0x24(r30)
    stw r0, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    stfs fp3, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    lwz r0, 0x28(r30)
    stw r0, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    stfs fp4, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    lwz r0, 0x30(r30)
    stw r0, -0x8000(r8)
    stfs fp2, -0x8000(r8)
    stfs fp4, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    lwz r0, 0x2c(r30)
    stw r0, -0x8000(r8)
    bl fn_8005ADB4
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800946C0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r6, 0xf
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lbz r3, 0xb6(r3)
    lbz r4, 0xb7(r30)
    lbz r5, 0xb8(r30)
    bl fn_8005F48C
    addi r3, r30, 0x80
    li r4, 0x0
    bl fn_8005FDF4
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    li r6, 0x4
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0xb0
    li r4, 0x0
    li r5, 0x5
    bl fn_8005C24C
    lfs fp2, 0x0(r31)
    lis r8, 0xcc01
    lfs fp3, 0x4(r31)
    li r3, 0x0
    stfs fp2, -0x8000(r8)
    li r4, 0x9
    opword  0xC02289F8  // lfs f1, lbl_8053B998@sda21(r0)
    li r5, 0x1
    stfs fp3, -0x8000(r8)
    li r6, 0x3
    lfs fp0, 0x8(r31)
    li r7, 0x0
    stfs fp1, -0x8000(r8)
    lfs fp4, 0xc(r31)
    lwz r0, 0x24(r30)
    stw r0, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    stfs fp3, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    lwz r0, 0x28(r30)
    stw r0, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    stfs fp4, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    lwz r0, 0x30(r30)
    stw r0, -0x8000(r8)
    stfs fp2, -0x8000(r8)
    stfs fp4, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    lwz r0, 0x2c(r30)
    stw r0, -0x8000(r8)
    stfs fp2, -0x8000(r8)
    stfs fp3, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    lwz r0, 0x24(r30)
    stw r0, -0x8000(r8)
    bl fn_8005ADB4
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800947D0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    li r6, 0xf
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr r30, r3
    lwz r3, 0x0(r4)
    lwz r4, 0x4(r4)
    lwz r5, 0x38(r30)
    lwz r0, 0x3c(r30)
    stw r3, 0x8(r1)
    lbz r3, 0xb3(r30)
    stw r4, 0xc(r1)
    lbz r4, 0xb4(r30)
    stw r5, 0x10(r1)
    lbz r5, 0xb5(r30)
    stw r0, 0x14(r1)
    bl fn_8005F48C
    addi r3, r30, 0x80
    li r4, 0x0
    bl fn_8005FDF4
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    li r6, 0x4
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0xa8
    li r4, 0x0
    li r5, 0x2
    bl fn_8005C24C
    lfs fp1, 0x10(r1)
    lis r8, 0xcc01
    lfs fp0, 0x14(r1)
    li r3, 0x0
    stfs fp1, -0x8000(r8)
    li r4, 0x9
    opword  0xC04289F8  // lfs f2, lbl_8053B998@sda21(r0)
    li r5, 0x1
    stfs fp0, -0x8000(r8)
    li r6, 0x3
    lfs fp1, 0x8(r1)
    li r7, 0x0
    stfs fp2, -0x8000(r8)
    lfs fp0, 0xc(r1)
    lwz r0, 0x24(r30)
    stw r0, -0x8000(r8)
    stfs fp1, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    stfs fp2, -0x8000(r8)
    lwz r0, 0x2c(r30)
    stw r0, -0x8000(r8)
    bl fn_8005ADB4
    lfs fp1, 0x0(r31)
    lfs fp0, 0x4(r31)
    stfs fp1, 0x38(r30)
    stfs fp0, 0x3c(r30)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800948D4(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800948DC(void)
{
    nofralloc
    blr
}

ASM void fn_800948E0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80499590@ha
    stw r0, 0x14(r1)
    addi r0, r4, lbl_80499590@l
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    addi r31, r30, 0xdc
    stw r0, 0x0(r3)
    mr r3, r31
    bl fn_80086F44
    mr r4, r30
    addi r3, r31, 0xc
    bl fn_80086E2C
    li r4, 0x0
    lis r3, 0x5041
    stw r4, 0xf8(r30)
    addi r3, r3, 0x4e31
    li r0, 0x1
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    stw r3, 0x8(r30)
    mr r3, r30
    stb r0, 0xb0(r30)
    stw r4, 0x14(r30)
    stw r4, 0x10(r30)
    stw r4, 0x1c(r30)
    stw r4, 0x18(r30)
    stfs fp0, 0x20(r30)
    stfs fp0, 0x24(r30)
    stfs fp0, 0x28(r30)
    stfs fp0, 0x2c(r30)
    bl fn_80094A1C
    mr r3, r30
    li r4, 0x0
    bl fn_80095218
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800949A0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r0, 0xec(r3)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800949D0
    lwz r12, 0x0(r3)
    lfs fp1, 0xd4(r3)
    lwz r12, 0x44(r12)
    lfs fp2, 0xd8(r3)
    mtctr r12
    bctrl
L_800949D0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800949E0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lfs fp3, 0x20(r3)
    lfs fp0, 0x24(r3)
    lwz r12, 0x48(r12)
    fneg fp3, fp3
    fneg fp4, fp0
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80094A1C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, 0x1
    opword  0xC0228A10  // lfs f1, lbl_8053B9B0@sda21(r0)
    stw r0, 0x14(r1)
    subi r0, r4, 0x1
    li r6, 0x0
    li r5, 0x7a
    sth r0, 0x4(r3)
    li r4, 0xff
    opword  0xC0028A14  // lfs f0, lbl_8053B9B4@sda21(r0)
    li r0, 0x1
    stfs fp1, 0xb8(r3)
    stfs fp1, 0xbc(r3)
    stfs fp1, 0xc0(r3)
    stfs fp1, 0xc4(r3)
    stfs fp1, 0xc8(r3)
    stb r6, 0xb7(r3)
    stb r5, 0xb6(r3)
    stfs fp0, 0xcc(r3)
    stfs fp0, 0xd0(r3)
    stb r6, 0xb1(r3)
    stb r4, 0xb2(r3)
    stb r0, 0xb4(r3)
    stb r4, 0xb3(r3)
    stb r6, 0xb5(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80094AA4(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r6, lbl_80499590@ha
    stw r0, 0x34(r1)
    addi r0, r6, lbl_80499590@l
    stmw r25, 0x14(r1)
    mr r25, r3
    addi r26, r25, 0xdc
    mr r27, r4
    mr r28, r5
    mr r30, r7
    mr r29, r8
    mr r31, r9
    stw r0, 0x0(r3)
    mr r3, r26
    bl fn_80086F44
    mr r4, r25
    addi r3, r26, 0xc
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r25
    stw r0, 0xf8(r25)
    mr r4, r27
    mr r5, r28
    mr r8, r29
    mr r7, r30
    mr r9, r31
    bl fn_80094B2C
    mr r3, r25
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80094B2C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r6, 0x5041
    lfs fp3, 0x0(r9)
    stw r0, 0x14(r1)
    li r0, 0x0
    lfs fp2, 0x4(r9)
    stw r31, 0xc(r1)
    mr. r31, r4
    lfs fp1, 0x8(r9)
    stw r30, 0x8(r1)
    mr r30, r3
    addi r3, r6, 0x4e31
    lfs fp0, 0xc(r9)
    stw r3, 0x8(r30)
    stb r5, 0xb0(r30)
    stw r8, 0x14(r30)
    stw r7, 0x10(r30)
    stw r0, 0x1c(r30)
    stw r0, 0x18(r30)
    stfs fp3, 0x20(r30)
    stfs fp2, 0x24(r30)
    stfs fp1, 0x28(r30)
    stfs fp0, 0x2c(r30)
    opword  0x41820018  // beq .L_80094BA4
    addic. r4, r30, 0xdc
    opword  0x41820008  // beq .L_80094B9C
    addi r4, r4, 0xc
L_80094B9C:
    addi r3, r31, 0xdc
    bl fn_80086F58
L_80094BA4:
    lis r3, 0x1
    opword  0xC0228A10  // lfs f1, lbl_8053B9B0@sda21(r0)
    subi r0, r3, 0x1
    li r6, 0x0
    sth r0, 0x4(r30)
    li r5, 0x7a
    opword  0xC0028A14  // lfs f0, lbl_8053B9B4@sda21(r0)
    li r4, 0xff
    stfs fp1, 0xb8(r30)
    li r0, 0x1
    mr r3, r30
    stfs fp1, 0xbc(r30)
    stfs fp1, 0xc0(r30)
    stfs fp1, 0xc4(r30)
    stfs fp1, 0xc8(r30)
    stb r6, 0xb7(r30)
    stb r5, 0xb6(r30)
    stfs fp0, 0xcc(r30)
    stfs fp0, 0xd0(r30)
    stb r6, 0xb1(r30)
    stb r4, 0xb2(r30)
    stb r0, 0xb4(r30)
    stb r4, 0xb3(r30)
    stb r6, 0xb5(r30)
    lwz r12, 0x0(r30)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r31
    bl fn_80095218
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80094C4C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_80499590@ha
    stw r0, 0x24(r1)
    addi r0, r4, lbl_80499590@l
    stmw r27, 0xc(r1)
    mr r27, r3
    addi r28, r27, 0xdc
    mr r30, r5
    mr r29, r6
    mr r31, r7
    stw r0, 0x0(r3)
    mr r3, r28
    bl fn_80086F44
    mr r4, r27
    addi r3, r28, 0xc
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r27
    stw r0, 0xf8(r27)
    mr r6, r29
    mr r5, r30
    mr r7, r31
    bl fn_80094CC4
    mr r3, r27
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80094CC4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r8, 0x5041
    li r10, 0x1
    stw r0, 0x14(r1)
    addi r0, r8, 0x4e31
    lis r4, 0x1
    li r9, 0x0
    stw r31, 0xc(r1)
    subi r8, r4, 0x1
    lfs fp5, 0x0(r7)
    li r4, 0x7a
    stw r0, 0x8(r3)
    li r0, 0xff
    lfs fp4, 0x4(r7)
    mr r31, r3
    stb r10, 0xb0(r3)
    lfs fp3, 0x8(r7)
    stw r6, 0x14(r3)
    lfs fp2, 0xc(r7)
    stw r5, 0x10(r3)
    opword  0xC0228A10  // lfs f1, lbl_8053B9B0@sda21(r0)
    stw r9, 0x1c(r3)
    opword  0xC0028A14  // lfs f0, lbl_8053B9B4@sda21(r0)
    stw r9, 0x18(r3)
    stfs fp5, 0x20(r3)
    stfs fp4, 0x24(r3)
    stfs fp3, 0x28(r3)
    stfs fp2, 0x2c(r3)
    sth r8, 0x4(r3)
    stfs fp1, 0xb8(r3)
    stfs fp1, 0xbc(r3)
    stfs fp1, 0xc0(r3)
    stfs fp1, 0xc4(r3)
    stfs fp1, 0xc8(r3)
    stb r9, 0xb7(r3)
    stb r4, 0xb6(r3)
    stfs fp0, 0xcc(r3)
    stfs fp0, 0xd0(r3)
    stb r9, 0xb1(r3)
    stb r0, 0xb2(r3)
    stb r10, 0xb4(r3)
    stb r0, 0xb3(r3)
    stb r9, 0xb5(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    mr r3, r31
    li r4, 0x0
    bl fn_80095218
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80094DB8(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r7, lbl_80499590@ha
    stw r0, 0x34(r1)
    addi r0, r7, lbl_80499590@l
    stmw r27, 0x1c(r1)
    mr r27, r3
    addi r28, r27, 0xdc
    mr r29, r4
    mr r30, r5
    mr r31, r6
    stw r0, 0x0(r3)
    mr r3, r28
    bl fn_80086F44
    mr r4, r27
    addi r3, r28, 0xc
    bl fn_80086E2C
    li r3, 0x0
    clrlwi. r0, r31, 24
    stw r3, 0xf8(r27)
    opword  0x40820060  // bne .L_80094E68
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    mr r31, r3
    mr r3, r30
    addi r4, r1, 0x10
    li r5, 0x8
    bl fn_80086AF8
    lwz r0, 0x10(r1)
    mr r3, r27
    mr r4, r29
    mr r5, r30
    stw r0, 0x8(r27)
    lwz r0, 0x14(r1)
    add r31, r31, r0
    bl fn_80094ED8
    mr r3, r30
    mr r4, r31
    li r5, 0x0
    bl fn_80086D7C
    opword  0x4800005C  // b .L_80094EC0
L_80094E68:
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    mr r31, r3
    mr r3, r30
    addi r4, r1, 0x8
    li r5, 0x8
    bl fn_80086CC0
    lwz r0, 0x8(r1)
    mr r3, r27
    mr r4, r29
    mr r5, r30
    stw r0, 0x8(r27)
    lwz r0, 0xc(r1)
    add r31, r31, r0
    bl fn_80096684
    mr r3, r30
    mr r4, r31
    li r5, 0x0
    bl fn_80086D7C
L_80094EC0:
    mr r3, r27
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80094ED8(void)
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
    mr r31, r5
    mr r29, r3
    mr r30, r4
    addi r4, r1, 0xb
    mr r3, r31
    li r5, 0x1
    bl fn_80086AF8
    mr r3, r31
    addi r4, r29, 0xb0
    li r5, 0x1
    bl fn_80086AF8
    mr r3, r31
    li r4, 0x2
    lwz r12, 0x0(r31)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    mr r3, r31
    addi r4, r1, 0x18
    li r5, 0x4
    bl fn_80086AF8
    lwz r5, 0x18(r1)
    li r0, 0x0
    mr r3, r31
    addi r4, r1, 0x14
    stw r5, 0x14(r29)
    li r5, 0x2
    stw r0, 0x10(r29)
    bl fn_80086AF8
    lha r4, 0x14(r1)
    lis r0, 0x4330
    stw r0, 0x20(r1)
    mr r3, r31
    xoris r0, r4, 0x8000
    opword  0xC8228A18  // lfd f1, lbl_8053B9B8@sda21(r0)
    stw r0, 0x24(r1)
    addi r4, r1, 0x12
    li r5, 0x2
    lfd fp0, 0x20(r1)
    fsubs fp31, fp0, fp1
    bl fn_80086AF8
    lha r4, 0x12(r1)
    lis r0, 0x4330
    stw r0, 0x28(r1)
    mr r3, r31
    xoris r0, r4, 0x8000
    opword  0xC8228A18  // lfd f1, lbl_8053B9B8@sda21(r0)
    stw r0, 0x2c(r1)
    addi r4, r1, 0x10
    li r5, 0x2
    lfd fp0, 0x28(r1)
    fsubs fp30, fp0, fp1
    bl fn_80086AF8
    lha r4, 0x10(r1)
    lis r0, 0x4330
    stw r0, 0x30(r1)
    mr r3, r31
    xoris r0, r4, 0x8000
    opword  0xC8228A18  // lfd f1, lbl_8053B9B8@sda21(r0)
    stw r0, 0x34(r1)
    addi r4, r1, 0xe
    li r5, 0x2
    lfd fp0, 0x30(r1)
    fsubs fp0, fp0, fp1
    fadds fp29, fp31, fp0
    bl fn_80086AF8
    lha r3, 0xe(r1)
    lis r0, 0x4330
    stw r0, 0x38(r1)
    xoris r0, r3, 0x8000
    opword  0xC8428A18  // lfd f2, lbl_8053B9B8@sda21(r0)
    stw r0, 0x3c(r1)
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    lfd fp1, 0x38(r1)
    stfs fp31, 0x20(r29)
    fsubs fp1, fp1, fp2
    stfs fp30, 0x24(r29)
    fadds fp1, fp30, fp1
    stfs fp29, 0x28(r29)
    stfs fp1, 0x2c(r29)
    lbz r3, 0xb(r1)
    subi r0, r3, 0x6
    stb r0, 0xb(r1)
    stfs fp0, 0xb8(r29)
    stfs fp0, 0xbc(r29)
    stfs fp0, 0xc0(r29)
    lbz r0, 0xb(r1)
    cmplwi r0, 0x0
    opword  0x41820040  // beq .L_800950A8
    mr r3, r31
    addi r4, r1, 0xc
    li r5, 0x2
    bl fn_80086AF8
    lhz r3, 0xc(r1)
    lis r0, 0x4330
    stw r0, 0x38(r1)
    opword  0xC8228A20  // lfd f1, lbl_8053B9C0@sda21(r0)
    stw r3, 0x3c(r1)
    lfd fp0, 0x38(r1)
    fsubs fp0, fp0, fp1
    stfs fp0, 0xc0(r29)
    lbz r3, 0xb(r1)
    subi r0, r3, 0x1
    stb r0, 0xb(r1)
L_800950A8:
    lbz r0, 0xb(r1)
    cmplwi r0, 0x0
    opword  0x4182002C  // beq .L_800950DC
    mr r3, r31
    addi r4, r1, 0xa
    li r5, 0x1
    bl fn_80086AF8
    lbz r0, 0xa(r1)
    stb r0, 0xb7(r29)
    lbz r3, 0xb(r1)
    subi r0, r3, 0x1
    stb r0, 0xb(r1)
    opword  0x4800000C  // b .L_800950E4
L_800950DC:
    li r0, 0x0
    stb r0, 0xb7(r29)
L_800950E4:
    li r3, 0x7a
    li r0, 0xff
    stb r3, 0xb6(r29)
    stb r0, 0xb2(r29)
    lbz r0, 0xb(r1)
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_80095124
    mr r3, r31
    addi r4, r1, 0x9
    li r5, 0x1
    bl fn_80086AF8
    lbz r0, 0x9(r1)
    stb r0, 0xb2(r29)
    lbz r3, 0xb(r1)
    subi r0, r3, 0x1
    stb r0, 0xb(r1)
L_80095124:
    li r0, 0x1
    stb r0, 0xb4(r29)
    lbz r0, 0xb(r1)
    cmplwi r0, 0x0
    opword  0x41820034  // beq .L_80095168
    mr r3, r31
    addi r4, r1, 0x8
    li r5, 0x1
    bl fn_80086AF8
    lbz r3, 0x8(r1)
    neg r0, r3
    or r0, r0, r3
    srwi r0, r0, 31
    stb r0, 0xb4(r29)
    lbz r3, 0xb(r1)
    subi r0, r3, 0x1
    stb r0, 0xb(r1)
L_80095168:
    mr r3, r31
    li r4, 0x4
    bl fn_80086BD8
    cmplwi r30, 0x0
    opword  0x41820018  // beq .L_80095190
    addic. r4, r29, 0xdc
    opword  0x41820008  // beq .L_80095188
    addi r4, r4, 0xc
L_80095188:
    addi r3, r30, 0xdc
    bl fn_80086F58
L_80095190:
    li r5, 0x0
    lis r3, 0x1
    stb r5, 0xb1(r29)
    li r4, 0xff
    subi r0, r3, 0x1
    opword  0xC0028A14  // lfs f0, lbl_8053B9B4@sda21(r0)
    stb r4, 0xb3(r29)
    mr r3, r29
    mr r4, r30
    stb r5, 0xb5(r29)
    sth r0, 0x4(r29)
    stfs fp0, 0xcc(r29)
    stfs fp0, 0xd0(r29)
    stw r5, 0x1c(r29)
    stw r5, 0x18(r29)
    bl fn_80095218
    mr r3, r29
    lwz r12, 0x0(r29)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
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

ASM void fn_80095218(void)
{
    nofralloc
    lis r5, 0x5555
    lbz r6, 0xb7(r3)
    addi r0, r5, 0x5556
    opword  0xC0628A10  // lfs f3, lbl_8053B9B0@sda21(r0)
    mulhw r5, r0, r6
    fmr fp4, fp3
    srwi r0, r5, 31
    add r0, r5, r0
    mulli r0, r0, 0x3
    subf r0, r0, r6
    cmpwi r0, 0x1
    opword  0x4082001C  // bne .L_80095260
    lfs fp2, 0x28(r3)
    lfs fp1, 0x20(r3)
    opword  0xC0028A28  // lfs f0, lbl_8053B9C8@sda21(r0)
    fsubs fp1, fp2, fp1
    fmuls fp3, fp1, fp0
    opword  0x48000018  // b .L_80095274
L_80095260:
    cmpwi r0, 0x2
    opword  0x40820010  // bne .L_80095274
    lfs fp1, 0x28(r3)
    lfs fp0, 0x20(r3)
    fsubs fp3, fp1, fp0
L_80095274:
    lis r5, 0x5555
    addi r0, r5, 0x5556
    mulhw r5, r0, r6
    srwi r0, r5, 31
    add r0, r5, r0
    cmpwi r0, 0x1
    opword  0x4082001C  // bne .L_800952A8
    lfs fp2, 0x2c(r3)
    lfs fp1, 0x24(r3)
    opword  0xC0028A28  // lfs f0, lbl_8053B9C8@sda21(r0)
    fsubs fp1, fp2, fp1
    fmuls fp4, fp1, fp0
    opword  0x48000018  // b .L_800952BC
L_800952A8:
    cmpwi r0, 0x2
    opword  0x40820010  // bne .L_800952BC
    lfs fp1, 0x2c(r3)
    lfs fp0, 0x24(r3)
    fsubs fp4, fp1, fp0
L_800952BC:
    lfs fp0, 0x20(r3)
    cmplwi r4, 0x0
    fadds fp0, fp0, fp3
    stfs fp0, 0xd4(r3)
    lfs fp0, 0x24(r3)
    fadds fp0, fp0, fp4
    stfs fp0, 0xd8(r3)
    stfs fp3, 0xc4(r3)
    stfs fp4, 0xc8(r3)
    lfs fp0, 0xd4(r3)
    lfs fp1, 0xd8(r3)
    fneg fp2, fp0
    lfs fp0, 0x20(r3)
    fneg fp1, fp1
    fadds fp0, fp0, fp2
    stfs fp0, 0x20(r3)
    lfs fp0, 0x24(r3)
    fadds fp0, fp0, fp1
    stfs fp0, 0x24(r3)
    lfs fp0, 0x28(r3)
    fadds fp0, fp0, fp2
    stfs fp0, 0x28(r3)
    lfs fp0, 0x2c(r3)
    fadds fp0, fp0, fp1
    stfs fp0, 0x2c(r3)
    beqlr
    lis r5, 0x5555
    lbz r6, 0xb7(r4)
    addi r0, r5, 0x5556
    lfs fp3, 0x28(r4)
    mulhw r5, r0, r6
    lfs fp2, 0x20(r4)
    lfs fp1, 0x2c(r4)
    lfs fp0, 0x24(r4)
    fsubs fp2, fp3, fp2
    fsubs fp3, fp1, fp0
    srwi r0, r5, 31
    add r0, r5, r0
    mulli r0, r0, 0x3
    subf r0, r0, r6
    cmpwi r0, 0x1
    opword  0x40820018  // bne .L_80095378
    opword  0xC0228A28  // lfs f1, lbl_8053B9C8@sda21(r0)
    lfs fp0, 0xd4(r3)
    fnmsubs fp0, fp2, fp1, fp0
    stfs fp0, 0xd4(r3)
    opword  0x48000018  // b .L_8009538C
L_80095378:
    cmpwi r0, 0x2
    opword  0x40820010  // bne .L_8009538C
    lfs fp0, 0xd4(r3)
    fsubs fp0, fp0, fp2
    stfs fp0, 0xd4(r3)
L_8009538C:
    lis r4, 0x5555
    addi r0, r4, 0x5556
    mulhw r4, r0, r6
    srwi r0, r4, 31
    add r0, r4, r0
    cmpwi r0, 0x1
    opword  0x40820018  // bne .L_800953BC
    opword  0xC0228A28  // lfs f1, lbl_8053B9C8@sda21(r0)
    lfs fp0, 0xd8(r3)
    fnmsubs fp0, fp3, fp1, fp0
    stfs fp0, 0xd8(r3)
    blr
L_800953BC:
    cmpwi r0, 0x2
    bnelr
    lfs fp0, 0xd8(r3)
    fsubs fp0, fp0, fp3
    stfs fp0, 0xd8(r3)
    blr
}

ASM void fn_800953D4(void)
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
    opword  0x418200A0  // beq .L_80095494
    lis r3, lbl_80499590@ha
    addi r0, r3, lbl_80499590@l
    stw r0, 0x0(r29)
    lwz r31, 0xdc(r29)
    cmplwi r31, 0x0
    opword  0x41820040  // beq .L_8009544C
    subi r31, r31, 0xc
    opword  0x48000038  // b .L_8009544C
L_80095418:
    lwz r4, 0x18(r31)
    cmplwi r4, 0x0
    opword  0x41820008  // beq .L_80095428
    subi r4, r4, 0xc
L_80095428:
    lwz r3, 0xc(r31)
    mr r31, r4
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_8009544C
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8009544C:
    cmplwi r31, 0x0
    opword  0x4082FFC8  // bne .L_80095418
    addic. r0, r29, 0xdc
    opword  0x4182002C  // beq .L_80095484
    addic. r0, r29, 0xe8
    opword  0x41820010  // beq .L_80095470
    addi r3, r29, 0xe8
    li r4, 0x0
    bl fn_80086E44
L_80095470:
    addic. r0, r29, 0xdc
    opword  0x41820010  // beq .L_80095484
    addi r3, r29, 0xdc
    li r4, 0x0
    bl fn_80086EDC
L_80095484:
    extsh. r0, r30
    opword  0x4081000C  // ble .L_80095494
    mr r3, r29
    bl dtor_80084580
L_80095494:
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800954B4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr. r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    opword  0x4082000C  // bne .L_800954E4
    li r3, 0x0
    opword  0x4800006C  // b .L_8009554C
L_800954E4:
    mr r3, r29
    bl fn_80096668
    addic. r4, r29, 0xdc
    mr r31, r3
    opword  0x41820008  // beq .L_800954FC
    addi r4, r4, 0xc
L_800954FC:
    addi r3, r28, 0xdc
    bl fn_80086F58
    clrlwi. r0, r3, 24
    mr r30, r3
    opword  0x4182003C  // beq .L_80095548
    cmplwi r31, 0x0
    opword  0x40820034  // bne .L_80095548
    mr r3, r29
    lfs fp1, 0x20(r28)
    lwz r12, 0x0(r29)
    lfs fp2, 0x24(r28)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    mr r3, r29
    lwz r12, 0x0(r29)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
L_80095548:
    mr r3, r30
L_8009554C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8009556C(void)
{
    nofralloc
    stwu r1, -0x180(r1)
    mflr r0
    stw r0, 0x184(r1)
    stfd fp31, 0x170(r1)
    psq_st fp31, 0x178(r1), 0, 0
    stfd fp30, 0x160(r1)
    psq_st fp30, 0x168(r1), 0, 0
    stmw r14, 0x118(r1)
    clrlwi. r0, r6, 24
    fmr fp30, fp1
    fmr fp31, fp2
    mr r28, r3
    mr r29, r4
    mr r30, r5
    li r31, 0x0
    opword  0x41820014  // beq .L_800955BC
    lbz r0, 0xb0(r28)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800955BC
    li r31, 0x1
L_800955BC:
    mr r3, r29
    lwz r12, 0x0(r29)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    cmpwi r3, 0x1
    opword  0x41820008  // beq .L_800955DC
    li r30, 0x0
L_800955DC:
    lwz r3, 0xec(r28)
    li r14, 0x0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800955F0
    lwz r14, 0xc(r3)
L_800955F0:
    lfs fp1, 0x28(r28)
    li r0, 0x0
    lfs fp0, 0x20(r28)
    fcmpo cr0, fp1, fp0
    cror eq, gt, eq
    opword  0x4082001C  // bne .L_80095620
    lfs fp1, 0x2c(r28)
    lfs fp0, 0x24(r28)
    fcmpo cr0, fp1, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80095620
    li r0, 0x1
L_80095620:
    clrlwi. r0, r0, 24
    opword  0x4182057C  // beq .L_80095BA0
    lwz r4, 0x20(r28)
    clrlwi. r0, r31, 24
    lwz r3, 0x24(r28)
    stw r4, 0x30(r28)
    stw r3, 0x34(r28)
    lwz r3, 0x28(r28)
    lwz r0, 0x2c(r28)
    stw r3, 0x38(r28)
    stw r0, 0x3c(r28)
    lfs fp1, 0xd4(r28)
    lfs fp0, 0x30(r28)
    lfs fp2, 0xd8(r28)
    fadds fp0, fp0, fp1
    stfs fp0, 0x30(r28)
    lfs fp0, 0x34(r28)
    fadds fp0, fp0, fp2
    stfs fp0, 0x34(r28)
    lfs fp0, 0x38(r28)
    fadds fp0, fp0, fp1
    stfs fp0, 0x38(r28)
    lfs fp0, 0x3c(r28)
    fadds fp0, fp0, fp2
    stfs fp0, 0x3c(r28)
    opword  0x41820038  // beq .L_800956BC
    lwz r4, 0x20(r28)
    mr r3, r28
    lwz r0, 0x24(r28)
    stw r4, 0x40(r28)
    stw r0, 0x44(r28)
    lwz r4, 0x28(r28)
    lwz r0, 0x2c(r28)
    stw r4, 0x48(r28)
    stw r0, 0x4c(r28)
    lwz r12, 0x0(r28)
    lwz r12, 0x58(r12)
    mtctr r12
    bctrl
L_800956BC:
    cmplwi r14, 0x0
    opword  0x41820130  // beq .L_800957F0
    lfs fp2, 0x30(r14)
    addi r3, r14, 0x80
    lfs fp1, 0x20(r14)
    addi r4, r28, 0x50
    lfs fp0, 0x30(r28)
    addi r5, r28, 0x80
    fsubs fp3, fp2, fp1
    lfs fp2, 0x34(r14)
    lfs fp1, 0x24(r14)
    fadds fp0, fp0, fp3
    fsubs fp1, fp2, fp1
    stfs fp0, 0x30(r28)
    lfs fp0, 0x34(r28)
    fadds fp0, fp0, fp1
    stfs fp0, 0x34(r28)
    lfs fp0, 0x38(r28)
    fadds fp0, fp0, fp3
    stfs fp0, 0x38(r28)
    lfs fp0, 0x3c(r28)
    fadds fp0, fp0, fp1
    stfs fp0, 0x3c(r28)
    bl PSMTXConcat
    clrlwi. r0, r31, 24
    opword  0x41820158  // beq .L_80095878
    clrlwi. r0, r30, 24
    opword  0x41820084  // beq .L_800957AC
    lwz r3, 0x30(r28)
    lwz r0, 0x34(r28)
    stw r3, 0x40(r28)
    stw r0, 0x44(r28)
    lwz r3, 0x38(r28)
    lwz r0, 0x3c(r28)
    stw r3, 0x48(r28)
    stw r0, 0x4c(r28)
    lfs fp0, 0x40(r28)
    lfs fp1, 0x40(r14)
    fcmpo cr0, fp0, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_80095764
    stfs fp1, 0x40(r28)
L_80095764:
    lfs fp0, 0x44(r28)
    lfs fp1, 0x44(r14)
    fcmpo cr0, fp0, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_8009577C
    stfs fp1, 0x44(r28)
L_8009577C:
    lfs fp0, 0x48(r28)
    lfs fp1, 0x48(r14)
    fcmpo cr0, fp0, fp1
    cror eq, gt, eq
    opword  0x40820008  // bne .L_80095794
    stfs fp1, 0x48(r28)
L_80095794:
    lfs fp0, 0x4c(r28)
    lfs fp1, 0x4c(r14)
    fcmpo cr0, fp0, fp1
    cror eq, gt, eq
    opword  0x40820008  // bne .L_800957AC
    stfs fp1, 0x4c(r28)
L_800957AC:
    lbz r0, 0xb2(r28)
    stb r0, 0xb3(r28)
    lbz r0, 0xb4(r28)
    cmplwi r0, 0x0
    opword  0x418200BC  // beq .L_80095878
    lbz r4, 0xb2(r28)
    lis r3, 0x8081
    lbz r0, 0xb3(r14)
    subi r3, r3, 0x7f7f
    mullw r0, r4, r0
    mulhw r3, r3, r0
    add r0, r3, r0
    srawi r0, r0, 7
    srwi r3, r0, 31
    add r0, r0, r3
    stb r0, 0xb3(r28)
    opword  0x4800008C  // b .L_80095878
L_800957F0:
    lfs fp0, 0x30(r28)
    mr r3, r28
    fadds fp0, fp0, fp30
    stfs fp0, 0x30(r28)
    lfs fp0, 0x34(r28)
    fadds fp0, fp0, fp31
    stfs fp0, 0x34(r28)
    lfs fp0, 0x38(r28)
    fadds fp0, fp0, fp30
    stfs fp0, 0x38(r28)
    lfs fp0, 0x3c(r28)
    fadds fp0, fp0, fp31
    stfs fp0, 0x3c(r28)
    lwz r12, 0x0(r28)
    lfs fp1, 0xd4(r28)
    lfs fp0, 0xd8(r28)
    lwz r12, 0x44(r12)
    fadds fp1, fp1, fp30
    fadds fp2, fp0, fp31
    mtctr r12
    bctrl
    addi r3, r28, 0x50
    addi r4, r28, 0x80
    bl PSMTXCopy
    lwz r3, 0x30(r28)
    lwz r0, 0x34(r28)
    stw r3, 0x40(r28)
    stw r0, 0x44(r28)
    lwz r3, 0x38(r28)
    lwz r0, 0x3c(r28)
    stw r3, 0x48(r28)
    stw r0, 0x4c(r28)
    lbz r0, 0xb2(r28)
    stb r0, 0xb3(r28)
L_80095878:
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    clrlwi. r0, r31, 24
    stfs fp0, 0x8(r1)
    stfs fp0, 0xc(r1)
    stfs fp0, 0x10(r1)
    stfs fp0, 0x14(r1)
    opword  0x4182001C  // beq .L_800958AC
    clrlwi. r0, r30, 24
    opword  0x41820014  // beq .L_800958AC
    mr r3, r29
    addi r4, r1, 0x8
    addi r5, r28, 0x40
    bl fn_8009395C
L_800958AC:
    clrlwi. r0, r31, 24
    opword  0x418202A8  // beq .L_80095B58
    lfs fp1, 0x48(r28)
    li r0, 0x0
    lfs fp0, 0x40(r28)
    fcmpo cr0, fp1, fp0
    cror eq, gt, eq
    opword  0x4082001C  // bne .L_800958E4
    lfs fp1, 0x4c(r28)
    lfs fp0, 0x44(r28)
    fcmpo cr0, fp1, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_800958E4
    li r0, 0x1
L_800958E4:
    clrlwi. r0, r0, 24
    opword  0x4082000C  // bne .L_800958F4
    clrlwi. r0, r30, 24
    opword  0x40820268  // bne .L_80095B58
L_800958F4:
    lwz r15, 0x88(r29)
    lis r3, lbl_80499548@ha
    addi r16, r3, lbl_80499548@l
    lwz r0, 0x80(r29)
    stw r15, 0x110(r1)
    lwz r15, 0x8c(r29)
    stw r0, 0x98(r1)
    lwz r0, 0x110(r1)
    stw r15, 0xd4(r1)
    lwz r15, 0x90(r29)
    stw r0, 0xa0(r1)
    lwz r0, 0xd4(r1)
    stw r15, 0xd8(r1)
    lwz r15, 0x94(r29)
    stw r0, 0xa4(r1)
    lwz r0, 0xd8(r1)
    stw r15, 0xdc(r1)
    lwz r15, 0x98(r29)
    stw r0, 0xa8(r1)
    lwz r0, 0xdc(r1)
    stw r15, 0xe0(r1)
    lwz r15, 0x9c(r29)
    stw r0, 0xac(r1)
    lwz r0, 0xe0(r1)
    stw r15, 0xe4(r1)
    lwz r15, 0xa0(r29)
    stw r0, 0xb0(r1)
    lwz r0, 0xe4(r1)
    stw r15, 0xe8(r1)
    lwz r15, 0xa4(r29)
    stw r0, 0xb4(r1)
    lwz r0, 0xe8(r1)
    stw r15, 0xec(r1)
    lwz r15, 0xa8(r29)
    stw r0, 0xb8(r1)
    lwz r0, 0xec(r1)
    stw r15, 0xf0(r1)
    lwz r15, 0xac(r29)
    stw r0, 0xbc(r1)
    lwz r0, 0xf0(r1)
    stw r15, 0xf4(r1)
    lhz r15, 0xb0(r29)
    stw r0, 0xc0(r1)
    lwz r0, 0xf4(r1)
    stw r15, 0xf8(r1)
    lbz r15, 0xb2(r29)
    stw r0, 0xc4(r1)
    lwz r0, 0xf8(r1)
    stw r15, 0xfc(r1)
    lhz r15, 0xb3(r29)
    sth r0, 0xc8(r1)
    lwz r0, 0xfc(r1)
    stw r15, 0x100(r1)
    lbz r15, 0xb5(r29)
    stb r0, 0xca(r1)
    lwz r0, 0x100(r1)
    stw r15, 0x104(r1)
    lhz r15, 0xb6(r29)
    sth r0, 0xcb(r1)
    lwz r0, 0x104(r1)
    stw r15, 0x108(r1)
    lbz r15, 0xb8(r29)
    stb r0, 0xcd(r1)
    lwz r0, 0x108(r1)
    lfs fp9, 0x4(r29)
    lfs fp8, 0x8(r29)
    lfs fp7, 0xc(r29)
    lfs fp6, 0x10(r29)
    lfs fp5, 0x14(r29)
    lfs fp4, 0x18(r29)
    lfs fp3, 0x1c(r29)
    lfs fp2, 0x20(r29)
    lwz r17, 0x24(r29)
    lwz r18, 0x28(r29)
    lwz r19, 0x2c(r29)
    lwz r20, 0x30(r29)
    lbz r21, 0x34(r29)
    lfs fp1, 0x38(r29)
    lfs fp0, 0x3c(r29)
    lwz r22, 0x40(r29)
    lwz r23, 0x44(r29)
    lwz r24, 0x48(r29)
    lwz r25, 0x4c(r29)
    lwz r26, 0x50(r29)
    lwz r27, 0x54(r29)
    lwz r12, 0x58(r29)
    lwz r11, 0x5c(r29)
    lwz r10, 0x60(r29)
    lwz r9, 0x64(r29)
    lwz r8, 0x68(r29)
    lwz r7, 0x6c(r29)
    lwz r6, 0x70(r29)
    lwz r5, 0x74(r29)
    lwz r4, 0x78(r29)
    lwz r3, 0x7c(r29)
    lwz r14, 0x84(r29)
    sth r0, 0xce(r1)
    mr r0, r15
    stw r15, 0x10c(r1)
    stw r16, 0x18(r1)
    stfs fp9, 0x1c(r1)
    stfs fp8, 0x20(r1)
    stfs fp7, 0x24(r1)
    stfs fp6, 0x28(r1)
    stfs fp5, 0x2c(r1)
    stfs fp4, 0x30(r1)
    stfs fp3, 0x34(r1)
    stfs fp2, 0x38(r1)
    stw r17, 0x3c(r1)
    stw r18, 0x40(r1)
    stw r19, 0x44(r1)
    stw r20, 0x48(r1)
    stb r21, 0x4c(r1)
    stfs fp1, 0x50(r1)
    stfs fp0, 0x54(r1)
    stw r22, 0x58(r1)
    stw r23, 0x5c(r1)
    stw r24, 0x60(r1)
    stw r25, 0x64(r1)
    stw r26, 0x68(r1)
    stw r27, 0x6c(r1)
    stw r12, 0x70(r1)
    stw r11, 0x74(r1)
    stw r10, 0x78(r1)
    stw r9, 0x7c(r1)
    stw r8, 0x80(r1)
    stw r7, 0x84(r1)
    stw r6, 0x88(r1)
    stw r5, 0x8c(r1)
    stw r4, 0x90(r1)
    stw r3, 0x94(r1)
    stw r14, 0x9c(r1)
    stb r0, 0xd0(r1)
    clrlwi. r0, r30, 24
    opword  0x41820018  // beq .L_80095B24
    addi r3, r1, 0x18
    addi r4, r1, 0x8
    bl fn_80094424
    addi r3, r1, 0x18
    bl fn_8009417C
L_80095B24:
    lbz r3, 0xb1(r28)
    bl fn_8005C46C
    lwz r12, 0x0(r28)
    fmr fp1, fp30
    fmr fp2, fp31
    mr r3, r28
    lwz r12, 0x38(r12)
    addi r4, r1, 0x98
    mtctr r12
    bctrl
    lis r3, lbl_80499548@ha
    addi r0, r3, lbl_80499548@l
    stw r0, 0x18(r1)
L_80095B58:
    lwz r14, 0xdc(r28)
    cmplwi r14, 0x0
    opword  0x41820038  // beq .L_80095B98
    subi r14, r14, 0xc
    opword  0x48000030  // b .L_80095B98
L_80095B6C:
    opword  0xC0228A10  // lfs f1, lbl_8053B9B0@sda21(r0)
    mr r4, r29
    lwz r3, 0xc(r14)
    mr r5, r30
    fmr fp2, fp1
    mr r6, r31
    bl fn_8009556C
    lwz r14, 0x18(r14)
    cmplwi r14, 0x0
    opword  0x41820008  // beq .L_80095B98
    subi r14, r14, 0xc
L_80095B98:
    cmplwi r14, 0x0
    opword  0x4082FFD0  // bne .L_80095B6C
L_80095BA0:
    psq_l fp31, 0x178(r1), 0, 0
    lfd fp31, 0x170(r1)
    psq_l fp30, 0x168(r1), 0, 0
    lfd fp30, 0x160(r1)
    lmw r14, 0x118(r1)
    lwz r0, 0x184(r1)
    mtlr r0
    addi r1, r1, 0x180
    blr
}

ASM void fn_80095BC4(void)
{
    nofralloc
    blr
}

ASM void fn_80095BC8(void)
{
    nofralloc
    blr
}

ASM void fn_80095BCC(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stfd fp31, 0x40(r1)
    psq_st fp31, 0x48(r1), 0, 0
    stfd fp30, 0x30(r1)
    psq_st fp30, 0x38(r1), 0, 0
    stfd fp29, 0x20(r1)
    psq_st fp29, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r3
    opword  0xC0228A10  // lfs f1, lbl_8053B9B0@sda21(r0)
    lfs fp0, 0x20(r3)
    fcmpu cr0, fp1, fp0
    opword  0x40820020  // bne .L_80095C28
    lfs fp2, 0x0(r4)
    lfs fp0, 0x8(r4)
    stfs fp1, 0x8(r1)
    fsubs fp0, fp0, fp2
    stfs fp2, 0xd4(r30)
    stfs fp0, 0x10(r1)
    opword  0x4800005C  // b .L_80095C80
L_80095C28:
    lfs fp0, 0x28(r30)
    fcmpu cr0, fp1, fp0
    opword  0x40820024  // bne .L_80095C54
    lfs fp2, 0x8(r4)
    lfs fp0, 0x0(r4)
    stfs fp1, 0x10(r1)
    fsubs fp0, fp2, fp0
    stfs fp2, 0xd4(r30)
    fneg fp0, fp0
    stfs fp0, 0x8(r1)
    opword  0x48000030  // b .L_80095C80
L_80095C54:
    lfs fp0, 0x8(r4)
    lfs fp3, 0x0(r4)
    opword  0xC0228A28  // lfs f1, lbl_8053B9C8@sda21(r0)
    fsubs fp2, fp0, fp3
    fadds fp0, fp3, fp0
    fmuls fp2, fp2, fp1
    fmuls fp0, fp0, fp1
    fneg fp1, fp2
    stfs fp2, 0x10(r1)
    stfs fp0, 0xd4(r30)
    stfs fp1, 0x8(r1)
L_80095C80:
    opword  0xC0228A10  // lfs f1, lbl_8053B9B0@sda21(r0)
    lfs fp0, 0x24(r30)
    fcmpu cr0, fp1, fp0
    opword  0x40820020  // bne .L_80095CAC
    lfs fp2, 0x4(r4)
    lfs fp0, 0xc(r4)
    stfs fp1, 0xc(r1)
    fsubs fp0, fp0, fp2
    stfs fp2, 0xd8(r30)
    stfs fp0, 0x14(r1)
    opword  0x4800005C  // b .L_80095D04
L_80095CAC:
    lfs fp0, 0x2c(r30)
    fcmpu cr0, fp1, fp0
    opword  0x40820024  // bne .L_80095CD8
    lfs fp2, 0xc(r4)
    lfs fp0, 0x4(r4)
    stfs fp1, 0x14(r1)
    fsubs fp0, fp2, fp0
    stfs fp2, 0xd8(r30)
    fneg fp0, fp0
    stfs fp0, 0xc(r1)
    opword  0x48000030  // b .L_80095D04
L_80095CD8:
    lfs fp0, 0xc(r4)
    lfs fp3, 0x4(r4)
    opword  0xC0228A28  // lfs f1, lbl_8053B9C8@sda21(r0)
    fsubs fp2, fp0, fp3
    fadds fp0, fp3, fp0
    fmuls fp2, fp2, fp1
    fmuls fp0, fp0, fp1
    fneg fp1, fp2
    stfs fp2, 0x14(r1)
    stfs fp0, 0xd8(r30)
    stfs fp1, 0xc(r1)
L_80095D04:
    lfs fp3, 0x8(r1)
    mr r3, r30
    lfs fp2, 0x20(r30)
    lfs fp1, 0xc(r1)
    lfs fp0, 0x24(r30)
    fsubs fp30, fp3, fp2
    fsubs fp29, fp1, fp0
    bl fn_800965F8
    opword  0xC3E28A10  // lfs f31, lbl_8053B9B0@sda21(r0)
    mr r31, r3
    opword  0x4800004C  // b .L_80095D78
L_80095D30:
    lfs fp0, 0xd4(r31)
    fcmpu cr0, fp31, fp30
    fadds fp0, fp0, fp30
    stfs fp0, 0xd4(r31)
    lfs fp0, 0xd8(r31)
    fadds fp0, fp0, fp29
    stfs fp0, 0xd8(r31)
    opword  0x4082000C  // bne .L_80095D58
    fcmpu cr0, fp31, fp29
    opword  0x41820018  // beq .L_80095D6C
L_80095D58:
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
L_80095D6C:
    mr r3, r31
    bl fn_80096630
    mr r31, r3
L_80095D78:
    cmplwi r31, 0x0
    opword  0x4082FFB4  // bne .L_80095D30
    lwz r4, 0x8(r1)
    mr r3, r30
    lwz r0, 0xc(r1)
    stw r4, 0x20(r30)
    lwz r4, 0x10(r1)
    stw r0, 0x24(r30)
    lwz r0, 0x14(r1)
    stw r4, 0x28(r30)
    stw r0, 0x2c(r30)
    bl fn_80096668
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_80095DD0
    lfs fp1, 0xd4(r30)
    lfs fp0, 0x20(r3)
    fadds fp0, fp1, fp0
    stfs fp0, 0xd4(r30)
    lfs fp1, 0xd8(r30)
    lfs fp0, 0x24(r3)
    fadds fp0, fp1, fp0
    stfs fp0, 0xd8(r30)
L_80095DD0:
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    psq_l fp31, 0x48(r1), 0, 0
    lfd fp31, 0x40(r1)
    psq_l fp30, 0x38(r1), 0, 0
    lfd fp30, 0x30(r1)
    psq_l fp29, 0x28(r1), 0, 0
    lfd fp29, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r0, 0x54(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80095E14(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    addi r4, r1, 0x8
    lfs fp5, 0x28(r3)
    lfs fp4, 0x20(r3)
    lfs fp3, 0x2c(r3)
    lfs fp0, 0x24(r3)
    fsubs fp4, fp5, fp4
    fsubs fp0, fp3, fp0
    stfs fp1, 0x8(r1)
    fadds fp1, fp1, fp4
    stfs fp2, 0xc(r1)
    fadds fp0, fp2, fp0
    stfs fp1, 0x10(r1)
    stfs fp0, 0x14(r1)
    bl fn_80095BCC
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80095E68(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lfs fp0, 0xd4(r3)
    fadds fp0, fp0, fp1
    stfs fp0, 0xd4(r3)
    lfs fp0, 0xd8(r3)
    fadds fp0, fp0, fp2
    stfs fp0, 0xd8(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80095EAC(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stfd fp31, 0x30(r1)
    psq_st fp31, 0x38(r1), 0, 0
    stfd fp30, 0x20(r1)
    psq_st fp30, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    mr r31, r3
    fmr fp30, fp1
    lfs fp3, 0x20(r3)
    fmr fp31, fp2
    stfs fp3, 0x8(r1)
    lfs fp2, 0x24(r3)
    stfs fp2, 0xc(r1)
    lfs fp1, 0x28(r3)
    stfs fp1, 0x10(r1)
    lfs fp0, 0x2c(r3)
    stfs fp0, 0x14(r1)
    lfs fp5, 0xd8(r3)
    lfs fp4, 0xd4(r3)
    fadds fp2, fp2, fp5
    fadds fp3, fp3, fp4
    fadds fp1, fp1, fp4
    fadds fp0, fp0, fp5
    stfs fp2, 0xc(r1)
    stfs fp3, 0x8(r1)
    stfs fp1, 0x10(r1)
    stfs fp0, 0x14(r1)
    bl fn_80096668
    cmplwi r3, 0x0
    opword  0x41820044  // beq .L_80095F6C
    lfs fp0, 0x24(r3)
    lfs fp1, 0x20(r3)
    fneg fp5, fp0
    lfs fp2, 0xc(r1)
    lfs fp0, 0x14(r1)
    fneg fp4, fp1
    lfs fp3, 0x8(r1)
    lfs fp1, 0x10(r1)
    fadds fp3, fp3, fp4
    fadds fp2, fp2, fp5
    fadds fp1, fp1, fp4
    fadds fp0, fp0, fp5
    stfs fp3, 0x8(r1)
    stfs fp2, 0xc(r1)
    stfs fp1, 0x10(r1)
    stfs fp0, 0x14(r1)
L_80095F6C:
    lfs fp1, 0x8(r1)
    mr r3, r31
    lfs fp0, 0xc(r1)
    addi r4, r1, 0x8
    fadds fp1, fp1, fp30
    fadds fp0, fp0, fp31
    stfs fp1, 0x10(r1)
    stfs fp0, 0x14(r1)
    bl fn_80095BCC
    psq_l fp31, 0x38(r1), 0, 0
    lfd fp31, 0x30(r1)
    psq_l fp30, 0x28(r1), 0, 0
    lfd fp30, 0x20(r1)
    lwz r0, 0x44(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80095FB4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80536C40@ha
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    addi r31, r5, lbl_80536C40@l
    lwz r4, 0x20(r3)
    lwz r0, 0x24(r3)
    stw r4, 0x0(r31)
    stw r0, 0x4(r31)
    lfs fp3, 0x0(r31)
    lwz r4, 0x28(r3)
    lwz r0, 0x2c(r3)
    lfs fp2, 0x4(r31)
    stw r4, 0x8(r31)
    stw r0, 0xc(r31)
    lfs fp1, 0x8(r31)
    lfs fp4, 0xd4(r3)
    lfs fp5, 0xd8(r3)
    lfs fp0, 0xc(r31)
    fadds fp3, fp3, fp4
    fadds fp2, fp2, fp5
    fadds fp1, fp1, fp4
    fadds fp0, fp0, fp5
    stfs fp3, 0x0(r31)
    stfs fp2, 0x4(r31)
    stfs fp1, 0x8(r31)
    stfs fp0, 0xc(r31)
    bl fn_80096668
    cmplwi r3, 0x0
    opword  0x4182004C  // beq .L_80096078
    lfs fp0, 0x24(r3)
    lis r4, lbl_80536C40@ha
    lfs fp1, 0x20(r3)
    addi r3, r4, lbl_80536C40@l
    fneg fp5, fp0
    lfs fp2, 0x4(r31)
    lfs fp0, 0xc(r31)
    fneg fp4, fp1
    lfs fp3, 0x0(r3)
    lfs fp1, 0x8(r31)
    fadds fp3, fp3, fp4
    fadds fp2, fp2, fp5
    fadds fp1, fp1, fp4
    fadds fp0, fp0, fp5
    stfs fp3, 0x0(r3)
    stfs fp2, 0x4(r31)
    stfs fp1, 0x8(r31)
    stfs fp0, 0xc(r31)
L_80096078:
    lwz r0, 0x14(r1)
    lis r3, lbl_80536C40@ha
    addi r3, r3, lbl_80536C40@l
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096094(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stfs fp1, 0xc4(r3)
    fmr fp1, fp3
    stfs fp2, 0xc8(r3)
    stb r4, 0xb6(r3)
    bl fn_800960C4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800960C4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lbz r0, 0xb6(r3)
    extsb r0, r0
    cmpwi r0, 0x78
    opword  0x4082000C  // bne .L_800960E8
    stfs fp1, 0xb8(r3)
    opword  0x48000018  // b .L_800960FC
L_800960E8:
    cmpwi r0, 0x79
    opword  0x4082000C  // bne .L_800960F8
    stfs fp1, 0xbc(r3)
    opword  0x48000008  // b .L_800960FC
L_800960F8:
    stfs fp1, 0xc0(r3)
L_800960FC:
    lwz r12, 0x0(r3)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8009611C(void)
{
    nofralloc
    lbz r0, 0xb6(r3)
    extsb r0, r0
    cmpwi r0, 0x78
    opword  0x4082000C  // bne .L_80096134
    lfs fp1, 0xb8(r3)
    blr
L_80096134:
    cmpwi r0, 0x79
    opword  0x4082000C  // bne .L_80096144
    lfs fp1, 0xbc(r3)
    blr
L_80096144:
    lfs fp1, 0xc0(r3)
    blr
}

ASM void fn_8009614C(void)
{
    nofralloc
    lfs fp2, 0x0(r4)
    lfs fp1, 0x30(r3)
    lfs fp4, 0x8(r4)
    fadds fp2, fp2, fp1
    lfs fp0, 0x40(r3)
    lfs fp3, 0x4(r4)
    fadds fp4, fp4, fp1
    lfs fp1, 0x34(r3)
    lfs fp5, 0xc(r4)
    fcmpo cr0, fp0, fp2
    fadds fp3, fp3, fp1
    fadds fp5, fp5, fp1
    cror eq, lt, eq
    opword  0x40820008  // bne .L_80096188
    stfs fp2, 0x40(r3)
L_80096188:
    lfs fp0, 0x44(r3)
    fcmpo cr0, fp0, fp3
    cror eq, lt, eq
    opword  0x40820008  // bne .L_8009619C
    stfs fp3, 0x44(r3)
L_8009619C:
    lfs fp0, 0x48(r3)
    fcmpo cr0, fp0, fp4
    cror eq, gt, eq
    opword  0x40820008  // bne .L_800961B0
    stfs fp4, 0x48(r3)
L_800961B0:
    lfs fp0, 0x4c(r3)
    fcmpo cr0, fp0, fp5
    cror eq, gt, eq
    bnelr
    stfs fp5, 0x4c(r3)
    blr
}

ASM void fn_800961C8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r6
    lwz r0, 0x10(r3)
    lwz r4, 0x14(r3)
    xor r0, r30, r0
    xor r4, r29, r4
    or. r0, r4, r0
    opword  0x40820008  // bne .L_80096204
    opword  0x4800005C  // b .L_8009625C
L_80096204:
    lwz r31, 0xdc(r3)
    cmplwi r31, 0x0
    opword  0x41820044  // beq .L_80096250
    subi r31, r31, 0xc
    opword  0x4800003C  // b .L_80096250
L_80096218:
    lwz r3, 0xc(r31)
    mr r6, r29
    mr r5, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80096240
    opword  0x48000020  // b .L_8009625C
L_80096240:
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096250
    subi r31, r31, 0xc
L_80096250:
    cmplwi r31, 0x0
    opword  0x4082FFC4  // bne .L_80096218
    li r3, 0x0
L_8009625C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80096278(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r6
    lwz r0, 0x18(r3)
    lwz r4, 0x1c(r3)
    xor r0, r30, r0
    xor r4, r29, r4
    or. r0, r4, r0
    opword  0x40820008  // bne .L_800962B4
    opword  0x4800005C  // b .L_8009630C
L_800962B4:
    lwz r31, 0xdc(r3)
    cmplwi r31, 0x0
    opword  0x41820044  // beq .L_80096300
    subi r31, r31, 0xc
    opword  0x4800003C  // b .L_80096300
L_800962C8:
    lwz r3, 0xc(r31)
    mr r6, r29
    mr r5, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800962F0
    opword  0x48000020  // b .L_8009630C
L_800962F0:
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096300
    subi r31, r31, 0xc
L_80096300:
    cmplwi r31, 0x0
    opword  0x4082FFC4  // bne .L_800962C8
    li r3, 0x0
L_8009630C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80096328(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r4
    lwz r31, 0xdc(r3)
    cmplwi r31, 0x0
    opword  0x41820044  // beq .L_8009638C
    subi r31, r31, 0xc
    opword  0x4800003C  // b .L_8009638C
L_80096354:
    lwz r3, 0xc(r31)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x4182000C  // beq .L_8009637C
    li r3, 0x1
    opword  0x48000020  // b .L_80096398
L_8009637C:
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_8009638C
    subi r31, r31, 0xc
L_8009638C:
    cmplwi r31, 0x0
    opword  0x4082FFC4  // bne .L_80096354
    li r3, 0x0
L_80096398:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800963B0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r4
    lwz r31, 0xdc(r3)
    cmplwi r31, 0x0
    opword  0x41820044  // beq .L_80096414
    subi r31, r31, 0xc
    opword  0x4800003C  // b .L_80096414
L_800963DC:
    lwz r3, 0xc(r31)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x4182000C  // beq .L_80096404
    li r3, 0x1
    opword  0x48000020  // b .L_80096420
L_80096404:
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096414
    subi r31, r31, 0xc
L_80096414:
    cmplwi r31, 0x0
    opword  0x4082FFC4  // bne .L_800963DC
    li r3, 0x0
L_80096420:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096438(void)
{
    nofralloc
    stwu r1, -0x170(r1)
    mflr r0
    stw r0, 0x174(r1)
    stfd fp31, 0x160(r1)
    psq_st fp31, 0x168(r1), 0, 0
    stfd fp30, 0x150(r1)
    psq_st fp30, 0x158(r1), 0, 0
    stfd fp29, 0x140(r1)
    psq_st fp29, 0x148(r1), 0, 0
    stfd fp28, 0x130(r1)
    psq_st fp28, 0x138(r1), 0, 0
    stw r31, 0x12c(r1)
    mr r31, r3
    fmr fp28, fp1
    lfs fp1, 0xc4(r3)
    fmr fp29, fp2
    lfs fp0, 0xc8(r3)
    addi r3, r1, 0x38
    fsubs fp31, fp1, fp3
    fsubs fp30, fp0, fp4
    opword  0xC0628A10  // lfs f3, lbl_8053B9B0@sda21(r0)
    fneg fp1, fp31
    fneg fp2, fp30
    bl PSMTXTrans
    opword  0xC0228A2C  // lfs f1, lbl_8053B9CC@sda21(r0)
    addi r3, r1, 0xf8
    lfs fp0, 0xb8(r31)
    li r4, 0x78
    fmuls fp1, fp1, fp0
    bl PSMTXRotRad
    opword  0xC0228A2C  // lfs f1, lbl_8053B9CC@sda21(r0)
    addi r3, r1, 0xc8
    lfs fp0, 0xbc(r31)
    li r4, 0x79
    fmuls fp1, fp1, fp0
    bl PSMTXRotRad
    lfs fp0, 0xc0(r31)
    addi r3, r1, 0x98
    opword  0xC0228A2C  // lfs f1, lbl_8053B9CC@sda21(r0)
    li r4, 0x7a
    fneg fp0, fp0
    fmuls fp1, fp1, fp0
    bl PSMTXRotRad
    addi r3, r1, 0x98
    addi r4, r1, 0xf8
    addi r5, r1, 0x8
    bl PSMTXConcat
    addi r3, r1, 0xc8
    addi r4, r1, 0x8
    addi r5, r1, 0x68
    bl PSMTXConcat
    lfs fp1, 0xcc(r31)
    addi r3, r1, 0x38
    lfs fp2, 0xd0(r31)
    addi r4, r31, 0x50
    opword  0xC0628A14  // lfs f3, lbl_8053B9B4@sda21(r0)
    bl PSMTXScaleApply
    addi r3, r1, 0x68
    addi r4, r31, 0x50
    addi r5, r1, 0x8
    bl PSMTXConcat
    fadds fp1, fp28, fp31
    opword  0xC0628A10  // lfs f3, lbl_8053B9B0@sda21(r0)
    fadds fp2, fp29, fp30
    addi r3, r1, 0x8
    addi r4, r31, 0x50
    bl PSMTXTransApply
    psq_l fp31, 0x168(r1), 0, 0
    lfd fp31, 0x160(r1)
    psq_l fp30, 0x158(r1), 0, 0
    lfd fp30, 0x150(r1)
    psq_l fp29, 0x148(r1), 0, 0
    lfd fp29, 0x140(r1)
    psq_l fp28, 0x138(r1), 0, 0
    lfd fp28, 0x130(r1)
    lwz r0, 0x174(r1)
    lwz r31, 0x12c(r1)
    mtlr r0
    addi r1, r1, 0x170
    blr
}

ASM void fn_80096578(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r4
    stb r30, 0xb1(r3)
    lwz r31, 0xdc(r3)
    cmplwi r31, 0x0
    opword  0x41820034  // beq .L_800965D0
    subi r31, r31, 0xc
    opword  0x4800002C  // b .L_800965D0
L_800965A8:
    lwz r3, 0xc(r31)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_800965D0
    subi r31, r31, 0xc
L_800965D0:
    cmplwi r31, 0x0
    opword  0x4082FFD4  // bne .L_800965A8
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800965F0(void)
{
    nofralloc
    stb r4, 0xb2(r3)
    blr
}

ASM void fn_800965F8(void)
{
    nofralloc
    lwz r3, 0xdc(r3)
    cmplwi r3, 0x0
    mr r0, r3
    opword  0x41820008  // beq .L_8009660C
    subi r0, r3, 0xc
L_8009660C:
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8009661C
    li r3, 0x0
    blr
L_8009661C:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80096628
    subi r3, r3, 0xc
L_80096628:
    lwz r3, 0xc(r3)
    blr
}

ASM void fn_80096630(void)
{
    nofralloc
    lwz r3, 0xf4(r3)
    cmplwi r3, 0x0
    mr r0, r3
    opword  0x41820008  // beq .L_80096644
    subi r0, r3, 0xc
L_80096644:
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80096654
    li r3, 0x0
    blr
L_80096654:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80096660
    subi r3, r3, 0xc
L_80096660:
    lwz r3, 0xc(r3)
    blr
}

ASM void fn_80096668(void)
{
    nofralloc
    lwz r3, 0xec(r3)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_8009667C
    li r3, 0x0
    blr
L_8009667C:
    lwz r3, 0xc(r3)
    blr
}

ASM void fn_80096684(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    stw r31, 0x5c(r1)
    mr r31, r4
    stw r30, 0x58(r1)
    mr r30, r3
    stw r29, 0x54(r1)
    mr r29, r5
    mr r3, r29
    lwz r12, 0x0(r29)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    mr r3, r29
    addi r4, r1, 0x8
    li r5, 0x48
    bl fn_80086AF8
    lhz r0, 0x12(r1)
    lis r3, 0x5555
    li r4, 0x7a
    sth r0, 0x4(r30)
    addi r0, r3, 0x5556
    lbz r5, 0x14(r1)
    neg r3, r5
    or r3, r3, r5
    srwi r3, r3, 31
    stb r3, 0xb0(r30)
    lwz r3, 0x18(r1)
    lwz r5, 0x1c(r1)
    stw r5, 0x14(r30)
    stw r3, 0x10(r30)
    lwz r3, 0x20(r1)
    lwz r5, 0x24(r1)
    stw r5, 0x1c(r30)
    stw r3, 0x18(r30)
    lfs fp0, 0x30(r1)
    stfs fp0, 0xcc(r30)
    lfs fp0, 0x34(r1)
    stfs fp0, 0xd0(r30)
    lfs fp0, 0x38(r1)
    stfs fp0, 0xb8(r30)
    lfs fp0, 0x3c(r1)
    stfs fp0, 0xbc(r30)
    lfs fp0, 0x40(r1)
    stfs fp0, 0xc0(r30)
    lfs fp0, 0x44(r1)
    stfs fp0, 0xd4(r30)
    lfs fp0, 0x48(r1)
    stfs fp0, 0xd8(r30)
    stb r4, 0xb6(r30)
    lbz r4, 0x15(r1)
    mulhw r3, r0, r4
    srwi r0, r3, 31
    add r0, r3, r0
    mulli r0, r0, 0x3
    subf. r0, r0, r4
    opword  0x40820010  // bne .L_80096778
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    stfs fp0, 0xc4(r30)
    opword  0x48000028  // b .L_8009679C
L_80096778:
    cmpwi r0, 0x1
    opword  0x40820018  // bne .L_80096794
    lfs fp1, 0x28(r1)
    opword  0xC0028A28  // lfs f0, lbl_8053B9C8@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0xc4(r30)
    opword  0x4800000C  // b .L_8009679C
L_80096794:
    lfs fp0, 0x28(r1)
    stfs fp0, 0xc4(r30)
L_8009679C:
    lis r3, 0x5555
    lbz r0, 0x15(r1)
    addi r3, r3, 0x5556
    mulhw r3, r3, r0
    srwi r0, r3, 31
    add. r0, r3, r0
    opword  0x40820010  // bne .L_800967C4
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    stfs fp0, 0xc8(r30)
    opword  0x48000028  // b .L_800967E8
L_800967C4:
    cmpwi r0, 0x1
    opword  0x40820018  // bne .L_800967E0
    lfs fp1, 0x2c(r1)
    opword  0xC0028A28  // lfs f0, lbl_8053B9C8@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0xc8(r30)
    opword  0x4800000C  // b .L_800967E8
L_800967E0:
    lfs fp0, 0x2c(r1)
    stfs fp0, 0xc8(r30)
L_800967E8:
    lfs fp5, 0xc4(r30)
    li r3, 0xff
    lfs fp4, 0xc8(r30)
    cmplwi r31, 0x0
    fneg fp1, fp5
    lfs fp3, 0x2c(r1)
    lfs fp2, 0x28(r1)
    fneg fp0, fp4
    fsubs fp3, fp3, fp4
    li r0, 0x0
    stfs fp1, 0x20(r30)
    fsubs fp1, fp2, fp5
    stfs fp0, 0x24(r30)
    stfs fp1, 0x28(r30)
    stfs fp3, 0x2c(r30)
    lbz r4, 0x15(r1)
    stb r4, 0xb7(r30)
    stb r3, 0xb2(r30)
    stb r0, 0xb4(r30)
    opword  0x41820018  // beq .L_8009684C
    addic. r4, r30, 0xdc
    opword  0x41820008  // beq .L_80096844
    addi r4, r4, 0xc
L_80096844:
    addi r3, r31, 0xdc
    bl fn_80086F58
L_8009684C:
    li r4, 0x0
    li r0, 0xff
    stb r4, 0xb1(r30)
    mr r3, r30
    stb r0, 0xb3(r30)
    stb r4, 0xb5(r30)
    lwz r12, 0x0(r30)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_80096890(void)
{
    nofralloc
    clrlwi r0, r3, 24
    stwu r1, -0x20(r1)
    cmplwi r0, 0xf
    opword  0x4180000C  // blt .L_800968A8
    li r3, 0x0
    opword  0x4800009C  // b .L_80096940
L_800968A8:
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    fmr fp3, fp1
    fcmpo cr0, fp1, fp0
    opword  0x40800008  // bge .L_800968BC
    fneg fp3, fp1
L_800968BC:
    clrlwi r0, r3, 24
    li r3, 0x1
    slw r0, r3, r0
    lis r4, 0x4330
    xoris r0, r0, 0x8000
    lis r3, 0x1
    stw r0, 0xc(r1)
    addi r0, r3, -0x8000
    opword  0xC8428A18  // lfd f2, lbl_8053B9B8@sda21(r0)
    stw r4, 0x8(r1)
    lfd fp0, 0x8(r1)
    fsubs fp0, fp0, fp2
    fmuls fp0, fp3, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x10(r1)
    lwz r3, 0x14(r1)
    cmpw r3, r0
    opword  0x41800020  // blt .L_80096920
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    fcmpo cr0, fp1, fp0
    opword  0x4080000C  // bge .L_80096918
    li r3, -0x8000
    opword  0x4800002C  // b .L_80096940
L_80096918:
    li r3, 0x7fff
    opword  0x48000024  // b .L_80096940
L_80096920:
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    fcmpo cr0, fp1, fp0
    opword  0x40800014  // bge .L_8009693C
    nor r3, r3, r3
    addi r0, r3, 0x1
    extsh r3, r0
    opword  0x48000008  // b .L_80096940
L_8009693C:
    extsh r3, r3
L_80096940:
    addi r1, r1, 0x20
    blr
}

ASM void fn_80096948(void)
{
    nofralloc
    stwu r1, -0x120(r1)
    mflr r0
    stw r0, 0x124(r1)
    li r0, 0x0
    stw r31, 0x11c(r1)
    stw r30, 0x118(r1)
    mr. r30, r6
    stw r29, 0x114(r1)
    mr r29, r5
    stw r28, 0x110(r1)
    mr r28, r4
    stb r0, 0x8(r1)
    opword  0x40820074  // bne .L_800969EC
    opword  0x800D8DF0  // lwz r0, lbl_8053A9B0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_80096998
    addi r3, r1, 0x8
    li r6, 0x0
    bl fn_8009209C
    opword  0x480000E0  // b .L_80096A74
L_80096998:
    mr r3, r28
    lwz r12, 0x0(r28)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    mr r31, r3
    mr r4, r28
    mr r5, r29
    addi r3, r1, 0x8
    li r6, 0x0
    bl fn_8009209C
    cmplwi r3, 0x0
    opword  0x408200AC  // bne .L_80096A74
    mr r3, r28
    mr r4, r31
    li r5, 0x0
    bl fn_80086D7C
    opword  0x806D8DF0  // lwz r3, lbl_8053A9B0@sda21(r0)
    mr r4, r28
    bl fn_800A6938
    opword  0x4800008C  // b .L_80096A74
L_800969EC:
    mr r3, r28
    lwz r12, 0x0(r28)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    mr r31, r3
    mr r4, r28
    mr r5, r29
    mr r6, r30
    addi r3, r1, 0x8
    bl fn_8009209C
    cmplwi r3, 0x0
    opword  0x40820028  // bne .L_80096A44
    mr r3, r28
    mr r4, r31
    li r5, 0x0
    bl fn_80086D7C
    mr r4, r28
    mr r5, r29
    addi r3, r1, 0x8
    li r6, 0x0
    bl fn_8009209C
L_80096A44:
    cmplwi r3, 0x0
    opword  0x4082002C  // bne .L_80096A74
    opword  0x800D8DF0  // lwz r0, lbl_8053A9B0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_80096A74
    mr r3, r28
    mr r4, r31
    li r5, 0x0
    bl fn_80086D7C
    opword  0x806D8DF0  // lwz r3, lbl_8053A9B0@sda21(r0)
    mr r4, r28
    bl fn_800A6938
L_80096A74:
    lwz r0, 0x124(r1)
    lwz r31, 0x11c(r1)
    lwz r30, 0x118(r1)
    lwz r29, 0x114(r1)
    lwz r28, 0x110(r1)
    mtlr r0
    addi r1, r1, 0x120
    blr
}

ASM void fn_80096A94(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x14(r1)
    opword  0x418200B0  // beq .L_80096B54
    lwz r0, 0xc(r4)
    cmplwi r0, 0x7
    opword  0x418100A4  // bgt .L_80096B54
    lis r5, jumptable_80499570@ha
    slwi r0, r0, 2
    addi r5, r5, jumptable_80499570@l
    lwzx r0, r5, r0
    mtctr r0
    bctr
    lwz r12, 0x0(r3)
    lwz r12, 0x60(r12)
    mtctr r12
    bctrl
    opword  0x48000078  // b .L_80096B54
    lwz r12, 0x0(r3)
    lwz r12, 0x64(r12)
    mtctr r12
    bctrl
    opword  0x48000064  // b .L_80096B54
    lwz r12, 0x0(r3)
    lwz r12, 0x78(r12)
    mtctr r12
    bctrl
    opword  0x48000050  // b .L_80096B54
    lwz r12, 0x0(r3)
    lwz r12, 0x6c(r12)
    mtctr r12
    bctrl
    opword  0x4800003C  // b .L_80096B54
    lwz r12, 0x0(r3)
    lwz r12, 0x68(r12)
    mtctr r12
    bctrl
    opword  0x48000028  // b .L_80096B54
    lwz r12, 0x0(r3)
    lwz r12, 0x74(r12)
    mtctr r12
    bctrl
    opword  0x48000014  // b .L_80096B54
    lwz r12, 0x0(r3)
    lwz r12, 0x70(r12)
    mtctr r12
    bctrl
L_80096B54:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096B64(void)
{
    nofralloc
    blr
}

ASM void fn_80096B68(void)
{
    nofralloc
    blr
}

ASM void fn_80096B6C(void)
{
    nofralloc
    blr
}

ASM void fn_80096B70(void)
{
    nofralloc
    blr
}

ASM void fn_80096B74(void)
{
    nofralloc
    blr
}

ASM void fn_80096B78(void)
{
    nofralloc
    blr
}

ASM void fn_80096B7C(void)
{
    nofralloc
    stw r4, 0xf8(r3)
    blr
}

ASM void fn_80096B84(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r4, 0xf8(r3)
    cmplwi r4, 0x0
    opword  0x41820014  // beq .L_80096BAC
    lwz r12, 0x0(r3)
    lwz r12, 0x7c(r12)
    mtctr r12
    bctrl
L_80096BAC:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096BBC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x60(r12)
    mtctr r12
    bctrl
    lwz r31, 0xdc(r31)
    cmplwi r31, 0x0
    opword  0x41820030  // beq .L_80096C1C
    subi r31, r31, 0xc
    opword  0x48000028  // b .L_80096C1C
L_80096BF8:
    lwz r3, 0xc(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x54(r12)
    mtctr r12
    bctrl
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096C1C
    subi r31, r31, 0xc
L_80096C1C:
    cmplwi r31, 0x0
    opword  0x4082FFD8  // bne .L_80096BF8
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096C38(void)
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
    lwz r0, 0xf8(r3)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_80096C68
    mr r30, r0
L_80096C68:
    lwz r31, 0xdc(r29)
    cmplwi r31, 0x0
    opword  0x41820034  // beq .L_80096CA4
    subi r31, r31, 0xc
    opword  0x4800002C  // b .L_80096CA4
L_80096C7C:
    lwz r3, 0xc(r31)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x7c(r12)
    mtctr r12
    bctrl
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096CA4
    subi r31, r31, 0xc
L_80096CA4:
    cmplwi r31, 0x0
    opword  0x4082FFD4  // bne .L_80096C7C
    mr r3, r29
    mr r4, r30
    bl fn_80096EE0
    lwz r0, 0x24(r1)
    mr r3, r30
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80096CD8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r30, 0x8(r1)
    mr r30, r4
    lwz r12, 0x0(r3)
    lwz r12, 0x84(r12)
    mtctr r12
    bctrl
    lwz r31, 0xdc(r31)
    cmplwi r31, 0x0
    opword  0x41820034  // beq .L_80096D40
    subi r31, r31, 0xc
    opword  0x4800002C  // b .L_80096D40
L_80096D18:
    lwz r3, 0xc(r31)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x80(r12)
    mtctr r12
    bctrl
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096D40
    subi r31, r31, 0xc
L_80096D40:
    cmplwi r31, 0x0
    opword  0x4082FFD4  // bne .L_80096D18
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096D60(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x74(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096D8C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r30, 0x8(r1)
    mr r30, r4
    lwz r12, 0x0(r3)
    lwz r12, 0x8c(r12)
    mtctr r12
    bctrl
    lwz r31, 0xdc(r31)
    cmplwi r31, 0x0
    opword  0x41820034  // beq .L_80096DF4
    subi r31, r31, 0xc
    opword  0x4800002C  // b .L_80096DF4
L_80096DCC:
    lwz r3, 0xc(r31)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x88(r12)
    mtctr r12
    bctrl
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096DF4
    subi r31, r31, 0xc
L_80096DF4:
    cmplwi r31, 0x0
    opword  0x4082FFD4  // bne .L_80096DCC
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096E14(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x78(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80096E40(void)
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
    lwz r0, 0xf8(r3)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_80096E70
    mr r30, r0
L_80096E70:
    lwz r31, 0xdc(r29)
    cmplwi r31, 0x0
    opword  0x41820034  // beq .L_80096EAC
    subi r31, r31, 0xc
    opword  0x4800002C  // b .L_80096EAC
L_80096E84:
    lwz r3, 0xc(r31)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x90(r12)
    mtctr r12
    bctrl
    lwz r31, 0x18(r31)
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_80096EAC
    subi r31, r31, 0xc
L_80096EAC:
    cmplwi r31, 0x0
    opword  0x4082FFD4  // bne .L_80096E84
    mr r3, r29
    mr r4, r30
    bl fn_80096EE0
    lwz r0, 0x24(r1)
    mr r3, r30
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80096EE0(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    mr r31, r3
    lhz r0, 0x4(r3)
    cmplwi r0, 0xffff
    opword  0x418200D8  // beq .L_80096FD4
    cmplwi r4, 0x0
    opword  0x418200D0  // beq .L_80096FD4
    mr r3, r4
    mr r4, r0
    lwz r12, 0x0(r3)
    addi r5, r1, 0x8
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lfs fp0, 0x8(r1)
    lis r0, 0x4330
    stw r0, 0x28(r1)
    mr r3, r31
    opword  0xC8428A20  // lfd f2, lbl_8053B9C0@sda21(r0)
    stfs fp0, 0xcc(r31)
    opword  0xC0628A30  // lfs f3, lbl_8053B9D0@sda21(r0)
    lfs fp0, 0x10(r1)
    opword  0xC0228A34  // lfs f1, lbl_8053B9D4@sda21(r0)
    stfs fp0, 0xd0(r31)
    lha r4, 0x14(r1)
    stw r0, 0x30(r1)
    clrlwi r4, r4, 16
    stw r4, 0x2c(r1)
    lfd fp0, 0x28(r1)
    stw r0, 0x38(r1)
    fsubs fp0, fp0, fp2
    fmuls fp0, fp3, fp0
    fdivs fp0, fp0, fp1
    stfs fp0, 0xb8(r31)
    lha r0, 0x18(r1)
    clrlwi r0, r0, 16
    stw r0, 0x34(r1)
    lfd fp0, 0x30(r1)
    fsubs fp0, fp0, fp2
    fmuls fp0, fp3, fp0
    fdivs fp0, fp0, fp1
    stfs fp0, 0xbc(r31)
    lha r0, 0x16(r1)
    clrlwi r0, r0, 16
    stw r0, 0x3c(r1)
    lfd fp0, 0x38(r1)
    fsubs fp0, fp0, fp2
    fmuls fp0, fp3, fp0
    fdivs fp0, fp0, fp1
    stfs fp0, 0xc0(r31)
    lfs fp0, 0x1c(r1)
    stfs fp0, 0xd4(r31)
    lfs fp0, 0x24(r1)
    stfs fp0, 0xd8(r31)
    lwz r12, 0x0(r31)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
L_80096FD4:
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80096FE8(void)
{
    nofralloc
    blr
}

ASM void fn_80096FEC(void)
{
    nofralloc
    li r3, 0x10
    blr
}

ASM void fn_80096FF4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi. r0, r4, 24
    li r4, 0x0
    opword  0x41820008  // beq .L_80097010
    li r4, 0x2
L_80097010:
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80097030(void)
{
    nofralloc
    li r0, 0x0
    stb r0, 0xb5(r3)
    li r3, 0x0
    blr
}

ASM void fn_80097040(void)
{
    nofralloc
    blr
}

ASM void fn_80097044(void)
{
    nofralloc
    blr
}

