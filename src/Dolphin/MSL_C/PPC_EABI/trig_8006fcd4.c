#include "types.h"

extern f64 lbl_8053B660;
extern f64 lbl_8053B668;
extern f64 lbl_8053B670;
extern int __ieee754_rem_pio2(register f64 x, register f64* y);
extern f64 __kernel_cos(register f64 x, register f64 y);
extern f64 __kernel_sin(register f64 x, register f64 y, register s32 iy);

//8006FCD4
ASM f64 cos(register f64 x)
{
    nofralloc
    stwu    r1, -0x20(r1)
    mflr    r0
    lis     r3, 0x3fe9
    stfd    f1, 0x8(r1)
    stw     r0, 0x24(r1)
    addi    r0, r3, 0x21fb
    lwz     r3, 0x8(r1)
    clrlwi  r3, r3, 1
    cmpw    r3, r0
    bgt     L_8006FD08
    lfd     f2, lbl_8053B660
    bl      __kernel_cos
    b       L_8006FD98
L_8006FD08:
    lis     r0, 0x7ff0
    cmpw    r3, r0
    blt     L_8006FD1C
    fsub    f1, f1, f1
    b       L_8006FD98
L_8006FD1C:
    addi    r3, r1, 0x10
    bl      __ieee754_rem_pio2
    clrlwi  r0, r3, 30
    cmpwi   r0, 0x1
    beq     L_8006FD5C
    bge     L_8006FD40
    cmpwi   r0, 0x0
    bge     L_8006FD4C
    b       L_8006FD88
L_8006FD40:
    cmpwi   r0, 0x3
    bge     L_8006FD88
    b       L_8006FD74
L_8006FD4C:
    lfd     f1, 0x10(r1)
    lfd     f2, 0x18(r1)
    bl      __kernel_cos
    b       L_8006FD98
L_8006FD5C:
    lfd     f1, 0x10(r1)
    li      r3, 0x1
    lfd     f2, 0x18(r1)
    bl      __kernel_sin
    fneg    f1, f1
    b       L_8006FD98
L_8006FD74:
    lfd     f1, 0x10(r1)
    lfd     f2, 0x18(r1)
    bl      __kernel_cos
    fneg    f1, f1
    b       L_8006FD98
L_8006FD88:
    lfd     f1, 0x10(r1)
    li      r3, 0x1
    lfd     f2, 0x18(r1)
    bl      __kernel_sin
L_8006FD98:
    lwz     r0, 0x24(r1)
    mtlr    r0
    addi    r1, r1, 0x20
    blr

}

//8006FDA8
ASM f64 rint(register f64 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    stfd    f1, 0x8(r1)
    lwz     r5, 0x8(r1)
    lwz     r6, 0xc(r1)
    extrwi  r3, r5, 11, 1
    subi    r7, r3, 0x3ff
    cmpwi   r7, 0x14
    bge     L_8006FE5C
    cmpwi   r7, 0x0
    bge     L_8006FE10
    lfd     f2, lbl_8053B668
    lfd     f0, lbl_8053B670
    fadd    f1, f2, f1
    fcmpo   cr0, f1, f0
    ble     L_8006FEDC
    cmpwi   r5, 0x0
    blt     L_8006FDF8
    li      r6, 0x0
    li      r5, 0x0
    b       L_8006FEDC
L_8006FDF8:
    clrlwi  r0, r5, 1
    or.     r0, r0, r6
    beq     L_8006FEDC
    lis     r5, 0xbff0
    li      r6, 0x0
    b       L_8006FEDC
L_8006FE10:
    lis     r3, 0x10
    subi    r0, r3, 0x1
    sraw    r4, r0, r7
    and     r0, r5, r4
    or.     r0, r6, r0
    bne     L_8006FE2C
    b       L_8006FEE8
L_8006FE2C:
    lfd     f2, lbl_8053B668
    lfd     f0, lbl_8053B670
    fadd    f1, f2, f1
    fcmpo   cr0, f1, f0
    ble     L_8006FEDC
    cmpwi   r5, 0x0
    bge     L_8006FE50
    sraw    r0, r3, r7
    add     r5, r5, r0
L_8006FE50:
    andc    r5, r5, r4
    li      r6, 0x0
    b       L_8006FEDC
L_8006FE5C:
    cmpwi   r7, 0x33
    ble     L_8006FE74
    cmpwi   r7, 0x400
    bne     L_8006FEE8
    fadd    f1, f1, f1
    b       L_8006FEE8
L_8006FE74:
    subi    r0, r7, 0x14
    li      r3, -0x1
    srw     r4, r3, r0
    and.    r0, r6, r4
    bne     L_8006FE8C
    b       L_8006FEE8
L_8006FE8C:
    lfd     f2, lbl_8053B668
    lfd     f0, lbl_8053B670
    fadd    f1, f2, f1
    fcmpo   cr0, f1, f0
    ble     L_8006FEDC
    cmpwi   r5, 0x0
    bge     L_8006FED8
    cmpwi   r7, 0x14
    bne     L_8006FEB8
    addi    r5, r5, 0x1
    b       L_8006FED8
L_8006FEB8:
    subfic  r0, r7, 0x34
    li      r3, 0x1
    slw     r0, r3, r0
    add     r0, r6, r0
    cmplw   r0, r6
    bge     L_8006FED4
    addi    r5, r5, 0x1
L_8006FED4:
    mr      r6, r0
L_8006FED8:
    andc    r6, r6, r4
L_8006FEDC:
    stw     r5, 0x8(r1)
    stw     r6, 0xc(r1)
    lfd     f1, 0x8(r1)
L_8006FEE8:
    addi    r1, r1, 0x10
    blr

}
