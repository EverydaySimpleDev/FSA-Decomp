# fn_80220BD0(this) - "ZSLJ"'s real setParams(). Calls the shared base
# fn_802217C8 first, then extracts a 2-bit field from this->0x90 into
# this->0x2b8 (a TRACKED-SLOT ID, matching the TINK-style "report to a
# tracked companion on death" convention - ZSLJ's dtor doesn't consume
# it directly but the field shape matches fn_80223060's sibling
# usage), sets this->0x98=2 (variant), this->0x248=3 (the "draw mode"
# field fn_80220F54 branches on - value 3 selects its ELSE/fn_801F06F0
# path, not the mode==2 fn_801EF574 path), scale pair 0x254/0x258 =
# this class's own constant (lbl_8053FE18), and activates the
# inherited timed-cue sequence 2.
#
# Attempted real-C++ promotion (Phase 4): same MWCC scheduler tie-break
# wall as sibling fn_80222124 (extab_80222124.s has the full writeup).
# Reverted to raw asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000A57C
etb_8000A57C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A57C, 8

.section extabindex, "a"
.balign 4
.global eti_80018364
eti_80018364:
    .4byte fn_80220BD0
    .4byte 0x00000078
    .4byte etb_8000A57C
.size eti_80018364, 12

.text
.balign 4
.global fn_80220BD0

fn_80220BD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_802217C8
    lwz 0, 0x90(31)
    li 5, 0x2
    li 8, 0x3
    li 7, 0x0
    clrlwi 3, 0, 30
    li 0, -0x1
    stw 3, 0x2b8(31)
    addi 3, 31, 0x270
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    li 4, 0x2
    stw 5, 0x98(31)
    li 5, 0x0
    li 6, 0x0
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

