#include <types.h>

//8016125C
ASM void PPCSetFpNonIEEEMode(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mtfsb1      29
    blr
#endif // clang-format on
}
