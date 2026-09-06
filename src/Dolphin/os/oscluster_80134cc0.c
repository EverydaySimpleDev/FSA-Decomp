#include "types.h"

// 3 small utility methods on some core-systems object, found while
// sweeping the main()-adjacent gap (see project_fsa_core_systems_gap.md).
//
// fn_80134CC0(this, val) - trivial setter, this->0x108 = val.
//
// fn_80134CC8(this) -> bool - "is something blocking?" query: true if
// this->0x4c==0xb (an explicit busy state code), OR if this->0x88's value
// is 0 or 1 (a bit-trick equivalent to "this->0x88 <= 1"), OR if the
// CONFIRMED shared "camera/cutscene cue manager" (lbl_8053AB10->0x2c-
// >0xc, see project_fsa_multiple_inheritance_pattern for its many other
// sightings this session) is currently active (its own busy-flag bit-
// tricked the same way). This ties core-systems-level code to the SAME
// cutscene-manager primitive already confirmed dozens of times in actor
// code - it's a genuinely shared, engine-wide primitive, not actor-local.
//
// fn_80134D14(val) - trivial setter on the CURRENT SCENE OBJECT
// (lbl_8053AAF8, see the corrected [[reference_fsa_global_prng]]):
// scene->0x88 = val - almost certainly a pause/cutscene-active flag on
// the scene, given fn_80134CC8 reads a similarly-named field.
ASM void fn_80134CC0(void);
ASM void fn_80134CC8(void);
ASM void fn_80134D14(void);

ASM void fn_80134CC0(void)
{
    nofralloc
    stw r4, 0x108(r3)
    blr
}

ASM void fn_80134CC8(void)
{
    nofralloc
    lwz r0, 0x4c(r3)
    cmpwi r0, 0xb
    opword  0x4082000C  // bne .L_80134CDC
    li r0, 0x1
    opword  0x48000014  // b .L_80134CEC
L_80134CDC:
    lbz r0, 0x88(r3)
    subfic r0, r0, 0x2
    cntlzw r0, r0
    srwi r0, r0, 5
L_80134CEC:
    clrlwi. r0, r0, 24
    opword  0x4182001C  // beq .L_80134D0C
    opword  0x806D8F50  // lwz r3, lbl_8053AB10@sda21(r0)
    lwz r3, 0x2c(r3)
    lbz r0, 0xc(r3)
    cntlzw r0, r0
    extrwi r3, r0, 8, 19
    blr
L_80134D0C:
    li r3, 0x0
    blr
}

ASM void fn_80134D14(void)
{
    nofralloc
    opword  0x806D8F38  // lwz r3, lbl_8053AAF8@sda21(r0)
    stb r4, 0x88(r3)
    blr
}

