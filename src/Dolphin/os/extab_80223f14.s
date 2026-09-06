# fn_80223F14(this) - the real setParams() for the vtable lbl_804A6D00
# actor (see extab_80223f90.s, whose dtor releases 2 sound handles and
# a tracked-slot registry entry this class must own). Calls the
# shared base fn_802217C8, extracts a 2-bit field from this->0x90 into
# this->0x98 (variant), clears one flag bit (bit 23) in this->0x230,
# sets this->0x248=4 (ELSE draw path), scale pair = this class's own
# constant (lbl_8053FF1C), activates the inherited timed-cue sequence
# 2.
#
# Attempted real-C++ promotion (Phase 4): same MWCC scheduler tie-break
# wall as sibling fn_80222124 (extab_80222124.s has the full writeup).
# Reverted to raw asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000A710
etb_8000A710:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A710, 8

.section extabindex, "a"
.balign 4
.global eti_800185A4
eti_800185A4:
    .4byte fn_80223F14
    .4byte 0x0000007C
    .4byte etb_8000A710
.size eti_800185A4, 12

.text
.balign 4
.global fn_80223F14

fn_80223F14:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_802217C8
    lwz 3, 0x90(31)
    li 8, 0x4
    li 7, 0x0
    li 0, -0x1
    clrlwi 3, 3, 30
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    stw 3, 0x98(31)
    addi 3, 31, 0x270
    li 4, 0x2
    li 5, 0x0
    lwz 9, 0x230(31)
    li 6, 0x0
    rlwinm 9, 9, 0, 24, 22
    stw 9, 0x230(31)
    stw 8, 0x248(31)
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

