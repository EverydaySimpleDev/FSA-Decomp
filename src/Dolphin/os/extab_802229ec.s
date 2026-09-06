# fn_802229EC(this) - "ZSLA"'s real setParams(). Calls the shared base
# fn_802217C8, then sets this->0x98=2, this->0x248=4 (the ELSE draw
# path), scale pair = ZSLA's own constant (lbl_8053FEC0), and
# activates the inherited timed-cue sequence 2 - structurally
# identical to fn_80222124's lbl_804A6AA8 actor, differing only in the
# scale constant, consistent with ZSLJ/ZSLA being a matched "variant
# pair" (their FourCC codes differ only in the last letter).
#
# Attempted real-C++ promotion (Phase 4): same MWCC scheduler tie-break
# wall as sibling fn_80222124 (extab_80222124.s has the full writeup) -
# extensive r0/r3/r6 register reuse across independent field stores
# that 2 source variants couldn't reproduce. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000A688
etb_8000A688:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A688, 8

.section extabindex, "a"
.balign 4
.global eti_800184D8
eti_800184D8:
    .4byte fn_802229EC
    .4byte 0x0000006C
    .4byte etb_8000A688
.size eti_800184D8, 12

.text
.balign 4
.global fn_802229EC

fn_802229EC:
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
    .4byte 0xC002CF20 # lfs f0, lbl_8053FEC0@sda21(r0)
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

