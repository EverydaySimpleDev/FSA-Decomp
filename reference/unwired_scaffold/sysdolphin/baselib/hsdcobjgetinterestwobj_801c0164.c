#include <cobj.h>

extern void __assert(char* str, u32 line, char* cond);

//801C0164
ASM HSD_WObj* HSD_CObjGetInterestWObj(register HSD_CObj* cobj)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    mr.     r31, r3
    bne     skip
    // FIXED, real bug: MWCC can't express "subi rD,r13,SYM@sda21" (compact
    // base-register-less SDA21 form) for these fixed retail string symbols;
    // opword recomputed for this build's current _SDA_BASE_. See project memory.
    opword  0x386D8B80
    li      r4, 0x2bc
    opword  0x38AD8B88
    bl      __assert
skip:
    lwz     r0, 0x14(r1)
    lwz     r3, 0x28(r31)
    lwz     r31, 0xc(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}
