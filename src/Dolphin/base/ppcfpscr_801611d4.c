#include <types.h>

//801611D4
ASM u32 PPCMffpscr(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    stwu    r1, -0x18(r1)
    stfd    f31, 0x10(r1)
    mffs    f31
    stfd    f31, 0x8(r1)
    lwz     r3, 0xc(r1)
    lfd     f31, 0x10(r1)
    addi    r1, r1, 0x18
    blr
#endif // clang-format on
}

//801611F4
ASM void PPCMtfpscr(register u32 newFPSCR)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    stwu    r1, -0x20(r1)
    stfd    f31, 0x18(r1)
    li      r4, 0
    stw     r4, 0x10(r1)
    stw     newFPSCR, 0x14(r1)
    lfd     f31, 0x10(r1)
    mtfsf   0xff, f31
    lfd     f31, 0x18(r1)
    addi    r1, r1, 0x20
    blr
#endif // clang-format on
}
