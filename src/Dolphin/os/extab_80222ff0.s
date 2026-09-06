# fn_80222FF0(this) - the real setParams() for the vtable lbl_804A6C38
# actor (see extab_80223060.s, whose dtor consumes the tracked-slot ID
# this class carries). Calls the shared base fn_802217C8, extracts a
# 2-bit field from this->0x90 into this->0x98 (variant), sets
# this->0x248=4 (ELSE draw path), scale pair = this class's own
# constant (lbl_8053FEF0), activates the inherited timed-cue sequence
# 2. Note this->0x2b8 (the tracked-slot ID the dtor conditionally
# releases) is NOT explicitly initialized here - relies on
# zero-initialized memory / a value set elsewhere.
#
# Attempted real-C++ promotion (Phase 4): same MWCC scheduler tie-break
# wall as sibling fn_80222124 (extab_80222124.s has the full writeup).
# Reverted to raw asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000A6B8
etb_8000A6B8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A6B8, 8

.section extabindex, "a"
.balign 4
.global eti_80018520
eti_80018520:
    .4byte fn_80222FF0
    .4byte 0x00000070
    .4byte etb_8000A6B8
.size eti_80018520, 12

.text
.balign 4
.global fn_80222FF0

fn_80222FF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_802217C8
    lwz 3, 0x90(31)
    li 6, 0x4
    li 7, 0x0
    li 0, -0x1
    clrlwi 3, 3, 30
    .4byte 0xC002CF50 # lfs f0, lbl_8053FEF0@sda21(r0)
    stw 3, 0x98(31)
    addi 3, 31, 0x270
    li 4, 0x2
    li 5, 0x0
    stw 6, 0x248(31)
    li 6, 0x0
    stw 7, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D22DC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

