#include "types.h"
#include "Dolphin/ai.h"

//80174ACC
ASM void AISetStreamVolLeft(register u8 volume)
{
    nofralloc
    lis     r4, 0xcc00
    addi    r4, r4, 0x6c00
    lwz     r0, 0x4(r4)
    clrrwi  r0, r0, 8
    rlwimi  r0, r3, 0, 24, 31
    stw     r0, 0x4(r4)
    blr
}
