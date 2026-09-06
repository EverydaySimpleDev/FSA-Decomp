#include "types.h"
#include "Dolphin/ai.h"

//801748E4
ASM u32 AIGetStreamPlayState(void)
{
    nofralloc
    lis     r3, 0xcc00
    lwz     r0, 0x6c00(r3)
    clrlwi  r3, r0, 31
    blr
}
