.section extab, "a"
.balign 4
.global etb_80009FB0
etb_80009FB0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009FB0, 8

.section extabindex, "a"
.balign 4
.global eti_80017AD0
eti_80017AD0:
    .4byte fn_8020F798
    .4byte 0x00000074
    .4byte etb_80009FB0
.size eti_80017AD0, 12

.text
.balign 4
.global fn_8020F798

# fn_8020F798(this) - TZOK's real draw() - NOTABLY does not render
# anything itself. Looks up a per-variant table entry
# (`lbl_8046A238[this->0x350]`, offset +0xc) plus `this->0x280`, and
# passes it with the CURRENT position (this->0xc/0x10/0x14) into
# fn_8020F80C(posPtr, tableEntry) (new, not yet decompiled) - then
# WRITES the result BACK into this->0xc/0x10/0x14. I.e. this "draw"
# call is actually a per-frame POSITION UPDATE (likely computing an
# anchored/orbiting/following position from the table entry), fitting
# TZOK's position-trail-predictor lineage - the actual visual
# rendering (if any) must happen elsewhere, possibly via whatever owns
# or tracks this actor.
#
# CORRECTION (session N, real-C++ promotion attempt): the above recon
# is WRONG about fn_8020F80C's signature. Checked fn_8020F80C's own
# prologue (extab_8020f80c.s: `mr 29,3` / `mr 30,4`) - r3/r4 are used
# directly as its own two params, and NOTHING sets r3 to the stack
# scratch address before `bl fn_8020F80C` (r3 is simply whatever `this`
# was on entry, untouched). So the real call is
# `fn_8020F80C(this_, tableEntryDerivedArg)` - the position round-trip
# through stack (psq_l/psq_st this->0xc/0x10 pair + a separate this->
# 0x14 float, then restored after the call) is this function's OWN
# local save/restore, unrelated to the call's arguments. Reproduced the
# paired-single copy via an inline asm hybrid (matching the project's
# established Yasi_TerrainImpactResponse_802DF508.cpp technique, since
# MWCC never auto-vectorizes 2 adjacent float-field copies into a ps op
# on its own) and got the instruction COUNT/shape to match, but hit a
# stack-frame-size near-miss: the compiler only reserves a 0x10-byte
# frame for the surrounding plain-C code (vs retail's 0x20), so the
# hardcoded-offset asm scratch (0x8/0x10(r1)) silently overlaps the
# r31 GPR spill slot at 0xc(r1) - a latent correctness bug, not just a
# byte near-miss. Adding a dummy `Vec3 pos;` local to force stack
# reservation got dead-code-eliminated since nothing reads it
# symbolically. Left as raw asm; needs either a full nofralloc-style
# nearly-raw asm body, or a real symbolic (non-hardcoded-offset) way to
# address the local from inline asm.
fn_8020F798:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8046A238@ha
    stw 0, 0x24(1)
    addi 5, 4, lbl_8046A238@l
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x350(3)
    psq_l 1, 0xc(31), 0, 0
    mulli 4, 0, 0x14
    lfs 0, 0x14(3)
    lwz 0, 0x280(3)
    psq_st 1, 0x8(1), 0, 0
    add 4, 5, 4
    lwz 4, 0xc(4)
    stfs 0, 0x10(1)
    add 4, 4, 0
    bl fn_8020F80C
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    stfs 0, 0xc(31)
    lfs 0, 0x10(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

