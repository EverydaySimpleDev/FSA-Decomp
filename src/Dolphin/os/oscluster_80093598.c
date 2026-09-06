#include "types.h"

extern f32 fn_80093758;
extern f32 lbl_8052EBC0;
extern f32 lbl_80534C00;
extern f32 lbl_80535C20;
extern f32 lbl_8053B948;
extern f32 lbl_8053B968;
extern f32 lbl_8053B970;
extern f32 lbl_8053B978;
extern f32 lbl_8053B980;
extern f32 lbl_8053B988;

extern void atan(void);
extern void cos(void);
extern void __construct_array(void);
extern void log(void);
extern void sin(void);

ASM void fn_80093598(void);

ASM void fn_80093598(void)
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
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    lis r3, lbl_8052EBC0@ha
    lis r4, fn_80093758@ha
    addi r3, r3, lbl_8052EBC0@l
    li r5, 0x0
    addi r4, r4, fn_80093758@l
    li r6, 0x8
    li r7, 0x800
    bl __construct_array
    lis r3, lbl_8052EBC0@ha
    opword  0xCBA289E8  // lfd f29, lbl_8053B988@sda21(r0)
    opword  0xCBE289C8  // lfd f31, lbl_8053B968@sda21(r0)
    addi r29, r3, lbl_8052EBC0@l
    opword  0xCBC289D0  // lfd f30, lbl_8053B970@sda21(r0)
    li r30, 0x0
    lis r31, 0x4330
L_8009360C:
    xoris r0, r30, 0x8000
    stw r31, 0x8(r1)
    stw r0, 0xc(r1)
    lfd fp0, 0x8(r1)
    fsub fp0, fp0, fp29
    fmul fp0, fp0, fp31
    fdiv fp28, fp0, fp30
    fmr fp1, fp28
    bl sin
    frsp fp0, fp1
    fmr fp1, fp28
    stfs fp0, 0x0(r29)
    bl cos
    frsp fp0, fp1
    addi r30, r30, 0x1
    cmpwi r30, 0x800
    stfs fp0, 0x4(r29)
    addi r29, r29, 0x8
    opword  0x4180FFB8  // blt .L_8009360C
    lis r3, lbl_80534C00@ha
    opword  0xCBE289E8  // lfd f31, lbl_8053B988@sda21(r0)
    opword  0xCBC289D8  // lfd f30, lbl_8053B978@sda21(r0)
    addi r29, r3, lbl_80534C00@l
    li r30, 0x0
    lis r31, 0x4330
L_80093670:
    xoris r0, r30, 0x8000
    stw r31, 0x8(r1)
    stw r0, 0xc(r1)
    lfd fp0, 0x8(r1)
    fsub fp0, fp0, fp31
    fmul fp1, fp0, fp30
    bl atan
    frsp fp0, fp1
    addi r30, r30, 0x1
    cmplwi r30, 0x400
    stfs fp0, 0x0(r29)
    addi r29, r29, 0x4
    opword  0x4180FFD0  // blt .L_80093670
    lis r3, lbl_80534C00@ha
    opword  0xC02289A8  // lfs f1, lbl_8053B948@sda21(r0)
    addi r4, r3, lbl_80534C00@l
    opword  0xC00289E0  // lfs f0, lbl_8053B980@sda21(r0)
    lis r3, lbl_80535C20@ha
    stfs fp1, 0x0(r4)
    opword  0xCBC289E8  // lfd f30, lbl_8053B988@sda21(r0)
    addi r29, r3, lbl_80535C20@l
    stfs fp0, 0x1000(r4)
    li r30, 0x0
    opword  0xCBE289D8  // lfd f31, lbl_8053B978@sda21(r0)
    lis r31, 0x4330
L_800936D4:
    xoris r0, r30, 0x8000
    stw r31, 0x8(r1)
    stw r0, 0xc(r1)
    lfd fp0, 0x8(r1)
    fsub fp0, fp0, fp30
    fmul fp1, fp0, fp31
    bl log
    frsp fp0, fp1
    addi r30, r30, 0x1
    cmpwi r30, 0x400
    stfs fp0, 0x0(r29)
    addi r29, r29, 0x4
    opword  0x4180FFD0  // blt .L_800936D4
    opword  0xC02289A8  // lfs f1, lbl_8053B948@sda21(r0)
    lis r3, lbl_80535C20@ha
    opword  0xC00289E0  // lfs f0, lbl_8053B980@sda21(r0)
    stfsu fp1, lbl_80535C20@l(r3)
    stfs fp0, 0x1000(r3)
    psq_l fp31, 0x58(r1), 0, 0
    lfd fp31, 0x50(r1)
    psq_l fp30, 0x48(r1), 0, 0
    lfd fp30, 0x40(r1)
    psq_l fp29, 0x38(r1), 0, 0
    lfd fp29, 0x30(r1)
    psq_l fp28, 0x28(r1), 0, 0
    lfd fp28, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r0, 0x64(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_80093598 = (void*)fn_80093598;

