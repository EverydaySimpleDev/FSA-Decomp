#include <cobj.h>

extern const f64 HSD_CObj_804DE4C8;

//801C15E8
ASM void HSD_CObjSetViewport(register HSD_CObj* cobj, register s16* viewport)
{
    nofralloc
    cmplwi  r3, 0x0
    stwu    r1, -0x30(r1)
    beq     done
    lha     r0, 0x0(r4)
    lis     r5, 0x4330
    stw     r5, 0x8(r1)
    xoris   r0, r0, 0x8000
    lfd     f1, HSD_CObj_804DE4C8
    stw     r0, 0xc(r1)
    lfd     f0, 0x8(r1)
    stw     r5, 0x10(r1)
    fsubs   f0, f0, f1
    stw     r5, 0x18(r1)
    stfs    f0, 0xc(r3)
    lha     r0, 0x2(r4)
    stw     r5, 0x20(r1)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(r1)
    lfd     f0, 0x10(r1)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lha     r0, 0x4(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(r1)
    lfd     f0, 0x18(r1)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r3)
    lha     r0, 0x6(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(r1)
    lfd     f0, 0x20(r1)
    fsubs   f0, f0, f1
    stfs    f0, 0x18(r3)
done:
    addi    r1, r1, 0x30
    blr
}
