#include <types.h>

extern u32 PPCMfhid0(void);
extern void PPCMtHID0(u32 newHID0);

//80161234
ASM void PPCDisableSpeculation(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      PPCMfhid0
    ori     r3, r3, 0x200
    bl      PPCMtHID0
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
#endif // clang-format on
}
