#include <types.h>

extern char Ecb[0xC0];

//8015EFB0
ASM unsigned long EXIGetState(int chan)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    slwi    r4, r3, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r3, r0, r4
    lwz     r3, 0xc(r3)
    blr
#endif // clang-format on
}
