#include "types.h"

// fn_80134FBC(this, val) - trivial setter, this->0x96 = val.
// fn_80134FC4(this, val) - setter with a side effect: this->0x94 = val;
// if the new value isn't 1, also sets this->0x95 = 1 (a "changed away
// from mode 1" latch).
ASM void fn_80134FBC(void);
ASM void fn_80134FC4(void);

ASM void fn_80134FBC(void)
{
    nofralloc
    stb r4, 0x96(r3)
    blr
}

ASM void fn_80134FC4(void)
{
    nofralloc
    stb r4, 0x94(r3)
    lbz r0, 0x94(r3)
    cmplwi r0, 0x1
    beqlr
    li r0, 0x1
    stb r0, 0x95(r3)
    blr
}

