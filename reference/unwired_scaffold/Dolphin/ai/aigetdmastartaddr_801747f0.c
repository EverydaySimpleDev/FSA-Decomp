#include "types.h"
#include "Dolphin/ai.h"

//801747F0
ASM u32 AIGetDMAStartAddr(void)
{
    nofralloc
    lis     r3, 0xcc00
    addi    r3, r3, 0x5000
    lhz     r4, 0x30(r3)
    lhz     r0, 0x32(r3)
    rlwinm  r3, r0, 0, 16, 26
    rlwimi  r3, r4, 16, 6, 15
    blr
}
