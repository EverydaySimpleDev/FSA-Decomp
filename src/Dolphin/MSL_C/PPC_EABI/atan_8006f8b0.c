#include "types.h"

extern f64 lbl_8053B5F0;
extern f64 lbl_8053B5F8;
extern f64 lbl_8053B600;
extern f64 lbl_8053B608;
extern f64 lbl_8053B610;
extern f64 lbl_8053B618;
extern f64 lbl_8053B620;

//8006F8B0
ASM f64 __kernel_sin(register f64 x, register f64 y, register s32 iy)
{
    nofralloc
    stwu    r1, -0x20(r1)
    lis     r0, 0x3e40
    stfd    f1, 0x8(r1)
    lwz     r4, 0x8(r1)
    clrlwi  r4, r4, 1
    cmpw    r4, r0
    bge     L_8006F8E4
    fctiwz  f0, f1
    stfd    f0, 0x10(r1)
    lwz     r0, 0x14(r1)
    cmpwi   r0, 0x0
    bne     L_8006F8E4
    b       L_8006F948
L_8006F8E4:
    lfd     f6, 0x8(r1)
    cmpwi   r3, 0x0
    lfd     f5, lbl_8053B610
    fmul    f7, f6, f6
    lfd     f4, lbl_8053B608
    lfd     f3, lbl_8053B600
    lfd     f1, lbl_8053B5F8
    lfd     f0, lbl_8053B5F0
    fmadd   f4, f5, f7, f4
    fmul    f5, f7, f6
    fmadd   f3, f7, f4, f3
    fmadd   f1, f7, f3, f1
    fmadd   f1, f7, f1, f0
    bne     L_8006F92C
    lfd     f0, lbl_8053B618
    fmadd   f0, f7, f1, f0
    fmadd   f1, f5, f0, f6
    b       L_8006F948
L_8006F92C:
    fmul    f0, f5, f1
    lfd     f1, lbl_8053B620
    lfd     f3, lbl_8053B618
    fmsub   f0, f1, f2, f0
    fmsub   f0, f7, f0, f2
    fnmsub  f0, f3, f5, f0
    fsub    f1, f6, f0
L_8006F948:
    addi    r1, r1, 0x20
    blr
}

extern u8 lbl_8045E030[0x98];
extern f64 lbl_8053B628;
extern f64 lbl_8053B630;
extern f64 lbl_8053B638;
extern f64 lbl_8053B640;
extern f64 lbl_8053B648;

//8006F950
ASM f64 atan(register f64 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    lis     r3, lbl_8045E030@ha
    lis     r0, 0x4410
    stfd    f1, 0x8(r1)
    addi    r5, r3, lbl_8045E030@l
    lwz     r6, 0x8(r1)
    clrlwi  r4, r6, 1
    cmpw    r4, r0
    blt     L_8006F9E0
    lis     r0, 0x7ff0
    cmpw    r4, r0
    bgt     L_8006F998
    subis   r0, r4, 0x7ff0
    cmplwi  r0, 0x0
    bne     L_8006F9A4
    lwz     r0, 0xc(r1)
    cmpwi   r0, 0x0
    beq     L_8006F9A4
L_8006F998:
    lfd     f0, 0x8(r1)
    fadd    f1, f0, f0
    b       L_8006FB60
L_8006F9A4:
    cmpwi   r6, 0x0
    ble     L_8006F9C4
    addi    r4, r5, 0x0
    addi    r3, r5, 0x20
    lfd     f1, 0x18(r4)
    lfd     f0, 0x18(r3)
    fadd    f1, f1, f0
    b       L_8006FB60
L_8006F9C4:
    addi    r4, r5, 0x0
    addi    r3, r5, 0x20
    lfd     f1, 0x18(r4)
    lfd     f0, 0x18(r3)
    fneg    f1, f1
    fsub    f1, f1, f0
    b       L_8006FB60
L_8006F9E0:
    lis     r0, 0x3fdc
    cmpw    r4, r0
    bge     L_8006FA18
    lis     r0, 0x3e20
    cmpw    r4, r0
    bge     L_8006FA10
    lfd     f2, lbl_8053B628
    lfd     f0, lbl_8053B630
    fadd    f2, f2, f1
    fcmpo   cr0, f2, f0
    ble     L_8006FA10
    b       L_8006FB60
L_8006FA10:
    li      r0, -0x1
    b       L_8006FAB4
L_8006FA18:
    fabs    f3, f1
    lis     r0, 0x3ff3
    cmpw    r4, r0
    stfd    f3, 0x8(r1)
    bge     L_8006FA74
    lis     r0, 0x3fe6
    cmpw    r4, r0
    bge     L_8006FA58
    lfd     f2, lbl_8053B638
    li      r0, 0x0
    lfd     f1, lbl_8053B630
    fadd    f0, f2, f3
    fmsub   f1, f2, f3, f1
    fdiv    f0, f1, f0
    stfd    f0, 0x8(r1)
    b       L_8006FAB4
L_8006FA58:
    lfd     f0, lbl_8053B630
    li      r0, 0x1
    fsub    f1, f3, f0
    fadd    f0, f0, f3
    fdiv    f0, f1, f0
    stfd    f0, 0x8(r1)
    b       L_8006FAB4
L_8006FA74:
    lis     r3, 0x4004
    addi    r0, r3, -0x8000
    cmpw    r4, r0
    bge     L_8006FAA4
    lfd     f2, lbl_8053B640
    li      r0, 0x2
    lfd     f0, lbl_8053B630
    fsub    f1, f3, f2
    fmadd   f0, f2, f3, f0
    fdiv    f0, f1, f0
    stfd    f0, 0x8(r1)
    b       L_8006FAB4
L_8006FAA4:
    lfd     f0, lbl_8053B648
    li      r0, 0x3
    fdiv    f0, f0, f3
    stfd    f0, 0x8(r1)
L_8006FAB4:
    lfd     f9, 0x8(r1)
    addi    r3, r5, 0x40
    lfd     f4, 0x50(r3)
    cmpwi   r0, 0x0
    fmul    f11, f9, f9
    lfd     f1, 0x40(r3)
    lfd     f7, 0x30(r3)
    lfd     f3, 0x48(r3)
    lfd     f0, 0x38(r3)
    fmul    f10, f11, f11
    lfd     f6, 0x20(r3)
    lfd     f2, 0x28(r3)
    lfd     f5, 0x10(r3)
    fmadd   f8, f10, f4, f1
    lfd     f1, 0x18(r3)
    lfd     f4, 0x40(r5)
    fmadd   f3, f10, f3, f0
    lfd     f0, 0x8(r3)
    fmadd   f7, f10, f8, f7
    fmadd   f2, f10, f3, f2
    fmadd   f3, f10, f7, f6
    fmadd   f1, f10, f2, f1
    fmadd   f2, f10, f3, f5
    fmadd   f0, f10, f1, f0
    fmadd   f1, f10, f2, f4
    fmul    f2, f10, f0
    fmul    f0, f11, f1
    bge     L_8006FB30
    fadd    f0, f0, f2
    fnmsub  f1, f9, f0, f9
    b       L_8006FB60
L_8006FB30:
    slwi    r0, r0, 3
    addi    r3, r5, 0x20
    fadd    f1, f0, f2
    lfdx    f0, r3, r0
    addi    r3, r5, 0x0
    cmpwi   r6, 0x0
    lfdx    f2, r3, r0
    fmsub   f0, f9, f1, f0
    fsub    f0, f0, f9
    fsub    f1, f2, f0
    bge     L_8006FB60
    fneg    f1, f1
L_8006FB60:
    addi    r1, r1, 0x10
    blr
}

extern f64 lbl_8053B650;
extern f64 lbl_8053B658;

//8006FB68
ASM f64 ceil(register f64 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    stfd    f1, 0x8(r1)
    lwz     r5, 0x8(r1)
    lwz     r6, 0xc(r1)
    extrwi  r3, r5, 11, 1
    subi    r7, r3, 0x3ff
    cmpwi   r7, 0x14
    bge     L_8006FC18
    cmpwi   r7, 0x0
    bge     L_8006FBCC
    lfd     f2, lbl_8053B650
    lfd     f0, lbl_8053B658
    fadd    f1, f2, f1
    fcmpo   cr0, f1, f0
    ble     L_8006FC98
    cmpwi   r5, 0x0
    bge     L_8006FBB8
    lis     r5, 0x8000
    li      r6, 0x0
    b       L_8006FC98
L_8006FBB8:
    or.     r0, r5, r6
    beq     L_8006FC98
    lis     r5, 0x3ff0
    li      r6, 0x0
    b       L_8006FC98
L_8006FBCC:
    lis     r3, 0x10
    subi    r0, r3, 0x1
    sraw    r4, r0, r7
    and     r0, r5, r4
    or.     r0, r6, r0
    bne     L_8006FBE8
    b       L_8006FCA4
L_8006FBE8:
    lfd     f2, lbl_8053B650
    lfd     f0, lbl_8053B658
    fadd    f1, f2, f1
    fcmpo   cr0, f1, f0
    ble     L_8006FC98
    cmpwi   r5, 0x0
    ble     L_8006FC0C
    sraw    r0, r3, r7
    add     r5, r5, r0
L_8006FC0C:
    andc    r5, r5, r4
    li      r6, 0x0
    b       L_8006FC98
L_8006FC18:
    cmpwi   r7, 0x33
    ble     L_8006FC30
    cmpwi   r7, 0x400
    bne     L_8006FCA4
    fadd    f1, f1, f1
    b       L_8006FCA4
L_8006FC30:
    subi    r0, r7, 0x14
    li      r3, -0x1
    srw     r4, r3, r0
    and.    r0, r6, r4
    bne     L_8006FC48
    b       L_8006FCA4
L_8006FC48:
    lfd     f2, lbl_8053B650
    lfd     f0, lbl_8053B658
    fadd    f1, f2, f1
    fcmpo   cr0, f1, f0
    ble     L_8006FC98
    cmpwi   r5, 0x0
    ble     L_8006FC94
    cmpwi   r7, 0x14
    bne     L_8006FC74
    addi    r5, r5, 0x1
    b       L_8006FC94
L_8006FC74:
    subfic  r0, r7, 0x34
    li      r3, 0x1
    slw     r0, r3, r0
    add     r0, r6, r0
    cmplw   r0, r6
    bge     L_8006FC90
    addi    r5, r5, 0x1
L_8006FC90:
    mr      r6, r0
L_8006FC94:
    andc    r6, r6, r4
L_8006FC98:
    stw     r5, 0x8(r1)
    stw     r6, 0xc(r1)
    lfd     f1, 0x8(r1)
L_8006FCA4:
    addi    r1, r1, 0x10
    blr
}
