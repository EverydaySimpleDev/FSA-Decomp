#include "types.h"
#include "Dolphin/ar.h"

//801753B0
ASM u32 __ARGetInterruptStatus(void)
{
    nofralloc
    lis     r3, 0xcc00
    lhz     r0, 0x500a(r3)
    rlwinm  r3, r0, 0, 26, 26
    blr
}
