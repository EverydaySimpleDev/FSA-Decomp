#include "types.h"

extern f32 jumptable_8049A738;
extern f32 jumptable_8049A7C8;
extern f32 lbl_80463444;
extern f32 lbl_80463450;
extern f32 lbl_804634D4;
extern f32 lbl_804634F0;
extern f32 lbl_80463504;
extern f32 lbl_80463510;
extern f32 lbl_8046353C;
extern f32 lbl_8046354C;
extern f32 lbl_8049A3D8;
extern f32 lbl_8049A3EC;
extern f32 lbl_8049A400;
extern f32 lbl_8049A414;
extern f32 lbl_8049A4D0;
extern f32 lbl_8049A54C;
extern f32 lbl_8049A598;
extern f32 lbl_8049A5E4;
extern f32 lbl_8049A650;
extern f32 lbl_8049A6D8;
extern f32 lbl_8049A708;
extern f32 lbl_8049A768;
extern f32 lbl_8049A798;
extern f32 lbl_8049A840;
extern f32 lbl_8049A8A0;
extern f32 lbl_8049AFD8;
extern f32 lbl_8049B054;
extern f32 lbl_8049B0D0;
extern f32 lbl_8049B1AC;
extern f32 lbl_8049B288;
extern f32 lbl_8049B364;
extern f32 lbl_8049B51C;
extern f32 lbl_8049B588;
extern f32 lbl_8049B5F4;
extern f32 lbl_8049B660;
extern f32 lbl_8049B6E8;
extern f32 lbl_8049B770;
extern f32 lbl_8049B7EC;
extern f32 lbl_8049B868;
extern f32 lbl_8049B8E4;
extern f32 lbl_8049B930;
extern f32 lbl_8049BA0C;
extern f32 lbl_8052EBC0;
extern f32 lbl_80536C50;
extern f32 lbl_80536E3C;
extern f32 lbl_80536E7C;
extern f32 lbl_80536E8C;
extern f32 lbl_805393B4;
extern f32 lbl_805397B4;
extern f32 lbl_80539AB4;
extern f32 lbl_80539DC0;
extern f32 lbl_8053A760;
extern f32 lbl_8053A9C0;
extern f32 lbl_8053A9C8;
extern f32 lbl_8053A9D0;
extern f32 lbl_8053A9D4;
extern f32 lbl_8053A9D8;
extern f32 lbl_8053A9DC;
extern f32 lbl_8053AA08;
extern f32 lbl_8053AA0C;
extern f32 lbl_8053AA10;
extern f32 lbl_8053AA11;
extern f32 lbl_8053AA14;
extern f32 lbl_8053AA20;
extern f32 lbl_8053AA24;
extern f32 lbl_8053BB80;
extern f32 lbl_8053BB84;
extern f32 lbl_8053BB88;
extern f32 lbl_8053BB90;
extern f32 lbl_8053BB98;
extern f32 lbl_8053BB9C;
extern f32 lbl_8053BBA0;
extern f32 lbl_8053BBB4;
extern f32 lbl_8053BBB8;
extern f32 lbl_8053BBC4;
extern f32 lbl_8053BBCC;
extern f32 lbl_8053BBD4;
extern f32 lbl_8053BBD8;
extern f32 lbl_8053BBE0;
extern f32 lbl_8053BBE2;
extern f32 lbl_8053BBE4;
extern f32 lbl_8053BBE8;
extern f32 lbl_8053BBEC;
extern f32 lbl_8053BBF0;

extern void OSDisableInterrupts(void);
extern void OSDisableScheduler(void);
extern void OSEnableScheduler(void);
extern void OSRestoreInterrupts(void);
extern void __cvt_fp2unsigned(void);
extern void __ptmf_scall(void);
extern void dtor_80084580(void);
extern void fn_80040F90(void);
extern void PSMTXConcat(void);
extern void PSVECNormalize(void);
extern void fn_8005B620(void);
extern void fn_8005FC54(void);
extern void __construct_array(void);
extern void fn_80071098(void);
extern void fn_800710B0(void);
extern void fn_800710DC(void);
extern void fn_800711D4(void);
extern void fn_80071204(void);
extern void fn_80071800(void);
extern void fn_80071A0C(void);
extern void fn_80084370(void);
extern void fn_800844C4(void);
extern void fn_800D06F0(void);
extern void fn_800D0860(void);
extern void fn_800D09BC(void);
extern void fn_800D0CD4(void);
extern void fn_800D0DE4(void);
extern void fn_800D0FD0(void);
extern void fn_800D11BC(void);
extern void fn_800D1704(void);
extern void fn_800D1AD0(void);
extern void fn_800D1C7C(void);
extern void fn_800D1D24(void);
extern void fn_800D1DB4(void);
extern void fn_800D1E88(void);
extern void fn_800D1F20(void);
extern void fn_800D3168(void);
extern void fn_800D31E8(void);
extern void fn_800D3470(void);
extern void fn_800D34D8(void);
extern void fn_800D358C(void);
extern void fn_800D3660(void);
extern void fn_800D3690(void);
extern void fn_800D36B0(void);
extern void fn_800D3898(void);
extern void fn_800D38C0(void);
extern void fn_800D39E0(void);
extern void fn_800D3B40(void);
extern void fn_800D3DB4(void);
extern void fn_800D3DC0(void);
extern void fn_800D3DE4(void);
extern void fn_800DF908(void);
extern void fn_800E1318(void);
extern void fn_800E3968(void);
extern void fn_800E48EC(void);
extern void fn_800E4910(void);
extern void memcpy(void);

ASM void fn_800BB618(void);
ASM void fn_800BB680(void);
ASM void fn_800BB6E0(void);
ASM void dtor_800BB738(void);
ASM void fn_800BB774(void);
ASM void fn_800BB798(void);
ASM void fn_800BB7AC(void);
ASM void fn_800BB7E8(void);
ASM void fn_800BB8D8(void);
ASM void fn_800BBA14(void);
ASM void fn_800BBADC(void);
ASM void fn_800BBB8C(void);
ASM void fn_800BBC3C(void);
ASM void fn_800BBCE8(void);
ASM void fn_800BBD94(void);
ASM void fn_800BBE3C(void);
ASM void fn_800BBEE4(void);
ASM void fn_800BBF48(void);
ASM void fn_800BBF9C(void);
ASM void fn_800BC0C0(void);
ASM void fn_800BC19C(void);
ASM void fn_800BC1FC(void);
ASM void fn_800BC254(void);
ASM void fn_800BC2BC(void);
ASM void fn_800BC2DC(void);
ASM void fn_800BC308(void);
ASM void fn_800BC368(void);
ASM void fn_800BC3C4(void);
ASM void fn_800BC424(void);
ASM void fn_800BC460(void);
ASM void fn_800BC468(void);
ASM void fn_800BC488(void);
ASM void fn_800BC48C(void);
ASM void fn_800BC4D4(void);
ASM void fn_800BC530(void);
ASM void fn_800BC5D4(void);
ASM void fn_800BC670(void);
ASM void fn_800BC69C(void);
ASM void fn_800BC6F8(void);
ASM void fn_800BC764(void);
ASM void fn_800BC784(void);
ASM void fn_800BC7E8(void);
ASM void fn_800BC848(void);
ASM void fn_800BC86C(void);
ASM void fn_800BC900(void);
ASM void fn_800BC958(void);
ASM void fn_800BC9C4(void);
ASM void fn_800BC9CC(void);
ASM void fn_800BC9D4(void);
ASM void fn_800BCB84(void);
ASM void fn_800BCD1C(void);
ASM void fn_800BCD7C(void);
ASM void fn_800BCDEC(void);
ASM void fn_800BCE64(void);
ASM void fn_800BCEE4(void);
ASM void fn_800BCFD0(void);
ASM void fn_800BD2CC(void);
ASM void fn_800BD36C(void);
ASM void fn_800BD40C(void);
ASM void fn_800BD684(void);
ASM void fn_800BD73C(void);
ASM void fn_800BD89C(void);
ASM void fn_800BDA0C(void);
ASM void fn_800BDC0C(void);
ASM void fn_800BDC68(void);
ASM void fn_800BDD1C(void);
ASM void fn_800BDD20(void);
ASM void fn_800BDD68(void);
ASM void fn_800BDECC(void);
ASM void fn_800BDF28(void);
ASM void fn_800BDF40(void);
ASM void fn_800BDF88(void);
ASM void fn_800BE2FC(void);
ASM void fn_800BE308(void);
ASM void fn_800BE30C(void);
ASM void fn_800BE3F0(void);
ASM void fn_800BE458(void);
ASM void fn_800BE630(void);
ASM void fn_800BE63C(void);
ASM void fn_800BE684(void);
ASM void fn_800BE76C(void);
ASM void fn_800BE7A8(void);
ASM void fn_800BE7B4(void);
ASM void fn_800BE7F0(void);
ASM void fn_800BE828(void);
ASM void fn_800BE834(void);
ASM void fn_800BE87C(void);
ASM void fn_800BEA24(void);
ASM void fn_800BEA6C(void);
ASM void fn_800BEABC(void);
ASM void fn_800BEAE8(void);
ASM void fn_800BEB30(void);
ASM void fn_800BEB44(void);
ASM void fn_800BEBAC(void);
ASM void fn_800BEBFC(void);
ASM void fn_800BECB8(void);
ASM void fn_800BECC0(void);
ASM void fn_800BECC8(void);
ASM void fn_800BECD0(void);
ASM void fn_800BECD8(void);
ASM void fn_800BECE0(void);
ASM void fn_800BECE4(void);
ASM void fn_800BECEC(void);
ASM void fn_800BECF4(void);
ASM void fn_800BECFC(void);
ASM void fn_800BED00(void);
ASM void fn_800BEFF8(void);
ASM void fn_800BF2CC(void);
ASM void fn_800BF31C(void);
ASM void fn_800BF324(void);
ASM void fn_800BF388(void);
ASM void fn_800BF420(void);
ASM void fn_800BF424(void);
ASM void fn_800BF428(void);
ASM void fn_800BF624(void);
ASM void fn_800BF628(void);
ASM void fn_800BF62C(void);
ASM void fn_800BF6A4(void);
ASM void fn_800BF700(void);
ASM void fn_800BF718(void);
ASM void fn_800BF9AC(void);
ASM void fn_800BF9B4(void);
ASM void fn_800BF9B8(void);
ASM void fn_800BF9BC(void);
ASM void fn_800BF9C0(void);
ASM void fn_800BF9C4(void);
ASM void fn_800BF9C8(void);
ASM void fn_800BFAAC(void);
ASM void fn_800BFACC(void);
ASM void fn_800BFB60(void);
ASM void fn_800BFBF4(void);
ASM void fn_800BFC44(void);
ASM void fn_800BFC48(void);
ASM void fn_800BFC4C(void);
ASM void fn_800BFC68(void);
ASM void fn_800BFCA8(void);
ASM void fn_800BFCAC(void);
ASM void fn_800BFCB0(void);
ASM void fn_800BFD00(void);
ASM void fn_800BFD04(void);
ASM void fn_800BFD08(void);
ASM void fn_800BFD24(void);
ASM void fn_800BFD64(void);
ASM void fn_800BFD68(void);
ASM void fn_800BFD6C(void);
ASM void fn_800BFD70(void);
ASM void fn_800BFD74(void);
ASM void fn_800BFD78(void);
ASM void fn_800BFD7C(void);
ASM void fn_800BFD80(void);
ASM void fn_800BFD84(void);
ASM void fn_800BFD88(void);
ASM void fn_800BFD8C(void);
ASM void fn_800BFD94(void);
ASM void fn_800BFD98(void);
ASM void fn_800BFD9C(void);
ASM void fn_800BFDA4(void);
ASM void fn_800BFDA8(void);
ASM void fn_800BFDAC(void);
ASM void fn_800BFDB4(void);
ASM void fn_800BFDB8(void);
ASM void fn_800BFDBC(void);
ASM void fn_800BFDC4(void);
ASM void fn_800BFDC8(void);
ASM void fn_800BFDCC(void);
ASM void fn_800BFDD4(void);
ASM void fn_800BFDD8(void);
ASM void fn_800BFDDC(void);
ASM void fn_800BFDE4(void);
ASM void fn_800BFDEC(void);
ASM void fn_800BFDF0(void);
ASM void fn_800BFDF4(void);
ASM void fn_800BFDF8(void);
ASM void fn_800BFDFC(void);
ASM void fn_800BFE08(void);
ASM void fn_800BFE64(void);
ASM void fn_800BFE68(void);
ASM void fn_800BFE6C(void);
ASM void fn_800BFE70(void);
ASM void fn_800BFE78(void);
ASM void fn_800BFE7C(void);
ASM void fn_800BFE80(void);
ASM void fn_800BFE88(void);
ASM void fn_800BFE8C(void);
ASM void fn_800BFE90(void);
ASM void fn_800BFE98(void);
ASM void fn_800BFE9C(void);
ASM void fn_800BFEA0(void);
ASM void fn_800BFEA4(void);
ASM void fn_800BFEA8(void);
ASM void fn_800BFEB0(void);
ASM void fn_800BFEB4(void);
ASM void fn_800BFEB8(void);
ASM void fn_800BFEC0(void);
ASM void fn_800BFEC4(void);
ASM void fn_800BFEC8(void);
ASM void fn_800BFECC(void);
ASM void fn_800BFED0(void);
ASM void fn_800BFED4(void);
ASM void fn_800BFED8(void);
ASM void fn_800BFEDC(void);
ASM void fn_800BFEE4(void);
ASM void fn_800BFEE8(void);
ASM void fn_800BFEEC(void);
ASM void fn_800BFEF4(void);
ASM void fn_800BFEF8(void);
ASM void fn_800BFEFC(void);
ASM void fn_800BFF00(void);
ASM void fn_800BFF04(void);
ASM void fn_800BFF0C(void);
ASM void fn_800BFF10(void);
ASM void fn_800BFF18(void);
ASM void fn_800BFF1C(void);
ASM void fn_800BFF20(void);
ASM void fn_800BFF28(void);
ASM void fn_800BFF30(void);
ASM void fn_800BFF34(void);
ASM void fn_800BFF38(void);
ASM void fn_800BFFEC(void);
ASM void fn_800C051C(void);
ASM void fn_800C0558(void);
ASM void fn_800C05BC(void);
ASM void fn_800C0B3C(void);
ASM void fn_800C0B9C(void);
ASM void fn_800C1108(void);
ASM void fn_800C1128(void);
ASM void fn_800C1414(void);
ASM void fn_800C176C(void);
ASM void fn_800C1790(void);
ASM void fn_800C179C(void);
ASM void fn_800C1954(void);
ASM void fn_800C1978(void);
ASM void fn_800C19AC(void);
ASM void fn_800C1B0C(void);
ASM void fn_800C1C3C(void);
ASM void fn_800C1D74(void);
ASM void fn_800C1DB8(void);
ASM void fn_800C1E20(void);
ASM void fn_800C1EA4(void);
ASM void fn_800C1F90(void);
ASM void fn_800C20E8(void);
ASM void fn_800C20F4(void);
ASM void fn_800C22DC(void);
ASM void fn_800C23F8(void);
ASM void fn_800C2448(void);
ASM void fn_800C249C(void);
ASM void fn_800C24D0(void);
ASM void fn_800C2524(void);
ASM void fn_800C25A8(void);

ASM void fn_800BB618(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x4
    stw r4, 0x0(r3)
    stw r4, 0x4(r3)
    stw r4, 0x8(r3)
    stw r4, 0xc(r3)
    stw r4, 0x10(r3)
    stw r4, 0x14(r3)
    stw r4, 0x18(r3)
    stw r4, 0x1c(r3)
    stw r4, 0x20(r3)
    stw r4, 0x24(r3)
    stw r4, 0x28(r3)
    stw r4, 0x2c(r3)
    stw r4, 0x30(r3)
    stw r4, 0x34(r3)
    stw r4, 0x38(r3)
    stw r4, 0x3c(r3)
    stw r4, 0x40(r3)
    stw r4, 0x44(r3)
    stw r4, 0x48(r3)
    stb r4, 0x4c(r3)
    stw r0, 0x50(r3)
    stb r4, 0x54(r3)
    stw r0, 0x58(r3)
    blr
}

ASM void fn_800BB680(void)
{
    nofralloc
    stw r4, 0x0(r3)
    li r5, 0x0
    lwz r0, 0x18(r4)
    stw r0, 0x4(r3)
    lwz r0, 0x1c(r4)
    stw r0, 0xc(r3)
    lwz r0, 0x24(r4)
    stw r0, 0x14(r3)
    stw r5, 0x8(r3)
    stw r5, 0x10(r3)
    stw r5, 0x18(r3)
    lwz r0, 0x18(r4)
    stw r0, 0x1c(r3)
    lwz r0, 0x1c(r4)
    stw r0, 0x24(r3)
    stw r5, 0x20(r3)
    stw r5, 0x28(r3)
    lwz r0, 0x4(r3)
    stw r0, 0x2c(r3)
    lwz r0, 0xc(r3)
    stw r0, 0x30(r3)
    lwz r0, 0x14(r3)
    stw r0, 0x34(r3)
    blr
}

ASM void fn_800BB6E0(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x8(r3)
    stw r0, 0x4(r3)
    stw r0, 0x10(r3)
    stw r0, 0xc(r3)
    stw r0, 0x18(r3)
    stw r0, 0x14(r3)
    stw r0, 0x20(r3)
    stw r0, 0x1c(r3)
    stw r0, 0x28(r3)
    stw r0, 0x24(r3)
    stw r0, 0x2c(r3)
    stw r0, 0x30(r3)
    stw r0, 0x34(r3)
    lwz r0, 0x4(r3)
    stw r0, 0x2c(r3)
    lwz r0, 0xc(r3)
    stw r0, 0x30(r3)
    lwz r0, 0x14(r3)
    stw r0, 0x34(r3)
    blr
}

ASM void dtor_800BB738(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820010  // beq .L_800BB75C
    extsh. r0, r4
    opword  0x40810008  // ble .L_800BB75C
    bl dtor_80084580
L_800BB75C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BB774(void)
{
    nofralloc
    lis r4, lbl_80536C50@ha
    lwz r6, 0x2c(r3)
    addi r5, r4, lbl_80536C50@l
    lwz r4, 0x30(r3)
    lwz r0, 0x34(r3)
    stw r6, 0x10c(r5)
    stw r4, 0x110(r5)
    stw r0, 0x114(r5)
    blr
}

ASM void fn_800BB798(void)
{
    nofralloc
    li r0, 0x0
    sth r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    blr
}

ASM void fn_800BB7AC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820010  // beq .L_800BB7D0
    extsh. r0, r4
    opword  0x40810008  // ble .L_800BB7D0
    bl dtor_80084580
L_800BB7D0:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BB7E8(void)
{
    nofralloc
    lfs fp2, 0x0(r3)
    lfs fp1, 0x10(r3)
    fmuls fp2, fp2, fp2
    lfs fp3, 0x20(r3)
    fmuls fp1, fp1, fp1
    lfs fp5, 0x4(r3)
    lfs fp4, 0x14(r3)
    fmuls fp7, fp3, fp3
    lfs fp3, 0x8(r3)
    fadds fp6, fp2, fp1
    lfs fp2, 0x18(r3)
    fmuls fp5, fp5, fp5
    fmuls fp4, fp4, fp4
    lfs fp8, 0x24(r3)
    lfs fp9, 0x28(r3)
    fmuls fp3, fp3, fp3
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    fmuls fp2, fp2, fp2
    fadds fp7, fp7, fp6
    fmuls fp6, fp8, fp8
    fadds fp5, fp5, fp4
    fmuls fp4, fp9, fp9
    fadds fp2, fp3, fp2
    fcmpo cr0, fp7, fp1
    fadds fp3, fp6, fp5
    fadds fp2, fp4, fp2
    opword  0x4081001C  // ble .L_800BB86C
    opword  0x40810010  // ble .L_800BB864
    frsqrte fp1, fp7
    fmuls fp1, fp1, fp7
    opword  0x48000008  // b .L_800BB868
L_800BB864:
    fmr fp1, fp7
L_800BB868:
    fmr fp7, fp1
L_800BB86C:
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    fcmpo cr0, fp3, fp1
    opword  0x4081001C  // ble .L_800BB890
    opword  0x40810010  // ble .L_800BB888
    frsqrte fp1, fp3
    fmuls fp1, fp1, fp3
    opword  0x48000008  // b .L_800BB88C
L_800BB888:
    fmr fp1, fp3
L_800BB88C:
    fmr fp3, fp1
L_800BB890:
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    fcmpo cr0, fp2, fp1
    opword  0x4081001C  // ble .L_800BB8B4
    opword  0x40810010  // ble .L_800BB8AC
    frsqrte fp1, fp2
    fmuls fp1, fp1, fp2
    opword  0x48000008  // b .L_800BB8B0
L_800BB8AC:
    fmr fp1, fp2
L_800BB8B0:
    fmr fp2, fp1
L_800BB8B4:
    opword  0xC0028BE0  // lfs f0, lbl_8053BB80@sda21(r0)
    psq_st fp0, 0x4(r3), 0, 0
    psq_st fp0, 0x20(r3), 0, 0
    stfs fp7, 0x0(r3)
    stfs fp0, 0x10(r3)
    stfs fp3, 0x14(r3)
    stfs fp0, 0x18(r3)
    stfs fp2, 0x28(r3)
    blr
}

ASM void fn_800BB8D8(void)
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
    opword  0xC0028BE0  // lfs f0, lbl_8053BB80@sda21(r0)
    lfs fp2, 0x0(r3)
    lfs fp1, 0x10(r3)
    fmuls fp2, fp2, fp2
    lfs fp3, 0x20(r3)
    fmuls fp1, fp1, fp1
    lfs fp6, 0x8(r3)
    lfs fp5, 0x18(r3)
    fmuls fp4, fp3, fp3
    fadds fp3, fp2, fp1
    lfs fp7, 0x28(r3)
    fmuls fp2, fp6, fp6
    fmuls fp1, fp5, fp5
    fadds fp31, fp4, fp3
    fmuls fp3, fp7, fp7
    fadds fp1, fp2, fp1
    fcmpo cr0, fp31, fp0
    fadds fp30, fp3, fp1
    opword  0x4081001C  // ble .L_800BB960
    opword  0x40810010  // ble .L_800BB958
    frsqrte fp0, fp31
    fmuls fp0, fp0, fp31
    opword  0x48000008  // b .L_800BB95C
L_800BB958:
    fmr fp0, fp31
L_800BB95C:
    fmr fp31, fp0
L_800BB960:
    opword  0xC0028BE0  // lfs f0, lbl_8053BB80@sda21(r0)
    fcmpo cr0, fp30, fp0
    opword  0x4081001C  // ble .L_800BB984
    opword  0x40810010  // ble .L_800BB97C
    frsqrte fp0, fp30
    fmuls fp0, fp0, fp30
    opword  0x48000008  // b .L_800BB980
L_800BB97C:
    fmr fp0, fp30
L_800BB980:
    fmr fp30, fp0
L_800BB984:
    lis r4, lbl_80463444@ha
    addi r3, r1, 0x8
    addi r7, r4, lbl_80463444@l
    lwz r6, 0x0(r7)
    mr r4, r3
    lwz r5, 0x4(r7)
    lwz r0, 0x8(r7)
    stw r6, 0x8(r1)
    stw r5, 0xc(r1)
    stw r0, 0x10(r1)
    lfs fp0, 0x24(r31)
    fneg fp0, fp0
    stfs fp0, 0xc(r1)
    lfs fp0, 0x14(r31)
    stfs fp0, 0x10(r1)
    bl PSVECNormalize
    stfs fp31, 0x0(r31)
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    stfs fp1, 0x8(r31)
    stfs fp1, 0x10(r31)
    lfs fp0, 0xc(r1)
    fmuls fp0, fp0, fp30
    stfs fp0, 0x18(r31)
    stfs fp1, 0x20(r31)
    lfs fp0, 0x10(r1)
    fmuls fp0, fp0, fp30
    stfs fp0, 0x28(r31)
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

ASM void fn_800BBA14(void)
{
    nofralloc
    psq_l fp0, 0x0(r3), 1, 0
    psq_l fp1, 0x4(r3), 0, 0
    psq_l fp2, 0x10(r3), 1, 0
    ps_merge10 fp6, fp1, fp0
    psq_l fp3, 0x14(r3), 0, 0
    psq_l fp4, 0x20(r3), 1, 0
    ps_merge10 fp7, fp3, fp2
    psq_l fp5, 0x24(r3), 0, 0
    ps_mul fp11, fp3, fp6
    ps_merge10 fp8, fp5, fp4
    ps_mul fp13, fp5, fp7
    ps_msub fp11, fp1, fp7, fp11
    ps_mul fp12, fp1, fp8
    ps_msub fp13, fp3, fp8, fp13
    ps_msub fp12, fp5, fp6, fp12
    ps_mul fp10, fp3, fp4
    ps_mul fp9, fp0, fp5
    ps_mul fp8, fp1, fp2
    ps_msub fp10, fp2, fp5, fp10
    ps_msub fp9, fp1, fp4, fp9
    ps_msub fp8, fp0, fp3, fp8
    ps_mul fp7, fp0, fp13
    ps_sub fp1, fp1, fp1
    ps_madd fp7, fp2, fp12, fp7
    ps_madd fp7, fp4, fp11, fp7
    ps_cmpo0 cr0, fp7, fp1
    opword  0x4082000C  // bne .L_800BBA88
    li r3, 0x0
    blr
L_800BBA88:
    fres fp0, fp7
    ps_add fp6, fp0, fp0
    ps_mul fp5, fp0, fp0
    ps_nmsub fp0, fp7, fp5, fp6
    ps_add fp6, fp0, fp0
    ps_mul fp5, fp0, fp0
    ps_nmsub fp0, fp7, fp5, fp6
    ps_muls0 fp13, fp13, fp0
    ps_muls0 fp12, fp12, fp0
    psq_st fp13, 0x0(r4), 0, 0
    ps_muls0 fp11, fp11, fp0
    psq_st fp12, 0xc(r4), 0, 0
    ps_muls0 fp10, fp10, fp0
    psq_st fp11, 0x18(r4), 0, 0
    ps_muls0 fp9, fp9, fp0
    psq_st fp10, 0x8(r4), 1, 0
    ps_muls0 fp8, fp8, fp0
    psq_st fp9, 0x14(r4), 1, 0
    li r3, 0x1
    psq_st fp8, 0x20(r4), 1, 0
    blr
}

ASM void fn_800BBADC(void)
{
    nofralloc
    lha r5, 0xe(r3)
    lis r6, lbl_8052EBC0@ha
    addi r6, r6, lbl_8052EBC0@l
    lha r0, 0x10(r3)
    rlwinm r5, r5, 30, 18, 28
    lha r7, 0xc(r3)
    lfsx fp8, r6, r5
    rlwinm r9, r0, 30, 18, 28
    addi r8, r6, 0x4
    rlwinm r0, r7, 30, 18, 28
    fneg fp0, fp8
    lfsx fp6, r8, r5
    lfsx fp10, r8, r9
    lfsx fp4, r6, r0
    lfsx fp5, r8, r0
    fmuls fp1, fp10, fp6
    lfsx fp9, r6, r9
    fmuls fp12, fp4, fp10
    fmuls fp3, fp6, fp4
    lfs fp2, 0x14(r3)
    stfs fp0, 0x20(r4)
    fmuls fp0, fp9, fp6
    stfs fp1, 0x0(r4)
    fmuls fp11, fp5, fp9
    fmuls fp7, fp6, fp5
    lfs fp1, 0x18(r3)
    stfs fp0, 0x10(r4)
    fmuls fp10, fp5, fp10
    lfs fp0, 0x1c(r3)
    stfs fp3, 0x24(r4)
    fmuls fp9, fp4, fp9
    fmsubs fp6, fp12, fp8, fp11
    stfs fp7, 0x28(r4)
    fmsubs fp5, fp11, fp8, fp12
    fmadds fp4, fp10, fp8, fp9
    stfs fp6, 0x4(r4)
    fmadds fp3, fp9, fp8, fp10
    stfs fp5, 0x18(r4)
    stfs fp4, 0x8(r4)
    stfs fp3, 0x14(r4)
    stfs fp2, 0xc(r4)
    stfs fp1, 0x1c(r4)
    stfs fp0, 0x2c(r4)
    blr
}

ASM void fn_800BBB8C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    stfd fp31, 0x10(r1)
    psq_st fp31, 0x18(r1), 0, 0
    lis r7, lbl_8052EBC0@ha
    rlwinm r4, r4, 30, 18, 28
    addi r7, r7, lbl_8052EBC0@l
    rlwinm r5, r5, 30, 18, 28
    lfsx fp10, r7, r4
    addi r8, r7, 0x4
    rlwinm r0, r3, 30, 18, 28
    lfsx fp6, r8, r4
    lfsx fp12, r8, r5
    fneg fp4, fp10
    lfsx fp8, r7, r0
    lfsx fp9, r8, r0
    fmuls fp5, fp12, fp6
    lfsx fp11, r7, r5
    fmuls fp0, fp6, fp8
    fmuls fp31, fp8, fp12
    stfs fp4, 0x20(r6)
    fmuls fp4, fp11, fp6
    fmuls fp13, fp9, fp11
    stfs fp5, 0x0(r6)
    fmuls fp7, fp6, fp9
    fmuls fp8, fp8, fp11
    stfs fp4, 0x10(r6)
    fmuls fp9, fp9, fp12
    fmsubs fp6, fp31, fp10, fp13
    stfs fp0, 0x24(r6)
    fmsubs fp5, fp13, fp10, fp31
    fmadds fp4, fp9, fp10, fp8
    stfs fp7, 0x28(r6)
    fmadds fp0, fp8, fp10, fp9
    stfs fp6, 0x4(r6)
    stfs fp5, 0x18(r6)
    stfs fp4, 0x8(r6)
    stfs fp0, 0x14(r6)
    stfs fp1, 0xc(r6)
    stfs fp2, 0x1c(r6)
    stfs fp3, 0x2c(r6)
    psq_l fp31, 0x18(r1), 0, 0
    lfd fp31, 0x10(r1)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BBC3C(void)
{
    nofralloc
    lha r0, 0x8(r3)
    lis r6, lbl_8052EBC0@ha
    addi r7, r6, lbl_8052EBC0@l
    lfs fp2, 0x0(r3)
    rlwinm r0, r0, 30, 18, 28
    lfs fp6, 0x4(r4)
    add r6, r7, r0
    lfsx fp0, r7, r0
    lfs fp1, 0x4(r6)
    lfs fp3, 0x4(r3)
    fmuls fp5, fp2, fp0
    fmuls fp4, fp2, fp1
    lfs fp9, 0x0(r4)
    fmuls fp10, fp3, fp0
    lfs fp7, 0xc(r3)
    fmuls fp11, fp3, fp1
    fneg fp2, fp4
    fmuls fp0, fp5, fp6
    stfs fp4, 0x0(r5)
    fneg fp8, fp5
    lfs fp4, 0x10(r3)
    fneg fp3, fp10
    fmadds fp2, fp2, fp9, fp0
    stfs fp8, 0x4(r5)
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    fadds fp5, fp9, fp2
    opword  0xC0028BE4  // lfs f0, lbl_8053BB84@sda21(r0)
    fmuls fp2, fp11, fp6
    fadds fp5, fp7, fp5
    fmsubs fp2, fp3, fp9, fp2
    stfs fp5, 0x8(r5)
    fadds fp2, fp6, fp2
    stfs fp10, 0x10(r5)
    fadds fp2, fp4, fp2
    stfs fp11, 0x14(r5)
    stfs fp2, 0x18(r5)
    stfs fp1, 0x2c(r5)
    stfs fp1, 0x24(r5)
    stfs fp1, 0x20(r5)
    stfs fp1, 0x1c(r5)
    stfs fp1, 0xc(r5)
    stfs fp0, 0x28(r5)
    blr
}

ASM void fn_800BBCE8(void)
{
    nofralloc
    lha r0, 0x8(r3)
    lis r6, lbl_8052EBC0@ha
    addi r7, r6, lbl_8052EBC0@l
    lfs fp2, 0x0(r3)
    rlwinm r0, r0, 30, 18, 28
    lfs fp6, 0x4(r4)
    add r6, r7, r0
    lfsx fp0, r7, r0
    lfs fp1, 0x4(r6)
    lfs fp3, 0x4(r3)
    fmuls fp5, fp2, fp0
    fmuls fp4, fp2, fp1
    lfs fp9, 0x0(r4)
    fmuls fp10, fp3, fp0
    lfs fp7, 0xc(r3)
    fmuls fp11, fp3, fp1
    fneg fp2, fp4
    fmuls fp0, fp5, fp6
    stfs fp4, 0x0(r5)
    fneg fp8, fp5
    lfs fp4, 0x10(r3)
    fneg fp3, fp10
    fmadds fp2, fp2, fp9, fp0
    stfs fp8, 0x4(r5)
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    fadds fp5, fp9, fp2
    opword  0xC0028BE4  // lfs f0, lbl_8053BB84@sda21(r0)
    fmuls fp2, fp11, fp6
    fadds fp5, fp7, fp5
    fmsubs fp2, fp3, fp9, fp2
    stfs fp5, 0xc(r5)
    fadds fp2, fp6, fp2
    stfs fp10, 0x10(r5)
    fadds fp2, fp4, fp2
    stfs fp11, 0x14(r5)
    stfs fp2, 0x1c(r5)
    stfs fp1, 0x2c(r5)
    stfs fp1, 0x24(r5)
    stfs fp1, 0x20(r5)
    stfs fp1, 0x18(r5)
    stfs fp1, 0x8(r5)
    stfs fp0, 0x28(r5)
    blr
}

ASM void fn_800BBD94(void)
{
    nofralloc
    opword  0xC1228BE8  // lfs f9, lbl_8053BB88@sda21(r0)
    lis r5, lbl_8052EBC0@ha
    lfs fp0, 0x10(r3)
    addi r5, r5, lbl_8052EBC0@l
    lha r0, 0x8(r3)
    fsubs fp1, fp0, fp9
    lfs fp8, 0x4(r3)
    rlwinm r0, r0, 30, 18, 28
    lfs fp0, 0xc(r3)
    lfsx fp10, r5, r0
    add r5, r5, r0
    fadds fp6, fp1, fp8
    lfs fp11, 0x4(r5)
    lfs fp4, 0x0(r3)
    fsubs fp12, fp0, fp9
    fmuls fp7, fp8, fp10
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    fmuls fp3, fp4, fp11
    opword  0xC0028BE4  // lfs f0, lbl_8053BB84@sda21(r0)
    fmuls fp2, fp10, fp6
    fneg fp4, fp4
    stfs fp3, 0x0(r4)
    fneg fp3, fp12
    fmsubs fp5, fp12, fp11, fp2
    fmuls fp2, fp11, fp6
    stfs fp7, 0x4(r4)
    fmuls fp4, fp4, fp10
    fadds fp5, fp9, fp5
    fmsubs fp2, fp3, fp10, fp2
    fmuls fp3, fp8, fp11
    stfs fp5, 0x8(r4)
    fadds fp2, fp9, fp2
    stfs fp4, 0x10(r4)
    stfs fp3, 0x14(r4)
    stfs fp2, 0x18(r4)
    stfs fp1, 0x2c(r4)
    stfs fp1, 0x24(r4)
    stfs fp1, 0x20(r4)
    stfs fp1, 0x1c(r4)
    stfs fp1, 0xc(r4)
    stfs fp0, 0x28(r4)
    blr
}

ASM void fn_800BBE3C(void)
{
    nofralloc
    opword  0xC1228BE8  // lfs f9, lbl_8053BB88@sda21(r0)
    lis r5, lbl_8052EBC0@ha
    lfs fp0, 0x10(r3)
    addi r5, r5, lbl_8052EBC0@l
    lha r0, 0x8(r3)
    fsubs fp1, fp0, fp9
    lfs fp8, 0x4(r3)
    rlwinm r0, r0, 30, 18, 28
    lfs fp0, 0xc(r3)
    lfsx fp10, r5, r0
    add r5, r5, r0
    fadds fp6, fp1, fp8
    lfs fp11, 0x4(r5)
    lfs fp4, 0x0(r3)
    fsubs fp12, fp0, fp9
    fmuls fp7, fp8, fp10
    opword  0xC0228BE0  // lfs f1, lbl_8053BB80@sda21(r0)
    fmuls fp3, fp4, fp11
    opword  0xC0028BE4  // lfs f0, lbl_8053BB84@sda21(r0)
    fmuls fp2, fp10, fp6
    fneg fp4, fp4
    stfs fp3, 0x0(r4)
    fneg fp3, fp12
    fmsubs fp5, fp12, fp11, fp2
    fmuls fp2, fp11, fp6
    stfs fp7, 0x4(r4)
    fmuls fp4, fp4, fp10
    fadds fp5, fp9, fp5
    fmsubs fp2, fp3, fp10, fp2
    fmuls fp3, fp8, fp11
    stfs fp5, 0xc(r4)
    fadds fp2, fp9, fp2
    stfs fp4, 0x10(r4)
    stfs fp3, 0x14(r4)
    stfs fp2, 0x1c(r4)
    stfs fp1, 0x2c(r4)
    stfs fp1, 0x24(r4)
    stfs fp1, 0x20(r4)
    stfs fp1, 0x18(r4)
    stfs fp1, 0x8(r4)
    stfs fp0, 0x28(r4)
    blr
}

ASM void fn_800BBEE4(void)
{
    nofralloc
    psq_l fp2, 0x0(r4), 0, 0
    psq_l fp0, 0x0(r3), 0, 0
    lfs fp3, 0x8(r4)
    lfs fp1, 0x8(r3)
    ps_mul fp4, fp0, fp2
    psq_st fp4, 0x0(r3), 0, 0
    fmuls fp4, fp1, fp3
    stfs fp4, 0x8(r3)
    psq_l fp2, 0x0(r4), 0, 0
    psq_l fp0, 0x10(r3), 0, 0
    lfs fp3, 0x8(r4)
    lfs fp1, 0x18(r3)
    ps_mul fp4, fp0, fp2
    psq_st fp4, 0x10(r3), 0, 0
    fmuls fp4, fp1, fp3
    stfs fp4, 0x18(r3)
    psq_l fp2, 0x0(r4), 0, 0
    psq_l fp0, 0x20(r3), 0, 0
    lfs fp3, 0x8(r4)
    lfs fp1, 0x28(r3)
    ps_mul fp4, fp0, fp2
    psq_st fp4, 0x20(r3), 0, 0
    fmuls fp4, fp1, fp3
    stfs fp4, 0x28(r3)
    blr
}

ASM void fn_800BBF48(void)
{
    nofralloc
    psq_l fp0, 0x0(r3), 0, 0
    psq_l fp6, 0x0(r4), 0, 0
    lfs fp1, 0x8(r3)
    lfs fp7, 0x8(r4)
    ps_mul fp0, fp0, fp6
    psq_l fp2, 0xc(r3), 0, 0
    fmuls fp1, fp1, fp7
    lfs fp3, 0x14(r3)
    ps_mul fp2, fp2, fp6
    psq_l fp4, 0x18(r3), 0, 0
    fmuls fp3, fp3, fp7
    lfs fp5, 0x20(r3)
    ps_mul fp4, fp4, fp6
    psq_st fp0, 0x0(r3), 0, 0
    fmuls fp5, fp5, fp7
    stfs fp1, 0x8(r3)
    psq_st fp2, 0xc(r3), 0, 0
    stfs fp3, 0x14(r3)
    psq_st fp4, 0x18(r3), 0, 0
    stfs fp5, 0x20(r3)
    blr
}

ASM void fn_800BBF9C(void)
{
    nofralloc
    psq_l fp2, 0x0(r3), 0, 0
    psq_l fp3, 0x8(r3), 0, 0
    ps_merge00 fp6, fp2, fp2
    ps_merge11 fp7, fp2, fp2
    ps_merge00 fp8, fp3, fp3
    ps_merge11 fp9, fp3, fp3
    psq_l fp10, 0x0(r4), 0, 0
    psq_l fp11, 0x10(r4), 0, 0
    psq_l fp12, 0x20(r4), 0, 0
    psq_l fp13, 0x30(r4), 0, 0
    ps_mul fp0, fp6, fp10
    ps_madd fp0, fp7, fp11, fp0
    ps_madd fp0, fp8, fp12, fp0
    ps_madd fp0, fp9, fp13, fp0
    psq_st fp0, 0x0(r5), 0, 0
    psq_l fp10, 0x8(r4), 0, 0
    psq_l fp11, 0x18(r4), 0, 0
    psq_l fp12, 0x28(r4), 0, 0
    psq_l fp13, 0x38(r4), 0, 0
    ps_mul fp0, fp6, fp10
    ps_madd fp0, fp7, fp11, fp0
    ps_madd fp0, fp8, fp12, fp0
    ps_madd fp0, fp9, fp13, fp0
    psq_st fp0, 0x8(r5), 0, 0
    psq_l fp2, 0x10(r3), 0, 0
    psq_l fp3, 0x18(r3), 0, 0
    ps_merge00 fp6, fp2, fp2
    ps_merge11 fp7, fp2, fp2
    ps_merge00 fp8, fp3, fp3
    ps_merge11 fp9, fp3, fp3
    psq_l fp10, 0x0(r4), 0, 0
    psq_l fp11, 0x10(r4), 0, 0
    psq_l fp12, 0x20(r4), 0, 0
    psq_l fp13, 0x30(r4), 0, 0
    ps_mul fp0, fp6, fp10
    ps_madd fp0, fp7, fp11, fp0
    ps_madd fp0, fp8, fp12, fp0
    ps_madd fp0, fp9, fp13, fp0
    psq_st fp0, 0x10(r5), 0, 0
    psq_l fp10, 0x8(r4), 0, 0
    psq_l fp11, 0x18(r4), 0, 0
    psq_l fp12, 0x28(r4), 0, 0
    psq_l fp13, 0x38(r4), 0, 0
    ps_mul fp0, fp6, fp10
    ps_madd fp0, fp7, fp11, fp0
    ps_madd fp0, fp8, fp12, fp0
    ps_madd fp0, fp9, fp13, fp0
    psq_st fp0, 0x18(r5), 0, 0
    psq_l fp2, 0x20(r3), 0, 0
    psq_l fp3, 0x28(r3), 0, 0
    ps_merge00 fp6, fp2, fp2
    ps_merge11 fp7, fp2, fp2
    ps_merge00 fp8, fp3, fp3
    ps_merge11 fp9, fp3, fp3
    psq_l fp10, 0x0(r4), 0, 0
    psq_l fp11, 0x10(r4), 0, 0
    psq_l fp12, 0x20(r4), 0, 0
    psq_l fp13, 0x30(r4), 0, 0
    ps_mul fp0, fp6, fp10
    ps_madd fp0, fp7, fp11, fp0
    ps_madd fp0, fp8, fp12, fp0
    ps_madd fp0, fp9, fp13, fp0
    psq_st fp0, 0x20(r5), 0, 0
    psq_l fp10, 0x8(r4), 0, 0
    psq_l fp11, 0x18(r4), 0, 0
    psq_l fp12, 0x28(r4), 0, 0
    psq_l fp13, 0x38(r4), 0, 0
    ps_mul fp0, fp6, fp10
    ps_madd fp0, fp7, fp11, fp0
    ps_madd fp0, fp8, fp12, fp0
    ps_madd fp0, fp9, fp13, fp0
    psq_st fp0, 0x28(r5), 0, 0
    blr
}

ASM void fn_800BC0C0(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    stfd fp14, 0x8(r1)
    lis r7, lbl_80539DC0@ha
    stfd fp15, 0x10(r1)
    addi r7, r7, lbl_80539DC0@l
    stfd fp31, 0x28(r1)
    subi r4, r4, 0x8
    subi r5, r5, 0x8
    mtctr r6
L_800BC0E4:
    psq_l fp0, 0x0(r3), 0, 0
    psq_l fp6, 0x8(r4), 0, 0
    psq_l fp7, 0x10(r4), 0, 0
    psq_l fp8, 0x18(r4), 0, 0
    ps_muls0 fp12, fp6, fp0
    psq_l fp2, 0x10(r3), 0, 0
    ps_muls0 fp13, fp7, fp0
    psq_l fp31, 0x0(r7), 0, 0
    ps_muls0 fp14, fp6, fp2
    psq_l fp9, 0x20(r4), 0, 0
    ps_muls0 fp15, fp7, fp2
    psq_l fp1, 0x8(r3), 0, 0
    ps_madds1 fp12, fp8, fp0, fp12
    psq_l fp3, 0x18(r3), 0, 0
    ps_madds1 fp14, fp8, fp2, fp14
    psq_l fp10, 0x28(r4), 0, 0
    ps_madds1 fp13, fp9, fp0, fp13
    psq_lu fp11, 0x30(r4), 0, 0
    ps_madds1 fp15, fp9, fp2, fp15
    psq_l fp4, 0x20(r3), 0, 0
    psq_l fp5, 0x28(r3), 0, 0
    ps_madds0 fp12, fp10, fp1, fp12
    ps_madds0 fp13, fp11, fp1, fp13
    ps_madds0 fp14, fp10, fp3, fp14
    ps_madds0 fp15, fp11, fp3, fp15
    psq_st fp12, 0x8(r5), 0, 0
    ps_muls0 fp2, fp6, fp4
    ps_madds1 fp13, fp31, fp1, fp13
    ps_muls0 fp0, fp7, fp4
    psq_st fp14, 0x18(r5), 0, 0
    ps_madds1 fp15, fp31, fp3, fp15
    psq_st fp13, 0x10(r5), 0, 0
    ps_madds1 fp2, fp8, fp4, fp2
    ps_madds1 fp0, fp9, fp4, fp0
    ps_madds0 fp2, fp10, fp5, fp2
    psq_st fp15, 0x20(r5), 0, 0
    ps_madds0 fp0, fp11, fp5, fp0
    psq_st fp2, 0x28(r5), 0, 0
    ps_madds1 fp0, fp31, fp5, fp0
    psq_stu fp0, 0x30(r5), 0, 0
    opword  0x4200FF60  // bdnz .L_800BC0E4
    lfd fp14, 0x8(r1)
    lfd fp15, 0x10(r1)
    lfd fp31, 0x28(r1)
    addi r1, r1, 0x40
    blr
}

ASM void fn_800BC19C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    addi r0, r4, 0x1f
    clrrwi r0, r0, 5
    li r4, 0x20
    stw r31, 0xc(r1)
    mr r31, r3
    stw r0, 0xc(r3)
    lwz r3, 0xc(r3)
    bl fn_800844C4
    stw r3, 0x0(r31)
    li r4, 0x20
    lwz r3, 0xc(r31)
    bl fn_800844C4
    stw r3, 0x4(r31)
    li r0, 0x0
    li r3, 0x0
    stw r0, 0x8(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC1FC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    addi r0, r4, 0x1f
    clrrwi r0, r0, 5
    li r4, 0x20
    stw r31, 0xc(r1)
    mr r31, r3
    stw r0, 0xc(r3)
    lwz r3, 0xc(r3)
    bl fn_800844C4
    stw r3, 0x0(r31)
    li r0, 0x0
    li r3, 0x0
    lwz r4, 0x0(r31)
    stw r4, 0x4(r31)
    stw r0, 0x8(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC254(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x0(r3)
    lwz r0, 0x4(r31)
    cmplw r3, r0
    opword  0x40820030  // bne .L_800BC2A4
    lwz r3, 0xc(r31)
    li r4, 0x20
    bl fn_800844C4
    stw r3, 0x4(r31)
    lwz r3, 0x4(r31)
    lwz r4, 0x0(r31)
    lwz r5, 0xc(r31)
    bl memcpy
    lwz r3, 0x4(r31)
    lwz r4, 0xc(r31)
    bl fn_80040F90
L_800BC2A4:
    lwz r0, 0x14(r1)
    li r3, 0x0
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC2BC(void)
{
    nofralloc
    addi r0, r5, 0x1f
    clrrwi r0, r0, 5
    stw r0, 0xc(r3)
    stw r4, 0x0(r3)
    lwz r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r5, 0x8(r3)
    blr
}

ASM void fn_800BC2DC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r4, r3
    lwz r3, 0x0(r3)
    stw r0, 0x14(r1)
    lwz r4, 0x8(r4)
    bl fn_8005FC54
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC308(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x0(r3)
    lwz r0, 0x4(r31)
    stw r0, 0x0(r31)
    stw r3, 0x4(r31)
    bl OSDisableInterrupts
    opword  0x906D8E08  // stw r3, lbl_8053A9C8@sda21(r0)
    lis r3, lbl_80536E7C@ha
    addi r3, r3, lbl_80536E7C@l
    lwz r4, 0x0(r31)
    lwz r5, 0xc(r31)
    bl fn_80071098
    lis r3, lbl_80536E7C@ha
    addi r0, r3, lbl_80536E7C@l
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC368(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_800710DC
    opword  0x806D8E08  // lwz r3, lbl_8053A9C8@sda21(r0)
    bl OSRestoreInterrupts
    lis r3, lbl_80536E7C@ha
    addi r4, r3, lbl_80536E7C@l
    lwz r3, 0x0(r4)
    lwz r0, 0x8(r4)
    subf r0, r3, r0
    stw r0, 0x8(r31)
    bl fn_800710B0
    li r0, 0x0
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC3C4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x0(r3)
    lwz r0, 0x4(r31)
    stw r0, 0x0(r31)
    stw r3, 0x4(r31)
    bl OSDisableInterrupts
    opword  0x906D8E08  // stw r3, lbl_8053A9C8@sda21(r0)
    lis r3, lbl_80536E7C@ha
    addi r3, r3, lbl_80536E7C@l
    lwz r4, 0x0(r31)
    lwz r5, 0xc(r31)
    bl fn_80071098
    lis r3, lbl_80536E7C@ha
    addi r0, r3, lbl_80536E7C@l
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC424(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x806D8E08  // lwz r3, lbl_8053A9C8@sda21(r0)
    bl OSRestoreInterrupts
    li r0, 0x0
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC460(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_800BC468(void)
{
    nofralloc
    lwz r0, 0x8(r3)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800BC47C
    stw r4, 0x8(r3)
    blr
L_800BC47C:
    stw r0, 0x4(r4)
    stw r4, 0x8(r3)
    blr
}

ASM void fn_800BC488(void)
{
    nofralloc
    blr
}

ASM void fn_800BC48C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800BC4BC
    lis r5, lbl_8049A414@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049A414@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800BC4BC
    bl dtor_80084580
L_800BC4BC:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC4D4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800BC518
    lis r3, lbl_8049A400@ha
    addi r0, r3, lbl_8049A400@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800BC508
    lis r3, lbl_8049A414@ha
    addi r0, r3, lbl_8049A414@l
    stw r0, 0x0(r31)
L_800BC508:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800BC518
    mr r3, r31
    bl dtor_80084580
L_800BC518:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC530(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    li r3, 0x10
    stw r30, 0x8(r1)
    mr r30, r4
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800BC570
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
L_800BC570:
    stw r3, 0x20(r31)
    lwz r31, 0x20(r31)
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_800BC588
    li r3, 0x4
    opword  0x48000038  // b .L_800BC5BC
L_800BC588:
    addi r0, r30, 0x1f
    li r4, 0x20
    clrrwi r0, r0, 5
    stw r0, 0xc(r31)
    lwz r3, 0xc(r31)
    bl fn_800844C4
    stw r3, 0x0(r31)
    li r4, 0x20
    lwz r3, 0xc(r31)
    bl fn_800844C4
    stw r3, 0x4(r31)
    li r3, 0x0
    stw r3, 0x8(r31)
L_800BC5BC:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC5D4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    li r3, 0x10
    stw r30, 0x8(r1)
    mr r30, r4
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800BC614
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
L_800BC614:
    stw r3, 0x20(r31)
    lwz r31, 0x20(r31)
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_800BC62C
    li r3, 0x4
    opword  0x48000030  // b .L_800BC658
L_800BC62C:
    addi r0, r30, 0x1f
    li r4, 0x20
    clrrwi r0, r0, 5
    stw r0, 0xc(r31)
    lwz r3, 0xc(r31)
    bl fn_800844C4
    stw r3, 0x0(r31)
    li r3, 0x0
    lwz r0, 0x0(r31)
    stw r0, 0x4(r31)
    stw r3, 0x8(r31)
L_800BC658:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC670(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r4, 0x20(r3)
    lwz r3, 0x0(r4)
    lwz r4, 0x8(r4)
    bl fn_8005FC54
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC69C(void)
{
    nofralloc
    lis r6, lbl_8049A414@ha
    lis r5, lbl_8049A400@ha
    addi r0, r6, lbl_8049A414@l
    lis r4, lbl_8049A3EC@ha
    stw r0, 0x0(r3)
    li r6, 0x0
    addi r5, r5, lbl_8049A400@l
    addi r4, r4, lbl_8049A3EC@l
    stw r6, 0x4(r3)
    li r0, -0x1
    stw r6, 0x8(r3)
    stw r6, 0xc(r3)
    stw r5, 0x0(r3)
    stw r6, 0x10(r3)
    stw r6, 0x20(r3)
    stw r6, 0x24(r3)
    stw r4, 0x0(r3)
    stw r6, 0x28(r3)
    stw r6, 0x30(r3)
    stw r0, 0x34(r3)
    stw r6, 0x38(r3)
    stw r6, 0x3c(r3)
    blr
}

ASM void fn_800BC6F8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820040  // beq .L_800BC74C
    lis r3, lbl_8049A3EC@ha
    addi r0, r3, lbl_8049A3EC@l
    stw r0, 0x0(r31)
    opword  0x41820020  // beq .L_800BC73C
    lis r3, lbl_8049A400@ha
    addi r0, r3, lbl_8049A400@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800BC73C
    lis r3, lbl_8049A414@ha
    addi r0, r3, lbl_8049A414@l
    stw r0, 0x0(r31)
L_800BC73C:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800BC74C
    mr r3, r31
    bl dtor_80084580
L_800BC74C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC764(void)
{
    nofralloc
    lwz r0, 0x2c(r3)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800BC778
    stw r4, 0x2c(r3)
    blr
L_800BC778:
    stw r0, 0x4(r4)
    stw r4, 0x2c(r3)
    blr
}

ASM void fn_800BC784(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    lwz r3, 0x28(r3)
    lwz r31, 0x20(r3)
    lwz r3, 0x0(r31)
    lwz r0, 0x4(r31)
    stw r0, 0x0(r31)
    stw r3, 0x4(r31)
    bl OSDisableInterrupts
    opword  0x906D8E08  // stw r3, lbl_8053A9C8@sda21(r0)
    lis r3, lbl_80536E7C@ha
    addi r3, r3, lbl_80536E7C@l
    lwz r4, 0x0(r31)
    lwz r5, 0xc(r31)
    bl fn_80071098
    lis r3, lbl_80536E7C@ha
    addi r0, r3, lbl_80536E7C@l
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC7E8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    lwz r3, 0x28(r3)
    lwz r31, 0x20(r3)
    bl fn_800710DC
    opword  0x806D8E08  // lwz r3, lbl_8053A9C8@sda21(r0)
    bl OSRestoreInterrupts
    lis r3, lbl_80536E7C@ha
    addi r4, r3, lbl_80536E7C@l
    lwz r3, 0x0(r4)
    lwz r0, 0x8(r4)
    subf r0, r3, r0
    stw r0, 0x8(r31)
    bl fn_800710B0
    li r0, 0x0
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC848(void)
{
    nofralloc
    lwz r5, 0x34(r3)
    li r3, 0x0
    lwz r0, 0x34(r4)
    cmplw r5, r0
    bnelr
    srwi. r0, r5, 31
    bnelr
    li r3, 0x1
    blr
}

ASM void fn_800BC86C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x30(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    lwz r4, 0x20(r31)
    lwz r3, 0x0(r4)
    lwz r4, 0x8(r4)
    bl fn_8005FC54
    lwz r4, 0x2c(r31)
    lwz r3, 0x28(r4)
    mr r31, r4
    bl fn_800BD36C
    opword  0x48000028  // b .L_800BC8DC
L_800BC8B8:
    lwz r4, 0x20(r31)
    cmplwi r4, 0x0
    opword  0x41820010  // beq .L_800BC8D0
    lwz r3, 0x0(r4)
    lwz r4, 0x8(r4)
    bl fn_8005FC54
L_800BC8D0:
    mr r3, r31
    bl fn_800BCB84
    lwz r31, 0x4(r31)
L_800BC8DC:
    cmplwi r31, 0x0
    opword  0x4082FFD8  // bne .L_800BC8B8
    li r0, 0x0
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC900(void)
{
    nofralloc
    lis r6, lbl_8049A414@ha
    lis r5, lbl_8049A400@ha
    addi r0, r6, lbl_8049A414@l
    lis r4, lbl_8049A3D8@ha
    stw r0, 0x0(r3)
    li r6, 0x0
    addi r5, r5, lbl_8049A400@l
    addi r0, r4, lbl_8049A3D8@l
    stw r6, 0x4(r3)
    stw r6, 0x8(r3)
    stw r6, 0xc(r3)
    stw r5, 0x0(r3)
    stw r6, 0x10(r3)
    stw r6, 0x20(r3)
    stw r6, 0x24(r3)
    stw r0, 0x0(r3)
    stw r6, 0x28(r3)
    stw r6, 0x2c(r3)
    stw r6, 0x30(r3)
    stw r6, 0x34(r3)
    stw r6, 0x38(r3)
    blr
}

ASM void fn_800BC958(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820040  // beq .L_800BC9AC
    lis r3, lbl_8049A3D8@ha
    addi r0, r3, lbl_8049A3D8@l
    stw r0, 0x0(r31)
    opword  0x41820020  // beq .L_800BC99C
    lis r3, lbl_8049A400@ha
    addi r0, r3, lbl_8049A400@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800BC99C
    lis r3, lbl_8049A414@ha
    addi r0, r3, lbl_8049A414@l
    stw r0, 0x0(r31)
L_800BC99C:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800BC9AC
    mr r3, r31
    bl dtor_80084580
L_800BC9AC:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BC9C4(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_800BC9CC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BC9D4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r0, 0x10(r3)
    rlwinm. r0, r0, 0, 27, 27
    opword  0x40820180  // bne .L_800BCB70
    lwz r0, 0x28(r31)
    cmplwi r0, 0x0
    opword  0x41820174  // beq .L_800BCB70
    lwz r3, 0x38(r31)
    addi r3, r3, 0x88
    bl fn_800BB774
    lis r3, lbl_80536C50@ha
    lwz r4, 0x38(r31)
    addi r3, r3, lbl_80536C50@l
    stw r4, 0x38(r3)
    stw r31, 0x40(r3)
    lwz r0, 0x8(r4)
    extrwi r0, r0, 1, 27
    opword  0x980D8E51  // stb r0, lbl_8053AA11@sda21(r0)
    lwz r3, 0x38(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x41820018  // beq .L_800BCA50
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    ori r0, r0, 0x4
    stw r0, 0xc(r3)
    opword  0x48000014  // b .L_800BCA60
L_800BCA50:
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    rlwinm r0, r0, 0, 30, 28
    stw r0, 0xc(r3)
L_800BCA60:
    lwz r3, 0x38(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x41820024  // beq .L_800BCA90
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    extrwi. r0, r0, 1, 23
    opword  0x40820014  // bne .L_800BCA90
    lwz r0, 0xc(r3)
    ori r0, r0, 0x8
    stw r0, 0xc(r3)
    opword  0x48000014  // b .L_800BCAA0
L_800BCA90:
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    rlwinm r0, r0, 0, 29, 27
    stw r0, 0xc(r3)
L_800BCAA0:
    lwz r4, 0x2c(r31)
    lwz r3, 0x28(r31)
    addi r0, r4, 0x30
    stw r0, 0x60(r3)
    lwz r4, 0x2c(r31)
    lwz r3, 0x28(r31)
    lwz r0, 0x4(r4)
    stw r0, 0x54(r3)
    lwz r4, 0x2c(r31)
    lwz r3, 0x28(r31)
    lwz r0, 0x18(r4)
    stw r0, 0x58(r3)
    lwz r4, 0x28(r31)
    lbz r0, 0x34(r4)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800BCAF0
    lwz r3, 0x2c(r31)
    lwz r0, 0x20(r3)
    stw r0, 0x5c(r4)
    opword  0x4800001C  // b .L_800BCB08
L_800BCAF0:
    lwz r3, 0x2c(r31)
    lwz r0, 0x64(r4)
    lwz r3, 0x28(r3)
    slwi r0, r0, 2
    lwzx r0, r3, r0
    stw r0, 0x5c(r4)
L_800BCB08:
    lwz r3, 0x38(r31)
    lwz r3, 0x4(r3)
    bl fn_800DF908
    lwz r0, 0x24(r31)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_800BCB3C
    lwz r3, 0x28(r31)
    lwz r3, 0x4(r3)
    lwz r0, 0x28(r3)
    opword  0x900D8E60  // stw r0, lbl_8053AA20@sda21(r0)
    lwz r0, 0x24(r31)
    opword  0x900D8E64  // stw r0, lbl_8053AA24@sda21(r0)
    opword  0x4800000C  // b .L_800BCB44
L_800BCB3C:
    li r0, 0x0
    opword  0x900D8E60  // stw r0, lbl_8053AA20@sda21(r0)
L_800BCB44:
    lwz r4, 0x20(r31)
    cmplwi r4, 0x0
    opword  0x41820010  // beq .L_800BCB5C
    lwz r3, 0x0(r4)
    lwz r4, 0x8(r4)
    bl fn_8005FC54
L_800BCB5C:
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_800BCB70:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BCB84(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r0, 0x10(r3)
    rlwinm. r0, r0, 0, 27, 27
    opword  0x40820168  // bne .L_800BCD08
    lwz r0, 0x28(r31)
    cmplwi r0, 0x0
    opword  0x4182015C  // beq .L_800BCD08
    lwz r3, 0x38(r31)
    addi r3, r3, 0x88
    bl fn_800BB774
    lis r3, lbl_80536C50@ha
    lwz r4, 0x38(r31)
    addi r3, r3, lbl_80536C50@l
    stw r4, 0x38(r3)
    stw r31, 0x40(r3)
    lwz r0, 0x8(r4)
    extrwi r0, r0, 1, 27
    opword  0x980D8E51  // stb r0, lbl_8053AA11@sda21(r0)
    lwz r3, 0x38(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x41820018  // beq .L_800BCC00
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    ori r0, r0, 0x4
    stw r0, 0xc(r3)
    opword  0x48000014  // b .L_800BCC10
L_800BCC00:
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    rlwinm r0, r0, 0, 30, 28
    stw r0, 0xc(r3)
L_800BCC10:
    lwz r3, 0x38(r31)
    lwz r0, 0x8(r3)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x41820024  // beq .L_800BCC40
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    extrwi. r0, r0, 1, 23
    opword  0x40820014  // bne .L_800BCC40
    lwz r0, 0xc(r3)
    ori r0, r0, 0x8
    stw r0, 0xc(r3)
    opword  0x48000014  // b .L_800BCC50
L_800BCC40:
    lwz r3, 0x28(r31)
    lwz r0, 0xc(r3)
    rlwinm r0, r0, 0, 29, 27
    stw r0, 0xc(r3)
L_800BCC50:
    lwz r4, 0x2c(r31)
    lwz r3, 0x28(r31)
    addi r0, r4, 0x30
    stw r0, 0x60(r3)
    lwz r4, 0x2c(r31)
    lwz r3, 0x28(r31)
    lwz r0, 0x4(r4)
    stw r0, 0x54(r3)
    lwz r4, 0x2c(r31)
    lwz r3, 0x28(r31)
    lwz r0, 0x18(r4)
    stw r0, 0x58(r3)
    lwz r4, 0x28(r31)
    lbz r0, 0x34(r4)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800BCCA0
    lwz r3, 0x2c(r31)
    lwz r0, 0x20(r3)
    stw r0, 0x5c(r4)
    opword  0x4800001C  // b .L_800BCCB8
L_800BCCA0:
    lwz r3, 0x2c(r31)
    lwz r0, 0x64(r4)
    lwz r3, 0x28(r3)
    slwi r0, r0, 2
    lwzx r0, r3, r0
    stw r0, 0x5c(r4)
L_800BCCB8:
    lwz r3, 0x38(r31)
    lwz r3, 0x4(r3)
    bl fn_800DF908
    lwz r0, 0x24(r31)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_800BCCEC
    lwz r3, 0x28(r31)
    lwz r3, 0x4(r3)
    lwz r0, 0x28(r3)
    opword  0x900D8E60  // stw r0, lbl_8053AA20@sda21(r0)
    lwz r0, 0x24(r31)
    opword  0x900D8E64  // stw r0, lbl_8053AA24@sda21(r0)
    opword  0x4800000C  // b .L_800BCCF4
L_800BCCEC:
    li r0, 0x0
    opword  0x900D8E60  // stw r0, lbl_8053AA20@sda21(r0)
L_800BCCF4:
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
L_800BCD08:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BCD1C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r6, r3
    lis r3, lbl_8049A840@ha
    stw r0, 0x24(r1)
    addi r0, r3, lbl_8049A840@l
    mr r3, r4
    addi r12, r1, 0x8
    lwz r5, 0xc(r4)
    mr r4, r6
    mulli r5, r5, 0xc
    add r7, r0, r5
    lwz r6, 0x0(r7)
    lwz r5, 0x4(r7)
    lwz r0, 0x8(r7)
    stw r6, 0x8(r1)
    stw r5, 0xc(r1)
    stw r0, 0x10(r1)
    bl __ptmf_scall
    nop
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BCD7C(void)
{
    nofralloc
    li r5, 0x0
    lis r4, 0x1
    stw r5, 0x4(r3)
    subi r4, r4, 0x1
    opword  0xC0028BF0  // lfs f0, lbl_8053BB90@sda21(r0)
    opword  0x380D8E00  // li r0, lbl_8053A9C0@sda21
    sth r4, 0x8(r3)
    sth r5, 0xa(r3)
    stw r5, 0xc(r3)
    stfs fp0, 0x10(r3)
    stfs fp0, 0x14(r3)
    stfs fp0, 0x18(r3)
    stfs fp0, 0x1c(r3)
    stfs fp0, 0x20(r3)
    stfs fp0, 0x24(r3)
    stfs fp0, 0x28(r3)
    stw r5, 0x30(r3)
    stw r5, 0x38(r3)
    stw r5, 0x3c(r3)
    stw r5, 0x4c(r3)
    stw r5, 0x50(r3)
    stw r5, 0x54(r3)
    stw r5, 0x58(r3)
    stw r5, 0x5c(r3)
    stw r0, 0x60(r3)
    stb r5, 0x34(r3)
    stb r5, 0x48(r3)
    blr
}

ASM void fn_800BCDEC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    mr r30, r6
    li r31, 0x0
    opword  0x48000030  // b .L_800BCE40
L_800BCE14:
    lwz r3, 0x38(r27)
    clrlslwi r0, r31, 16, 2
    mr r4, r28
    mr r5, r29
    lwzx r3, r3, r0
    mr r6, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    addi r31, r31, 0x1
L_800BCE40:
    lhz r0, 0xa(r27)
    clrlwi r3, r31, 16
    cmplw r3, r0
    opword  0x4180FFC8  // blt .L_800BCE14
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BCE64(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    lhz r31, 0xa(r3)
    stw r30, 0x18(r1)
    lwz r30, 0x38(r3)
    stw r29, 0x14(r1)
    li r29, 0x0
    stw r28, 0x10(r1)
    li r28, 0x0
    opword  0x48000024  // b .L_800BCEB4
L_800BCE94:
    clrlslwi r0, r28, 16, 2
    lwzx r3, r30, r0
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    add r29, r29, r3
    addi r28, r28, 0x1
L_800BCEB4:
    clrlwi r0, r28, 16
    cmplw r0, r31
    opword  0x4180FFD8  // blt .L_800BCE94
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BCEE4(void)
{
    nofralloc
    li r0, 0x18
    lwz r4, 0x2c(r4)
    lwz r3, 0x2c(r3)
    li r6, 0x0
    mtctr r0
L_800BCEF8:
    lbz r5, 0x0(r4)
    lbz r0, 0x0(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCF10
    li r3, 0x0
    blr
L_800BCF10:
    lbz r5, 0x1(r4)
    lbz r0, 0x1(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCF28
    li r3, 0x0
    blr
L_800BCF28:
    lbz r5, 0x2(r4)
    lbz r0, 0x2(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCF40
    li r3, 0x0
    blr
L_800BCF40:
    lbz r5, 0x3(r4)
    lbz r0, 0x3(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCF58
    li r3, 0x0
    blr
L_800BCF58:
    lbz r5, 0x4(r4)
    lbz r0, 0x4(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCF70
    li r3, 0x0
    blr
L_800BCF70:
    lbz r5, 0x5(r4)
    lbz r0, 0x5(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCF88
    li r3, 0x0
    blr
L_800BCF88:
    lbz r5, 0x6(r4)
    lbz r0, 0x6(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCFA0
    li r3, 0x0
    blr
L_800BCFA0:
    lbz r5, 0x7(r4)
    lbz r0, 0x7(r3)
    cmplw r5, r0
    opword  0x4182000C  // beq .L_800BCFB8
    li r3, 0x0
    blr
L_800BCFB8:
    addi r6, r6, 0x7
    addi r3, r3, 0x8
    addi r4, r4, 0x8
    opword  0x4200FF34  // bdnz .L_800BCEF8
    li r3, 0x1
    blr
}

ASM void fn_800BCFD0(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    li r0, 0x0
    stw r31, 0x5c(r1)
    addi r31, r1, 0x14
    stw r30, 0x58(r1)
    addi r30, r1, 0x8
    stw r29, 0x54(r1)
    lwz r4, 0x4c(r3)
    stb r0, 0x8(r1)
    lwz r4, 0x14(r4)
    stw r0, 0x14(r1)
    stb r0, 0x9(r1)
    stw r0, 0x18(r1)
    stb r0, 0xa(r1)
    stw r0, 0x1c(r1)
    stb r0, 0xb(r1)
    stw r0, 0x20(r1)
    stb r0, 0xc(r1)
    stw r0, 0x24(r1)
    stb r0, 0xd(r1)
    stw r0, 0x28(r1)
    stb r0, 0xe(r1)
    stw r0, 0x2c(r1)
    stb r0, 0xf(r1)
    stw r0, 0x30(r1)
    stb r0, 0x10(r1)
    stw r0, 0x34(r1)
    stb r0, 0x11(r1)
    stw r0, 0x38(r1)
    stb r0, 0x12(r1)
    stw r0, 0x3c(r1)
    stb r0, 0x13(r1)
    stw r0, 0x40(r1)
    opword  0x48000190  // b .L_800BD1EC
L_800BD060:
    cmpwi r6, 0xa
    opword  0x4182008C  // beq .L_800BD0F0
    opword  0x40800010  // bge .L_800BD078
    cmpwi r6, 0x9
    opword  0x4080001C  // bge .L_800BD08C
    opword  0x48000174  // b .L_800BD1E8
L_800BD078:
    cmpwi r6, 0x15
    opword  0x4080016C  // bge .L_800BD1E8
    cmpwi r6, 0xd
    opword  0x4080010C  // bge .L_800BD190
    opword  0x480000CC  // b .L_800BD154
L_800BD08C:
    lwz r0, 0x8(r4)
    cmpwi r0, 0x4
    opword  0x40820018  // bne .L_800BD0AC
    addi r5, r1, 0x8
    subi r0, r6, 0x9
    li r6, 0xc
    stbx r6, r5, r0
    opword  0x48000014  // b .L_800BD0BC
L_800BD0AC:
    addi r5, r1, 0x8
    subi r0, r6, 0x9
    li r6, 0x6
    stbx r6, r5, r0
L_800BD0BC:
    lwz r9, 0x4c(r3)
    addi r7, r1, 0x14
    lwz r5, 0x0(r4)
    lwz r8, 0x18(r9)
    lbz r0, 0xc(r4)
    slwi r5, r5, 2
    subi r6, r5, 0x24
    stb r0, 0x4c(r9)
    lwz r0, 0x8(r4)
    lwz r5, 0x4c(r3)
    stwx r8, r7, r6
    stw r0, 0x50(r5)
    opword  0x480000FC  // b .L_800BD1E8
L_800BD0F0:
    lwz r0, 0x8(r4)
    cmpwi r0, 0x4
    opword  0x40820018  // bne .L_800BD110
    addi r5, r1, 0x8
    subi r0, r6, 0x9
    li r6, 0xc
    stbx r6, r5, r0
    opword  0x48000014  // b .L_800BD120
L_800BD110:
    addi r5, r1, 0x8
    subi r0, r6, 0x9
    li r6, 0x6
    stbx r6, r5, r0
L_800BD120:
    lwz r9, 0x4c(r3)
    addi r7, r1, 0x14
    lwz r5, 0x0(r4)
    lwz r8, 0x1c(r9)
    lbz r0, 0xc(r4)
    slwi r5, r5, 2
    subi r6, r5, 0x24
    stb r0, 0x54(r9)
    lwz r0, 0x8(r4)
    lwz r5, 0x4c(r3)
    stwx r8, r7, r6
    stw r0, 0x58(r5)
    opword  0x48000098  // b .L_800BD1E8
L_800BD154:
    lwz r5, 0x0(r4)
    subi r8, r6, 0x9
    lwz r7, 0x4c(r3)
    addi r9, r1, 0x8
    subi r0, r5, 0xb
    slwi r6, r5, 2
    clrlslwi r5, r0, 24, 2
    li r10, 0x4
    addi r0, r5, 0x24
    stbx r10, r9, r8
    lwzx r7, r7, r0
    addi r5, r1, 0x14
    subi r0, r6, 0x24
    stwx r7, r5, r0
    opword  0x4800005C  // b .L_800BD1E8
L_800BD190:
    lwz r0, 0x8(r4)
    cmpwi r0, 0x4
    opword  0x40820018  // bne .L_800BD1B0
    addi r5, r1, 0x8
    subi r0, r6, 0x9
    li r6, 0x8
    stbx r6, r5, r0
    opword  0x48000014  // b .L_800BD1C0
L_800BD1B0:
    addi r5, r1, 0x8
    subi r0, r6, 0x9
    li r6, 0x4
    stbx r6, r5, r0
L_800BD1C0:
    lwz r6, 0x0(r4)
    addi r5, r1, 0x14
    lwz r8, 0x4c(r3)
    subi r0, r6, 0xd
    slwi r6, r6, 2
    clrlslwi r7, r0, 24, 2
    addi r7, r7, 0x2c
    subi r0, r6, 0x24
    lwzx r6, r8, r7
    stwx r6, r5, r0
L_800BD1E8:
    addi r4, r4, 0x10
L_800BD1EC:
    lwz r6, 0x0(r4)
    cmpwi r6, 0xff
    opword  0x4082FE6C  // bne .L_800BD060
    lwz r6, 0x30(r3)
    li r0, 0x0
    stb r0, 0x48(r3)
    opword  0x4800005C  // b .L_800BD260
L_800BD208:
    cmpwi r4, 0x19
    opword  0x40820034  // bne .L_800BD240
    lwz r0, 0x4(r6)
    cmpwi r0, 0x0
    opword  0x41820028  // beq .L_800BD240
    li r4, 0x1
    lbz r0, 0x9(r1)
    stb r4, 0x34(r3)
    mulli r5, r0, 0x3
    lwz r4, 0x4c(r3)
    lwz r0, 0x20(r4)
    stb r5, 0x9(r1)
    stw r0, 0x18(r1)
    opword  0x48000020  // b .L_800BD25C
L_800BD240:
    cmpwi r4, 0x0
    opword  0x40820018  // bne .L_800BD25C
    lwz r0, 0x4(r6)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_800BD25C
    li r0, 0x1
    stb r0, 0x48(r3)
L_800BD25C:
    addi r6, r6, 0x8
L_800BD260:
    lwz r4, 0x0(r6)
    cmpwi r4, 0xff
    opword  0x4082FFA0  // bne .L_800BD208
    li r29, 0x0
L_800BD270:
    lwz r4, 0x0(r31)
    cmplwi r4, 0x0
    opword  0x41820014  // beq .L_800BD28C
    lbz r5, 0x0(r30)
    addi r3, r29, 0x9
    bl fn_80071800
    opword  0x48000014  // b .L_800BD29C
L_800BD28C:
    lbz r5, 0x0(r30)
    addi r3, r29, 0x9
    li r4, 0x0
    bl fn_80071A0C
L_800BD29C:
    addi r29, r29, 0x1
    addi r30, r30, 0x1
    cmplwi r29, 0xc
    addi r31, r31, 0x4
    opword  0x4180FFC4  // blt .L_800BD270
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_800BD2CC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    opword  0x880D8E14  // lbz r0, lbl_8053A9D4@sda21(r0)
    extsb. r0, r0
    opword  0x40820014  // bne .L_800BD2FC
    bl OSDisableInterrupts
    li r0, 0x1
    opword  0x906D8E10  // stw r3, lbl_8053A9D0@sda21(r0)
    opword  0x980D8E14  // stb r0, lbl_8053A9D4@sda21(r0)
L_800BD2FC:
    bl OSDisableScheduler
    lwz r4, 0x2c(r31)
    addi r3, r1, 0x8
    li r5, 0xc0
    bl fn_80071098
    addi r0, r1, 0x8
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    lwz r3, 0x30(r31)
    bl fn_80071204
    mr r3, r31
    bl fn_800BCFD0
    lwz r4, 0x4c(r31)
    li r3, 0x0
    lbz r5, 0x34(r31)
    lwz r4, 0x14(r4)
    bl fn_800D11BC
    bl fn_800710DC
    bl fn_800710B0
    li r0, 0x0
    opword  0x900D8BA0  // stw r0, lbl_8053A760@sda21(r0)
    bl OSEnableScheduler
    opword  0x806D8E10  // lwz r3, lbl_8053A9D0@sda21(r0)
    bl OSRestoreInterrupts
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BD36C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x2c(r3)
    opword  0x800D8E18  // lwz r0, lbl_8053A9D8@sda21(r0)
    cmplw r0, r3
    opword  0x41820014  // beq .L_800BD3A0
    li r4, 0xc0
    bl fn_8005FC54
    lwz r0, 0x2c(r31)
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
L_800BD3A0:
    li r9, 0x8
    lis r8, 0xcc01
    stb r9, -0x8000(r8)
    li r0, 0x30
    lwz r3, 0x40(r31)
    li r7, 0x40
    stb r0, -0x8000(r8)
    li r6, 0x10
    lwz r10, 0x44(r31)
    li r5, 0x1
    stw r3, -0x8000(r8)
    li r4, 0x1018
    lwz r3, 0x40(r31)
    stb r9, -0x8000(r8)
    lwz r0, 0x44(r31)
    stb r7, -0x8000(r8)
    stw r10, -0x8000(r8)
    stb r6, -0x8000(r8)
    sth r5, -0x8000(r8)
    sth r4, -0x8000(r8)
    stw r3, -0x8000(r8)
    stw r0, -0x8000(r8)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BD40C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r31, r3
    lwz r3, 0x2c(r3)
    opword  0x800D8E18  // lwz r0, lbl_8053A9D8@sda21(r0)
    cmplw r0, r3
    opword  0x41820014  // beq .L_800BD440
    li r4, 0xc0
    bl fn_8005FC54
    lwz r0, 0x2c(r31)
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
L_800BD440:
    opword  0x880D8E1C  // lbz r0, lbl_8053A9DC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820068  // beq .L_800BD4B0
    lbz r0, 0x48(r31)
    cmplwi r0, 0x0
    opword  0x4082005C  // bne .L_800BD4B0
    li r9, 0x8
    lis r8, 0xcc01
    stb r9, -0x8000(r8)
    li r0, 0x30
    lwz r3, 0x40(r31)
    li r7, 0x40
    stb r0, -0x8000(r8)
    li r6, 0x10
    lwz r10, 0x44(r31)
    li r5, 0x1
    stw r3, -0x8000(r8)
    li r4, 0x1018
    lwz r3, 0x40(r31)
    stb r9, -0x8000(r8)
    lwz r0, 0x44(r31)
    stb r7, -0x8000(r8)
    stw r10, -0x8000(r8)
    stb r6, -0x8000(r8)
    sth r5, -0x8000(r8)
    sth r4, -0x8000(r8)
    stw r3, -0x8000(r8)
    stw r0, -0x8000(r8)
L_800BD4B0:
    lwz r4, 0xc(r31)
    lis r3, lbl_80536C50@ha
    lbz r0, 0x34(r31)
    li r6, 0x8
    extrwi r4, r4, 3, 27
    lis r5, 0xcc01
    opword  0x908D8E48  // stw r4, lbl_8053AA08@sda21(r0)
    li r4, 0xa0
    addi r3, r3, lbl_80536C50@l
    cmplwi r0, 0x0
    stb r6, -0x8000(r5)
    stb r4, -0x8000(r5)
    lwz r0, 0x10c(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r5)
    opword  0x4082001C  // bne .L_800BD508
    stb r6, -0x8000(r5)
    li r0, 0xa1
    stb r0, -0x8000(r5)
    lwz r0, 0x110(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r5)
L_800BD508:
    li r0, 0x8
    lis r8, 0xcc01
    stb r0, -0x8000(r8)
    li r0, 0xa2
    lis r3, lbl_80536C50@ha
    lwz r4, 0x60(r31)
    stb r0, -0x8000(r8)
    addi r7, r3, lbl_80536C50@l
    lwz r6, 0x58(r31)
    li r3, 0x15
    lwz r0, 0x114(r7)
    li r5, 0x30
    clrlwi r0, r0, 1
    stw r0, -0x8000(r8)
    lwz r0, 0x0(r4)
    slwi r0, r0, 2
    lwzx r4, r6, r0
    stw r4, 0x104(r7)
    bl fn_8005B620
    lwz r4, 0x60(r31)
    lis r3, lbl_80536C50@ha
    addi r6, r3, lbl_80536C50@l
    lwz r7, 0x5c(r31)
    lwz r0, 0x0(r4)
    li r3, 0x16
    li r5, 0x24
    slwi r0, r0, 2
    lwzx r4, r7, r0
    stw r4, 0x108(r6)
    bl fn_8005B620
    lwz r3, 0xc(r31)
    lwz r6, 0x54(r31)
    lbz r5, 0x34(r31)
    rlwinm. r0, r3, 0, 22, 22
    lbz r4, 0x48(r31)
    rlwinm r3, r3, 0, 16, 19
    opword  0x90CD8E4C  // stw r6, lbl_8053AA0C@sda21(r0)
    opword  0x98AD8E50  // stb r5, lbl_8053AA10@sda21(r0)
    opword  0x988D8E1C  // stb r4, lbl_8053A9DC@sda21(r0)
    opword  0x906D8E54  // stw r3, lbl_8053AA14@sda21(r0)
    opword  0x4082006C  // bne .L_800BD614
    opword  0x880D8E51  // lbz r0, lbl_8053AA11@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800BD5BC
    bl fn_800E1318
L_800BD5BC:
    lhz r28, 0xa(r31)
    li r27, 0x0
    lwz r29, 0x38(r31)
    lwz r30, 0x3c(r31)
    opword  0x48000038  // b .L_800BD604
L_800BD5D0:
    clrlslwi r31, r27, 16, 2
    lwzx r3, r29, r31
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_800BD5F0
    lwz r12, 0x0(r3)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
L_800BD5F0:
    lwzx r3, r30, r31
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800BD600
    bl fn_800E3968
L_800BD600:
    addi r27, r27, 0x1
L_800BD604:
    clrlwi r0, r27, 16
    cmplw r0, r28
    opword  0x4180FFC4  // blt .L_800BD5D0
    opword  0x48000060  // b .L_800BD670
L_800BD614:
    lis r3, lbl_80536C50@ha
    li r4, 0x0
    addi r30, r3, lbl_80536C50@l
    lwz r3, 0x40(r30)
    lwz r3, 0x30(r3)
    bl fn_800D3168
    lwz r3, 0x40(r30)
    li r4, 0x0
    lwz r3, 0x30(r3)
    bl fn_800D31E8
    lhz r27, 0xa(r31)
    li r28, 0x0
    lwz r31, 0x3c(r31)
    opword  0x4800001C  // b .L_800BD664
L_800BD64C:
    clrlslwi r0, r28, 16, 2
    lwzx r3, r31, r0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800BD660
    bl fn_800E3968
L_800BD660:
    addi r28, r28, 0x1
L_800BD664:
    clrlwi r0, r28, 16
    cmplw r0, r27
    opword  0x4180FFE0  // blt .L_800BD64C
L_800BD670:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BD684(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x2c(r3)
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_800BD6BC
    li r4, 0xc0
    bl fn_8005FC54
    lwz r0, 0x2c(r31)
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
L_800BD6BC:
    li r10, 0x8
    lis r9, 0xcc01
    stb r10, -0x8000(r9)
    li r0, 0x30
    lwz r3, 0x40(r31)
    li r8, 0x40
    stb r0, -0x8000(r9)
    li r7, 0x10
    lwz r11, 0x44(r31)
    li r6, 0x1
    stw r3, -0x8000(r9)
    li r5, 0x1018
    lwz r4, 0x40(r31)
    mr r3, r31
    stb r10, -0x8000(r9)
    lwz r0, 0x44(r31)
    stb r8, -0x8000(r9)
    stw r11, -0x8000(r9)
    stb r7, -0x8000(r9)
    sth r6, -0x8000(r9)
    sth r5, -0x8000(r9)
    stw r4, -0x8000(r9)
    stw r0, -0x8000(r9)
    lwz r12, 0x0(r31)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BD73C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    mr r31, r3
    lwz r3, 0x2c(r3)
    stw r30, 0x18(r1)
    cmplwi r3, 0x0
    stw r29, 0x14(r1)
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
    opword  0x41820014  // beq .L_800BD77C
    li r4, 0xc0
    bl fn_8005FC54
    lwz r0, 0x2c(r31)
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
L_800BD77C:
    li r12, 0x8
    lis r11, 0xcc01
    stb r12, -0x8000(r11)
    li r0, 0x30
    lis r3, lbl_80536C50@ha
    lwz r5, 0x40(r31)
    stb r0, -0x8000(r11)
    li r10, 0x40
    lbz r0, 0x34(r31)
    li r9, 0x10
    stw r5, -0x8000(r11)
    li r8, 0x1
    cmplwi r0, 0x0
    lwz r4, 0xc(r31)
    stb r12, -0x8000(r11)
    li r7, 0x1018
    extrwi r5, r4, 3, 27
    lwz r30, 0x44(r31)
    stb r10, -0x8000(r11)
    li r4, 0xa0
    lwz r6, 0x40(r31)
    addi r3, r3, lbl_80536C50@l
    stw r30, -0x8000(r11)
    lwz r0, 0x44(r31)
    stb r9, -0x8000(r11)
    sth r8, -0x8000(r11)
    sth r7, -0x8000(r11)
    stw r6, -0x8000(r11)
    stw r0, -0x8000(r11)
    opword  0x90AD8E48  // stw r5, lbl_8053AA08@sda21(r0)
    stb r12, -0x8000(r11)
    stb r4, -0x8000(r11)
    lwz r0, 0x10c(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r11)
    opword  0x4082001C  // bne .L_800BD824
    stb r12, -0x8000(r11)
    li r0, 0xa1
    stb r0, -0x8000(r11)
    lwz r0, 0x110(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r11)
L_800BD824:
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0xa2
    lis r3, lbl_80536C50@ha
    lhz r30, 0xa(r31)
    stb r0, -0x8000(r4)
    addi r3, r3, lbl_80536C50@l
    lwz r31, 0x3c(r31)
    li r29, 0x0
    lwz r0, 0x114(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r4)
    opword  0x4800001C  // b .L_800BD874
L_800BD85C:
    clrlslwi r0, r29, 16, 2
    lwzx r3, r31, r0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800BD870
    bl fn_800E3968
L_800BD870:
    addi r29, r29, 0x1
L_800BD874:
    clrlwi r0, r29, 16
    cmplw r0, r30
    opword  0x4180FFE0  // blt .L_800BD85C
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BD89C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    lwz r3, 0x2c(r3)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    opword  0x800D8E18  // lwz r0, lbl_8053A9D8@sda21(r0)
    cmplw r0, r3
    opword  0x41820014  // beq .L_800BD8D8
    li r4, 0xc0
    bl fn_8005FC54
    lwz r0, 0x2c(r31)
    opword  0x900D8E18  // stw r0, lbl_8053A9D8@sda21(r0)
L_800BD8D8:
    opword  0x880D8E1C  // lbz r0, lbl_8053A9DC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820068  // beq .L_800BD948
    lbz r0, 0x48(r31)
    cmplwi r0, 0x0
    opword  0x4082005C  // bne .L_800BD948
    li r9, 0x8
    lis r8, 0xcc01
    stb r9, -0x8000(r8)
    li r0, 0x30
    lwz r3, 0x40(r31)
    li r7, 0x40
    stb r0, -0x8000(r8)
    li r6, 0x10
    lwz r10, 0x44(r31)
    li r5, 0x1
    stw r3, -0x8000(r8)
    li r4, 0x1018
    lwz r3, 0x40(r31)
    stb r9, -0x8000(r8)
    lwz r0, 0x44(r31)
    stb r7, -0x8000(r8)
    stw r10, -0x8000(r8)
    stb r6, -0x8000(r8)
    sth r5, -0x8000(r8)
    sth r4, -0x8000(r8)
    stw r3, -0x8000(r8)
    stw r0, -0x8000(r8)
L_800BD948:
    li r6, 0x8
    lis r5, 0xcc01
    stb r6, -0x8000(r5)
    li r4, 0xa0
    lis r3, lbl_80536C50@ha
    lbz r0, 0x34(r31)
    stb r4, -0x8000(r5)
    addi r3, r3, lbl_80536C50@l
    cmplwi r0, 0x0
    lwz r0, 0x10c(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r5)
    opword  0x4082001C  // bne .L_800BD994
    stb r6, -0x8000(r5)
    li r0, 0xa1
    stb r0, -0x8000(r5)
    lwz r0, 0x110(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r5)
L_800BD994:
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0xa2
    lis r3, lbl_80536C50@ha
    lhz r30, 0xa(r31)
    stb r0, -0x8000(r4)
    addi r3, r3, lbl_80536C50@l
    lwz r31, 0x3c(r31)
    li r29, 0x0
    lwz r0, 0x114(r3)
    clrlwi r0, r0, 1
    stw r0, -0x8000(r4)
    opword  0x4800001C  // b .L_800BD9E4
L_800BD9CC:
    clrlslwi r0, r29, 16, 2
    lwzx r3, r31, r0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800BD9E0
    bl fn_800E3968
L_800BD9E0:
    addi r29, r29, 0x1
L_800BD9E4:
    clrlwi r0, r29, 16
    cmplw r0, r30
    opword  0x4180FFE0  // blt .L_800BD9CC
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BDA0C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r3, 0x0
    li r5, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    opword  0x4182002C  // beq .L_800BDA54
    opword  0x40800018  // bge .L_800BDA44
    lis r4, 0x8000
    addi r0, r4, 0x1
    cmpw r3, r0
    opword  0x408001B4  // bge .L_800BDBF0
    opword  0x48000110  // b .L_800BDB50
L_800BDA44:
    lis r0, 0x4000
    cmpw r3, r0
    opword  0x41820078  // beq .L_800BDAC4
    opword  0x480001A0  // b .L_800BDBF0
L_800BDA54:
    li r3, 0x20
    bl fn_80084370
    mr. r31, r3
    opword  0x4182005C  // beq .L_800BDABC
    lis r4, lbl_8049A650@ha
    lis r3, lbl_8049BA0C@ha
    addi r0, r4, lbl_8049A650@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049BA0C@l
    lis r4, fn_800BDD1C@ha
    addi r3, r31, 0x4
    stw r0, 0x0(r31)
    addi r4, r4, fn_800BDD1C@l
    li r6, 0x4
    li r7, 0x2
    bl __construct_array
    lis r4, fn_800BDC68@ha
    addi r3, r31, 0xe
    addi r4, r4, fn_800BDC68@l
    li r5, 0x0
    li r6, 0x2
    li r7, 0x4
    bl __construct_array
    mr r3, r31
    bl fn_800D3470
L_800BDABC:
    mr r5, r31
    opword  0x48000130  // b .L_800BDBF0
L_800BDAC4:
    li r3, 0x4c
    bl fn_80084370
    mr. r31, r3
    opword  0x41820078  // beq .L_800BDB48
    lis r4, lbl_8049A650@ha
    lis r3, lbl_8049B660@ha
    addi r0, r4, lbl_8049A650@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B660@l
    lis r4, fn_800BDD1C@ha
    addi r3, r31, 0x4
    stw r0, 0x0(r31)
    addi r4, r4, fn_800BDD1C@l
    li r6, 0x4
    li r7, 0x2
    bl __construct_array
    lis r4, fn_800BDD1C@ha
    addi r3, r31, 0xc
    addi r4, r4, fn_800BDD1C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x2
    bl __construct_array
    lis r4, fn_800BDC68@ha
    addi r3, r31, 0x16
    addi r4, r4, fn_800BDC68@l
    li r5, 0x0
    li r6, 0x2
    li r7, 0x4
    bl __construct_array
    mr r3, r31
    bl fn_800D358C
L_800BDB48:
    mr r5, r31
    opword  0x480000A4  // b .L_800BDBF0
L_800BDB50:
    li r3, 0x28
    bl fn_80084370
    mr. r31, r3
    opword  0x41820090  // beq .L_800BDBEC
    lis r4, lbl_8049A650@ha
    lis r3, lbl_8049BA0C@ha
    addi r0, r4, lbl_8049A650@l
    mr r30, r31
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049BA0C@l
    lis r3, fn_800BDD1C@ha
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r4, r3, fn_800BDD1C@l
    addi r3, r31, 0x4
    li r6, 0x4
    li r7, 0x2
    bl __construct_array
    lis r4, fn_800BDC68@ha
    addi r3, r31, 0xe
    addi r4, r4, fn_800BDC68@l
    li r5, 0x0
    li r6, 0x2
    li r7, 0x4
    bl __construct_array
    mr r3, r31
    bl fn_800D3470
    lis r3, lbl_8049B6E8@ha
    lis r4, fn_800BDD1C@ha
    addi r0, r3, lbl_8049B6E8@l
    li r5, 0x0
    stw r0, 0x0(r30)
    addi r3, r30, 0x20
    addi r4, r4, fn_800BDD1C@l
    li r6, 0x4
    li r7, 0x2
    bl __construct_array
    mr r3, r30
    bl fn_800D34D8
L_800BDBEC:
    mr r5, r31
L_800BDBF0:
    lwz r0, 0x14(r1)
    mr r3, r5
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BDC0C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800BDC50
    lis r3, lbl_8049BA0C@ha
    addi r0, r3, lbl_8049BA0C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800BDC40
    lis r3, lbl_8049A650@ha
    addi r0, r3, lbl_8049A650@l
    stw r0, 0x0(r31)
L_800BDC40:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800BDC50
    mr r3, r31
    bl dtor_80084580
L_800BDC50:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BDC68(void)
{
    nofralloc
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

ASM void fn_800BDD1C(void)
{
    nofralloc
    blr
}

ASM void fn_800BDD20(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800BDD50
    lis r5, lbl_8049A650@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049A650@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800BDD50
    bl dtor_80084580
L_800BDD50:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BDD68(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lis r0, 0x800
    cmpw r3, r0
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    opword  0x41820014  // beq .L_800BDD98
    opword  0x408000A0  // bge .L_800BDE28
    cmpwi r3, 0x0
    opword  0x41820098  // beq .L_800BDE28
    opword  0x48000094  // b .L_800BDE28
L_800BDD98:
    li r3, 0x6c
    bl fn_80084370
    mr. r31, r3
    opword  0x4182007C  // beq .L_800BDE20
    lis r4, lbl_8049A5E4@ha
    lis r3, lbl_8049B5F4@ha
    addi r0, r4, lbl_8049A5E4@l
    mr r30, r31
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B5F4@l
    lis r3, fn_800BDF28@ha
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r4, r3, fn_800BDF28@l
    addi r3, r31, 0x8
    li r6, 0x6
    li r7, 0x8
    bl __construct_array
    mr r3, r31
    bl fn_800D3660
    lis r3, lbl_8049B588@ha
    lis r4, lbl_8046353C@ha
    addi r0, r3, lbl_8049B588@l
    stw r0, 0x0(r30)
    mr r3, r30
    lbzu r0, lbl_8046353C@l(r4)
    stb r0, 0x5c(r30)
    lfs fp0, 0x4(r4)
    stfs fp0, 0x60(r30)
    lfs fp0, 0x8(r4)
    stfs fp0, 0x64(r30)
    lfs fp0, 0xc(r4)
    stfs fp0, 0x68(r30)
    bl fn_800D3690
L_800BDE20:
    mr r3, r31
    opword  0x48000090  // b .L_800BDEB4
L_800BDE28:
    li r3, 0x6c
    bl fn_80084370
    mr. r31, r3
    opword  0x4182007C  // beq .L_800BDEB0
    lis r4, lbl_8049A5E4@ha
    lis r3, lbl_8049B5F4@ha
    addi r0, r4, lbl_8049A5E4@l
    mr r30, r31
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B5F4@l
    lis r3, fn_800BDF28@ha
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r4, r3, fn_800BDF28@l
    addi r3, r30, 0x8
    li r6, 0x6
    li r7, 0x8
    bl __construct_array
    mr r3, r30
    bl fn_800D3660
    lis r3, lbl_8049B51C@ha
    lis r4, lbl_8046353C@ha
    addi r0, r3, lbl_8049B51C@l
    stw r0, 0x0(r31)
    mr r3, r31
    lbzu r0, lbl_8046353C@l(r4)
    stb r0, 0x5c(r31)
    lfs fp0, 0x4(r4)
    stfs fp0, 0x60(r31)
    lfs fp0, 0x8(r4)
    stfs fp0, 0x64(r31)
    lfs fp0, 0xc(r4)
    stfs fp0, 0x68(r31)
    bl fn_800D36B0
L_800BDEB0:
    mr r3, r31
L_800BDEB4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BDECC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800BDF10
    lis r3, lbl_8049B5F4@ha
    addi r0, r3, lbl_8049B5F4@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800BDF00
    lis r3, lbl_8049A5E4@ha
    addi r0, r3, lbl_8049A5E4@l
    stw r0, 0x0(r31)
L_800BDF00:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800BDF10
    mr r3, r31
    bl dtor_80084580
L_800BDF10:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BDF28(void)
{
    nofralloc
    lis r4, lbl_80463450@ha
    lwz r0, lbl_80463450@l(r4)
    stw r0, 0x0(r3)
    lbz r0, 0x2(r3)
    sth r0, 0x4(r3)
    blr
}

ASM void fn_800BDF40(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800BDF70
    lis r5, lbl_8049A5E4@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049A5E4@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800BDF70
    bl dtor_80084580
L_800BDF70:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BDF88(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r3, 0x1
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r31, 0xc(r1)
    opword  0x41810090  // bgt .L_800BE030
    li r3, 0x1c
    bl fn_80084370
    mr. r31, r3
    opword  0x41820078  // beq .L_800BE028
    lis r4, lbl_8049B930@ha
    lis r3, lbl_8049B364@ha
    addi r0, r4, lbl_8049B930@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B364@l
    lis r4, fn_800BE630@ha
    addi r3, r31, 0xa
    stw r0, 0x0(r31)
    addi r4, r4, fn_800BE630@l
    li r6, 0x4
    li r7, 0x1
    bl __construct_array
    lis r4, fn_800BE3F0@ha
    addi r3, r31, 0xe
    addi r4, r4, fn_800BE3F0@l
    li r5, 0x0
    li r6, 0x8
    li r7, 0x1
    bl __construct_array
    lis r4, fn_800BE30C@ha
    addi r3, r31, 0x18
    addi r4, r4, fn_800BE30C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x1
    bl __construct_array
    mr r3, r31
    bl fn_800D3898
L_800BE028:
    mr r0, r31
    opword  0x480002B8  // b .L_800BE2E4
L_800BE030:
    cmpwi r3, 0x2
    opword  0x408200E4  // bne .L_800BE118
    li r3, 0x6c
    bl fn_80084370
    mr. r31, r3
    opword  0x418200CC  // beq .L_800BE110
    lis r4, lbl_8049B930@ha
    lis r3, lbl_8049B288@ha
    addi r0, r4, lbl_8049B930@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B288@l
    lis r4, fn_800BE630@ha
    addi r3, r31, 0xc
    stw r0, 0x0(r31)
    addi r4, r4, fn_800BE630@l
    li r6, 0x4
    li r7, 0x2
    bl __construct_array
    lis r4, fn_800BE308@ha
    addi r3, r31, 0x14
    addi r4, r4, fn_800BE308@l
    li r5, 0x0
    li r6, 0x8
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE3F0@ha
    addi r3, r31, 0x35
    addi r4, r4, fn_800BE3F0@l
    li r5, 0x0
    li r6, 0x8
    li r7, 0x2
    bl __construct_array
    lis r4, fn_800BDD1C@ha
    addi r3, r31, 0x45
    addi r4, r4, fn_800BDD1C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE2FC@ha
    addi r3, r31, 0x59
    addi r4, r4, fn_800BE2FC@l
    li r5, 0x0
    li r6, 0x1
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE30C@ha
    addi r3, r31, 0x60
    addi r4, r4, fn_800BE30C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x2
    bl __construct_array
    mr r3, r31
    bl fn_800D38C0
L_800BE110:
    mr r0, r31
    opword  0x480001D0  // b .L_800BE2E4
L_800BE118:
    cmpwi r3, 0x4
    opword  0x418100E4  // bgt .L_800BE200
    li r3, 0x94
    bl fn_80084370
    mr. r31, r3
    opword  0x418200CC  // beq .L_800BE1F8
    lis r4, lbl_8049B930@ha
    lis r3, lbl_8049B1AC@ha
    addi r0, r4, lbl_8049B930@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B1AC@l
    lis r4, fn_800BE630@ha
    addi r3, r31, 0x10
    stw r0, 0x0(r31)
    addi r4, r4, fn_800BE630@l
    li r6, 0x4
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE3F0@ha
    addi r3, r31, 0x21
    addi r4, r4, fn_800BE3F0@l
    li r5, 0x0
    li r6, 0x8
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE308@ha
    addi r3, r31, 0x42
    addi r4, r4, fn_800BE308@l
    li r5, 0x0
    li r6, 0x8
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BDD1C@ha
    addi r3, r31, 0x62
    addi r4, r4, fn_800BDD1C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE2FC@ha
    addi r3, r31, 0x7a
    addi r4, r4, fn_800BE2FC@l
    li r5, 0x0
    li r6, 0x1
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE30C@ha
    addi r3, r31, 0x80
    addi r4, r4, fn_800BE30C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x4
    bl __construct_array
    mr r3, r31
    bl fn_800D39E0
L_800BE1F8:
    mr r0, r31
    opword  0x480000E8  // b .L_800BE2E4
L_800BE200:
    cmpwi r3, 0x10
    opword  0x418100E0  // bgt .L_800BE2E4
    li r3, 0x174
    bl fn_80084370
    mr. r31, r3
    opword  0x418200CC  // beq .L_800BE2E0
    lis r4, lbl_8049B930@ha
    lis r3, lbl_8049B0D0@ha
    addi r0, r4, lbl_8049B930@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B0D0@l
    lis r4, fn_800BE630@ha
    addi r3, r31, 0x18
    stw r0, 0x0(r31)
    addi r4, r4, fn_800BE630@l
    li r6, 0x4
    li r7, 0x10
    bl __construct_array
    lis r4, fn_800BE3F0@ha
    addi r3, r31, 0x59
    addi r4, r4, fn_800BE3F0@l
    li r5, 0x0
    li r6, 0x8
    li r7, 0x10
    bl __construct_array
    lis r4, fn_800BE308@ha
    addi r3, r31, 0xda
    addi r4, r4, fn_800BE308@l
    li r5, 0x0
    li r6, 0x8
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BDD1C@ha
    addi r3, r31, 0xfa
    addi r4, r4, fn_800BDD1C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE2FC@ha
    addi r3, r31, 0x12a
    addi r4, r4, fn_800BE2FC@l
    li r5, 0x0
    li r6, 0x1
    li r7, 0x4
    bl __construct_array
    lis r4, fn_800BE30C@ha
    addi r3, r31, 0x130
    addi r4, r4, fn_800BE30C@l
    li r5, 0x0
    li r6, 0x4
    li r7, 0x10
    bl __construct_array
    mr r3, r31
    bl fn_800D3B40
L_800BE2E0:
    mr r0, r31
L_800BE2E4:
    mr r3, r0
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE2FC(void)
{
    nofralloc
    opword  0x88028C40  // lbz r0, lbl_8053BBE0@sda21(r0)
    stb r0, 0x0(r3)
    blr
}

ASM void fn_800BE308(void)
{
    nofralloc
    blr
}

ASM void fn_800BE30C(void)
{
    nofralloc
    li r0, 0x0
    lis r4, lbl_80463504@ha
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbzu r0, lbl_80463504@l(r4)
    clrrwi r5, r5, 2
    or r0, r5, r0
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbz r0, 0x1(r4)
    rlwinm r5, r5, 0, 30, 27
    slwi r0, r0, 2
    or r0, r5, r0
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbz r0, 0x2(r4)
    rlwinm r5, r5, 0, 28, 24
    slwi r0, r0, 4
    or r0, r5, r0
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbz r0, 0x3(r4)
    rlwinm r5, r5, 0, 23, 18
    slwi r0, r0, 9
    or r0, r5, r0
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbz r0, 0x4(r4)
    rlwinm r5, r5, 0, 19, 15
    slwi r0, r0, 13
    or r0, r5, r0
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbz r0, 0x5(r4)
    rlwinm r5, r5, 0, 16, 12
    slwi r0, r0, 16
    or r0, r5, r0
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbz r0, 0x6(r4)
    rlwinm r5, r5, 0, 12, 10
    slwi r0, r0, 20
    or r0, r5, r0
    stw r0, 0x0(r3)
    lwz r5, 0x0(r3)
    lbz r0, 0x7(r4)
    rlwinm r5, r5, 0, 13, 11
    slwi r0, r0, 19
    or r0, r5, r0
    stw r0, 0x0(r3)
    lbz r0, 0x8(r4)
    lwz r5, 0x0(r3)
    slwi r0, r0, 7
    rlwinm r4, r5, 0, 25, 22
    or r0, r4, r0
    stw r0, 0x0(r3)
    blr
}

ASM void fn_800BE3F0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_804634F0@ha
    stw r0, 0x14(r1)
    addi r4, r4, lbl_804634F0@l
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_800BE458
    opword  0x38628C2C  // li r3, lbl_8053BBCC@sda21
    lbz r4, 0x7(r31)
    lbz r0, 0x1(r3)
    mr r3, r31
    rlwinm r4, r4, 0, 30, 27
    slwi r0, r0, 2
    or r0, r4, r0
    stb r0, 0x7(r31)
    lbz r4, 0x7(r31)
    opword  0x88028C2C  // lbz r0, lbl_8053BBCC@sda21(r0)
    clrrwi r4, r4, 2
    or r0, r4, r0
    stb r0, 0x7(r31)
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE458(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    lbz r6, 0x5(r4)
    stw r31, 0xc(r1)
    clrlslwi r0, r6, 24, 2
    cmplwi r6, 0x1
    lbz r5, 0x1(r3)
    lbz r9, 0x9(r4)
    rlwinm r5, r5, 0, 30, 28
    lbz r8, 0x8(r4)
    or r0, r5, r0
    lbz r7, 0x6(r4)
    stb r0, 0x1(r3)
    lbz r0, 0x7(r4)
    opword  0x4181002C  // bgt .L_800BE4B8
    lbz r5, 0x1(r3)
    clrlslwi r0, r0, 24, 4
    rlwinm r5, r5, 0, 28, 25
    or r0, r5, r0
    stb r0, 0x1(r3)
    lbz r0, 0x1(r3)
    clrrwi r0, r0, 2
    or r0, r0, r7
    stb r0, 0x1(r3)
    opword  0x48000020  // b .L_800BE4D4
L_800BE4B8:
    lbz r0, 0x1(r3)
    rlwimi r0, r6, 3, 26, 27
    stb r0, 0x1(r3)
    lbz r0, 0x1(r3)
    clrrwi r0, r0, 2
    ori r0, r0, 0x3
    stb r0, 0x1(r3)
L_800BE4D4:
    lbz r0, 0x1(r3)
    clrlslwi r5, r8, 24, 3
    clrlslwi r10, r9, 24, 6
    lbz r12, 0xc(r4)
    rlwinm r6, r0, 0, 29, 27
    lbz r0, 0xe(r4)
    or r5, r6, r5
    lbz r6, 0x1(r4)
    stb r5, 0x1(r3)
    clrlslwi r9, r12, 24, 7
    lbz r5, 0x3(r4)
    slwi r8, r6, 4
    lbz r11, 0x1(r3)
    cmplwi r0, 0x1
    lbz r7, 0x2(r4)
    slwi r6, r5, 4
    rlwimi r10, r11, 0, 26, 31
    lbz r5, 0x4(r4)
    stb r10, 0x1(r3)
    or r7, r8, r7
    or r6, r6, r5
    lbz r5, 0xa(r4)
    stb r7, 0x2(r3)
    extrwi r10, r12, 7, 24
    lbz r7, 0xb(r4)
    slwi r5, r5, 5
    stb r6, 0x3(r3)
    clrlslwi r11, r7, 24, 2
    lbz r8, 0xd(r4)
    lbz r6, 0x6(r3)
    clrlslwi r7, r0, 24, 2
    lbz r31, 0x10(r4)
    clrlslwi r8, r8, 24, 4
    rlwimi r5, r6, 0, 27, 31
    lbz r6, 0x12(r4)
    stb r5, 0x6(r3)
    lbz r5, 0x11(r4)
    lbz r12, 0x6(r3)
    rlwinm r12, r12, 0, 30, 26
    or r11, r12, r11
    lbz r12, 0xf(r4)
    stb r11, 0x6(r3)
    lbz r4, 0x6(r3)
    clrrwi r4, r4, 2
    or r4, r4, r10
    stb r4, 0x6(r3)
    lbz r4, 0x7(r3)
    rlwimi r9, r4, 0, 25, 31
    stb r9, 0x7(r3)
    lbz r4, 0x7(r3)
    rlwinm r4, r4, 0, 28, 24
    or r4, r4, r8
    stb r4, 0x7(r3)
    lbz r4, 0x5(r3)
    rlwinm r4, r4, 0, 30, 28
    or r4, r4, r7
    stb r4, 0x5(r3)
    opword  0x4181002C  // bgt .L_800BE5E4
    lbz r4, 0x5(r3)
    clrlslwi r0, r31, 24, 4
    clrrwi r4, r4, 2
    or r4, r4, r12
    stb r4, 0x5(r3)
    lbz r4, 0x5(r3)
    rlwinm r4, r4, 0, 28, 25
    or r0, r4, r0
    stb r0, 0x5(r3)
    opword  0x48000020  // b .L_800BE600
L_800BE5E4:
    lbz r4, 0x5(r3)
    rlwimi r4, r0, 3, 26, 27
    stb r4, 0x5(r3)
    lbz r0, 0x5(r3)
    clrrwi r0, r0, 2
    ori r0, r0, 0x3
    stb r0, 0x5(r3)
L_800BE600:
    lbz r7, 0x5(r3)
    clrlslwi r4, r5, 24, 3
    clrlslwi r0, r6, 24, 6
    rlwinm r5, r7, 0, 29, 27
    or r4, r5, r4
    stb r4, 0x5(r3)
    lbz r4, 0x5(r3)
    rlwimi r0, r4, 0, 26, 31
    stb r0, 0x5(r3)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE630(void)
{
    nofralloc
    opword  0x80028C14  // lwz r0, lbl_8053BBB4@sda21(r0)
    stw r0, 0x0(r3)
    blr
}

ASM void fn_800BE63C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800BE66C
    lis r5, lbl_8049B930@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049B930@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800BE66C
    bl dtor_80084580
L_800BE66C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE684(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r3, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x41820098  // beq .L_800BE730
    li r3, 0x7c
    bl fn_80084370
    mr. r31, r3
    opword  0x41820080  // beq .L_800BE728
    lis r4, lbl_8049A598@ha
    lis r3, lbl_8049B8E4@ha
    addi r0, r4, lbl_8049A598@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049B8E4@l
    lis r4, fn_800BE828@ha
    addi r3, r31, 0x5
    stw r0, 0x0(r31)
    addi r4, r4, fn_800BE828@l
    li r6, 0x4
    li r7, 0x4
    bl __construct_array
    lis r3, fn_800BE7F0@ha
    lis r5, fn_800BE7B4@ha
    addi r4, r3, fn_800BE7F0@l
    li r6, 0x1c
    addi r3, r31, 0x18
    addi r5, r5, fn_800BE7B4@l
    li r7, 0x3
    bl __construct_array
    lis r3, fn_800BE7A8@ha
    lis r5, fn_800BE76C@ha
    addi r4, r3, fn_800BE7A8@l
    li r6, 0x4
    addi r3, r31, 0x6c
    addi r5, r5, fn_800BE76C@l
    li r7, 0x4
    bl __construct_array
    mr r3, r31
    bl fn_800D3DB4
L_800BE728:
    mr r3, r31
    opword  0x4800002C  // b .L_800BE758
L_800BE730:
    li r3, 0x4
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800BE758
    lis r5, lbl_8049A598@ha
    lis r4, lbl_8049A54C@ha
    addi r0, r5, lbl_8049A598@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049A54C@l
    stw r0, 0x0(r3)
L_800BE758:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE76C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820010  // beq .L_800BE790
    extsh. r0, r4
    opword  0x40810008  // ble .L_800BE790
    bl dtor_80084580
L_800BE790:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE7A8(void)
{
    nofralloc
    opword  0x80028C24  // lwz r0, lbl_8053BBC4@sda21(r0)
    stw r0, 0x0(r3)
    blr
}

ASM void fn_800BE7B4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820010  // beq .L_800BE7D8
    extsh. r0, r4
    opword  0x40810008  // ble .L_800BE7D8
    bl dtor_80084580
L_800BE7D8:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE7F0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_804634D4@ha
    stw r0, 0x14(r1)
    addi r4, r4, lbl_804634D4@l
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_800E48EC
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE828(void)
{
    nofralloc
    opword  0x80028C18  // lwz r0, lbl_8053BBB8@sda21(r0)
    stw r0, 0x0(r3)
    blr
}

ASM void fn_800BE834(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800BE864
    lis r5, lbl_8049A598@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049A598@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800BE864
    bl dtor_80084580
L_800BE864:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BE87C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r3, 0x0
    li r5, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x408200A0  // bne .L_800BE934
    clrlwi. r0, r4, 31
    opword  0x41820030  // beq .L_800BE8CC
    li r3, 0x4
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x41820164  // beq .L_800BEA10
    lis r5, lbl_8049A4D0@ha
    lis r4, lbl_8049B868@ha
    addi r0, r5, lbl_8049A4D0@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049B868@l
    stw r0, 0x0(r3)
    opword  0x48000148  // b .L_800BEA10
L_800BE8CC:
    rlwinm. r0, r4, 0, 30, 30
    opword  0x41820030  // beq .L_800BE900
    li r3, 0x4
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x41820130  // beq .L_800BEA10
    lis r5, lbl_8049A4D0@ha
    lis r4, lbl_8049B7EC@ha
    addi r0, r5, lbl_8049A4D0@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049B7EC@l
    stw r0, 0x0(r3)
    opword  0x48000114  // b .L_800BEA10
L_800BE900:
    rlwinm. r0, r4, 0, 29, 29
    opword  0x41820030  // beq .L_800BE934
    li r3, 0x4
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x418200FC  // beq .L_800BEA10
    lis r5, lbl_8049A4D0@ha
    lis r4, lbl_8049B770@ha
    addi r0, r5, lbl_8049A4D0@l
    stw r0, 0x0(r3)
    addi r0, r4, lbl_8049B770@l
    stw r0, 0x0(r3)
    opword  0x480000E0  // b .L_800BEA10
L_800BE934:
    subis r0, r3, 0x1000
    cmplwi r0, 0x0
    opword  0x40820070  // bne .L_800BE9AC
    li r3, 0x40
    bl fn_80084370
    mr. r31, r3
    opword  0x41820058  // beq .L_800BE9A4
    lis r4, lbl_8049A4D0@ha
    lis r3, lbl_8049AFD8@ha
    addi r0, r4, lbl_8049A4D0@l
    stw r0, 0x0(r31)
    addi r0, r3, lbl_8049AFD8@l
    lis r4, lbl_80463510@ha
    addi r3, r31, 0x4
    stw r0, 0x0(r31)
    addi r4, r4, lbl_80463510@l
    bl fn_800E4910
    opword  0xA0A28C42  // lhz r5, lbl_8053BBE2@sda21(r0)
    li r4, 0x0
    opword  0xA0028C44  // lhz r0, lbl_8053BBE4@sda21(r0)
    mr r3, r31
    sth r5, 0x30(r31)
    stb r4, 0x32(r31)
    stb r4, 0x33(r31)
    opword  0x80828C34  // lwz r4, lbl_8053BBD4@sda21(r0)
    stw r4, 0x34(r31)
    sth r0, 0x38(r31)
    bl fn_800D3DE4
L_800BE9A4:
    mr r5, r31
    opword  0x48000064  // b .L_800BEA0C
L_800BE9AC:
    subis r0, r3, 0x2000
    cmplwi r0, 0x0
    opword  0x40820058  // bne .L_800BEA0C
    li r3, 0x10
    bl fn_80084370
    mr. r31, r3
    opword  0x41820044  // beq .L_800BEA08
    lis r5, lbl_8049A4D0@ha
    lis r4, lbl_8049B054@ha
    addi r0, r5, lbl_8049A4D0@l
    opword  0xA0A28C42  // lhz r5, lbl_8053BBE2@sda21(r0)
    stw r0, 0x0(r31)
    addi r0, r4, lbl_8049B054@l
    li r4, 0x0
    stw r0, 0x0(r31)
    opword  0xA0028C44  // lhz r0, lbl_8053BBE4@sda21(r0)
    sth r5, 0x4(r31)
    stb r4, 0x6(r31)
    stb r4, 0x7(r31)
    opword  0x80828C34  // lwz r4, lbl_8053BBD4@sda21(r0)
    stw r4, 0x8(r31)
    sth r0, 0xc(r31)
    bl fn_800D3DC0
L_800BEA08:
    mr r5, r31
L_800BEA0C:
    mr r3, r5
L_800BEA10:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BEA24(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800BEA54
    lis r5, lbl_8049A4D0@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049A4D0@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800BEA54
    bl dtor_80084580
L_800BEA54:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BEA6C(void)
{
    nofralloc
    cmpwi r3, 0x0
    li r5, 0x0
    opword  0x4182002C  // beq .L_800BEAA0
    opword  0x40800018  // bge .L_800BEA90
    lis r4, 0x8000
    addi r0, r4, 0x1
    cmpw r3, r0
    opword  0x4080002C  // bge .L_800BEAB4
    opword  0x48000024  // b .L_800BEAB0
L_800BEA90:
    lis r0, 0x4000
    cmpw r3, r0
    opword  0x41820010  // beq .L_800BEAA8
    opword  0x48000018  // b .L_800BEAB4
L_800BEAA0:
    li r5, 0x20
    opword  0x48000010  // b .L_800BEAB4
L_800BEAA8:
    li r5, 0x4c
    opword  0x48000008  // b .L_800BEAB4
L_800BEAB0:
    li r5, 0x28
L_800BEAB4:
    mr r3, r5
    blr
}

ASM void fn_800BEABC(void)
{
    nofralloc
    lis r0, 0x800
    cmpw r3, r0
    opword  0x41820014  // beq .L_800BEAD8
    opword  0x40800018  // bge .L_800BEAE0
    cmpwi r3, 0x0
    opword  0x41820010  // beq .L_800BEAE0
    opword  0x4800000C  // b .L_800BEAE0
L_800BEAD8:
    li r3, 0x6c
    blr
L_800BEAE0:
    li r3, 0x6c
    blr
}

ASM void fn_800BEAE8(void)
{
    nofralloc
    cmpwi r3, 0x1
    li r0, 0x0
    opword  0x4181000C  // bgt .L_800BEAFC
    li r0, 0x1c
    opword  0x48000030  // b .L_800BEB28
L_800BEAFC:
    cmpwi r3, 0x2
    opword  0x4082000C  // bne .L_800BEB0C
    li r0, 0x6c
    opword  0x48000020  // b .L_800BEB28
L_800BEB0C:
    cmpwi r3, 0x4
    opword  0x4181000C  // bgt .L_800BEB1C
    li r0, 0x94
    opword  0x48000010  // b .L_800BEB28
L_800BEB1C:
    cmpwi r3, 0x10
    opword  0x41810008  // bgt .L_800BEB28
    li r0, 0x174
L_800BEB28:
    mr r3, r0
    blr
}

ASM void fn_800BEB30(void)
{
    nofralloc
    cmpwi r3, 0x0
    li r3, 0x4
    beqlr
    li r3, 0x7c
    blr
}

ASM void fn_800BEB44(void)
{
    nofralloc
    cmplwi r3, 0x0
    li r5, 0x0
    opword  0x40820034  // bne .L_800BEB80
    clrlwi. r0, r4, 31
    opword  0x4182000C  // beq .L_800BEB60
    li r5, 0x4
    opword  0x48000048  // b .L_800BEBA4
L_800BEB60:
    rlwinm. r0, r4, 0, 30, 30
    opword  0x4182000C  // beq .L_800BEB70
    li r5, 0x4
    opword  0x48000038  // b .L_800BEBA4
L_800BEB70:
    rlwinm. r0, r4, 0, 29, 29
    opword  0x41820030  // beq .L_800BEBA4
    li r5, 0x4
    opword  0x48000028  // b .L_800BEBA4
L_800BEB80:
    subis r0, r3, 0x1000
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800BEB94
    li r5, 0x40
    opword  0x48000014  // b .L_800BEBA4
L_800BEB94:
    subis r0, r3, 0x2000
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_800BEBA4
    li r5, 0x10
L_800BEBA4:
    mr r3, r5
    blr
}

ASM void fn_800BEBAC(void)
{
    nofralloc
    li r6, 0x0
    lis r4, 0x1
    stw r6, 0x8(r3)
    li r5, 0x1
    subi r0, r4, 0x1
    stw r6, 0x4(r3)
    stw r6, 0xc(r3)
    stw r5, 0x10(r3)
    sth r0, 0x14(r3)
    stw r6, 0x18(r3)
    stw r6, 0x20(r3)
    stw r6, 0x24(r3)
    stw r6, 0x28(r3)
    stw r6, 0x2c(r3)
    stw r6, 0x30(r3)
    stw r6, 0x34(r3)
    stw r6, 0x38(r3)
    stw r6, 0x3c(r3)
    stw r6, 0x48(r3)
    blr
}

ASM void fn_800BEBFC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r3, 0x28(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    mr r31, r3
    lwz r3, 0x24(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x28(r12)
    mtctr r12
    bctrl
    mr r30, r3
    lwz r3, 0x2c(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x44(r12)
    mtctr r12
    bctrl
    add r31, r31, r3
    lwz r3, 0x30(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    add r31, r31, r3
    lwz r3, 0x34(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    add r3, r31, r3
    addi r0, r3, 0x1f
    add r0, r30, r0
    clrrwi r3, r0, 5
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BECB8(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BECC0(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BECC8(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BECD0(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BECD8(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BECE0(void)
{
    nofralloc
    blr
}

ASM void fn_800BECE4(void)
{
    nofralloc
    li r3, 0x2
    blr
}

ASM void fn_800BECEC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BECF4(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BECFC(void)
{
    nofralloc
    blr
}

ASM void fn_800BED00(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r30, r3
    addi r3, r4, lbl_80536C50@l
    lwz r4, 0x3c(r3)
    lwz r0, 0x10(r4)
    clrlwi. r0, r0, 31
    opword  0x408202BC  // bne .L_800BEFE4
    lwz r0, 0x20(r30)
    stw r0, 0x34(r4)
    lwz r3, 0x3c(r3)
    lwz r31, 0x20(r3)
    mr r3, r31
    bl fn_800BC308
    lwz r3, 0x2c(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r3, 0x30(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r3, 0x34(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x70(r12)
    mtctr r12
    bctrl
    clrlwi r26, r3, 24
    lwz r3, 0x30(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    mr r27, r3
    lwz r3, 0x2c(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x98(r12)
    mtctr r12
    bctrl
    mr r28, r3
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    mr r29, r3
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    clrlwi r3, r3, 24
    mr r4, r29
    mr r5, r28
    mr r6, r27
    mr r7, r26
    bl fn_800D06F0
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    li r8, 0x10
    li r7, 0x0
    li r6, 0x9
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r3, 0x0(r4)
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    li r8, 0x10
    li r7, 0x0
    li r6, 0x3f
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r3, 0x0(r4)
    mr r3, r31
    bl fn_800BC368
L_800BEFE4:
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BEFF8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r30, r3
    lwz r31, 0x48(r3)
    mr r3, r31
    bl fn_800BC308
    lwz r3, 0x2c(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r3, 0x30(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r3, 0x34(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x70(r12)
    mtctr r12
    bctrl
    clrlwi r26, r3, 24
    lwz r3, 0x30(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    mr r27, r3
    lwz r3, 0x2c(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x98(r12)
    mtctr r12
    bctrl
    mr r28, r3
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    mr r29, r3
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    clrlwi r3, r3, 24
    mr r4, r29
    mr r5, r28
    mr r6, r27
    mr r7, r26
    bl fn_800D06F0
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    li r8, 0x10
    li r7, 0x0
    li r6, 0x9
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r3, 0x0(r4)
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    li r8, 0x10
    li r7, 0x0
    li r6, 0x3f
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r3, 0x0(r4)
    mr r3, r31
    bl fn_800BC368
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BF2CC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r4, r4, lbl_80536C50@l
    lwz r0, 0x34(r4)
    lwz r5, 0x10(r3)
    rlwinm. r0, r0, 0, 30, 30
    stw r5, 0x54(r4)
    opword  0x4082001C  // bne .L_800BF30C
    lwz r3, 0x28(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x5c(r12)
    mtctr r12
    bctrl
    bl fn_800C1978
L_800BF30C:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BF31C(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BF324(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r4, lbl_80536C50@l
    lwz r0, 0x34(r3)
    lwz r4, 0x10(r31)
    rlwinm. r0, r0, 0, 30, 30
    stw r4, 0x54(r3)
    opword  0x40820024  // bne .L_800BF374
    lwz r3, 0x48(r31)
    bl fn_800BC2DC
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x5c(r12)
    mtctr r12
    bctrl
    bl fn_800C1978
L_800BF374:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BF388(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    addi r31, r4, lbl_80536C50@l
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r0, 0x20(r3)
    lwz r3, 0x3c(r31)
    stw r0, 0x34(r3)
    lwz r3, 0x3c(r31)
    lwz r3, 0x20(r3)
    bl fn_800BC3C4
    lwz r3, 0x2c(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x28(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    lwz r3, 0x3c(r31)
    lwz r3, 0x20(r3)
    bl fn_800BC424
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BF420(void)
{
    nofralloc
    blr
}

ASM void fn_800BF424(void)
{
    nofralloc
    blr
}

ASM void fn_800BF428(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r5, lbl_80536C50@ha
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    addi r31, r5, lbl_80536C50@l
    mr r29, r3
    mr r30, r4
    lwz r3, 0x3c(r31)
    lwz r4, 0x28(r3)
    lwz r0, 0x20(r4)
    cmplwi r0, 0x0
    opword  0x418201B8  // beq .L_800BF610
    bl fn_800BC784
    lwz r3, 0x2c(r29)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r3, 0x30(r29)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r3, 0x34(r29)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    rlwinm. r0, r30, 0, 6, 6
    opword  0x4182012C  // beq .L_800BF5D8
    lwz r3, 0x30(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    mr r27, r3
    lwz r3, 0x2c(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x98(r12)
    mtctr r12
    bctrl
    mr r28, r3
    lwz r3, 0x28(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    clrlwi r3, r3, 24
    mr r4, r28
    mr r5, r27
    bl fn_800D0860
    lwz r3, 0x28(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    li r8, 0x10
    li r7, 0x0
    li r6, 0x3f
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r3, 0x0(r4)
L_800BF5D8:
    lwz r3, 0x28(r29)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r3, 0x24(r29)
    mr r4, r30
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r3, 0x3c(r31)
    bl fn_800BC7E8
L_800BF610:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BF624(void)
{
    nofralloc
    blr
}

ASM void fn_800BF628(void)
{
    nofralloc
    blr
}

ASM void fn_800BF62C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80536C50@ha
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r5, lbl_80536C50@l
    lwz r0, 0x34(r3)
    rlwinm. r0, r0, 0, 1, 1
    opword  0x4182001C  // beq .L_800BF66C
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    opword  0x48000018  // b .L_800BF680
L_800BF66C:
    lwz r3, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
L_800BF680:
    mr r3, r31
    bl fn_800BF718
    mr r3, r31
    bl fn_800BF700
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BF6A4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r5, r5, lbl_80536C50@l
    lwz r0, 0x34(r5)
    rlwinm. r0, r0, 0, 1, 1
    opword  0x4182001C  // beq .L_800BF6DC
    lwz r3, 0x28(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    opword  0x48000018  // b .L_800BF6F0
L_800BF6DC:
    lwz r3, 0x28(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
L_800BF6F0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BF700(void)
{
    nofralloc
    lwz r4, 0x8(r3)
    lwz r0, 0x40(r3)
    stw r0, 0x40(r4)
    lwz r0, 0x44(r3)
    stw r0, 0x44(r4)
    blr
}

ASM void fn_800BF718(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x34(r1)
    stmw r24, 0x10(r1)
    mr r30, r3
    addi r3, r4, lbl_80536C50@l
    lwz r0, 0x34(r3)
    rlwinm. r0, r0, 0, 1, 1
    opword  0x40820124  // bne .L_800BF860
    lwz r3, 0x28(r30)
    li r4, 0x7
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r31, 0x2(r3)
    li r4, 0x6
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r29, 0x2(r3)
    li r4, 0x5
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r28, 0x2(r3)
    li r4, 0x4
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r27, 0x2(r3)
    li r4, 0x3
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r26, 0x2(r3)
    li r4, 0x2
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r25, 0x2(r3)
    li r4, 0x1
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r24, 0x2(r3)
    li r4, 0x0
    lwz r3, 0x28(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lbz r4, 0x2(r3)
    clrlslwi r0, r28, 24, 6
    clrlslwi r3, r24, 24, 12
    clrlslwi r5, r25, 24, 18
    slwi r4, r4, 6
    slwi r6, r26, 24
    or r4, r4, r3
    clrlslwi r3, r29, 24, 12
    or r4, r5, r4
    or r0, r27, r0
    or r5, r6, r4
    clrlslwi r4, r31, 24, 18
    or r0, r3, r0
    stw r5, 0x40(r30)
    or r0, r4, r0
    stw r0, 0x44(r30)
    opword  0x4800013C  // b .L_800BF998
L_800BF860:
    lwz r3, 0x28(r30)
    li r4, 0x7
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r0, 0x4(r3)
    li r4, 0x6
    lwz r3, 0x28(r30)
    clrlwi r31, r0, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r0, 0x4(r3)
    li r4, 0x5
    lwz r3, 0x28(r30)
    clrlwi r24, r0, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r0, 0x4(r3)
    li r4, 0x4
    lwz r3, 0x28(r30)
    clrlwi r25, r0, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r0, 0x4(r3)
    li r4, 0x3
    lwz r3, 0x28(r30)
    clrlwi r26, r0, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r0, 0x4(r3)
    li r4, 0x2
    lwz r3, 0x28(r30)
    clrlwi r27, r0, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r0, 0x4(r3)
    li r4, 0x1
    lwz r3, 0x28(r30)
    clrlwi r28, r0, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r0, 0x4(r3)
    li r4, 0x0
    lwz r3, 0x28(r30)
    clrlwi r29, r0, 24
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lhz r4, 0x4(r3)
    clrlslwi r0, r25, 24, 6
    clrlslwi r3, r29, 24, 12
    clrlslwi r5, r28, 24, 18
    clrlslwi r4, r4, 24, 6
    slwi r6, r27, 24
    or r4, r4, r3
    clrlslwi r3, r24, 24, 12
    or r4, r5, r4
    or r0, r26, r0
    or r5, r6, r4
    clrlslwi r4, r31, 24, 18
    or r0, r3, r0
    stw r5, 0x40(r30)
    or r0, r4, r0
    stw r0, 0x44(r30)
L_800BF998:
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800BF9AC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BF9B4(void)
{
    nofralloc
    blr
}

ASM void fn_800BF9B8(void)
{
    nofralloc
    blr
}

ASM void fn_800BF9BC(void)
{
    nofralloc
    blr
}

ASM void fn_800BF9C0(void)
{
    nofralloc
    blr
}

ASM void fn_800BF9C4(void)
{
    nofralloc
    blr
}

ASM void fn_800BF9C8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r3, 0x20(r3)
    nor r0, r3, r3
    clrrwi. r0, r0, 31
    opword  0x408200A8  // bne .L_800BFA94
    clrlwi r3, r3, 1
    li r0, 0x0
    stw r3, 0x20(r30)
    lwz r3, 0x38(r30)
    lwz r3, 0x10(r3)
    stw r3, 0x10(r30)
    lwz r3, 0x38(r30)
    lwz r3, 0x18(r3)
    stw r3, 0x18(r30)
    stw r0, 0x3c(r30)
    lwz r3, 0x24(r30)
    lwz r31, 0x38(r30)
    lwz r12, 0x0(r3)
    lwz r4, 0x24(r31)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r3, 0x28(r30)
    lwz r4, 0x28(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    lwz r3, 0x2c(r30)
    lwz r4, 0x2c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    lwz r3, 0x30(r30)
    lwz r4, 0x30(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    lwz r3, 0x34(r30)
    lwz r4, 0x34(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_800BFA94:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BFAAC(void)
{
    nofralloc
    lwz r4, 0x20(r3)
    clrrwi. r0, r4, 30
    bnelr
    oris r4, r4, 0x8000
    li r0, 0x0
    stw r4, 0x20(r3)
    stw r0, 0x3c(r3)
    blr
}

ASM void fn_800BFACC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r0, 0x48(r3)
    cmplwi r0, 0x0
    opword  0x40820054  // bne .L_800BFB44
    li r3, 0x10
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800BFB18
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
L_800BFB18:
    stw r3, 0x48(r30)
    lwz r3, 0x48(r30)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_800BFB30
    li r3, 0x4
    opword  0x4800001C  // b .L_800BFB48
L_800BFB30:
    mr r4, r31
    bl fn_800BC19C
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_800BFB44
    opword  0x48000008  // b .L_800BFB48
L_800BFB44:
    li r3, 0x0
L_800BFB48:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BFB60(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r0, 0x48(r3)
    cmplwi r0, 0x0
    opword  0x40820054  // bne .L_800BFBD8
    li r3, 0x10
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_800BFBAC
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
L_800BFBAC:
    stw r3, 0x48(r30)
    lwz r3, 0x48(r30)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_800BFBC4
    li r3, 0x4
    opword  0x4800001C  // b .L_800BFBDC
L_800BFBC4:
    mr r4, r31
    bl fn_800BC1FC
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_800BFBD8
    opword  0x48000008  // b .L_800BFBDC
L_800BFBD8:
    li r3, 0x0
L_800BFBDC:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BFBF4(void)
{
    nofralloc
    li r6, 0x0
    lis r4, 0x1
    stw r6, 0x8(r3)
    li r5, 0x1
    subi r0, r4, 0x1
    stw r6, 0x4(r3)
    stw r6, 0xc(r3)
    stw r5, 0x10(r3)
    sth r0, 0x14(r3)
    stw r6, 0x18(r3)
    stw r6, 0x20(r3)
    stw r6, 0x24(r3)
    stw r6, 0x28(r3)
    stw r6, 0x2c(r3)
    stw r6, 0x30(r3)
    stw r6, 0x34(r3)
    stw r6, 0x38(r3)
    stw r6, 0x3c(r3)
    stw r6, 0x48(r3)
    blr
}

ASM void fn_800BFC44(void)
{
    nofralloc
    blr
}

ASM void fn_800BFC48(void)
{
    nofralloc
    blr
}

ASM void fn_800BFC4C(void)
{
    nofralloc
    lis r4, lbl_80536C50@ha
    lwz r5, 0x10(r3)
    addi r3, r4, lbl_80536C50@l
    lwz r0, 0x34(r3)
    stw r5, 0x54(r3)
    rlwinm. r0, r0, 0, 30, 30
    blr
}

ASM void fn_800BFC68(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r4, r4, lbl_80536C50@l
    lwz r0, 0x34(r4)
    lwz r5, 0x10(r3)
    rlwinm. r0, r0, 0, 30, 30
    stw r5, 0x54(r4)
    opword  0x4082000C  // bne .L_800BFC98
    lwz r3, 0x48(r3)
    bl fn_800BC2DC
L_800BFC98:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BFCA8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFCAC(void)
{
    nofralloc
    blr
}

ASM void fn_800BFCB0(void)
{
    nofralloc
    li r6, 0x0
    lis r4, 0x1
    stw r6, 0x8(r3)
    li r5, 0x1
    subi r0, r4, 0x1
    stw r6, 0x4(r3)
    stw r6, 0xc(r3)
    stw r5, 0x10(r3)
    sth r0, 0x14(r3)
    stw r6, 0x18(r3)
    stw r6, 0x20(r3)
    stw r6, 0x24(r3)
    stw r6, 0x28(r3)
    stw r6, 0x2c(r3)
    stw r6, 0x30(r3)
    stw r6, 0x34(r3)
    stw r6, 0x38(r3)
    stw r6, 0x3c(r3)
    stw r6, 0x48(r3)
    blr
}

ASM void fn_800BFD00(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD04(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD08(void)
{
    nofralloc
    lis r4, lbl_80536C50@ha
    lwz r5, 0x10(r3)
    addi r3, r4, lbl_80536C50@l
    lwz r0, 0x34(r3)
    stw r5, 0x54(r3)
    rlwinm. r0, r0, 0, 30, 30
    blr
}

ASM void fn_800BFD24(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r4, r4, lbl_80536C50@l
    lwz r0, 0x34(r4)
    lwz r5, 0x10(r3)
    rlwinm. r0, r0, 0, 30, 30
    stw r5, 0x54(r4)
    opword  0x4082000C  // bne .L_800BFD54
    lwz r3, 0x48(r3)
    bl fn_800BC2DC
L_800BFD54:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BFD64(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD68(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD6C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD70(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD74(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD78(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD7C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD80(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD84(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD88(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD8C(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFD94(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD98(void)
{
    nofralloc
    blr
}

ASM void fn_800BFD9C(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFDA4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDA8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDAC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFDB4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDB8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDBC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFDC4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDC8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDCC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFDD4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDD8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDDC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFDE4(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFDEC(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDF0(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDF4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDF8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFDFC(void)
{
    nofralloc
    lis r3, 0x4942
    addi r3, r3, 0x4c4e
    blr
}

ASM void fn_800BFE08(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_800BFE4C
    lis r3, lbl_8049A54C@ha
    addi r0, r3, lbl_8049A54C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800BFE3C
    lis r3, lbl_8049A598@ha
    addi r0, r3, lbl_8049A598@l
    stw r0, 0x0(r31)
L_800BFE3C:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_800BFE4C
    mr r3, r31
    bl dtor_80084580
L_800BFE4C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800BFE64(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE68(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE6C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE70(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFE78(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE7C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE80(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFE88(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE8C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE90(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFE98(void)
{
    nofralloc
    blr
}

ASM void fn_800BFE9C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEA0(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEA4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEA8(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFEB0(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEB4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEB8(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFEC0(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEC4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEC8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFECC(void)
{
    nofralloc
    blr
}

ASM void fn_800BFED0(void)
{
    nofralloc
    blr
}

ASM void fn_800BFED4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFED8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEDC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFEE4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEE8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEEC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFEF4(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEF8(void)
{
    nofralloc
    blr
}

ASM void fn_800BFEFC(void)
{
    nofralloc
    blr
}

ASM void fn_800BFF00(void)
{
    nofralloc
    blr
}

ASM void fn_800BFF04(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFF0C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFF10(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFF18(void)
{
    nofralloc
    blr
}

ASM void fn_800BFF1C(void)
{
    nofralloc
    blr
}

ASM void fn_800BFF20(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFF28(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800BFF30(void)
{
    nofralloc
    blr
}

ASM void fn_800BFF34(void)
{
    nofralloc
    blr
}

ASM void fn_800BFF38(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr r30, r3
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r5)
    lwz r0, 0xc(r5)
    addi r3, r3, 0x48
    cmplw r3, r0
    opword  0x40810008  // ble .L_800BFF70
    bl fn_800711D4
L_800BFF70:
    li r0, 0x1
    lfs fp1, 0x0(r30)
    slw r31, r0, r31
    lfs fp2, 0x4(r30)
    lfs fp3, 0x8(r30)
    mr r3, r31
    bl fn_800D0DE4
    lfs fp1, 0x1c(r30)
    mr r3, r31
    lfs fp2, 0x20(r30)
    lfs fp3, 0x24(r30)
    lfs fp4, 0x28(r30)
    lfs fp5, 0x2c(r30)
    lfs fp6, 0x30(r30)
    bl fn_800D09BC
    lwz r0, 0x18(r30)
    mr r3, r31
    addi r4, r1, 0x8
    stw r0, 0x8(r1)
    bl fn_800D0CD4
    lfs fp1, 0xc(r30)
    mr r3, r31
    lfs fp2, 0x10(r30)
    lfs fp3, 0x14(r30)
    bl fn_800D0FD0
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800BFFEC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r26, r3
    mr r27, r4
    slwi r3, r3, 3
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    lwz r0, 0xc(r5)
    add r3, r3, r4
    addi r3, r3, 0xa
    cmplw r3, r0
    opword  0x40810008  // ble .L_800C0028
    bl fn_800711D4
L_800C0028:
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    clrlwi r3, r26, 24
    subi r6, r3, 0x1
    li r7, 0x10
    lwz r3, 0x8(r4)
    extrwi r30, r6, 8, 16
    li r5, 0x40
    mr r31, r27
    addi r0, r3, 0x1
    clrlwi r29, r6, 24
    stw r0, 0x8(r4)
    li r28, 0x0
    stb r7, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r30, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r6, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r7, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r5, 0x0(r3)
    opword  0x48000018  // b .L_800C00C4
L_800C00B0:
    lbz r3, 0x0(r31)
    lbz r4, 0x1(r31)
    bl fn_800D1704
    addi r31, r31, 0x6
    addi r28, r28, 0x1
L_800C00C4:
    cmplw r28, r26
    opword  0x4180FFE8  // blt .L_800C00B0
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lis r3, lbl_80536C50@ha
    li r7, 0x10
    li r6, 0x50
    lwz r4, 0x8(r5)
    addi r3, r3, lbl_80536C50@l
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r30, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r29, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    lwz r0, 0x34(r3)
    rlwinm. r0, r0, 0, 1, 1
    opword  0x41820098  // beq .L_800C01E0
    mr r9, r27
    li r10, 0x0
    mtctr r26
    cmplwi r26, 0x0
    opword  0x408103AC  // ble .L_800C0508
L_800C0160:
    lbz r0, 0x2(r9)
    li r8, 0x3d
    cmplwi r0, 0x3c
    opword  0x41820008  // beq .L_800C0174
    mr r8, r10
L_800C0174:
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    srwi r7, r8, 24
    extrwi r6, r8, 8, 8
    extrwi r5, r8, 8, 16
    lwz r3, 0x8(r4)
    addi r9, r9, 0x6
    addi r10, r10, 0x3
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r7, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r6, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r5, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r8, 0x0(r3)
    opword  0x4200FF88  // bdnz .L_800C0160
    opword  0x4800032C  // b .L_800C0508
L_800C01E0:
    cmplwi r26, 0x0
    li r4, 0x0
    opword  0x40810320  // ble .L_800C0508
    cmplwi r26, 0x8
    subi r3, r26, 0x8
    opword  0x408102A8  // ble .L_800C049C
    addi r0, r3, 0x7
    srwi r0, r0, 3
    mtctr r0
    cmplwi r3, 0x0
    opword  0x40810294  // ble .L_800C049C
L_800C020C:
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    li r3, 0x0
    li r0, 0x3d
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r0, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r0, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r0, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    addi r4, r4, 0x8
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r0, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r0, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r0, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r0, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r6, 0x8(r7)
    addi r5, r6, 0x1
    stw r5, 0x8(r7)
    stb r3, 0x0(r6)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r5, 0x8(r6)
    addi r3, r5, 0x1
    stw r3, 0x8(r6)
    stb r0, 0x0(r5)
    opword  0x4200FD74  // bdnz .L_800C020C
L_800C049C:
    subf r0, r4, r26
    mtctr r0
    cmplw r4, r26
    opword  0x40800060  // bge .L_800C0508
    li r6, 0x0
    li r5, 0x3d
L_800C04B4:
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r6, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r6, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r6, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r5, 0x0(r3)
    opword  0x4200FFB0  // bdnz .L_800C04B4
L_800C0508:
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800C051C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r5, r5, lbl_80536C50@l
    lwz r0, 0x34(r5)
    rlwinm. r0, r0, 0, 1, 1
    opword  0x4182000C  // beq .L_800C0544
    bl fn_800C0B3C
    opword  0x48000008  // b .L_800C0548
L_800C0544:
    bl fn_800C0558
L_800C0548:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C0558(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r5)
    lwz r0, 0xc(r5)
    addi r3, r3, 0x35
    cmplw r3, r0
    opword  0x40810008  // ble .L_800C0590
    bl fn_800711D4
L_800C0590:
    mulli r4, r31, 0x3
    lbz r5, 0x0(r30)
    addi r3, r30, 0x64
    addi r4, r4, 0x1e
    bl fn_800C05BC
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C05BC(void)
{
    nofralloc
    cmpwi r5, 0x1
    stwu r1, -0x40(r1)
    clrlslwi r11, r4, 18, 2
    li r0, 0xc
    opword  0x40820008  // bne .L_800C05D4
    li r0, 0x8
L_800C05D4:
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    clrlwi r4, r0, 24
    subi r9, r4, 0x1
    li r10, 0x10
    lwz r4, 0x8(r6)
    extrwi r8, r9, 8, 16
    extrwi r7, r11, 8, 16
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r10, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r8, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r9, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r7, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r11, 0x0(r4)
    lfs fp0, 0x0(r3)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    stfs fp0, 0x34(r1)
    lwz r4, 0x8(r6)
    lwz r9, 0x34(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    srwi r0, r9, 24
    extrwi r8, r9, 8, 8
    extrwi r7, r9, 8, 16
    stb r0, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r8, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r7, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r9, 0x0(r4)
    lfs fp0, 0x4(r3)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    stfs fp0, 0x30(r1)
    lwz r4, 0x8(r6)
    lwz r9, 0x30(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    srwi r0, r9, 24
    extrwi r8, r9, 8, 8
    extrwi r7, r9, 8, 16
    stb r0, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r8, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r7, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r9, 0x0(r4)
    lfs fp0, 0x8(r3)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    stfs fp0, 0x2c(r1)
    lwz r4, 0x8(r6)
    lwz r9, 0x2c(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    srwi r0, r9, 24
    extrwi r8, r9, 8, 8
    extrwi r7, r9, 8, 16
    stb r0, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r8, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r7, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r9, 0x0(r4)
    lfs fp0, 0xc(r3)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    stfs fp0, 0x28(r1)
    lwz r4, 0x8(r6)
    lwz r9, 0x28(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    srwi r0, r9, 24
    extrwi r8, r9, 8, 8
    extrwi r7, r9, 8, 16
    stb r0, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r8, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r7, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r9, 0x0(r4)
    lfs fp0, 0x10(r3)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    stfs fp0, 0x24(r1)
    lwz r4, 0x8(r6)
    lwz r8, 0x24(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    stb r0, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r7, 0x0(r4)
    opword  0x80CD8BA0  // lwz r6, lbl_8053A760@sda21(r0)
    extrwi r7, r8, 8, 16
    cmpwi r5, 0x0
    lwz r4, 0x8(r6)
    addi r0, r4, 0x1
    stw r0, 0x8(r6)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x14(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x20(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x20(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x18(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x1c(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x1c(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x1c(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x18(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x18(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x408201A4  // bne .L_800C0B34
    lfs fp0, 0x20(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x14(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x14(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x24(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x10(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x10(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x28(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0xc(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0xc(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x2c(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    stfs fp0, 0x8(r1)
    lwz r3, 0x8(r4)
    lwz r7, 0x8(r1)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    srwi r0, r7, 24
    extrwi r6, r7, 8, 8
    extrwi r5, r7, 8, 16
    stb r0, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r6, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r5, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r7, 0x0(r3)
L_800C0B34:
    addi r1, r1, 0x40
    blr
}

ASM void fn_800C0B3C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r5)
    lwz r0, 0xc(r5)
    addi r3, r3, 0x35
    cmplw r3, r0
    opword  0x40810008  // ble .L_800C0B74
    bl fn_800711D4
L_800C0B74:
    mulli r4, r31, 0x3
    addi r3, r30, 0x64
    addi r4, r4, 0x40
    bl fn_800C0B9C
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C0B9C(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    subi r0, r4, 0x40
    slwi r4, r0, 2
    li r11, 0x10
    opword  0x814D8BA0  // lwz r10, lbl_8053A760@sda21(r0)
    addi r7, r4, 0x500
    li r9, 0x0
    li r8, 0xb
    lwz r5, 0x8(r10)
    extrwi r6, r7, 8, 16
    addi r0, r5, 0x1
    stw r0, 0x8(r10)
    stb r11, 0x0(r5)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r9, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    lfs fp0, 0x0(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x34(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x34(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x4(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x30(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x30(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x8(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x2c(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x2c(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0xc(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x28(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x28(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x10(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x24(r1)
    lwz r4, 0x8(r5)
    lwz r7, 0x24(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r7, 24
    extrwi r6, r7, 8, 8
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    extrwi r6, r7, 8, 16
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    lfs fp0, 0x14(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x20(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x20(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x18(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x1c(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x1c(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x1c(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x18(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x18(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x20(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x14(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x14(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x24(r3)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    stfs fp0, 0x10(r1)
    lwz r4, 0x8(r5)
    lwz r8, 0x10(r1)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    srwi r0, r8, 24
    extrwi r7, r8, 8, 8
    extrwi r6, r8, 8, 16
    stb r0, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    lfs fp0, 0x28(r3)
    stfs fp0, 0xc(r1)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r9, 0xc(r1)
    lwz r4, 0x8(r5)
    srwi r8, r9, 24
    extrwi r7, r9, 8, 8
    addi r0, r4, 0x1
    extrwi r6, r9, 8, 16
    stw r0, 0x8(r5)
    stb r8, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r7, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r6, 0x0(r4)
    opword  0x80AD8BA0  // lwz r5, lbl_8053A760@sda21(r0)
    lwz r4, 0x8(r5)
    addi r0, r4, 0x1
    stw r0, 0x8(r5)
    stb r9, 0x0(r4)
    lfs fp0, 0x2c(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    stfs fp0, 0x8(r1)
    lwz r3, 0x8(r4)
    lwz r7, 0x8(r1)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    srwi r0, r7, 24
    extrwi r6, r7, 8, 8
    extrwi r5, r7, 8, 16
    stb r0, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r6, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r5, 0x0(r3)
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    addi r0, r3, 0x1
    stw r0, 0x8(r4)
    stb r7, 0x0(r3)
    addi r1, r1, 0x40
    blr
}

ASM void fn_800C1108(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_800C1128
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C1128(void)
{
    nofralloc
    stwu r1, -0x90(r1)
    mflr r0
    stw r0, 0x94(r1)
    stw r31, 0x8c(r1)
    mr r31, r4
    stw r30, 0x88(r1)
    mr r30, r3
    lbz r3, 0x1(r3)
    clrlwi r0, r3, 26
    extrwi r4, r3, 1, 24
    cmplwi r0, 0xb
    opword  0x41810278  // bgt .L_800C13CC
    lis r3, jumptable_8049A738@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049A738@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C118C
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x8
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800C11A0
L_800C118C:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C11A0
    addi r3, r30, 0x10
    addi r4, r1, 0x8
    bl fn_800BBD94
L_800C11A0:
    lis r4, lbl_8049A6D8@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049A6D8@l
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x8
    addi r4, r30, 0x24
    addi r5, r1, 0x48
    bl fn_800BBF9C
    mr r4, r31
    addi r3, r1, 0x48
    addi r5, r30, 0x64
    bl PSMTXConcat
    opword  0x48000228  // b .L_800C13FC
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C11F4
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x48
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800C1208
L_800C11F4:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1208
    addi r3, r30, 0x10
    addi r4, r1, 0x48
    bl fn_800BBD94
L_800C1208:
    lis r4, lbl_8049A6D8@ha
    addi r3, r1, 0x48
    addi r4, r4, lbl_8049A6D8@l
    mr r5, r3
    bl PSMTXConcat
    mr r4, r31
    addi r3, r1, 0x48
    addi r5, r30, 0x64
    bl PSMTXConcat
    opword  0x480001D0  // b .L_800C13FC
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C124C
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C1260
L_800C124C:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1260
    addi r3, r30, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800C1260:
    lis r4, lbl_8049A708@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049A708@l
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x8
    addi r4, r30, 0x24
    addi r5, r1, 0x48
    bl fn_800BBF9C
    mr r4, r31
    addi r3, r1, 0x48
    addi r5, r30, 0x64
    bl PSMTXConcat
    opword  0x48000168  // b .L_800C13FC
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C12B4
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x48
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C12C8
L_800C12B4:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C12C8
    addi r3, r30, 0x10
    addi r4, r1, 0x48
    bl fn_800BBE3C
L_800C12C8:
    lis r4, lbl_8049A708@ha
    addi r3, r1, 0x48
    addi r4, r4, lbl_8049A708@l
    mr r5, r3
    bl PSMTXConcat
    mr r4, r31
    addi r3, r1, 0x48
    addi r5, r30, 0x64
    bl PSMTXConcat
    opword  0x48000110  // b .L_800C13FC
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C130C
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x48
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C1320
L_800C130C:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1320
    addi r3, r30, 0x10
    addi r4, r1, 0x48
    bl fn_800BBE3C
L_800C1320:
    mr r4, r31
    addi r3, r1, 0x48
    addi r5, r30, 0x64
    bl PSMTXConcat
    opword  0x480000CC  // b .L_800C13FC
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C1350
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C1364
L_800C1350:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1364
    addi r3, r30, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800C1364:
    addi r3, r1, 0x8
    addi r4, r30, 0x24
    addi r5, r1, 0x48
    bl fn_800BBF9C
    mr r4, r31
    addi r3, r1, 0x48
    addi r5, r30, 0x64
    bl PSMTXConcat
    opword  0x48000078  // b .L_800C13FC
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C13A4
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C13B8
L_800C13A4:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C13B8
    addi r3, r30, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800C13B8:
    addi r3, r1, 0x8
    addi r4, r30, 0x24
    addi r5, r30, 0x64
    bl fn_800BBF9C
    opword  0x48000034  // b .L_800C13FC
L_800C13CC:
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C13E8
    addi r3, r30, 0x10
    addi r4, r30, 0x4
    addi r5, r30, 0x64
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C13FC
L_800C13E8:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C13FC
    addi r3, r30, 0x10
    addi r4, r30, 0x64
    bl fn_800BBE3C
L_800C13FC:
    lwz r0, 0x94(r1)
    lwz r31, 0x8c(r1)
    lwz r30, 0x88(r1)
    mtlr r0
    addi r1, r1, 0x90
    blr
}

ASM void fn_800C1414(void)
{
    nofralloc
    stwu r1, -0x90(r1)
    mflr r0
    stw r0, 0x94(r1)
    stw r31, 0x8c(r1)
    mr r31, r3
    stw r30, 0x88(r1)
    mr r30, r4
    lbz r3, 0x1(r3)
    clrlwi r0, r3, 26
    extrwi r4, r3, 1, 24
    cmplwi r0, 0xb
    opword  0x418102E4  // bgt .L_800C1724
    lis r3, jumptable_8049A7C8@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049A7C8@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C1478
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x8
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800C148C
L_800C1478:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C148C
    addi r3, r31, 0x10
    addi r4, r1, 0x8
    bl fn_800BBD94
L_800C148C:
    lis r4, lbl_8049A768@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049A768@l
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x8
    addi r4, r31, 0x24
    addi r5, r1, 0x48
    bl fn_800BBF9C
    mr r4, r30
    addi r3, r1, 0x48
    addi r5, r31, 0x64
    bl PSMTXConcat
    opword  0x48000294  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C14E0
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x8
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800C14F4
L_800C14E0:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C14F4
    addi r3, r31, 0x10
    addi r4, r1, 0x8
    bl fn_800BBD94
L_800C14F4:
    lis r4, lbl_8049A768@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049A768@l
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x8
    addi r4, r31, 0x24
    addi r5, r31, 0x64
    bl fn_800BBF9C
    opword  0x4800023C  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C1538
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x48
    bl fn_800BBC3C
    opword  0x48000018  // b .L_800C154C
L_800C1538:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C154C
    addi r3, r31, 0x10
    addi r4, r1, 0x48
    bl fn_800BBD94
L_800C154C:
    lis r4, lbl_8049A768@ha
    addi r3, r1, 0x48
    addi r4, r4, lbl_8049A768@l
    addi r5, r31, 0x64
    bl PSMTXConcat
    opword  0x480001F4  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C1580
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C1594
L_800C1580:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1594
    addi r3, r31, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800C1594:
    lis r4, lbl_8049A798@ha
    addi r3, r1, 0x8
    addi r4, r4, lbl_8049A798@l
    mr r5, r3
    bl PSMTXConcat
    addi r3, r1, 0x8
    addi r4, r31, 0x24
    addi r5, r1, 0x48
    bl fn_800BBF9C
    mr r4, r30
    addi r3, r1, 0x48
    addi r5, r31, 0x64
    bl PSMTXConcat
    opword  0x4800018C  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C15E8
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x48
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C15FC
L_800C15E8:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C15FC
    addi r3, r31, 0x10
    addi r4, r1, 0x48
    bl fn_800BBE3C
L_800C15FC:
    lis r4, lbl_8049A798@ha
    addi r3, r1, 0x48
    addi r4, r4, lbl_8049A798@l
    addi r5, r31, 0x64
    bl PSMTXConcat
    opword  0x48000144  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C1630
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r31, 0x64
    bl fn_800BBCE8
    opword  0x48000128  // b .L_800C1754
L_800C1630:
    cmplwi r4, 0x1
    opword  0x40820120  // bne .L_800C1754
    addi r3, r31, 0x10
    addi r4, r31, 0x64
    bl fn_800BBE3C
    opword  0x48000110  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C1664
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C1678
L_800C1664:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1678
    addi r3, r31, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800C1678:
    addi r3, r1, 0x8
    addi r4, r31, 0x24
    addi r5, r1, 0x48
    bl fn_800BBF9C
    mr r4, r30
    addi r3, r1, 0x48
    addi r5, r31, 0x64
    bl PSMTXConcat
    opword  0x480000BC  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C16B8
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C16CC
L_800C16B8:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C16CC
    addi r3, r31, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800C16CC:
    addi r3, r1, 0x8
    addi r4, r31, 0x24
    addi r5, r31, 0x64
    bl fn_800BBF9C
    opword  0x48000078  // b .L_800C1754
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C16FC
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r1, 0x8
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C1710
L_800C16FC:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1710
    addi r3, r31, 0x10
    addi r4, r1, 0x8
    bl fn_800BBE3C
L_800C1710:
    addi r3, r1, 0x8
    addi r4, r31, 0x24
    addi r5, r31, 0x64
    bl fn_800BBF9C
    opword  0x48000034  // b .L_800C1754
L_800C1724:
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_800C1740
    addi r3, r31, 0x10
    addi r4, r31, 0x4
    addi r5, r31, 0x64
    bl fn_800BBCE8
    opword  0x48000018  // b .L_800C1754
L_800C1740:
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800C1754
    addi r3, r31, 0x10
    addi r4, r31, 0x64
    bl fn_800BBE3C
L_800C1754:
    lwz r0, 0x94(r1)
    lwz r31, 0x8c(r1)
    lwz r30, 0x88(r1)
    mtlr r0
    addi r1, r1, 0x90
    blr
}

ASM void fn_800C176C(void)
{
    nofralloc
    lbz r0, 0x1(r3)
    cmplwi r0, 0x80
    opword  0x41800014  // blt .L_800C1788
    cmplwi r0, 0xbb
    opword  0x4181000C  // bgt .L_800C1788
    li r3, 0x1
    blr
L_800C1788:
    li r3, 0x0
    blr
}

ASM void fn_800C1790(void)
{
    nofralloc
    lwz r0, 0x1(r3)
    clrlwi r3, r0, 16
    blr
}

ASM void fn_800C179C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r5, lbl_80536C50@ha
    stw r0, 0x34(r1)
    lhz r0, 0x0(r4)
    addi r4, r5, lbl_80536C50@l
    stw r31, 0x2c(r1)
    slwi r0, r0, 5
    stw r30, 0x28(r1)
    mr r30, r3
    lis r3, lbl_80536E3C@ha
    stw r29, 0x24(r1)
    slwi r6, r30, 3
    stw r28, 0x20(r1)
    lwz r4, 0x58(r4)
    opword  0x80ED8BA0  // lwz r7, lbl_8053A760@sda21(r0)
    lwz r5, 0x4(r4)
    addi r4, r3, lbl_80536E3C@l
    add r3, r4, r6
    add r31, r5, r0
    lhz r0, 0x2(r31)
    sthx r0, r4, r6
    lhz r0, 0x4(r31)
    sth r0, 0x2(r3)
    lwz r3, 0x8(r7)
    lwz r0, 0xc(r7)
    addi r3, r3, 0x14
    cmplw r3, r0
    opword  0x40810008  // ble .L_800C1814
    bl fn_800711D4
L_800C1814:
    lwz r0, 0x1c(r31)
    mr r3, r30
    add r4, r31, r0
    bl fn_800D1D24
    lbz r0, 0x0(r31)
    mr r3, r30
    lhz r4, 0x2(r31)
    lhz r5, 0x4(r31)
    clrlwi r6, r0, 28
    bl fn_800D1C7C
    lbz r6, 0x16(r31)
    lis r5, 0x4330
    lbz r4, 0x17(r31)
    mr r3, r30
    lha r0, 0x1a(r31)
    extsb r6, r6
    extsb r4, r4
    stw r5, 0x8(r1)
    xoris r6, r6, 0x8000
    xoris r0, r0, 0x8000
    xoris r4, r4, 0x8000
    stw r6, 0xc(r1)
    opword  0xC8828C00  // lfd f4, lbl_8053BBA0@sda21(r0)
    lfd fp0, 0x8(r1)
    stw r4, 0x14(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0A28BF8  // lfs f5, lbl_8053BB98@sda21(r0)
    stw r5, 0x10(r1)
    opword  0xC0628BFC  // lfs f3, lbl_8053BB9C@sda21(r0)
    lfd fp0, 0x10(r1)
    fmuls fp1, fp5, fp1
    stw r0, 0x1c(r1)
    fsubs fp2, fp0, fp4
    lbz r4, 0x6(r31)
    stw r5, 0x18(r1)
    lbz r5, 0x7(r31)
    lfd fp0, 0x18(r1)
    fmuls fp2, fp5, fp2
    lbz r6, 0x14(r31)
    fsubs fp0, fp0, fp4
    lbz r7, 0x15(r31)
    lbz r8, 0x12(r31)
    lbz r9, 0x11(r31)
    fmuls fp3, fp3, fp0
    lbz r10, 0x13(r31)
    bl fn_800D1AD0
    lbz r0, 0x8(r31)
    cmplwi r0, 0x1
    opword  0x40820060  // bne .L_800C1934
    lhz r0, 0xa(r31)
    li r29, 0x1
    cmplwi r0, 0x10
    opword  0x40810008  // ble .L_800C18EC
    li r29, 0x10
L_800C18EC:
    opword  0x808D8BA0  // lwz r4, lbl_8053A760@sda21(r0)
    lwz r3, 0x8(r4)
    lwz r0, 0xc(r4)
    addi r3, r3, 0x14
    cmplw r3, r0
    opword  0x40810008  // ble .L_800C1908
    bl fn_800711D4
L_800C1908:
    slwi r3, r30, 13
    lwz r0, 0xc(r31)
    addis r28, r3, 0xf
    mr r5, r29
    mr r4, r28
    add r3, r31, r0
    bl fn_800D1F20
    lbz r5, 0x9(r31)
    mr r3, r30
    mr r4, r28
    bl fn_800D1E88
L_800C1934:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800C1954(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lhz r4, 0x0(r4)
    stw r0, 0x14(r1)
    bl fn_800D1DB4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C1978(void)
{
    nofralloc
    lbz r0, 0x0(r3)
    cmplwi r0, 0x1
    opword  0x40820018  // bne .L_800C1998
    lis r4, lbl_80536C50@ha
    addi r0, r3, 0x4
    addi r3, r4, lbl_80536C50@l
    stw r0, 0x118(r3)
    blr
L_800C1998:
    lis r3, lbl_80536C50@ha
    li r0, 0x0
    addi r3, r3, lbl_80536C50@l
    stw r0, 0x118(r3)
    blr
}

ASM void fn_800C19AC(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    lis r3, lbl_8046354C@ha
    addi r8, r3, lbl_8046354C@l
    lis r4, lbl_80536E8C@ha
    stmw r24, 0x20(r1)
    addi r29, r4, lbl_80536E8C@l
    li r3, 0x0
    li r7, 0x0
    lwz r6, 0x0(r8)
    lwz r5, 0x4(r8)
    lhz r4, 0x8(r8)
    lbz r0, 0xa(r8)
    stw r6, 0x8(r1)
    stw r5, 0xc(r1)
    sth r4, 0x10(r1)
    stb r0, 0x12(r1)
L_800C19EC:
    li r4, 0x0
    li r27, 0x0
L_800C19F4:
    li r6, 0x2
    addi r28, r1, 0x8
    add r0, r27, r7
    li r5, 0x0
    mtctr r6
L_800C1A08:
    add r24, r5, r0
    lbz r30, 0x0(r28)
    mulli r6, r24, 0x3
    lbz r31, 0x1(r28)
    addi r8, r24, 0x1
    lbz r11, 0x2(r28)
    addi r12, r24, 0x2
    lbz r9, 0x3(r28)
    add r26, r29, r6
    lbz r6, 0x4(r28)
    stb r3, 0x0(r26)
    mulli r10, r8, 0x3
    addi r8, r24, 0x4
    stb r4, 0x1(r26)
    addi r25, r24, 0x3
    mulli r12, r12, 0x3
    addi r28, r28, 0x5
    stb r30, 0x2(r26)
    add r26, r29, r10
    addi r5, r5, 0x5
    stb r3, 0x0(r26)
    mulli r10, r25, 0x3
    add r12, r29, r12
    stb r4, 0x1(r26)
    stb r31, 0x2(r26)
    mulli r8, r8, 0x3
    add r10, r29, r10
    stb r3, 0x0(r12)
    add r8, r29, r8
    stb r4, 0x1(r12)
    stb r11, 0x2(r12)
    stb r3, 0x0(r10)
    stb r4, 0x1(r10)
    stb r9, 0x2(r10)
    stb r3, 0x0(r8)
    stb r4, 0x1(r8)
    stb r6, 0x2(r8)
    opword  0x4200FF6C  // bdnz .L_800C1A08
    addi r9, r1, 0x8
    subfic r6, r5, 0xb
    add r9, r9, r5
    mtctr r6
    cmpwi r5, 0xb
    opword  0x4080002C  // bge .L_800C1AE0
L_800C1AB8:
    add r8, r5, r0
    lbz r6, 0x0(r9)
    mulli r8, r8, 0x3
    addi r9, r9, 0x1
    addi r5, r5, 0x1
    add r8, r29, r8
    stb r3, 0x0(r8)
    stb r4, 0x1(r8)
    stb r6, 0x2(r8)
    opword  0x4200FFDC  // bdnz .L_800C1AB8
L_800C1AE0:
    addi r4, r4, 0x1
    addi r27, r27, 0xb
    cmplwi r4, 0x15
    opword  0x4180FF08  // blt .L_800C19F4
    addi r3, r3, 0x1
    addi r7, r7, 0xe7
    cmplwi r3, 0xb
    opword  0x4180FEF0  // blt .L_800C19EC
    lmw r24, 0x20(r1)
    addi r1, r1, 0x40
    blr
}

ASM void fn_800C1B0C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r4, lbl_805397B4@ha
    li r3, 0x0
    li r5, 0x0
    stmw r26, 0x8(r1)
    addi r30, r4, lbl_805397B4@l
L_800C1B24:
    li r0, 0x4
    li r4, 0x0
    li r6, 0x0
    mtctr r0
L_800C1B34:
    add r11, r5, r6
    li r8, 0x0
    mulli r0, r11, 0x3
    li r10, 0x1
    addi r7, r11, 0x1
    addi r12, r11, 0x2
    add r9, r30, r0
    addi r29, r11, 0x3
    stb r3, 0x0(r9)
    mulli r7, r7, 0x3
    addi r28, r11, 0x4
    stb r4, 0x1(r9)
    li r31, 0x3
    mulli r0, r12, 0x3
    addi r27, r11, 0x5
    stb r8, 0x2(r9)
    add r12, r30, r7
    addi r7, r11, 0x7
    stb r3, 0x0(r12)
    mulli r8, r29, 0x3
    add r29, r30, r0
    stb r4, 0x1(r12)
    addi r26, r11, 0x6
    li r9, 0x2
    stb r10, 0x2(r12)
    mulli r0, r28, 0x3
    add r28, r30, r8
    stb r3, 0x0(r29)
    li r12, 0x4
    li r10, 0x5
    stb r4, 0x1(r29)
    mulli r11, r27, 0x3
    add r27, r30, r0
    stb r9, 0x2(r29)
    li r8, 0x6
    li r0, 0x7
    stb r3, 0x0(r28)
    mulli r9, r26, 0x3
    add r11, r30, r11
    stb r4, 0x1(r28)
    addi r6, r6, 0x8
    stb r31, 0x2(r28)
    mulli r7, r7, 0x3
    add r9, r30, r9
    stb r3, 0x0(r27)
    add r7, r30, r7
    stb r4, 0x1(r27)
    stb r12, 0x2(r27)
    stb r3, 0x0(r11)
    stb r4, 0x1(r11)
    stb r10, 0x2(r11)
    stb r3, 0x0(r9)
    stb r4, 0x1(r9)
    stb r8, 0x2(r9)
    stb r3, 0x0(r7)
    stb r4, 0x1(r7)
    addi r4, r4, 0x1
    stb r0, 0x2(r7)
    opword  0x4200FF18  // bdnz .L_800C1B34
    addi r3, r3, 0x1
    addi r5, r5, 0x20
    cmplwi r3, 0x8
    opword  0x4180FEF8  // blt .L_800C1B24
    lmw r26, 0x8(r1)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800C1C3C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    lis r3, lbl_80539AB4@ha
    addi r8, r3, lbl_80539AB4@l
    stw r31, 0xc(r1)
    li r31, 0x0
    li r3, 0x0
    stw r30, 0x8(r1)
L_800C1C58:
    li r9, 0x0
    li r0, 0x2
    mr r6, r9
    li r30, 0x0
    li r4, 0x1
    mtctr r0
L_800C1C70:
    add r11, r9, r3
    addi r9, r9, 0x2
    mulli r7, r11, 0x3
    addi r5, r11, 0x1
    add r11, r9, r3
    add r10, r8, r7
    addi r9, r9, 0x2
    stb r31, 0x0(r10)
    mulli r0, r5, 0x3
    addi r5, r11, 0x1
    stb r30, 0x1(r10)
    add r12, r8, r0
    stb r6, 0x2(r10)
    mulli r7, r11, 0x3
    add r11, r9, r3
    stb r31, 0x0(r12)
    addi r9, r9, 0x2
    add r10, r8, r7
    stb r30, 0x1(r12)
    mulli r0, r5, 0x3
    addi r30, r30, 0x1
    stb r4, 0x2(r12)
    addi r5, r11, 0x1
    add r12, r8, r0
    stb r31, 0x0(r10)
    mulli r7, r11, 0x3
    add r11, r9, r3
    stb r30, 0x1(r10)
    addi r9, r9, 0x2
    mulli r0, r5, 0x3
    addi r5, r11, 0x1
    stb r6, 0x2(r10)
    add r10, r8, r7
    stb r31, 0x0(r12)
    mulli r7, r11, 0x3
    stb r30, 0x1(r12)
    addi r30, r30, 0x1
    stb r4, 0x2(r12)
    add r12, r8, r0
    mulli r0, r5, 0x3
    stb r31, 0x0(r10)
    stb r30, 0x1(r10)
    stb r6, 0x2(r10)
    add r10, r8, r7
    stb r31, 0x0(r12)
    stb r30, 0x1(r12)
    addi r30, r30, 0x1
    stb r4, 0x2(r12)
    add r12, r8, r0
    stb r31, 0x0(r10)
    stb r30, 0x1(r10)
    stb r6, 0x2(r10)
    stb r31, 0x0(r12)
    stb r30, 0x1(r12)
    addi r30, r30, 0x1
    stb r4, 0x2(r12)
    opword  0x4200FF20  // bdnz .L_800C1C70
    addi r31, r31, 0x1
    addi r3, r3, 0x10
    cmpwi r31, 0x2
    opword  0x4180FEF8  // blt .L_800C1C58
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C1D74(void)
{
    nofralloc
    lis r3, lbl_805393B4@ha
    li r6, 0x0
    addi r0, r3, lbl_805393B4@l
    mr r5, r0
L_800C1D84:
    srawi r0, r6, 6
    extrwi r4, r6, 2, 26
    stb r0, 0x0(r5)
    extrwi r3, r6, 2, 28
    clrlwi r0, r6, 30
    addi r6, r6, 0x1
    stb r4, 0x1(r5)
    cmpwi r6, 0x100
    stb r3, 0x2(r5)
    stb r0, 0x3(r5)
    addi r5, r5, 0x4
    opword  0x4180FFD4  // blt .L_800C1D84
    blr
}

ASM void fn_800C1DB8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    li r5, 0x0
    lis r0, 0x4330
    opword  0xC0228C48  // lfs f1, lbl_8053BBE8@sda21(r0)
    stw r5, 0x8(r3)
    li r4, 0x20
    opword  0xC0028C4C  // lfs f0, lbl_8053BBEC@sda21(r0)
    stw r5, 0xc(r3)
    stfs fp1, 0x10(r3)
    opword  0xC8228C50  // lfd f1, lbl_8053BBF0@sda21(r0)
    stfs fp0, 0x14(r3)
    stw r5, 0x1c(r3)
    stw r5, 0x20(r3)
    stw r4, 0x4(r3)
    lwz r4, 0x4(r3)
    stw r0, 0x8(r1)
    lfs fp3, 0x14(r3)
    stw r4, 0xc(r1)
    lfs fp2, 0x10(r3)
    lfd fp0, 0x8(r1)
    fsubs fp2, fp3, fp2
    fsubs fp0, fp0, fp1
    fdivs fp0, fp2, fp0
    stfs fp0, 0x18(r3)
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C1E20(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr r30, r3
    slwi r3, r4, 2
    li r4, 0x20
    bl fn_800844C4
    stw r3, 0x0(r30)
    mr r3, r30
    stw r31, 0x4(r30)
    bl fn_800C1EA4
    lwz r4, 0x4(r30)
    lis r0, 0x4330
    stw r0, 0x8(r1)
    li r3, 0x0
    lfs fp3, 0x14(r30)
    stw r4, 0xc(r1)
    lfs fp2, 0x10(r30)
    opword  0xC8228C50  // lfd f1, lbl_8053BBF0@sda21(r0)
    lfd fp0, 0x8(r1)
    fsubs fp2, fp3, fp2
    fsubs fp0, fp0, fp1
    fdivs fp0, fp2, fp0
    stfs fp0, 0x18(r30)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800C1EA4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    li r30, 0x0
    lwz r31, 0x4(r3)
    cmplwi r31, 0x0
    opword  0x408100BC  // ble .L_800C1F78
    cmplwi r31, 0x8
    subi r4, r31, 0x8
    opword  0x40810088  // ble .L_800C1F50
    addi r0, r4, 0x7
    li r12, 0x0
    srwi r0, r0, 3
    mtctr r0
    cmplwi r4, 0x0
    opword  0x40810070  // ble .L_800C1F50
L_800C1EE4:
    lwz r4, 0x0(r3)
    li r11, 0x0
    addi r9, r12, 0x4
    addi r8, r12, 0x8
    stwx r11, r4, r12
    addi r7, r12, 0xc
    addi r6, r12, 0x10
    addi r5, r12, 0x14
    lwz r10, 0x0(r3)
    addi r4, r12, 0x18
    addi r0, r12, 0x1c
    addi r12, r12, 0x20
    stwx r11, r10, r9
    addi r30, r30, 0x8
    lwz r9, 0x0(r3)
    stwx r11, r9, r8
    lwz r8, 0x0(r3)
    stwx r11, r8, r7
    lwz r7, 0x0(r3)
    stwx r11, r7, r6
    lwz r6, 0x0(r3)
    stwx r11, r6, r5
    lwz r5, 0x0(r3)
    stwx r11, r5, r4
    lwz r4, 0x0(r3)
    stwx r11, r4, r0
    opword  0x4200FF98  // bdnz .L_800C1EE4
L_800C1F50:
    subf r0, r30, r31
    slwi r6, r30, 2
    li r5, 0x0
    mtctr r0
    cmplw r30, r31
    opword  0x40800014  // bge .L_800C1F78
L_800C1F68:
    lwz r4, 0x0(r3)
    stwx r5, r4, r6
    addi r6, r6, 0x4
    opword  0x4200FFF4  // bdnz .L_800C1F68
L_800C1F78:
    li r0, 0x0
    stw r0, 0x20(r3)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C1F90(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    stw r0, 0x4(r4)
    stw r0, 0x8(r4)
    lwz r3, 0x2c(r4)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    lwz r0, 0x34(r4)
    clrrwi. r0, r0, 31
    opword  0x41820020  // beq .L_800C1FF4
    lwz r4, 0x0(r30)
    li r3, 0x1
    lwz r0, 0x0(r4)
    stw r0, 0x4(r31)
    lwz r4, 0x0(r30)
    stw r31, 0x0(r4)
    opword  0x480000D8  // b .L_800C20C8
L_800C1FF4:
    lwz r3, 0x30(r31)
    lis r4, lbl_80536C50@ha
    addi r5, r4, lbl_80536C50@l
    li r4, 0x0
    lwz r3, 0x2c(r3)
    lwz r29, 0x58(r5)
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    clrlwi r0, r3, 16
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_800C2030
    li r5, 0x0
    opword  0x4800001C  // b .L_800C2048
L_800C2030:
    lwz r4, 0x4(r29)
    clrlslwi r0, r3, 16, 5
    add r3, r4, r0
    lwz r0, 0x1c(r3)
    add r0, r3, r0
    srwi r5, r0, 5
L_800C2048:
    lwz r3, 0x4(r30)
    lwz r4, 0x0(r30)
    subi r0, r3, 0x1
    and r0, r5, r0
    slwi r29, r0, 2
    lwzx r0, r4, r29
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_800C2074
    stwx r31, r4, r29
    li r3, 0x1
    opword  0x48000058  // b .L_800C20C8
L_800C2074:
    mr r28, r0
    opword  0x48000030  // b .L_800C20A8
L_800C207C:
    mr r3, r28
    mr r4, r31
    bl fn_800BC848
    clrlwi. r0, r3, 24
    opword  0x41820018  // beq .L_800C20A4
    lwz r4, 0x2c(r31)
    mr r3, r28
    bl fn_800BC764
    li r3, 0x0
    opword  0x48000028  // b .L_800C20C8
L_800C20A4:
    lwz r28, 0x4(r28)
L_800C20A8:
    cmplwi r28, 0x0
    opword  0x4082FFD0  // bne .L_800C207C
    lwz r4, 0x0(r30)
    li r3, 0x1
    lwzx r0, r4, r29
    stw r0, 0x4(r31)
    lwz r4, 0x0(r30)
    stwx r31, r4, r29
L_800C20C8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800C20E8(void)
{
    nofralloc
    lis r3, 0x1
    subi r3, r3, 0x1
    blr
}

ASM void fn_800C20F4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    lwz r6, 0x3c(r4)
    lwz r3, 0x4(r3)
    cmplwi r6, 0x0
    subi r0, r3, 0x1
    and r3, r6, r0
    opword  0x40820118  // bne .L_800C2244
    li r0, 0x0
    stw r0, 0x4(r31)
    stw r0, 0x8(r31)
    lwz r3, 0x2c(r31)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    lwz r0, 0x34(r31)
    clrrwi. r0, r0, 31
    opword  0x41820020  // beq .L_800C2170
    lwz r4, 0x0(r30)
    li r3, 0x1
    lwz r0, 0x0(r4)
    stw r0, 0x4(r31)
    lwz r4, 0x0(r30)
    stw r31, 0x0(r4)
    opword  0x48000150  // b .L_800C22BC
L_800C2170:
    lwz r3, 0x30(r31)
    lis r4, lbl_80536C50@ha
    addi r5, r4, lbl_80536C50@l
    li r4, 0x0
    lwz r3, 0x2c(r3)
    lwz r29, 0x58(r5)
    lwz r12, 0x0(r3)
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    clrlwi r0, r3, 16
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_800C21AC
    li r5, 0x0
    opword  0x4800001C  // b .L_800C21C4
L_800C21AC:
    lwz r4, 0x4(r29)
    clrlslwi r0, r3, 16, 5
    add r3, r4, r0
    lwz r0, 0x1c(r3)
    add r0, r3, r0
    srwi r5, r0, 5
L_800C21C4:
    lwz r3, 0x4(r30)
    lwz r4, 0x0(r30)
    subi r0, r3, 0x1
    and r0, r5, r0
    slwi r28, r0, 2
    lwzx r29, r4, r28
    cmplwi r29, 0x0
    opword  0x40820040  // bne .L_800C2220
    stwx r31, r4, r28
    li r3, 0x1
    opword  0x480000D0  // b .L_800C22BC
    opword  0x48000030  // b .L_800C2220
L_800C21F4:
    mr r3, r29
    mr r4, r31
    bl fn_800BC848
    clrlwi. r0, r3, 24
    opword  0x41820018  // beq .L_800C221C
    lwz r4, 0x2c(r31)
    mr r3, r29
    bl fn_800BC764
    li r3, 0x0
    opword  0x480000A4  // b .L_800C22BC
L_800C221C:
    lwz r29, 0x4(r29)
L_800C2220:
    cmplwi r29, 0x0
    opword  0x4082FFD0  // bne .L_800C21F4
    lwz r4, 0x0(r30)
    li r3, 0x1
    lwzx r0, r4, r28
    stw r0, 0x4(r31)
    lwz r4, 0x0(r30)
    stwx r31, r4, r28
    opword  0x4800007C  // b .L_800C22BC
L_800C2244:
    li r0, 0x0
    slwi r5, r3, 2
    stw r0, 0x4(r31)
    stw r0, 0x8(r31)
    lwz r3, 0x2c(r31)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    lwz r3, 0x0(r30)
    lwzx r4, r3, r5
    cmplwi r4, 0x0
    opword  0x40820010  // bne .L_800C227C
    stwx r31, r3, r5
    li r3, 0x1
    opword  0x48000044  // b .L_800C22BC
L_800C227C:
    mr r3, r4
    opword  0x48000024  // b .L_800C22A4
L_800C2284:
    lwz r0, 0x3c(r3)
    cmplw r0, r6
    opword  0x40820014  // bne .L_800C22A0
    lwz r4, 0x2c(r31)
    bl fn_800BC764
    li r3, 0x0
    opword  0x48000020  // b .L_800C22BC
L_800C22A0:
    lwz r3, 0x4(r3)
L_800C22A4:
    cmplwi r3, 0x0
    opword  0x4082FFDC  // bne .L_800C2284
    stw r4, 0x4(r31)
    li r3, 0x1
    lwz r4, 0x0(r30)
    stwx r31, r4, r5
L_800C22BC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800C22DC(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    opword  0xC0628C48  // lfs f3, lbl_8053BBE8@sda21(r0)
    stw r0, 0x34(r1)
    li r0, 0x0
    stw r31, 0x2c(r1)
    mr r31, r4
    stw r30, 0x28(r1)
    mr r30, r3
    stw r0, 0x4(r4)
    lis r4, lbl_80536C50@ha
    addi r3, r4, lbl_80536C50@l
    stw r0, 0x8(r31)
    lwz r4, 0x2c(r31)
    stw r0, 0x4(r4)
    stw r0, 0x8(r4)
    lwz r4, 0x1c(r30)
    psq_l fp5, 0x20(r3), 0, 0
    lfs fp2, 0xc(r4)
    lfs fp1, 0x1c(r4)
    lfs fp0, 0x2c(r4)
    stfs fp2, 0x14(r1)
    psq_l fp2, 0x28(r3), 0, 0
    stfs fp0, 0x1c(r1)
    lwz r4, 0x14(r1)
    stfs fp1, 0x18(r1)
    lwz r0, 0x1c(r1)
    lwz r3, 0x18(r1)
    stw r0, 0x10(r1)
    lfs fp0, 0x10(r30)
    lfs fp4, 0x10(r1)
    stw r4, 0x8(r1)
    ps_merge00 fp4, fp4, fp3
    lfs fp6, 0x18(r30)
    stw r3, 0xc(r1)
    fadds fp0, fp0, fp6
    psq_l fp1, 0x8(r1), 0, 0
    ps_mul fp5, fp1, fp5
    ps_madd fp2, fp4, fp2, fp5
    ps_sum0 fp2, fp2, fp2, fp2
    fneg fp1, fp2
    fcmpo cr0, fp0, fp1
    opword  0x40800030  // bge .L_800C23B4
    lfs fp0, 0x14(r30)
    fsubs fp0, fp0, fp6
    fcmpo cr0, fp0, fp1
    opword  0x40810014  // ble .L_800C23A8
    fdivs fp1, fp1, fp6
    bl __cvt_fp2unsigned
    mr r6, r3
    opword  0x48000014  // b .L_800C23B8
L_800C23A8:
    lwz r3, 0x4(r30)
    subi r6, r3, 0x1
    opword  0x48000008  // b .L_800C23B8
L_800C23B4:
    li r6, 0x0
L_800C23B8:
    lwz r5, 0x4(r30)
    li r3, 0x1
    lwz r4, 0x0(r30)
    subi r0, r5, 0x1
    subf r0, r6, r0
    slwi r5, r0, 2
    lwzx r0, r4, r5
    stw r0, 0x4(r31)
    lwz r4, 0x0(r30)
    stwx r31, r4, r5
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800C23F8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r0, 0x4(r4)
    stw r0, 0x8(r4)
    lwz r5, 0x2c(r4)
    stw r0, 0x4(r5)
    stw r0, 0x8(r5)
    lwz r3, 0x20(r3)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_800C2434
    bl fn_800BC468
    li r3, 0x1
    opword  0x48000008  // b .L_800C2438
L_800C2434:
    li r3, 0x0
L_800C2438:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C2448(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r0, 0x4(r4)
    stw r0, 0x8(r4)
    lwz r5, 0x2c(r4)
    stw r0, 0x4(r5)
    stw r0, 0x8(r5)
    lwz r3, 0x20(r3)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_800C2488
    lwz r4, 0x2c(r4)
    bl fn_800BC468
    li r3, 0x1
    opword  0x48000008  // b .L_800C248C
L_800C2488:
    li r3, 0x0
L_800C248C:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800C249C(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x4(r4)
    stw r0, 0x8(r4)
    lwz r5, 0x2c(r4)
    stw r0, 0x4(r5)
    stw r0, 0x8(r5)
    lwz r5, 0x0(r3)
    lwz r0, 0x0(r5)
    stw r0, 0x4(r4)
    lwz r5, 0x0(r3)
    li r3, 0x1
    stw r4, 0x0(r5)
    blr
}

ASM void fn_800C24D0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lwz r5, 0x8(r3)
    lis r4, lbl_8049A8A0@ha
    stw r0, 0x24(r1)
    addi r0, r4, lbl_8049A8A0@l
    mulli r4, r5, 0xc
    addi r12, r1, 0x8
    add r6, r0, r4
    lwz r5, 0x0(r6)
    lwz r4, 0x4(r6)
    lwz r0, 0x8(r6)
    stw r5, 0x8(r1)
    stw r4, 0xc(r1)
    stw r0, 0x10(r1)
    bl __ptmf_scall
    nop
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800C2524(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    lwz r31, 0x0(r3)
    stw r30, 0x18(r1)
    lwz r30, 0x4(r3)
    stw r29, 0x14(r1)
    li r29, 0x0
    stw r28, 0x10(r1)
    opword  0x48000034  // b .L_800C2580
L_800C2550:
    lwz r28, 0x0(r31)
    opword  0x4800001C  // b .L_800C2570
L_800C2558:
    mr r3, r28
    lwz r12, 0x0(r28)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r28, 0x4(r28)
L_800C2570:
    cmplwi r28, 0x0
    opword  0x4082FFE4  // bne .L_800C2558
    addi r31, r31, 0x4
    addi r29, r29, 0x1
L_800C2580:
    cmplw r29, r30
    opword  0x4180FFCC  // blt .L_800C2550
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800C25A8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lwz r4, 0x4(r3)
    stw r0, 0x24(r1)
    lwz r0, 0x0(r3)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    subi r30, r4, 0x1
    slwi r3, r30, 2
    stw r29, 0x14(r1)
    add r31, r0, r3
    opword  0x48000034  // b .L_800C2608
L_800C25D8:
    lwz r29, 0x0(r31)
    opword  0x4800001C  // b .L_800C25F8
L_800C25E0:
    mr r3, r29
    lwz r12, 0x0(r29)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r29, 0x4(r29)
L_800C25F8:
    cmplwi r29, 0x0
    opword  0x4082FFE4  // bne .L_800C25E0
    subi r31, r31, 0x4
    subi r30, r30, 0x1
L_800C2608:
    cmpwi r30, 0x0
    opword  0x4080FFCC  // bge .L_800C25D8
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

