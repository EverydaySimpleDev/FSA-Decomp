# fn_802E6F24 - unnamed actor: draw()-related HUD/map marker registration (0x70)
# Calls fn_803075AC (HUD/map marker registration) with this->0x198 (owner
# index), this->0x4 (position), a visibility flag derived from this->0x234,
# and a string id (this->0x238 + 0x26d).
#
# Attempted real-C++ promotion (Phase 4): mis-modeled the 3rd call arg
# (r5) as the address of a zeroed local stack buffer - it is actually
# `this+0xc` (an embedded field, address-of not value-of). Retail ALSO
# has 2 unexplained zero-stores to sp+0x8/sp+0xc that don't correspond
# to any referenced call argument (r5 points into `this`, not the
# stack) - genuinely unclear what these serve without a confirmed
# signature for fn_803075AC's 3rd param and whatever uses that stack
# slot. The visibility flag also goes through a redundant neg/or/srwi
# bool-canonicalization AFTER already being computed via branchy
# li/beq/li - a double-conversion idiom not yet reproduced. Deferred
# without a full-confidence rewrite; needs fn_803075AC's real signature
# resolved first.
.section extab, "a"
.balign 4
.global etb_8000D054
etb_8000D054:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000D054, 8

.section extabindex, "a"
.balign 4
.global eti_8001C1C8
eti_8001C1C8:
    .4byte fn_802E6F24
    .4byte 0x00000070
    .4byte etb_8000D054
.size eti_8001C1C8, 12

.text
.balign 4
.global fn_802E6F24

fn_802E6F24:
    stwu 1, -0x10(1)
    mflr 0
    mr 11, 3
    li 4, 0x0
    stw 0, 0x14(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_802E6F48
    li 4, 0x1
L_802E6F48:
    li 3, 0x0
    neg 0, 4
    stw 3, 0x8(1)
    or 0, 0, 4
    srwi 7, 0, 31
    addi 5, 11, 0xc
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x1
    lwz 6, 0x238(11)
    lwz 3, 0x198(11)
    lwz 4, 0x4(11)
    addi 6, 6, 0x26d
    bl fn_803075AC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
