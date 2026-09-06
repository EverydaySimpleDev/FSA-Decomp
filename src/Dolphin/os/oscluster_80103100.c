#include "types.h"

/*
 * fn_80103100(this): a setParams()-style method for the fn_8010307C-class -
 * extracts 2 bytes from this->0x90 (bits 8-15 into this->0x238, bits 16-23
 * into this->0x23c) and resets this->0x230 (state) to 0. No extab of its
 * own, sits right after the fn_801030E0 trampoline.
 */

ASM void fn_80103100(void);

ASM void fn_80103100(void)
{
    nofralloc
    lwz r4, 0x90(r3)
    li r0, 0x0
    extrwi r4, r4, 8, 8
    stw r4, 0x238(r3)
    lwz r4, 0x90(r3)
    extrwi r4, r4, 8, 16
    stw r4, 0x23c(r3)
    stw r0, 0x230(r3)
    blr
}

