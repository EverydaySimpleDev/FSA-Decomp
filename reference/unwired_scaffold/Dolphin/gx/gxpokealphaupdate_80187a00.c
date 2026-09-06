#include "Dolphin/gx.h"

//80187A00
ASM void GXPokeAlphaUpdate(register GXBool doUpdate)
{
    nofralloc
    lwz     r4, __peReg
    clrlwi  r0, r3, 24
    lhz     r3, 0x2(r4)
    rlwimi  r3, r0, 4, 27, 27
    sth     r3, 0x2(r4)
    blr
}
