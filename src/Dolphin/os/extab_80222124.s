# fn_80222124(this) - the real setParams() for the vtable lbl_804A6AA8
# actor (see extab_80221b44.s). Calls the shared base fn_802217C8,
# then sets this->0x98=2, this->0x248=4 (fn_80220F54's ELSE draw path,
# same as ZSLJ's 3), scale pair = this class's own constant
# (lbl_8053FEA0), and activates the inherited timed-cue sequence 2.
# Simpler than ZSLJ/the 0x2b8-tracking siblings - no tracked-slot ID
# field touched.
#
# Attempted real-C++ promotion (Phase 4): all field values/order
# confirmed correct (matches the sibling fn_802229EC/fn_80222FF0/
# fn_80223F14/fn_80220BD0 exactly), but retail's instruction scheduler
# extensively REUSES r0/r3/r6 across unrelated field stores (e.g. r3
# holds this->0x248's value THEN gets reused as the fn_801D22DC call's
# first arg) in a way that 2 source-structuring attempts (natural
# statement order; reordering the float-constant load to match retail's
# load position) could not reproduce - a classic instance of the
# documented MWCC scheduler tie-break wall
# (reference_fsa_mwcc_scheduling_wall_investigation.md: DEFINITIVE, no
# fix after an 8-lever exhaustive test). This shape (many independent
# field stores immediately followed by a call with several literal
# args) is now confirmed to reliably trigger this wall. Reverted to raw
# asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000A648
etb_8000A648:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A648, 8

.section extabindex, "a"
.balign 4
.global eti_80018478
eti_80018478:
    .4byte fn_80222124
    .4byte 0x0000006C
    .4byte etb_8000A648
.size eti_80018478, 12

.text
.balign 4
.global fn_80222124

fn_80222124:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_802217C8
    li 0, 0x2
    li 3, 0x4
    stw 0, 0x98(31)
    li 6, 0x0
    li 0, -0x1
    .4byte 0xC002CF00 # lfs f0, lbl_8053FEA0@sda21(r0)
    stw 3, 0x248(31)
    addi 3, 31, 0x270
    li 4, 0x2
    li 5, 0x0
    stw 6, 0x24c(31)
    li 6, 0x0
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D22DC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

