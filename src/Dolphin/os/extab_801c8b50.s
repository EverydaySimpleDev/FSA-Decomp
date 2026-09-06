/*
 * fn_801C8B50(this) - the fuller "re-acquire a rail target from
 * scratch" routine fn_801C71BC falls back to when neighbor-adjacency
 * recovery fails completely. Resets this->0x2a8 and clears 2 this->0x230
 * flag bits, resets the ring-tracker sub-object at &this->0x358 via the
 * not-yet-confirmed fn_800FDE38(ringObj) (a likely sibling of RAIL's
 * confirmed ring-traversal library, project_fsa_rail_actor_identified.md),
 * then calls fn_801C8C84(this, 0, 0) (below - not decompiled, a "find a
 * target" query) and fn_801D02E0(this, &this->0x32c) (not decompiled)
 * to compute and cache a facing angle toward the new target into
 * this->0x33c - i.e. "pick a brand-new waypoint and turn to face it."
 *
 * Attempted real-C++ promotion (2 variants: compound `&=` for the final
 * flag clear; split into a load-then-store): the ENTIRE function body
 * matched retail byte-for-byte except the very last 2 epilogue
 * instructions, which come out in the OPPOSITE order (lwz r31 then lwz
 * lr, vs retail's lwz lr then lwz r31) regardless of source phrasing -
 * a compiler-internal epilogue-generation choice, not controllable via
 * the statements that precede it. Reverted to raw asm.
 */
.section extab, "a"
.balign 4
.global etb_800081A8
etb_800081A8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800081A8, 8

.section extabindex, "a"
.balign 4
.global eti_800153A0
eti_800153A0:
    .4byte fn_801C8B50
    .4byte 0x00000074
    .4byte etb_800081A8
.size eti_800153A0, 12

.text
.balign 4
.global fn_801C8B50

fn_801C8B50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stw 0, 0x2a8(3)
    addi 3, 31, 0x358
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 20, 18
    stw 0, 0x230(31)
    bl GetCurrentSlotPtr
    bl fn_800FDE38
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801C8C84
    mr 3, 31
    addi 4, 31, 0x32c
    bl fn_801D02E0
    sth 3, 0x33c(31)
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 15, 13
    stw 0, 0x230(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
