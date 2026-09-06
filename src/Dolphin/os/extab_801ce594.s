.text
.balign 4
.global fn_801CE594

# NOTE: attempted real-C++ promotion 5 times (32nd Phase 4 batch). The
# gate check + grow + store half matches retail byte-for-byte on the
# first attempt. The clamp-to-threshold half needed 2 fixes to get the
# SHAPE right (a positive `if (grown < threshold) { grown = threshold; }`
# instead of a negated early-return, to avoid MWCC synthesizing `>=`
# via fcmpo+cror instead of a direct bgelr; and caching both float
# globals in locals BEFORE the add, to match retail's early-load
# scheduling) - but the exact REGISTER NUMBERS retail assigns to the
# 3 live float values (original->f2, step->f1, threshold->f0, a
# descending allocation) were not reproduced by any declaration order
# tried (3 real variations) - every attempt landed on a DIFFERENT,
# still-wrong 3-register assignment. Real structural progress (2 of 3
# sub-issues solved) but not byte-exact - same hard "scheduler-internal
# register choice" category as fn_802C59B0/Grve_SetParams this same batch.
# Left as raw asm.
# fn_801CE594 - GENERIC default for vtable offset 0x84 (see
# project_fsa_growing_area_extension.md). Unless `this->0xd8 > 0` AND
# `this->0xf8 == 2` (a "frozen/already maxed" gate), grows the scalar
# `this->0x44` by a fixed step (`lbl_8053EFD4`) each call, capping at a
# max value (`lbl_8053EFD8`). This is the "grow over time" driver for
# `0x44`, the same field the 0x80 slot's settle logic writes a final
# value into.
fn_801CE594:
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_801CE5AC
    lwz 0, 0xf8(3)
    cmpwi 0, 0x2
    beqlr
L_801CE5AC:
    lfs 2, 0x44(3)
    .4byte 0xC022C034 # lfs f1, lbl_8053EFD4@sda21(r0)
    .4byte 0xC002C038 # lfs f0, lbl_8053EFD8@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x44(3)
    lfs 1, 0x44(3)
    fcmpo cr0, 1, 0
    bgelr
    stfs 0, 0x44(3)
    blr
