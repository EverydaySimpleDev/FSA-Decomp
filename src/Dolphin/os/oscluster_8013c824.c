#include "types.h"

// fn_8013C824() - returns `(*lbl_8053AB10)->0x28` directly: the concrete
// static accessor for the camera-cue-manager's this->0x28 sub-object,
// which dtor_8013C5C8/fn_8013C628 above are almost certainly methods of.
ASM void fn_8013C824(void);

ASM void fn_8013C824(void)
{
    nofralloc
    opword  0x806D8F50  // lwz r3, lbl_8053AB10@sda21(r0)
    lwz r3, 0x28(r3)
    blr
}

// fn_8013C830(base, index, dest) - bounds-checks index in [0,4), then
// copies a 3-byte RGB-shaped entry from a fixed table at
// base+index*3+0x4110 into dest->0xb8/0xb9/0xba. A "get palette color N"
// style lookup helper.
ASM void fn_8013C830(void);

ASM void fn_8013C830(void)
{
    nofralloc
    cmplwi r5, 0x0
    beqlr
    cmpwi r4, 0x0
    bltlr
    cmpwi r4, 0x4
    bgelr
    mulli r0, r4, 0x3
    add r3, r3, r0
    lbz r6, 0x4112(r3)
    lbz r4, 0x4111(r3)
    lbz r0, 0x4110(r3)
    stb r0, 0xb8(r5)
    stb r4, 0xb9(r5)
    stb r6, 0xba(r5)
    blr
}
