#include <types.h>

extern float sinf(float x);
extern float cosf(float x);

//8015CEDC
ASM float fn_8015CEDC(float x)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    bl      sinf
    lwz     r0, 0x14(r1)
    frsp    f1, f1
    mtlr    r0
    addi    r1, r1, 0x10
    blr
#endif // clang-format on
}

//8015CF00
ASM float fn_8015CF00(float x)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    bl      cosf
    lwz     r0, 0x14(r1)
    frsp    f1, f1
    mtlr    r0
    addi    r1, r1, 0x10
    blr
#endif // clang-format on
}
