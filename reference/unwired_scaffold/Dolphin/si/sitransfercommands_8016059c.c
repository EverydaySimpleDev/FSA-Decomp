#include <types.h>

//8016059C
ASM void SITransferCommands(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    lis     r3, 0xcc00
    lis     r0, 0x8000
    stw     r0, 0x6438(r3)
    blr
#endif // clang-format on
}
