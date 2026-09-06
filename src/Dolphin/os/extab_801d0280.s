# fn_801D0280(this, playerIdx) - a sibling of the CONFIRMED fn_801D02E0
# "face toward a point" helper (extab_801d02e0.s), sourcing its target
# from the CONFIRMED per-player remembered-position array
# (this->0x1ac[playerIdx], project_fsa_slk2_target_selection_solved.md)
# instead of an explicit point argument. Computes dx/dz from
# this->0xc/0x10 to that slot, calls the CONFIRMED fn_80093340 atan2
# helper, and scales to the game's 16-bit binary-angle format via the
# same lbl_8053EFEC constant fn_801D02E0 uses. Called by fn_801C7370
# (extab_801c7370.s) with the playerIdx left over in r4 from a prior
# fn_801D05F8 target-selection call - "what's my facing angle toward
# the player I'm currently tracking."
#
# Attempted real-C++ promotion (Phase 4): the actual math/params/return
# type (real signature is s32, NOT s16 as an earlier header guessed -
# retail never sign-extends the fctiwz result) are all confirmed
# correct, but retail interleaves the prologue's LR-save instruction
# (`stw 0,0x14(1)`) in the MIDDLE of the float-load sequence rather than
# before or after it as a block - 2 source variants (direct field
# access; pre-loading this->0xc/0x10 into named locals before computing
# the slot address) both produced the SAME prologue-placement mismatch.
# Same class of issue as fn_801DAD2C/fn_802EB27C/fn_801C1224/
# fn_801CC730/fn_801CC820/fn_801D7638/fn_801DAE24/fn_802ED140/
# fn_802146A4 earlier this session. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_80008440
etb_80008440:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008440, 8

.section extabindex, "a"
.balign 4
.global eti_80015784
eti_80015784:
    .4byte fn_801D0280
    .4byte 0x00000060
    .4byte etb_80008440
.size eti_80015784, 12

.text
.balign 4
.global fn_801D0280

fn_801D0280:
    stwu 1, -0x10(1)
    mflr 0
    mulli 5, 4, 0xc
    lfs 1, 0xc(3)
    lfs 0, 0x10(3)
    lis 4, lbl_80534C00@ha
    stw 0, 0x14(1)
    addi 5, 5, 0x1ac
    add 5, 3, 5
    addi 3, 4, lbl_80534C00@l
    lfs 3, 0x0(5)
    lfs 2, 0x4(5)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002C04C # lfs f0, lbl_8053EFEC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
