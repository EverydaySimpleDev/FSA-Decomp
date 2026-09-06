#include "types.h"
#include "Dolphin/ai.h"

//801747D8
ASM void AIStopDMA(void)
{
    nofralloc
    lis     r3, 0xcc00
    addi    r3, r3, 0x5000
    lhz     r0, 0x36(r3)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x36(r3)
    blr
}
