#include <cobj.h>

extern void __assert(char* str, u32 line, char* cond);
extern void HSD_WObjSetPosition(HSD_WObj* wobj, Vec3* pos);

//801C0328
ASM void HSD_CObjSetEyePosition(register HSD_CObj* cobj, register Vec3* position)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    mr      r31, r4
    stw     r30, 0x8(r1)
    mr.     r30, r3
    bne     skip1
    // FIXED, real bug: MWCC can't express "subi rD,r13,SYM@sda21" (compact
    // base-register-less SDA21 form) for these fixed retail string symbols;
    // opword recomputed for this build's current _SDA_BASE_. See project memory.
    opword  0x386D8B80
    li      r4, 0x310
    opword  0x38AD8B88
    bl      __assert
skip1:
    cmplwi  r30, 0x0
    bne     skip2
    opword  0x386D8B80
    li      r4, 0x2d4
    opword  0x38AD8B88
    bl      __assert
skip2:
    lwz     r3, 0x24(r30)
    mr      r4, r31
    bl      HSD_WObjSetPosition
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    lwz     r30, 0x8(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}
