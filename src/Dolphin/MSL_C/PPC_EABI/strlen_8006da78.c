#include "types.h"

//8006DA78
ASM u32 strlen(register const char* str)
{
    nofralloc
    subi    r4, r3, 0x1
    li      r3, -0x1
L_8006DA80:
    lbzu    r0, 0x1(r4)
    addi    r3, r3, 0x1
    cmplwi  r0, 0x0
    bne     L_8006DA80
    blr
}
