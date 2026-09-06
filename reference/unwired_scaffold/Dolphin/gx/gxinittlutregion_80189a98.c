#include "types.h"
#include "Dolphin/gx.h"

//80189A98
ASM void GXInitTlutRegion(register GXTlutRegion* region, register u32 memAddr, register GXTlutSize tlutSize)
{
    nofralloc
    li      r0, 0x0
    stw     r0, 0x0(region)
    subis   r0, memAddr, 0x8
    lwz     r4, 0x0(region)
    rlwimi  r4, r0, 23, 22, 31
    li      r0, 0x65
    stw     r4, 0x0(region)
    lwz     r4, 0x0(region)
    rlwimi  r4, tlutSize, 10, 11, 21
    stw     r4, 0x0(region)
    lwz     r4, 0x0(region)
    rlwimi  r4, r0, 24, 0, 7
    stw     r4, 0x0(region)
    blr
}
