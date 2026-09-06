#include "types.h"

// fn_801DC758(this) - a small velocity-reset helper for this class: zeroes
// this->0x3c/0x44 (horizontal velocity) unconditionally. If this->0x248==2
// (this class's own FSM state field), ADDS a fixed positive constant
// (fabs(lbl_8053EFB8), i.e. an upward kick regardless of that constant's
// own sign) onto this->0x40 (vertical velocity) - otherwise zeroes 0x40
// too. Likely called on a state-2-specific "bounce" transition.
ASM void fn_801DC758(void);

ASM void fn_801DC758(void)
{
    nofralloc
    opword  0xC002C3A4  // lfs f0, lbl_8053F344@sda21(r0)
    stfs fp0, 0x3c(r3)
    stfs fp0, 0x44(r3)
    lwz r0, 0x248(r3)
    cmpwi r0, 0x2
    opword  0x4082001C  // bne .L_801DC788
    opword  0xC022C018  // lfs f1, lbl_8053EFB8@sda21(r0)
    lfs fp0, 0x40(r3)
    fabs fp1, fp1
    fadds fp0, fp0, fp1
    stfs fp0, 0x40(r3)
    blr
L_801DC788:
    stfs fp0, 0x40(r3)
    blr
}

