#include <types.h>

//8016B070
ASM s64 OSGetTime(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc

    mftbu r3
    mftb r4

    mftbu r5
    cmpw r3, r5
    bne OSGetTime

    blr
#endif // clang-format on
}

//8016B088
ASM u32 OSGetTick(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc

    mftb r3
    blr
#endif // clang-format on
}
