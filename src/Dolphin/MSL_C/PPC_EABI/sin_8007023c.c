#include "types.h"

extern f64 lbl_8053B6A8;
extern f64 __kernel_sin(register f64 x, register f64 y, register s32 iy);
extern f64 __kernel_cos(register f64 x, register f64 y);
extern s32 __ieee754_rem_pio2(register f64 x, register f64* y);

//8007023C
ASM f64 sin(register f64 x)
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
    bgt     L_80070274
    lfd     f2, lbl_8053B6A8
    li      r3, 0x0
    bl      __kernel_sin
    b       L_80070304
L_80070274:
    lis     r0, 0x7ff0
    cmpw    r3, r0
    blt     L_80070288
    fsub    f1, f1, f1
    b       L_80070304
L_80070288:
    addi    r3, r1, 0x10
    bl      __ieee754_rem_pio2
    clrlwi  r0, r3, 30
    cmpwi   r0, 0x1
    beq     L_800702CC
    bge     L_800702AC
    cmpwi   r0, 0x0
    bge     L_800702B8
    b       L_800702F4
L_800702AC:
    cmpwi   r0, 0x3
    bge     L_800702F4
    b       L_800702DC
L_800702B8:
    lfd     f1, 0x10(r1)
    li      r3, 0x1
    lfd     f2, 0x18(r1)
    bl      __kernel_sin
    b       L_80070304
L_800702CC:
    lfd     f1, 0x10(r1)
    lfd     f2, 0x18(r1)
    bl      __kernel_cos
    b       L_80070304
L_800702DC:
    lfd     f1, 0x10(r1)
    li      r3, 0x1
    lfd     f2, 0x18(r1)
    bl      __kernel_sin
    fneg    f1, f1
    b       L_80070304
L_800702F4:
    lfd     f1, 0x10(r1)
    lfd     f2, 0x18(r1)
    bl      __kernel_cos
    fneg    f1, f1
L_80070304:
    lwz     r0, 0x24(r1)
    mtlr    r0
    addi    r1, r1, 0x20
    blr

}

extern f64 __ieee754_log(register f64 x);

//80070314
ASM f64 log(register f64 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    bl      __ieee754_log
    lwz     r0, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr

}

extern f64 __ieee754_atan2(register f64 y, register f64 x);

//80070334
ASM f64 atan2(register f64 y, register f64 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    bl      __ieee754_atan2
    lwz     r0, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr

}
