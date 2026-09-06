#include "types.h"

//800672B4
ASM BOOL __ptmf_test(register void* pmf)
{
    nofralloc
    lwz     r5, 0x0(r3)
    lwz     r6, 0x4(r3)
    lwz     r7, 0x8(r3)
    li      r3, 0x1
    cmpwi   r5, 0x0
    cmpwi   cr6, r6, 0x0
    cmpwi   cr7, r7, 0x0
    bnelr
    bnelr   cr6
    bnelr   cr7
    li      r3, 0x0
    blr
}

//800672E4
ASM void __ptmf_scall(void)
{
    nofralloc
    lwz     r0, 0x0(r12)
    lwz     r11, 0x4(r12)
    lwz     r12, 0x8(r12)
    add     r3, r3, r0
    cmpwi   r11, 0x0
    blt     L_80067304
    lwzx    r12, r3, r12
    lwzx    r12, r12, r11
L_80067304:
    mtctr   r12
    bctr
}

//8006730C
ASM void __ptmf_scall4(void)
{
    nofralloc
    lwz     r0, 0x0(r12)
    lwz     r11, 0x4(r12)
    lwz     r12, 0x8(r12)
    add     r4, r4, r0
    cmpwi   r11, 0x0
    blt     L_8006732C
    lwzx    r12, r4, r12
    lwzx    r12, r12, r11
L_8006732C:
    mtctr   r12
    bctr
}
