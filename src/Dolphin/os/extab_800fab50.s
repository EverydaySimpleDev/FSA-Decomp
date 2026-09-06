# fn_800FAB50: likely a STANDALONE type-exclusion filter/callback, NOT
# a container-class method - the `this` parameter (r3) is never read,
# and neither of the two real parameters (r4, r5) touch any of the
# established container field offsets. Signature
# `fn_800FAB50(ignoredThis, a, b)`: calls a NEW `fn_8022461C(b)`
# (plausibly "get entity type") and returns 0 immediately if the
# result is one of 3 excluded type codes (2, 3, 0xe); otherwise
# delegates to a NEW `fn_802265DC(b, a, 0)`. Reads like a generic
# "skip these 3 types, otherwise forward" predicate/callback used by
# some search or dispatch system elsewhere - not yet traced to a
# caller. No `-mgekko` needed.
#
# Attempted real-C++ promotion (Phase 4): landed the ENTIRE function
# byte-for-byte EXCEPT the r30/r31 register pairing for the 2 saved
# incoming params (`a`=r4, `b`=r5) - retail assigns r31=a/r30=b (param
# declaration order), MWCC always assigns r31=b/r30=a (reversed)
# regardless of phrasing. 2 fixes were real and needed: (1) the actual
# call is `fn_8022461C(b, a)` - the header comment's "fn_8022461C(b)"
# undersold it; `a` (r4) is never explicitly reloaded because it's
# still sitting in r4 untouched from function entry, but it IS the 2nd
# argument, confirmed via the established `fn_8022461C(void* point, s32
# param)` signature; (2) the comparison variable needs `s32`, not the
# callee's own `u16` return type, to get `cmpwi` (signed) instead of
# `cmplwi` (unsigned) - same lesson as fn_801E3250/fn_801F0D20, now
# also confirmed for a value narrowed via `clrlwi` rather than a
# bitfield extraction. After both fixes, ONLY the r30/r31 pairing
# differs (0 byte-count difference, just swapped register operands in
# otherwise-identical instructions) - this is a 3rd confirmed instance
# of the "register-allocation-choice for param-to-saved-register
# pairing" wall (previously: fn_800F51D8, using the SAME 2 unsuccessful
# variants - direct params, then renamed locals in declaration order).
# Deferred without further attempts; both real fixes preserved above.
.section extab, "a"
.balign 4
.global etb_800057D8
etb_800057D8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800057D8, 8

.section extabindex, "a"
.balign 4
.global eti_80011AF4
eti_80011AF4:
    .4byte fn_800FAB50
    .4byte 0x00000070
    .4byte etb_800057D8
.size eti_80011AF4, 12

.text
.balign 4
.global fn_800FAB50

fn_800FAB50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 5
    mr 3, 30
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_800FAB90
    cmpwi 0, 0xe
    .4byte 0x4182000C # beq .L_800FAB90
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_800FAB98
L_800FAB90:
    li 3, 0x0
    .4byte 0x48000014 # b .L_800FABA8
L_800FAB98:
    mr 3, 30
    mr 4, 31
    li 5, 0x0
    bl fn_802265DC
L_800FABA8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

