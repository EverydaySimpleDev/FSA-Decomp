#include "types.h"

extern f64 lbl_8045DE58;
extern f64 lbl_8045DF60;
extern f64 lbl_8053B510;
extern f64 lbl_8053B518;
extern f64 lbl_8053B520;
extern f64 lbl_8053B528;
extern f64 lbl_8053B530;
extern f64 lbl_8053B538;
extern f64 lbl_8053B540;
extern f64 lbl_8053B548;
extern f64 lbl_8053B550;
extern f64 lbl_8053B558;
extern f64 lbl_8053B560;
extern s32 __kernel_rem_pio2(register f64* x, register f64* y, register s32 e0, register s32 nx, register s32 prec, register const s32* ipio2);

//8006E5C8
ASM s32 __ieee754_rem_pio2(register f64 x, register f64* y)
{
    nofralloc
    stwu    r1, -0x60(r1)
    mflr    r0
    lis     r4, 0x3fe9
    stw     r0, 0x64(r1)
    addi    r0, r4, 0x21fb
    stw     r31, 0x5c(r1)
    stfd    f1, 0x8(r1)
    lwz     r31, 0x8(r1)
    stw     r30, 0x58(r1)
    mr      r30, r3
    clrlwi  r6, r31, 1
    cmpw    r6, r0
    bgt     L_8006E610
    stfd    f1, 0x0(r30)
    li      r3, 0x0
    lfd     f0, lbl_8053B510
    stfd    f0, 0x8(r30)
    b       L_8006E950
L_8006E610:
    lis     r3, 0x4003
    subi    r0, r3, 0x2684
    cmpw    r6, r0
    bge     L_8006E6F8
    cmpwi   r31, 0x0
    ble     L_8006E690
    lfd     f0, lbl_8053B518
    subis   r0, r6, 0x3ff9
    cmplwi  r0, 0x21fb
    fsub    f2, f1, f0
    stfd    f2, 0x10(r1)
    beq     L_8006E660
    lfd     f1, lbl_8053B520
    fsub    f0, f2, f1
    stfd    f0, 0x0(r30)
    lfd     f0, 0x0(r30)
    fsub    f0, f2, f0
    fsub    f0, f0, f1
    stfd    f0, 0x8(r30)
    b       L_8006E688
L_8006E660:
    lfd     f0, lbl_8053B528
    lfd     f1, lbl_8053B530
    fsub    f2, f2, f0
    fsub    f0, f2, f1
    stfd    f2, 0x10(r1)
    stfd    f0, 0x0(r30)
    lfd     f0, 0x0(r30)
    fsub    f0, f2, f0
    fsub    f0, f0, f1
    stfd    f0, 0x8(r30)
L_8006E688:
    li      r3, 0x1
    b       L_8006E950
L_8006E690:
    lfd     f0, lbl_8053B518
    subis   r0, r6, 0x3ff9
    cmplwi  r0, 0x21fb
    fadd    f2, f0, f1
    stfd    f2, 0x10(r1)
    beq     L_8006E6C8
    lfd     f1, lbl_8053B520
    fadd    f0, f1, f2
    stfd    f0, 0x0(r30)
    lfd     f0, 0x0(r30)
    fsub    f0, f2, f0
    fadd    f0, f1, f0
    stfd    f0, 0x8(r30)
    b       L_8006E6F0
L_8006E6C8:
    lfd     f0, lbl_8053B528
    lfd     f1, lbl_8053B530
    fadd    f2, f2, f0
    fadd    f0, f1, f2
    stfd    f2, 0x10(r1)
    stfd    f0, 0x0(r30)
    lfd     f0, 0x0(r30)
    fsub    f0, f2, f0
    fadd    f0, f1, f0
    stfd    f0, 0x8(r30)
L_8006E6F0:
    li      r3, -0x1
    b       L_8006E950
L_8006E6F8:
    lis     r3, 0x4139
    addi    r0, r3, 0x21fb
    cmpw    r6, r0
    bgt     L_8006E840
    fabs    f4, f1
    lis     r0, 0x4330
    lfd     f1, lbl_8053B540
    lfd     f0, lbl_8053B538
    stw     r0, 0x38(r1)
    fmadd   f2, f1, f4, f0
    lfd     f3, lbl_8053B560
    lfd     f1, lbl_8053B518
    lfd     f0, lbl_8053B520
    fctiwz  f2, f2
    stfd    f2, 0x30(r1)
    lwz     r3, 0x34(r1)
    xoris   r0, r3, 0x8000
    cmpwi   r3, 0x20
    stw     r0, 0x3c(r1)
    lfd     f2, 0x38(r1)
    fsub    f5, f2, f3
    fnmsub  f4, f1, f5, f4
    fmul    f1, f0, f5
    bge     L_8006E780
    lis     r4, lbl_8045DF60@ha
    slwi    r0, r3, 2
    addi    r4, r4, lbl_8045DF60@l
    add     r4, r4, r0
    lwz     r0, -0x4(r4)
    cmpw    r6, r0
    beq     L_8006E780
    fsub    f0, f4, f1
    stfd    f0, 0x0(r30)
    b       L_8006E804
L_8006E780:
    fsub    f0, f4, f1
    srawi   r4, r6, 20
    stfd    f0, 0x0(r30)
    lwz     r0, 0x0(r30)
    extrwi  r0, r0, 11, 1
    subf    r0, r0, r4
    cmpwi   r0, 0x10
    ble     L_8006E804
    lfd     f0, lbl_8053B528
    fmr     f3, f4
    lfd     f1, lbl_8053B530
    fmul    f2, f0, f5
    fsub    f4, f4, f2
    fsub    f0, f3, f4
    fsub    f0, f0, f2
    fmsub   f1, f1, f5, f0
    fsub    f0, f4, f1
    stfd    f0, 0x0(r30)
    lwz     r0, 0x0(r30)
    extrwi  r0, r0, 11, 1
    subf    r0, r0, r4
    cmpwi   r0, 0x31
    ble     L_8006E804
    lfd     f0, lbl_8053B548
    fmr     f2, f4
    lfd     f1, lbl_8053B550
    fmul    f3, f0, f5
    fsub    f4, f4, f3
    fsub    f0, f2, f4
    fsub    f0, f0, f3
    fmsub   f1, f1, f5, f0
    fsub    f0, f4, f1
    stfd    f0, 0x0(r30)
L_8006E804:
    lfd     f0, 0x0(r30)
    cmpwi   r31, 0x0
    fsub    f0, f4, f0
    fsub    f0, f0, f1
    stfd    f0, 0x8(r30)
    bge     L_8006E950
    lfd     f0, 0x0(r30)
    neg     r3, r3
    fneg    f0, f0
    stfd    f0, 0x0(r30)
    lfd     f0, 0x8(r30)
    fneg    f0, f0
    stfd    f0, 0x8(r30)
    b       L_8006E950
    b       L_8006E950
L_8006E840:
    lis     r0, 0x7ff0
    cmpw    r6, r0
    blt     L_8006E860
    fsub    f0, f1, f1
    li      r3, 0x0
    stfd    f0, 0x8(r30)
    stfd    f0, 0x0(r30)
    b       L_8006E950
L_8006E860:
    srawi   r3, r6, 20
    lis     r0, 0x4330
    subi    r5, r3, 0x416
    lwz     r4, 0xc(r1)
    slwi    r3, r5, 20
    stw     r0, 0x30(r1)
    subf    r3, r3, r6
    lfd     f5, lbl_8053B560
    stw     r4, 0x14(r1)
    addi    r4, r1, 0x30
    lfd     f4, lbl_8053B558
    li      r6, 0x3
    stw     r3, 0x10(r1)
    lfd     f1, lbl_8053B510
    lfd     f3, 0x10(r1)
    stw     r0, 0x48(r1)
    fctiwz  f0, f3
    stfd    f0, 0x38(r1)
    lwz     r0, 0x3c(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(r1)
    lfd     f0, 0x30(r1)
    fsub    f2, f0, f5
    fsub    f0, f3, f2
    stfd    f2, 0x18(r1)
    fmul    f3, f4, f0
    fctiwz  f0, f3
    stfd    f3, 0x10(r1)
    stfd    f0, 0x40(r1)
    lwz     r0, 0x44(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x4c(r1)
    lfd     f0, 0x48(r1)
    fsub    f2, f0, f5
    fsub    f0, f3, f2
    stfd    f2, 0x20(r1)
    fmul    f0, f4, f0
    stfd    f0, 0x10(r1)
    stfd    f0, 0x28(r1)
    b       L_8006E908
L_8006E900:
    subi    r4, r4, 0x8
    subi    r6, r6, 0x1
L_8006E908:
    lfd     f0, -0x8(r4)
    fcmpu   cr0, f1, f0
    beq     L_8006E900
    lis     r3, lbl_8045DE58@ha
    mr      r4, r30
    addi    r8, r3, lbl_8045DE58@l
    li      r7, 0x2
    addi    r3, r1, 0x18
    bl      __kernel_rem_pio2
    cmpwi   r31, 0x0
    bge     L_8006E950
    lfd     f0, 0x0(r30)
    neg     r3, r3
    fneg    f0, f0
    stfd    f0, 0x0(r30)
    lfd     f0, 0x8(r30)
    fneg    f0, f0
    stfd    f0, 0x8(r30)
L_8006E950:
    lwz     r0, 0x64(r1)
    lwz     r31, 0x5c(r1)
    lwz     r30, 0x58(r1)
    mtlr    r0
    addi    r1, r1, 0x60
    blr

}

extern f64 lbl_8053B568;
extern f64 lbl_8053B570;
extern f64 lbl_8053B578;
extern f64 lbl_8053B580;
extern f64 lbl_8053B588;
extern f64 lbl_8053B590;
extern f64 lbl_8053B598;
extern f64 lbl_8053B5A0;
extern f64 lbl_8053B5A8;

//8006E968
ASM f64 __kernel_cos(register f64 x, register f64 y)
{
    nofralloc
    stwu    r1, -0x20(r1)
    lis     r0, 0x3e40
    stfd    f1, 0x8(r1)
    lwz     r3, 0x8(r1)
    clrlwi  r4, r3, 1
    cmpw    r4, r0
    bge     L_8006E9A0
    fctiwz  f0, f1
    stfd    f0, 0x18(r1)
    lwz     r0, 0x1c(r1)
    cmpwi   r0, 0x0
    bne     L_8006E9A0
    lfd     f1, lbl_8053B568
    b       L_8006EA54
L_8006E9A0:
    lfd     f6, 0x8(r1)
    lis     r3, 0x3fd3
    addi    r0, r3, 0x3333
    lfd     f5, lbl_8053B598
    fmul    f7, f6, f6
    lfd     f0, lbl_8053B590
    lfd     f4, lbl_8053B588
    cmpw    r4, r0
    lfd     f3, lbl_8053B580
    lfd     f1, lbl_8053B578
    fmadd   f5, f5, f7, f0
    lfd     f0, lbl_8053B570
    fmadd   f4, f7, f5, f4
    fmadd   f3, f7, f4, f3
    fmadd   f1, f7, f3, f1
    fmadd   f0, f7, f1, f0
    fmul    f4, f7, f0
    bge     L_8006EA04
    fmul    f0, f6, f2
    lfd     f1, lbl_8053B5A0
    lfd     f2, lbl_8053B568
    fmsub   f0, f7, f4, f0
    fmsub   f0, f1, f7, f0
    fsub    f1, f2, f0
    b       L_8006EA54
L_8006EA04:
    lis     r0, 0x3fe9
    cmpw    r4, r0
    ble     L_8006EA1C
    lfd     f0, lbl_8053B5A8
    stfd    f0, 0x10(r1)
    b       L_8006EA2C
L_8006EA1C:
    subis   r3, r4, 0x20
    li      r0, 0x0
    stw     r3, 0x10(r1)
    stw     r0, 0x14(r1)
L_8006EA2C:
    lfd     f0, 0x8(r1)
    lfd     f3, 0x10(r1)
    fmul    f0, f0, f2
    lfd     f1, lbl_8053B5A0
    lfd     f2, lbl_8053B568
    fmsub   f1, f1, f7, f3
    fmsub   f0, f7, f4, f0
    fsub    f2, f2, f3
    fsub    f0, f1, f0
    fsub    f1, f2, f0
L_8006EA54:
    addi    r1, r1, 0x20
    blr

}
