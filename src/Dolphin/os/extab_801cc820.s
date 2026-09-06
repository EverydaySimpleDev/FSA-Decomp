# fn_801CC820(idOut, posOut) - one of a 3-function family (siblings
# fn_801CC538/fn_801CC640, extab_801cc538.s/801cc640.s) that look up a
# nearby actor of a specific 4-char type code via the CONFIRMED spatial
# registry, gated by a cooldown/count field (+0x108). Here the 32-bit
# constant test (subis+cmplwi trick) targets 0x41525257 = ASCII "ARRW"
# (likely an arrow projectile). Zero-initializes *idOut if provided,
# finds a candidate ID via not-yet-seen fn_8023B2B0, looks it up
# (SpatialRegistry_GetBase+fn_801F666C), verifies the CONFIRMED active flag
# (+0x11c) and the "ARRW" type code (+0x1a0), and requires +0x108 > 0.
# On success, copies the record's +0x3c/0x40/0x44 position into *posOut
# if provided, and always calls the CONFIRMED NAVI-companion function
# fn_801F3668 (project_fsa_option_b_loose_ends_round1.md) - suggesting
# this notifies the fairy companion about the nearby arrow. Returns
# whether a match was found.
#
# Attempted real-C++ promotion (Phase 4): matched retail's logic (note:
# the first parameter, "idOut", is genuinely unreferenced by this
# function's own body, confirmed from the raw asm - r3 is never touched)
# but hit the SAME pure register-allocation-only prologue-ordering
# mismatch as the sibling fn_801CC730 in this same batch. Same class of
# issue as fn_80317BB8/fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180/
# dtor_801D7730/fn_803DA878/fn_801DACAC/fn_801DAD2C/fn_802EB27C/
# fn_801C1224/fn_801CC730. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_80008288
etb_80008288:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008288, 8

.section extabindex, "a"
.balign 4
.global eti_800154F0
eti_800154F0:
    .4byte fn_801CC820
    .4byte 0x000000C4
    .4byte etb_80008288
.size eti_800154F0, 12

.text
.balign 4
.global fn_801CC820

fn_801CC820:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr. 29, 4
    .4byte 0x41820014 # beq .L_801CC854
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    stfs 0, 0x0(29)
    stfs 0, 0x4(29)
    stfs 0, 0x8(29)
L_801CC854:
    bl fn_8023B2B0
    mr. 31, 3
    .4byte 0x41800068 # blt .L_801CC8C4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820054 # beq .L_801CC8C4
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_801CC8C4
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4152
    cmplwi 0, 0x5257
    .4byte 0x40820038 # bne .L_801CC8C4
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x4081002C # ble .L_801CC8C4
    cmplwi 29, 0x0
    li 30, 0x1
    .4byte 0x4182001C # beq .L_801CC8C0
    lfs 0, 0x3c(3)
    stfs 0, 0x0(29)
    lfs 0, 0x40(3)
    stfs 0, 0x4(29)
    lfs 0, 0x44(3)
    stfs 0, 0x8(29)
L_801CC8C0:
    bl fn_801F3668
L_801CC8C4:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
