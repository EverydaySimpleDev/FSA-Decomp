#include "types.h"
#include "Dolphin/ai.h"

//801747C0
ASM void AIStartDMA(void)
{
    nofralloc
    lis     r3, 0xcc00
    addi    r3, r3, 0x5000
    lhz     r0, 0x36(r3)
    ori     r0, r0, 0x8000
    sth     r0, 0x36(r3)
    blr
}
