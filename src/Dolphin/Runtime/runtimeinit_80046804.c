#include "types.h"

extern void PPCHalt(void);

static void __init_cpp(void);

//80046804
ASM void __init_user(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      __init_cpp
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

extern void (*_ctors[])(void);

//80046824
ASM static void __init_cpp(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    lis     r3, _ctors@ha
    addi    r0, r3, _ctors@l
    mr      r31, r0
    opword  0x48000004
    opword  0x48000004
    opword  0x48000010
L_8004684C:
    mtlr    r12
    blrl
    addi    r31, r31, 0x4
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    bne     L_8004684C
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}

//80046878
ASM void _ExitProcess(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      PPCHalt
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
