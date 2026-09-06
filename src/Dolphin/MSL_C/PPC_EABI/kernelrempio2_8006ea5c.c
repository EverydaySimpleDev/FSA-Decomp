#include "types.h"

extern s32 lbl_8045DFE0[4];
extern f64 lbl_8045DFF0[8];
extern f64 lbl_8053B5B0;
extern f64 lbl_8053B5B8;
extern f64 lbl_8053B5C0;
extern f64 lbl_8053B5C8;
extern f64 lbl_8053B5D0;
extern f64 lbl_8053B5D8;
extern f64 lbl_8053B5E0;
extern f64 lbl_8053B5E8;
extern void _savefpr_25(void);
extern void _restfpr_25(void);
extern f64 ldexp(register f64 value, register s32 exp);
extern f64 rint(register f64 x);

//8006EA5C
ASM s32 __kernel_rem_pio2(register f64* x, register f64* y, register s32 e0, register s32 nx, register s32 prec, register const s32* ipio2)
{
    nofralloc
    stwu    r1, -0x2d0(r1)
    mflr    r0
    stw     r0, 0x2d4(r1)
    addi    r11, r1, 0x2d0
    bl      _savefpr_25
    stmw    r16, 0x258(r1)
    lis     r9, 0x2aab
    mr      r23, r7
    subi    r0, r5, 0x3
    lis     r10, lbl_8045DFE0@ha
    subi    r7, r9, 0x5555
    slwi    r9, r23, 2
    mulhw   r0, r7, r0
    addi    r7, r10, lbl_8045DFE0@l
    lwzx    r28, r7, r9
    mr      r21, r3
    mr      r22, r4
    mr      r24, r8
    srawi   r0, r0, 2
    subi    r30, r6, 0x1
    srwi    r3, r0, 31
    add.    r29, r0, r3
    bge     L_8006EABC
    li      r29, 0x0
L_8006EABC:
    addi    r0, r29, 0x1
    add.    r7, r30, r28
    mulli   r4, r0, 0x18
    subf    r6, r30, r29
    lfd     f1, lbl_8053B5E8
    slwi    r3, r6, 2
    subf    r26, r4, r5
    addi    r0, r7, 0x1
    add     r4, r24, r3
    addi    r5, r1, 0x198
    lis     r3, 0x4330
    mtctr   r0
    blt     L_8006EB2C
L_8006EAF0:
    cmpwi   r6, 0x0
    bge     L_8006EB00
    lfd     f0, lbl_8053B5B0
    b       L_8006EB18
L_8006EB00:
    lwz     r0, 0x0(r4)
    stw     r3, 0x238(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x23c(r1)
    lfd     f0, 0x238(r1)
    fsub    f0, f0, f1
L_8006EB18:
    stfd    f0, 0x0(r5)
    addi    r5, r5, 0x8
    addi    r4, r4, 0x4
    addi    r6, r6, 0x1
    bdnz    L_8006EAF0
L_8006EB2C:
    addi    r5, r1, 0x58
    li      r7, 0x0
    b       L_8006EC90
L_8006EB38:
    cmpwi   r30, 0x0
    lfd     f4, lbl_8053B5B0
    li      r6, 0x0
    blt     L_8006EC84
    addi    r0, r30, 0x1
    subi    r9, r30, 0x8
    cmpwi   r0, 0x8
    ble     L_8006EC40
    addi    r8, r9, 0x8
    mr      r4, r21
    srwi    r8, r8, 3
    add     r0, r30, r7
    addi    r3, r1, 0x198
    mtctr   r8
    cmpwi   r9, 0x0
    blt     L_8006EC40
L_8006EB78:
    subf    r8, r6, r0
    addi    r9, r6, 0x1
    slwi    r10, r8, 3
    lfd     f1, 0x0(r4)
    lfdx    f0, r3, r10
    subf    r9, r9, r0
    slwi    r10, r9, 3
    addi    r8, r6, 0x2
    fmadd   f4, f1, f0, f4
    subf    r9, r8, r0
    addi    r8, r6, 0x3
    lfd     f1, 0x8(r4)
    lfdx    f0, r3, r10
    subf    r8, r8, r0
    fmadd   f4, f1, f0, f4
    slwi    r9, r9, 3
    lfd     f1, 0x10(r4)
    slwi    r10, r8, 3
    lfdx    f0, r3, r9
    addi    r8, r6, 0x4
    fmadd   f4, f1, f0, f4
    lfd     f1, 0x18(r4)
    lfdx    f0, r3, r10
    subf    r9, r8, r0
    slwi    r10, r9, 3
    addi    r8, r6, 0x5
    fmadd   f4, f1, f0, f4
    lfd     f2, 0x20(r4)
    lfdx    f0, r3, r10
    subf    r8, r8, r0
    slwi    r10, r8, 3
    addi    r9, r6, 0x6
    fmadd   f4, f2, f0, f4
    subf    r9, r9, r0
    slwi    r9, r9, 3
    lfd     f1, 0x28(r4)
    lfdx    f0, r3, r10
    addi    r8, r6, 0x7
    fmadd   f4, f1, f0, f4
    subf    r8, r8, r0
    slwi    r8, r8, 3
    lfd     f3, 0x30(r4)
    lfdx    f2, r3, r9
    addi    r6, r6, 0x8
    lfd     f1, 0x38(r4)
    fmadd   f4, f3, f2, f4
    lfdx    f0, r3, r8
    addi    r4, r4, 0x40
    fmadd   f4, f1, f0, f4
    bdnz    L_8006EB78
L_8006EC40:
    addi    r0, r30, 0x1
    slwi    r3, r6, 3
    subf    r0, r6, r0
    add     r8, r30, r7
    add     r4, r21, r3
    addi    r3, r1, 0x198
    mtctr   r0
    cmpw    r6, r30
    bgt     L_8006EC84
L_8006EC64:
    subf    r0, r6, r8
    lfd     f1, 0x0(r4)
    slwi    r0, r0, 3
    addi    r4, r4, 0x8
    lfdx    f0, r3, r0
    addi    r6, r6, 0x1
    fmadd   f4, f1, f0, f4
    bdnz    L_8006EC64
L_8006EC84:
    stfd    f4, 0x0(r5)
    addi    r5, r5, 0x8
    addi    r7, r7, 0x1
L_8006EC90:
    cmpw    r7, r28
    ble     L_8006EB38
    subfic  r18, r26, 0x18
    lfd     f26, lbl_8053B5B8
    lfd     f27, lbl_8053B5E8
    addi    r16, r1, 0x8
    lfd     f28, lbl_8053B5C0
    mr      r31, r28
    lfd     f29, lbl_8053B5D0
    subfic  r17, r26, 0x17
    lfd     f30, lbl_8053B5C8
    addi    r20, r1, 0x198
    lfd     f31, lbl_8053B5B0
    lis     r19, 0x4330
L_8006ECC8:
    slwi    r0, r31, 3
    addi    r5, r1, 0x58
    add     r5, r5, r0
    cmpwi   r31, 0x0
    lfd     f1, 0x0(r5)
    mr      r4, r16
    mr      r3, r31
    ble     L_8006EDD0
    srwi.   r0, r31, 1
    mtctr   r0
    beq     L_8006ED84
L_8006ECF4:
    fmul    f3, f26, f1
    stw     r19, 0x240(r1)
    lfd     f0, -0x8(r5)
    fctiwz  f2, f3
    stfd    f2, 0x238(r1)
    lwz     r0, 0x23c(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x244(r1)
    lfd     f2, 0x240(r1)
    fsub    f3, f2, f27
    stw     r19, 0x240(r1)
    fnmsub  f2, f28, f3, f1
    fadd    f1, f3, f0
    lfdu    f0, -0x10(r5)
    fctiwz  f2, f2
    fmul    f3, f26, f1
    stfd    f2, 0x248(r1)
    fctiwz  f2, f3
    lwz     r0, 0x24c(r1)
    stw     r0, 0x0(r4)
    stfd    f2, 0x238(r1)
    lwz     r0, 0x23c(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x244(r1)
    lfd     f2, 0x240(r1)
    fsub    f3, f2, f27
    fnmsub  f2, f28, f3, f1
    fadd    f1, f3, f0
    fctiwz  f2, f2
    stfd    f2, 0x248(r1)
    lwz     r0, 0x24c(r1)
    stw     r0, 0x4(r4)
    addi    r4, r4, 0x8
    bdnz    L_8006ECF4
    andi.   r3, r3, 0x1
    beq     L_8006EDD0
L_8006ED84:
    mtctr   r3
L_8006ED88:
    fmul    f3, f26, f1
    stw     r19, 0x240(r1)
    lfdu    f0, -0x8(r5)
    fctiwz  f2, f3
    stfd    f2, 0x238(r1)
    lwz     r0, 0x23c(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x244(r1)
    lfd     f2, 0x240(r1)
    fsub    f3, f2, f27
    fnmsub  f2, f28, f3, f1
    fadd    f1, f3, f0
    fctiwz  f2, f2
    stfd    f2, 0x248(r1)
    lwz     r0, 0x24c(r1)
    stw     r0, 0x0(r4)
    addi    r4, r4, 0x4
    bdnz    L_8006ED88
L_8006EDD0:
    mr      r3, r26
    bl      ldexp
    fmr     f25, f1
    fmul    f1, f29, f25
    bl      rint
    fnmsub  f25, f30, f1, f25
    stw     r19, 0x240(r1)
    cmpwi   r26, 0x0
    li      r25, 0x0
    fctiwz  f0, f25
    stfd    f0, 0x248(r1)
    lwz     r27, 0x24c(r1)
    xoris   r0, r27, 0x8000
    stw     r0, 0x244(r1)
    lfd     f0, 0x240(r1)
    fsub    f0, f0, f27
    fsub    f25, f25, f0
    ble     L_8006EE48
    slwi    r3, r31, 2
    addi    r4, r1, 0x8
    subi    r5, r3, 0x4
    lwzx    r3, r4, r5
    sraw    r6, r3, r18
    slw     r0, r6, r18
    subf    r0, r0, r3
    add     r27, r27, r6
    stwx    r0, r4, r5
    lwzx    r0, r4, r5
    sraw    r25, r0, r17
    b       L_8006EE78
L_8006EE48:
    bne     L_8006EE64
    slwi    r4, r31, 2
    addi    r3, r1, 0x8
    subi    r0, r4, 0x4
    lwzx    r0, r3, r0
    srawi   r25, r0, 23
    b       L_8006EE78
L_8006EE64:
    lfd     f0, lbl_8053B5D8
    fcmpo   cr0, f25, f0
    cror    eq, gt, eq
    bne     L_8006EE78
    li      r25, 0x2
L_8006EE78:
    cmpwi   r25, 0x0
    ble     L_8006EF4C
    lis     r5, 0x100
    mr      r6, r16
    li      r0, 0x0
    subi    r4, r5, 0x1
    mtctr   r31
    cmpwi   r31, 0x0
    addi    r27, r27, 0x1
    ble     L_8006EED4
L_8006EEA0:
    cmpwi   r0, 0x0
    lwz     r3, 0x0(r6)
    bne     L_8006EEC4
    cmpwi   r3, 0x0
    beq     L_8006EECC
    subf    r3, r3, r5
    li      r0, 0x1
    stw     r3, 0x0(r6)
    b       L_8006EECC
L_8006EEC4:
    subf    r3, r3, r4
    stw     r3, 0x0(r6)
L_8006EECC:
    addi    r6, r6, 0x4
    bdnz    L_8006EEA0
L_8006EED4:
    cmpwi   r26, 0x0
    ble     L_8006EF28
    cmpwi   r26, 0x2
    beq     L_8006EF10
    bge     L_8006EF28
    cmpwi   r26, 0x1
    bge     L_8006EEF4
    b       L_8006EF28
L_8006EEF4:
    slwi    r3, r31, 2
    addi    r5, r1, 0x8
    subi    r4, r3, 0x4
    lwzx    r3, r5, r4
    clrlwi  r3, r3, 9
    stwx    r3, r5, r4
    b       L_8006EF28
L_8006EF10:
    slwi    r3, r31, 2
    addi    r5, r1, 0x8
    subi    r4, r3, 0x4
    lwzx    r3, r5, r4
    clrlwi  r3, r3, 10
    stwx    r3, r5, r4
L_8006EF28:
    cmpwi   r25, 0x2
    bne     L_8006EF4C
    lfd     f1, lbl_8053B5E0
    cmpwi   r0, 0x0
    fsub    f25, f1, f25
    beq     L_8006EF4C
    mr      r3, r26
    bl      ldexp
    fsub    f25, f25, f1
L_8006EF4C:
    fcmpu   cr0, f31, f25
    bne     L_8006F1B4
    subi    r3, r31, 0x1
    addi    r4, r1, 0x8
    cmpw    r3, r28
    li      r5, 0x0
    slwi    r0, r3, 2
    addi    r3, r3, 0x1
    add     r4, r4, r0
    subf    r3, r28, r3
    blt     L_8006EFE8
    srwi.   r0, r3, 3
    mtctr   r0
    beq     L_8006EFD4
L_8006EF84:
    lwz     r0, 0x0(r4)
    or      r5, r5, r0
    lwz     r0, -0x4(r4)
    or      r5, r5, r0
    lwz     r0, -0x8(r4)
    or      r5, r5, r0
    lwz     r0, -0xc(r4)
    or      r5, r5, r0
    lwz     r0, -0x10(r4)
    or      r5, r5, r0
    lwz     r0, -0x14(r4)
    or      r5, r5, r0
    lwz     r0, -0x18(r4)
    or      r5, r5, r0
    lwz     r0, -0x1c(r4)
    subi    r4, r4, 0x20
    or      r5, r5, r0
    bdnz    L_8006EF84
    andi.   r3, r3, 0x7
    beq     L_8006EFE8
L_8006EFD4:
    mtctr   r3
L_8006EFD8:
    lwz     r0, 0x0(r4)
    subi    r4, r4, 0x4
    or      r5, r5, r0
    bdnz    L_8006EFD8
L_8006EFE8:
    cmpwi   r5, 0x0
    bne     L_8006F1B4
    li      r10, 0x1
    b       L_8006EFFC
L_8006EFF8:
    addi    r10, r10, 0x1
L_8006EFFC:
    subf    r0, r10, r28
    slwi    r0, r0, 2
    lwzx    r0, r16, r0
    cmpwi   r0, 0x0
    beq     L_8006EFF8
    addi    r9, r31, 0x1
    addi    r5, r1, 0x58
    slwi    r0, r9, 3
    add     r6, r31, r10
    add     r5, r5, r0
    b       L_8006F1A4
L_8006F028:
    add     r0, r29, r9
    add     r7, r30, r9
    slwi    r0, r0, 2
    stw     r19, 0x248(r1)
    lwzx    r3, r24, r0
    cmpwi   r30, 0x0
    slwi    r0, r7, 3
    lfd     f4, lbl_8053B5B0
    xoris   r3, r3, 0x8000
    li      r8, 0x0
    stw     r3, 0x24c(r1)
    lfd     f0, 0x248(r1)
    fsub    f0, f0, f27
    stfdx   f0, r20, r0
    blt     L_8006F198
    addi    r0, r30, 0x1
    subi    r11, r30, 0x8
    cmpwi   r0, 0x8
    ble     L_8006F158
    addi    r0, r11, 0x8
    mr      r4, r21
    srwi    r0, r0, 3
    addi    r3, r1, 0x198
    mtctr   r0
    cmpwi   r11, 0x0
    blt     L_8006F158
L_8006F090:
    subf    r11, r8, r7
    addi    r0, r8, 0x1
    slwi    r12, r11, 3
    lfd     f1, 0x0(r4)
    lfdx    f0, r3, r12
    subf    r0, r0, r7
    addi    r11, r8, 0x2
    lfd     f2, 0x20(r4)
    fmadd   f4, f1, f0, f4
    subf    r12, r11, r7
    slwi    r0, r0, 3
    addi    r11, r8, 0x3
    lfdx    f0, r3, r0
    slwi    r25, r12, 3
    lfd     f1, 0x8(r4)
    subf    r11, r11, r7
    slwi    r12, r11, 3
    addi    r0, r8, 0x4
    fmadd   f4, f1, f0, f4
    lfd     f1, 0x10(r4)
    lfdx    f0, r3, r25
    subf    r11, r0, r7
    addi    r0, r8, 0x5
    lfd     f3, 0x30(r4)
    fmadd   f4, f1, f0, f4
    lfdx    f0, r3, r12
    lfd     f1, 0x18(r4)
    slwi    r12, r11, 3
    addi    r11, r8, 0x6
    subf    r0, r0, r7
    fmadd   f4, f1, f0, f4
    lfdx    f0, r3, r12
    slwi    r12, r0, 3
    lfd     f1, 0x28(r4)
    addi    r0, r8, 0x7
    subf    r11, r11, r7
    fmadd   f4, f2, f0, f4
    lfdx    f0, r3, r12
    slwi    r11, r11, 3
    subf    r0, r0, r7
    lfdx    f2, r3, r11
    slwi    r0, r0, 3
    fmadd   f4, f1, f0, f4
    lfd     f1, 0x38(r4)
    lfdx    f0, r3, r0
    addi    r4, r4, 0x40
    addi    r8, r8, 0x8
    fmadd   f4, f3, f2, f4
    fmadd   f4, f1, f0, f4
    bdnz    L_8006F090
L_8006F158:
    addi    r0, r30, 0x1
    slwi    r4, r8, 3
    subf    r0, r8, r0
    addi    r3, r1, 0x198
    add     r4, r21, r4
    mtctr   r0
    cmpw    r8, r30
    bgt     L_8006F198
L_8006F178:
    subf    r0, r8, r7
    lfd     f1, 0x0(r4)
    slwi    r0, r0, 3
    addi    r4, r4, 0x8
    lfdx    f0, r3, r0
    addi    r8, r8, 0x1
    fmadd   f4, f1, f0, f4
    bdnz    L_8006F178
L_8006F198:
    stfd    f4, 0x0(r5)
    addi    r5, r5, 0x8
    addi    r9, r9, 0x1
L_8006F1A4:
    cmpw    r9, r6
    ble     L_8006F028
    add     r31, r31, r10
    b       L_8006ECC8
L_8006F1B4:
    lfd     f0, lbl_8053B5B0
    fcmpu   cr0, f0, f25
    bne     L_8006F1F4
    subi    r31, r31, 0x1
    addi    r3, r1, 0x8
    slwi    r0, r31, 2
    subi    r26, r26, 0x18
    add     r3, r3, r0
    b       L_8006F1E4
L_8006F1D8:
    subi    r3, r3, 0x4
    subi    r31, r31, 0x1
    subi    r26, r26, 0x18
L_8006F1E4:
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    beq     L_8006F1D8
    b       L_8006F294
L_8006F1F4:
    fmr     f1, f25
    neg     r3, r26
    bl      ldexp
    lfd     f3, lbl_8053B5C0
    fcmpo   cr0, f1, f3
    cror    eq, gt, eq
    bne     L_8006F27C
    lfd     f0, lbl_8053B5B8
    lis     r0, 0x4330
    slwi    r5, r31, 2
    stw     r0, 0x240(r1)
    fmul    f0, f0, f1
    addi    r31, r31, 0x1
    lfd     f2, lbl_8053B5E8
    addi    r4, r1, 0x8
    slwi    r0, r31, 2
    addi    r26, r26, 0x18
    fctiwz  f0, f0
    stfd    f0, 0x248(r1)
    lwz     r3, 0x24c(r1)
    xoris   r3, r3, 0x8000
    stw     r3, 0x244(r1)
    lfd     f0, 0x240(r1)
    fsub    f0, f0, f2
    fnmsub  f1, f3, f0, f1
    fctiwz  f0, f0
    fctiwz  f1, f1
    stfd    f0, 0x250(r1)
    stfd    f1, 0x238(r1)
    lwz     r3, 0x254(r1)
    lwz     r6, 0x23c(r1)
    stwx    r6, r4, r5
    stwx    r3, r4, r0
    b       L_8006F294
L_8006F27C:
    fctiwz  f0, f1
    slwi    r0, r31, 2
    addi    r3, r1, 0x8
    stfd    f0, 0x250(r1)
    lwz     r4, 0x254(r1)
    stwx    r4, r3, r0
L_8006F294:
    lfd     f1, lbl_8053B5E0
    mr      r3, r26
    bl      ldexp
    cmpwi   r31, 0x0
    slwi    r0, r31, 2
    addi    r6, r1, 0x8
    slwi    r8, r31, 3
    addi    r7, r1, 0x58
    lfd     f5, lbl_8053B5E8
    lfd     f0, lbl_8053B5B8
    add     r6, r6, r0
    add     r7, r7, r8
    addi    r3, r31, 0x1
    lis     r4, 0x4330
    blt     L_8006F3B4
    srwi.   r0, r3, 2
    mtctr   r0
    beq     L_8006F380
L_8006F2DC:
    lwz     r5, 0x0(r6)
    stw     r4, 0x250(r1)
    xoris   r0, r5, 0x8000
    lwz     r5, -0x4(r6)
    stw     r0, 0x254(r1)
    xoris   r0, r5, 0x8000
    lwz     r5, -0x8(r6)
    lfd     f4, 0x250(r1)
    stw     r0, 0x254(r1)
    fsub    f3, f4, f5
    xoris   r0, r5, 0x8000
    lwz     r5, -0xc(r6)
    stw     r4, 0x250(r1)
    subi    r6, r6, 0x10
    fmul    f2, f1, f3
    lfd     f4, 0x250(r1)
    fmul    f1, f1, f0
    stw     r0, 0x254(r1)
    xoris   r0, r5, 0x8000
    fsub    f3, f4, f5
    stw     r4, 0x250(r1)
    lfd     f4, 0x250(r1)
    stfd    f2, 0x0(r7)
    fmul    f2, f1, f3
    fmul    f1, f1, f0
    stw     r0, 0x254(r1)
    stw     r4, 0x250(r1)
    fsub    f3, f4, f5
    stfd    f2, -0x8(r7)
    fmul    f2, f1, f3
    lfd     f4, 0x250(r1)
    fmul    f1, f1, f0
    fsub    f3, f4, f5
    stfd    f2, -0x10(r7)
    fmul    f2, f1, f3
    fmul    f1, f1, f0
    stfd    f2, -0x18(r7)
    subi    r7, r7, 0x20
    bdnz    L_8006F2DC
    andi.   r3, r3, 0x3
    beq     L_8006F3B4
L_8006F380:
    mtctr   r3
L_8006F384:
    lwz     r5, 0x0(r6)
    subi    r6, r6, 0x4
    stw     r4, 0x250(r1)
    xoris   r0, r5, 0x8000
    stw     r0, 0x254(r1)
    lfd     f4, 0x250(r1)
    fsub    f3, f4, f5
    fmul    f2, f1, f3
    fmul    f1, f1, f0
    stfd    f2, 0x0(r7)
    subi    r7, r7, 0x8
    bdnz    L_8006F384
L_8006F3B4:
    lis     r3, lbl_8045DFF0@ha
    addi    r0, r31, 0x1
    mr      r9, r31
    addi    r4, r1, 0x58
    addi    r5, r3, lbl_8045DFF0@l
    addi    r3, r1, 0xf8
    mtctr   r0
    cmpwi   r31, 0x0
    blt     L_8006F428
L_8006F3D8:
    lfd     f2, lbl_8053B5B0
    mr      r6, r5
    subf    r7, r9, r31
    li      r10, 0x0
    b       L_8006F408
L_8006F3EC:
    add     r0, r9, r10
    lfd     f1, 0x0(r6)
    slwi    r0, r0, 3
    addi    r6, r6, 0x8
    lfdx    f0, r4, r0
    addi    r10, r10, 0x1
    fmadd   f2, f1, f0, f2
L_8006F408:
    cmpw    r10, r28
    bgt     L_8006F418
    cmpw    r10, r7
    ble     L_8006F3EC
L_8006F418:
    slwi    r0, r7, 3
    subi    r9, r9, 0x1
    stfdx   f2, r3, r0
    bdnz    L_8006F3D8
L_8006F428:
    cmpwi   r23, 0x3
    beq     L_8006F650
    bge     L_8006F890
    cmpwi   r23, 0x0
    beq     L_8006F444
    bge     L_8006F4E4
    b       L_8006F890
L_8006F444:
    cmpwi   r31, 0x0
    addi    r4, r1, 0xf8
    lfd     f1, lbl_8053B5B0
    add     r4, r4, r8
    addi    r3, r31, 0x1
    blt     L_8006F4CC
    srwi.   r0, r3, 3
    mtctr   r0
    beq     L_8006F4B8
L_8006F468:
    lfd     f0, 0x0(r4)
    fadd    f1, f1, f0
    lfd     f0, -0x8(r4)
    fadd    f1, f1, f0
    lfd     f0, -0x10(r4)
    fadd    f1, f1, f0
    lfd     f0, -0x18(r4)
    fadd    f1, f1, f0
    lfd     f0, -0x20(r4)
    fadd    f1, f1, f0
    lfd     f0, -0x28(r4)
    fadd    f1, f1, f0
    lfd     f0, -0x30(r4)
    fadd    f1, f1, f0
    lfd     f0, -0x38(r4)
    subi    r4, r4, 0x40
    fadd    f1, f1, f0
    bdnz    L_8006F468
    andi.   r3, r3, 0x7
    beq     L_8006F4CC
L_8006F4B8:
    mtctr   r3
L_8006F4BC:
    lfd     f0, 0x0(r4)
    subi    r4, r4, 0x8
    fadd    f1, f1, f0
    bdnz    L_8006F4BC
L_8006F4CC:
    cmpwi   r25, 0x0
    bne     L_8006F4D8
    b       L_8006F4DC
L_8006F4D8:
    fneg    f1, f1
L_8006F4DC:
    stfd    f1, 0x0(r22)
    b       L_8006F890
L_8006F4E4:
    cmpwi   r31, 0x0
    addi    r4, r1, 0xf8
    lfd     f2, lbl_8053B5B0
    add     r4, r4, r8
    addi    r3, r31, 0x1
    blt     L_8006F56C
    srwi.   r0, r3, 3
    mtctr   r0
    beq     L_8006F558
L_8006F508:
    lfd     f0, 0x0(r4)
    fadd    f2, f2, f0
    lfd     f0, -0x8(r4)
    fadd    f2, f2, f0
    lfd     f0, -0x10(r4)
    fadd    f2, f2, f0
    lfd     f0, -0x18(r4)
    fadd    f2, f2, f0
    lfd     f0, -0x20(r4)
    fadd    f2, f2, f0
    lfd     f0, -0x28(r4)
    fadd    f2, f2, f0
    lfd     f0, -0x30(r4)
    fadd    f2, f2, f0
    lfd     f0, -0x38(r4)
    subi    r4, r4, 0x40
    fadd    f2, f2, f0
    bdnz    L_8006F508
    andi.   r3, r3, 0x7
    beq     L_8006F56C
L_8006F558:
    mtctr   r3
L_8006F55C:
    lfd     f0, 0x0(r4)
    subi    r4, r4, 0x8
    fadd    f2, f2, f0
    bdnz    L_8006F55C
L_8006F56C:
    cmpwi   r25, 0x0
    bne     L_8006F57C
    fmr     f1, f2
    b       L_8006F580
L_8006F57C:
    fneg    f1, f2
L_8006F580:
    lfd     f0, 0xf8(r1)
    cmpwi   r31, 0x1
    stfd    f1, 0x0(r22)
    li      r5, 0x1
    fsub    f6, f0, f2
    blt     L_8006F638
    cmpwi   r31, 0x8
    subi    r3, r31, 0x8
    ble     L_8006F608
    addi    r0, r3, 0x7
    addi    r4, r1, 0x100
    srwi    r0, r0, 3
    mtctr   r0
    cmpwi   r3, 0x1
    blt     L_8006F608
L_8006F5BC:
    lfd     f1, 0x0(r4)
    addi    r5, r5, 0x8
    lfd     f0, 0x8(r4)
    fadd    f6, f6, f1
    lfd     f5, 0x10(r4)
    lfd     f4, 0x18(r4)
    lfd     f3, 0x20(r4)
    fadd    f6, f6, f0
    lfd     f2, 0x28(r4)
    lfd     f1, 0x30(r4)
    lfd     f0, 0x38(r4)
    addi    r4, r4, 0x40
    fadd    f6, f6, f5
    fadd    f6, f6, f4
    fadd    f6, f6, f3
    fadd    f6, f6, f2
    fadd    f6, f6, f1
    fadd    f6, f6, f0
    bdnz    L_8006F5BC
L_8006F608:
    addi    r0, r31, 0x1
    slwi    r3, r5, 3
    addi    r4, r1, 0xf8
    subf    r0, r5, r0
    add     r4, r4, r3
    mtctr   r0
    cmpw    r5, r31
    bgt     L_8006F638
L_8006F628:
    lfd     f0, 0x0(r4)
    addi    r4, r4, 0x8
    fadd    f6, f6, f0
    bdnz    L_8006F628
L_8006F638:
    cmpwi   r25, 0x0
    bne     L_8006F644
    b       L_8006F648
L_8006F644:
    fneg    f6, f6
L_8006F648:
    stfd    f6, 0x8(r22)
    b       L_8006F890
L_8006F650:
    addi    r5, r1, 0xf8
    cmpwi   r31, 0x0
    add     r5, r5, r8
    mr      r3, r31
    mr      r4, r5
    ble     L_8006F714
    srwi.   r0, r31, 2
    mtctr   r0
    beq     L_8006F6F0
L_8006F674:
    lfd     f0, -0x8(r4)
    lfd     f1, 0x0(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, 0x0(r4)
    stfd    f2, -0x8(r4)
    lfd     f0, -0x10(r4)
    lfd     f1, -0x8(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, -0x8(r4)
    stfd    f2, -0x10(r4)
    lfd     f0, -0x18(r4)
    lfd     f1, -0x10(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, -0x10(r4)
    stfd    f2, -0x18(r4)
    lfd     f0, -0x20(r4)
    lfd     f1, -0x18(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, -0x18(r4)
    stfdu   f2, -0x20(r4)
    bdnz    L_8006F674
    andi.   r3, r3, 0x3
    beq     L_8006F714
L_8006F6F0:
    mtctr   r3
L_8006F6F4:
    lfd     f0, -0x8(r4)
    lfd     f1, 0x0(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, 0x0(r4)
    stfdu   f2, -0x8(r4)
    bdnz    L_8006F6F4
L_8006F714:
    cmpwi   r31, 0x1
    mr      r4, r5
    subi    r3, r31, 0x1
    ble     L_8006F7D0
    srwi.   r0, r3, 2
    mtctr   r0
    beq     L_8006F7AC
L_8006F730:
    lfd     f0, -0x8(r4)
    lfd     f1, 0x0(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, 0x0(r4)
    stfd    f2, -0x8(r4)
    lfd     f0, -0x10(r4)
    lfd     f1, -0x8(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, -0x8(r4)
    stfd    f2, -0x10(r4)
    lfd     f0, -0x18(r4)
    lfd     f1, -0x10(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, -0x10(r4)
    stfd    f2, -0x18(r4)
    lfd     f0, -0x20(r4)
    lfd     f1, -0x18(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, -0x18(r4)
    stfdu   f2, -0x20(r4)
    bdnz    L_8006F730
    andi.   r3, r3, 0x3
    beq     L_8006F7D0
L_8006F7AC:
    mtctr   r3
L_8006F7B0:
    lfd     f0, -0x8(r4)
    lfd     f1, 0x0(r4)
    fadd    f2, f0, f1
    fsub    f0, f0, f2
    fadd    f0, f1, f0
    stfd    f0, 0x0(r4)
    stfdu   f2, -0x8(r4)
    bdnz    L_8006F7B0
L_8006F7D0:
    cmpwi   r31, 0x2
    lfd     f3, lbl_8053B5B0
    subi    r3, r31, 0x1
    blt     L_8006F850
    srwi.   r0, r3, 3
    mtctr   r0
    beq     L_8006F83C
L_8006F7EC:
    lfd     f0, 0x0(r5)
    fadd    f3, f3, f0
    lfd     f0, -0x8(r5)
    fadd    f3, f3, f0
    lfd     f0, -0x10(r5)
    fadd    f3, f3, f0
    lfd     f0, -0x18(r5)
    fadd    f3, f3, f0
    lfd     f0, -0x20(r5)
    fadd    f3, f3, f0
    lfd     f0, -0x28(r5)
    fadd    f3, f3, f0
    lfd     f0, -0x30(r5)
    fadd    f3, f3, f0
    lfd     f0, -0x38(r5)
    subi    r5, r5, 0x40
    fadd    f3, f3, f0
    bdnz    L_8006F7EC
    andi.   r3, r3, 0x7
    beq     L_8006F850
L_8006F83C:
    mtctr   r3
L_8006F840:
    lfd     f0, 0x0(r5)
    subi    r5, r5, 0x8
    fadd    f3, f3, f0
    bdnz    L_8006F840
L_8006F850:
    cmpwi   r25, 0x0
    bne     L_8006F870
    lfd     f1, 0xf8(r1)
    lfd     f0, 0x100(r1)
    stfd    f1, 0x0(r22)
    stfd    f0, 0x8(r22)
    stfd    f3, 0x10(r22)
    b       L_8006F890
L_8006F870:
    lfd     f2, 0xf8(r1)
    fneg    f0, f3
    lfd     f1, 0x100(r1)
    fneg    f2, f2
    fneg    f1, f1
    stfd    f2, 0x0(r22)
    stfd    f1, 0x8(r22)
    stfd    f0, 0x10(r22)
L_8006F890:
    clrlwi  r3, r27, 29
    addi    r11, r1, 0x2d0
    bl      _restfpr_25
    lmw     r16, 0x258(r1)
    lwz     r0, 0x2d4(r1)
    mtlr    r0
    addi    r1, r1, 0x2d0
    blr

}
