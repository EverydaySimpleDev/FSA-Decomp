#include <types.h>

//8016121C
ASM u32 PPCMfhid2(void) {
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mfspr r3, 920
    blr
#endif // clang-format on
}

//80161224
ASM void PPCMthid2(register u32 newhid2) {
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr 920, newhid2
    blr
#endif // clang-format on
}

//8016122C
ASM void PPCMtwpar(register u32 newwpar)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtspr WPAR, newwpar
    blr
#endif // clang-format on
}
