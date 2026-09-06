#include "types.h"

extern const f64 lbl_8020D9B8[3];

//801514C8
ASM u32 __cvt_fp2unsigned(register f64 d)
{
    nofralloc
    stwu    r1, -16(r1)
    lis     r4, lbl_8020D9B8@h
    ori     r4, r4, lbl_8020D9B8@l
    li      r3, 0
    lfd     f0, 0(r4)
    lfd     f3, 8(r4)
    lfd     f4, 16(r4)
    fcmpu   cr0, f1, f0
    fcmpu   cr6, f1, f3
    blt     cr0, exit
    addi    r3, r3, -1
    bge     cr6, exit
    fcmpu   cr7, f1, f4
    fmr     f2, f1
    blt     cr7, lab1
    fsub    f2, f1, f4
lab1:
    fctiwz  f2, f2
    stfd    f2, 8(r1)
    lwz     r3, 12(r1)
    blt     cr7, exit
    addis   r3, r3, -0x8000
exit:
    addi    r1, r1, 16
    blr
}
