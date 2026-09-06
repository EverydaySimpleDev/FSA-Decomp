#include <types.h>

//80161190
WEAKFUNC ASM void PPCHalt(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc

    sync

_spin:
    nop
    li r3, 0
    nop
    b _spin
#endif // clang-format on
}

//801611A4
ASM void PPCMtmmcr0(register u32 newMmcr0)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr       MMCR0, newMmcr0
    blr
#endif // clang-format on
}

//801611AC
ASM void PPCMtmmcr1(register u32 newMmcr1)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr       MMCR1, newMmcr1
    blr
#endif // clang-format on
}

//801611B4
ASM void PPCMtpmc1(register u32 newPmc1)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr       PMC1, newPmc1
    blr
#endif // clang-format on
}

//801611BC
ASM void PPCMtpmc2(register u32 newPmc2)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr       PMC2, newPmc2
    blr
#endif // clang-format on
}

//801611C4
ASM void PPCMtpmc3(register u32 newPmc3)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr       PMC3, newPmc3
    blr
#endif // clang-format on
}

//801611CC
ASM void PPCMtpmc4(register u32 newPmc4)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr       PMC4, newPmc4
    blr
#endif // clang-format on
}
