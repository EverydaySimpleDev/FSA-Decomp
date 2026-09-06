#include "types.h"

extern f32 lbl_80539D38;
extern f64 lbl_8053B430;
extern f64 lbl_8053B438;
extern f64 lbl_8053B440;
extern f64 lbl_8053B448;
extern f64 lbl_8053B450;
extern f64 lbl_8053B458;
extern f64 lbl_8053B460;
extern f64 lbl_8053B468;
extern f64 lbl_8053B470;
extern f64 lbl_8053B478;
extern f64 lbl_8053B480;
extern f64 lbl_8053B488;
extern f64 lbl_8053B490;
extern f64 lbl_8053B498;
extern f64 lbl_8053B4A0;
extern f64 lbl_8053B4A8;
extern f64 lbl_8053B4B0;
extern f64 sqrt(register f64 x);

//8006E100
ASM f64 __ieee754_log(register f64 x)
{
    nofralloc
    stwu    r1, -0x50(r1)
    mflr    r0
    stw     r0, 0x54(r1)
    stfd    f31, 0x40(r1)
    psq_st  f31, 0x48(r1), 0, 0
    stfd    f30, 0x30(r1)
    psq_st  f30, 0x38(r1), 0, 0
    stfd    f29, 0x20(r1)
    psq_st  f29, 0x28(r1), 0, 0
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stfd    f1, 0x8(r1)
    lis     r0, 0x3ff0
    lwz     r31, 0x8(r1)
    clrlwi  r30, r31, 1
    cmpw    r30, r0
    blt     L_8006E174
    lwz     r0, 0xc(r1)
    subis   r3, r30, 0x3ff0
    or.     r0, r3, r0
    bne     L_8006E168
    lfd     f0, lbl_8053B438
    lfd     f2, lbl_8053B430
    fmul    f0, f0, f1
    fmadd   f1, f2, f1, f0
    b       L_8006E308
L_8006E168:
    lis     r3, lbl_80539D38@ha
    lfs     f1, lbl_80539D38@l(r3)
    b       L_8006E308
L_8006E174:
    lis     r0, 0x3fe0
    cmpw    r30, r0
    bge     L_8006E210
    lis     r0, 0x3e40
    cmpw    r30, r0
    bge     L_8006E1A4
    lfd     f2, lbl_8053B440
    lfd     f0, lbl_8053B448
    fadd    f2, f2, f1
    fcmpo   cr0, f2, f0
    ble     L_8006E1A8
    b       L_8006E308
L_8006E1A4:
    fmul    f31, f1, f1
L_8006E1A8:
    lfd     f1, lbl_8053B478
    lfd     f0, lbl_8053B470
    lfd     f2, lbl_8053B468
    fmadd   f3, f1, f31, f0
    lfd     f6, lbl_8053B460
    lfd     f1, lbl_8053B498
    lfd     f0, lbl_8053B490
    lfd     f5, lbl_8053B458
    fmadd   f7, f31, f3, f2
    lfd     f2, lbl_8053B488
    fmadd   f3, f1, f31, f0
    lfd     f4, lbl_8053B450
    lfd     f1, lbl_8053B480
    fmadd   f6, f31, f7, f6
    lfd     f0, lbl_8053B448
    fmadd   f2, f31, f3, f2
    lfd     f7, 0x8(r1)
    fmadd   f3, f31, f6, f5
    fmadd   f1, f31, f2, f1
    fmadd   f2, f31, f3, f4
    fmadd   f0, f31, f1, f0
    fmul    f1, f31, f2
    fdiv    f0, f1, f0
    fmadd   f1, f7, f0, f7
    stfd    f0, 0x10(r1)
    b       L_8006E308
L_8006E210:
    fabs    f1, f1
    lfd     f9, lbl_8053B448
    lfd     f0, lbl_8053B4A0
    lfd     f7, lbl_8053B478
    fsub    f8, f9, f1
    lfd     f3, lbl_8053B470
    lfd     f6, lbl_8053B468
    lfd     f5, lbl_8053B460
    fmul    f31, f0, f8
    lfd     f2, lbl_8053B498
    lfd     f0, lbl_8053B490
    lfd     f4, lbl_8053B458
    lfd     f1, lbl_8053B488
    fmadd   f7, f7, f31, f3
    lfd     f3, lbl_8053B450
    fmadd   f2, f2, f31, f0
    lfd     f0, lbl_8053B480
    stfd    f8, 0x10(r1)
    fmadd   f6, f31, f7, f6
    fmadd   f1, f31, f2, f1
    fmadd   f2, f31, f6, f5
    fmadd   f0, f31, f1, f0
    fmadd   f1, f31, f2, f4
    fmadd   f29, f31, f0, f9
    fmadd   f0, f31, f1, f3
    fmr     f1, f31
    fmul    f30, f31, f0
    bl      sqrt
    lis     r3, 0x3fef
    addi    r0, r3, 0x3333
    cmpw    r30, r0
    blt     L_8006E2B4
    fdiv    f4, f30, f29
    lfd     f2, lbl_8053B4A8
    lfd     f0, lbl_8053B438
    lfd     f3, lbl_8053B430
    fmadd   f1, f1, f4, f1
    stfd    f4, 0x10(r1)
    fmsub   f0, f2, f1, f0
    fsub    f1, f3, f0
    b       L_8006E2F8
L_8006E2B4:
    stfd    f1, 0x10(r1)
    li      r0, 0x0
    lfd     f7, lbl_8053B4A8
    fdiv    f5, f30, f29
    stw     r0, 0x14(r1)
    lfd     f0, lbl_8053B438
    lfd     f8, 0x10(r1)
    lfd     f2, lbl_8053B4B0
    fnmsub  f4, f8, f8, f31
    fadd    f3, f1, f8
    fmul    f6, f7, f1
    fdiv    f1, f4, f3
    fnmsub  f1, f7, f1, f0
    fnmsub  f0, f7, f8, f2
    fmsub   f1, f6, f5, f1
    fsub    f0, f1, f0
    fsub    f1, f2, f0
L_8006E2F8:
    cmpwi   r31, 0x0
    ble     L_8006E304
    b       L_8006E308
L_8006E304:
    fneg    f1, f1
L_8006E308:
    psq_l   f31, 0x48(r1), 0, 0
    lfd     f31, 0x40(r1)
    psq_l   f30, 0x38(r1), 0, 0
    lfd     f30, 0x30(r1)
    psq_l   f29, 0x28(r1), 0, 0
    lfd     f29, 0x20(r1)
    lwz     r31, 0x1c(r1)
    lwz     r0, 0x54(r1)
    lwz     r30, 0x18(r1)
    mtlr    r0
    addi    r1, r1, 0x50
    blr

}

extern f64 lbl_8053B4B8;
extern f64 lbl_8053B4C0;
extern f64 lbl_8053B4C8;
extern f64 lbl_8053B4D0;
extern f64 lbl_8053B4D8;
extern f64 lbl_8053B4E0;
extern f64 lbl_8053B4E8;
extern f64 lbl_8053B4F0;
extern f64 lbl_8053B4F8;
extern f64 lbl_8053B500;
extern f64 lbl_8053B508;
extern f64 atan(register f64 x);

//8006E338
ASM f64 __ieee754_atan2(register f64 y, register f64 x)
{
    nofralloc
    stwu    r1, -0x30(r1)
    mflr    r0
    lis     r3, 0x7ff0
    stfd    f2, 0x10(r1)
    lwz     r8, 0x14(r1)
    stw     r0, 0x34(r1)
    neg     r0, r8
    lwz     r4, 0x10(r1)
    or      r0, r8, r0
    stfd    f1, 0x8(r1)
    clrlwi  r6, r4, 1
    srwi    r0, r0, 31
    lwz     r5, 0x8(r1)
    or      r0, r6, r0
    stw     r31, 0x2c(r1)
    cmplw   r0, r3
    lwz     r9, 0xc(r1)
    clrlwi  r7, r5, 1
    bgt     L_8006E39C
    neg     r0, r9
    or      r0, r9, r0
    srwi    r0, r0, 31
    or      r0, r7, r0
    cmplw   r0, r3
    ble     L_8006E3AC
L_8006E39C:
    lfd     f1, 0x10(r1)
    lfd     f0, 0x8(r1)
    fadd    f1, f1, f0
    b       L_8006E5B4
L_8006E3AC:
    subis   r0, r4, 0x3ff0
    or.     r0, r0, r8
    bne     L_8006E3C0
    bl      atan
    b       L_8006E5B4
L_8006E3C0:
    or.     r0, r7, r9
    rlwinm  r0, r4, 2, 30, 30
    mr      r31, r0
    rlwimi  r31, r5, 1, 31, 31
    bne     L_8006E40C
    cmpwi   r31, 0x2
    beq     L_8006E3FC
    bge     L_8006E3EC
    cmpwi   r31, 0x0
    bge     L_8006E5B4
    b       L_8006E40C
L_8006E3EC:
    cmpwi   r31, 0x4
    bge     L_8006E40C
    b       L_8006E404
    b       L_8006E5B4
L_8006E3FC:
    lfd     f1, lbl_8053B4B8
    b       L_8006E5B4
L_8006E404:
    lfd     f1, lbl_8053B4C0
    b       L_8006E5B4
L_8006E40C:
    or.     r0, r6, r8
    bne     L_8006E42C
    cmpwi   r5, 0x0
    bge     L_8006E424
    lfd     f1, lbl_8053B4C8
    b       L_8006E5B4
L_8006E424:
    lfd     f1, lbl_8053B4D0
    b       L_8006E5B4
L_8006E42C:
    subis   r0, r6, 0x7ff0
    cmplwi  r0, 0x0
    bne     L_8006E4D4
    subis   r0, r7, 0x7ff0
    cmplwi  r0, 0x0
    bne     L_8006E48C
    cmpwi   r31, 0x2
    beq     L_8006E47C
    bge     L_8006E460
    cmpwi   r31, 0x0
    beq     L_8006E46C
    bge     L_8006E474
    b       L_8006E4D4
L_8006E460:
    cmpwi   r31, 0x4
    bge     L_8006E4D4
    b       L_8006E484
L_8006E46C:
    lfd     f1, lbl_8053B4D8
    b       L_8006E5B4
L_8006E474:
    lfd     f1, lbl_8053B4E0
    b       L_8006E5B4
L_8006E47C:
    lfd     f1, lbl_8053B4E8
    b       L_8006E5B4
L_8006E484:
    lfd     f1, lbl_8053B4F0
    b       L_8006E5B4
L_8006E48C:
    cmpwi   r31, 0x2
    beq     L_8006E4C4
    bge     L_8006E4A8
    cmpwi   r31, 0x0
    beq     L_8006E4B4
    bge     L_8006E4BC
    b       L_8006E4D4
L_8006E4A8:
    cmpwi   r31, 0x4
    bge     L_8006E4D4
    b       L_8006E4CC
L_8006E4B4:
    lfd     f1, lbl_8053B4F8
    b       L_8006E5B4
L_8006E4BC:
    lfd     f1, lbl_8053B500
    b       L_8006E5B4
L_8006E4C4:
    lfd     f1, lbl_8053B4B8
    b       L_8006E5B4
L_8006E4CC:
    lfd     f1, lbl_8053B4C0
    b       L_8006E5B4
L_8006E4D4:
    subis   r0, r7, 0x7ff0
    cmplwi  r0, 0x0
    bne     L_8006E4F8
    cmpwi   r5, 0x0
    bge     L_8006E4F0
    lfd     f1, lbl_8053B4C8
    b       L_8006E5B4
L_8006E4F0:
    lfd     f1, lbl_8053B4D0
    b       L_8006E5B4
L_8006E4F8:
    subf    r0, r6, r7
    srawi   r0, r0, 20
    cmpwi   r0, 0x3c
    ble     L_8006E514
    lfd     f0, lbl_8053B4D0
    stfd    f0, 0x18(r1)
    b       L_8006E548
L_8006E514:
    cmpwi   r4, 0x0
    bge     L_8006E530
    cmpwi   r0, -0x3c
    bge     L_8006E530
    lfd     f0, lbl_8053B4F8
    stfd    f0, 0x18(r1)
    b       L_8006E548
L_8006E530:
    lfd     f1, 0x8(r1)
    lfd     f0, 0x10(r1)
    fdiv    f0, f1, f0
    fabs    f1, f0
    bl      atan
    stfd    f1, 0x18(r1)
L_8006E548:
    cmpwi   r31, 0x1
    beq     L_8006E574
    bge     L_8006E560
    cmpwi   r31, 0x0
    bge     L_8006E56C
    b       L_8006E5A0
L_8006E560:
    cmpwi   r31, 0x3
    bge     L_8006E5A0
    b       L_8006E588
L_8006E56C:
    lfd     f1, 0x18(r1)
    b       L_8006E5B4
L_8006E574:
    lwz     r0, 0x18(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x18(r1)
    lfd     f1, 0x18(r1)
    b       L_8006E5B4
L_8006E588:
    lfd     f1, 0x18(r1)
    lfd     f0, lbl_8053B508
    lfd     f2, lbl_8053B4B8
    fsub    f0, f1, f0
    fsub    f1, f2, f0
    b       L_8006E5B4
L_8006E5A0:
    lfd     f2, 0x18(r1)
    lfd     f1, lbl_8053B508
    lfd     f0, lbl_8053B4B8
    fsub    f1, f2, f1
    fsub    f1, f1, f0
L_8006E5B4:
    lwz     r0, 0x34(r1)
    lwz     r31, 0x2c(r1)
    mtlr    r0
    addi    r1, r1, 0x30
    blr

}
