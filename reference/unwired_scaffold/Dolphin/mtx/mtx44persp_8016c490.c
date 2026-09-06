#include "Dolphin/mtx.h"

extern f32 tanf(f32);
extern f32 lbl_8065F298;
extern f32 lbl_8065F29C;
extern f32 lbl_8065F2A0;
extern f32 lbl_8065F2A4;
extern f32 lbl_8065F2A8;
extern f32 lbl_8065F2AC;

//8016C490
ASM void C_MTXPerspective(register Mtx44 m, register f32 fovY, register f32 aspect, register f32 n, register f32 f)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x40(r1)
    stfd    f31, 0x38(r1)
    fmr     f31, f4
    stfd    f30, 0x30(r1)
    fmr     f30, f3
    stfd    f29, 0x28(r1)
    fmr     f29, f2
    stw     r31, 0x24(r1)
    mr      r31, m
    lfs     f5, lbl_8065F2A8
    lfs     f0, lbl_8065F2AC
    fmuls   f1, f5, f1
    fmuls   f1, f0, f1
    bl      tanf
    lfs     f3, lbl_8065F298
    fsubs   f2, f31, f30
    fmuls   f0, f31, f30
    fdivs   f4, f3, f1
    fdivs   f1, f4, f29
    stfs    f1, 0x0(r31)
    fdivs   f3, f3, f2
    lfs     f2, lbl_8065F2A0
    stfs    f2, 0x4(r31)
    stfs    f2, 0x8(r31)
    stfs    f2, 0xc(r31)
    stfs    f2, 0x10(r31)
    fneg    f1, f30
    fneg    f0, f0
    stfs    f4, 0x14(r31)
    fmuls   f1, f1, f3
    stfs    f2, 0x18(r31)
    fmuls   f0, f3, f0
    stfs    f2, 0x1c(r31)
    stfs    f2, 0x20(r31)
    stfs    f2, 0x24(r31)
    stfs    f1, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stfs    f2, 0x30(r31)
    stfs    f2, 0x34(r31)
    lfs     f0, lbl_8065F2A4
    stfs    f0, 0x38(r31)
    stfs    f2, 0x3c(r31)
    lwz     r0, 0x44(r1)
    lfd     f31, 0x38(r1)
    lfd     f30, 0x30(r1)
    lfd     f29, 0x28(r1)
    lwz     r31, 0x24(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr
}

//8016C560
ASM void C_MTXOrtho(register Mtx44 m, register f32 t, register f32 b, register f32 l, register f32 r, register f32 n, register f32 f)
{
    nofralloc
    fsubs   f8, r, l
    lfs     f9, lbl_8065F298
    fsubs   f0, t, b
    lfs     f7, lbl_8065F29C
    fadds   f3, r, l
    fdivs   f10, f9, f8
    fdivs   f8, f9, f0
    fmuls   f4, f7, f10
    fneg    f3, f3
    fsubs   f0, f, n
    stfs    f4, 0x0(m)
    fadds   f1, t, b
    fmuls   f2, f10, f3
    lfs     f3, lbl_8065F2A0
    fneg    f1, f1
    stfs    f3, 0x4(m)
    fdivs   f4, f9, f0
    stfs    f3, 0x8(m)
    stfs    f2, 0xc(m)
    stfs    f3, 0x10(m)
    fmuls   f2, f7, f8
    fneg    f0, f
    fmuls   f1, f8, f1
    stfs    f2, 0x14(m)
    fmuls   f0, f0, f4
    stfs    f3, 0x18(m)
    stfs    f1, 0x1c(m)
    stfs    f3, 0x20(m)
    stfs    f3, 0x24(m)
    lfs     f1, lbl_8065F2A4
    fmuls   f1, f1, f4
    stfs    f1, 0x28(m)
    stfs    f0, 0x2c(m)
    stfs    f3, 0x30(m)
    stfs    f3, 0x34(m)
    stfs    f3, 0x38(m)
    stfs    f9, 0x3c(m)
    blr
}
