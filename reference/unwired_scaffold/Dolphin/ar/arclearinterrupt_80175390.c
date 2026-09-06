#include "types.h"
#include "Dolphin/ar.h"

//80175390
ASM void __ARClearInterrupt(void)
{
    nofralloc
    lis     r3, 0xcc00
    addi    r3, r3, 0x5000
    lhz     r4, 0xa(r3)
    li      r0, -0x89
    and     r0, r4, r0
    ori     r0, r0, 0x20
    sth     r0, 0xa(r3)
    blr
}
