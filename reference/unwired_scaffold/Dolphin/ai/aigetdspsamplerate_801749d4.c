#include "types.h"
#include "Dolphin/ai.h"

//801749D4
ASM u32 AIGetDSPSampleRate(void)
{
    nofralloc
    lis     r3, 0xcc00
    lwz     r0, 0x6c00(r3)
    extrwi  r0, r0, 1, 25
    xori    r3, r0, 0x1
    blr
}
