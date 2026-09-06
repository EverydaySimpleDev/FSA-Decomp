#include <types.h>

typedef void (*DVDLowCallback)(int);
extern DVDLowCallback Callback;
extern int WaitingCoverClose;

//8016D6B0
ASM DVDLowCallback DVDLowClearCallback(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    lis     r3, 0xcc00
    li      r0, 0x0
    stw     r0, 0x6004(r3)
    lwz     r3, Callback
    stw     r0, WaitingCoverClose
    stw     r0, Callback
    blr
#endif // clang-format on
}
