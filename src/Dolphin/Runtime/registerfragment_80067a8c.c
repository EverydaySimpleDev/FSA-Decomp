#include "types.h"

typedef struct FragmentInfo {
    void* toc;
    s32 unused;
    BOOL registered;
} FragmentInfo;

extern FragmentInfo fragmentinfo;

//80067A8C
ASM void __unregister_fragment(register int fragmentID)
{
    nofralloc
    cmpwi   r3, 0x0
    bltlr
    cmpwi   r3, 0x1
    bgelr
    mulli   r4, r3, 0xc
    lis     r3, fragmentinfo@ha
    li      r0, 0x0
    addi    r3, r3, fragmentinfo@l
    add     r3, r3, r4
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    blr
}

//80067AC0
ASM int __register_fragment(register void* info, register void* TOC)
{
    nofralloc
    lis     r5, fragmentinfo@ha
    addi    r5, r5, fragmentinfo@l
    lwz     r0, 0x8(r5)
    cmpwi   r0, 0x0
    bne     L_80067AEC
    stw     r3, 0x0(r5)
    li      r0, 0x1
    li      r3, 0x0
    stw     r4, 0x4(r5)
    stw     r0, 0x8(r5)
    blr
L_80067AEC:
    li      r3, -0x1
    blr
}
