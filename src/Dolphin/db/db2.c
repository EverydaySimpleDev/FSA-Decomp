#include <types.h>

extern void* __DBInterface;
extern void __DBExceptionDestinationAux(void);

//801612D4
#ifdef __MWERKS__ // clang-format off
ASM void __DBExceptionDestination(void)
{
    nofralloc
    mfmsr r3
    ori r3, r3, 0x30
    mtmsr r3
    b __DBExceptionDestinationAux
}
#else // clang-format on
void __DBExceptionDestination(void)
{
    asm("mfmsr %r3\n"
        "ori %r3, %r3, 0x30\n"
        "mtmsr %r3\n"
        "b __DBExceptionDestinationAux\n");
}
#endif

//801612E4
int __DBIsExceptionMarked(u8 a)
{
    return *(u32*)((char*)__DBInterface + 4) & (1 << a);
}

//80161300
void DBPrintf(const char* fmt, ...) { }
