# fn_800F3C70: initializes a local "spawn/effect parameter" struct on the
# stack (a 16-byte identity-index buffer at +0x38..+0x48, several float
# fields defaulted to a shared constant at +0x14/+0x24/+0x34, plus assorted
# byte/word flag defaults), optionally fills in a 3-vector "basis" sub-struct
# at +0x8..+0x30 if this->0x90 (the universal per-actor spawn-parameter
# field) is nonzero, then looks up a float via a two-level table indirection
# keyed by this->0x234/this->0x235 (lbl_80539E68[this->0x235] selects an
# index, lbl_8053BE60[that index] gives the float) before calling
# fn_801F06F0(this, &lbl_80463660, thisAgain, ..., localStructPtr,
# category+0xa1). NOT YET FULLY UNDERSTOOD: what the struct fields and
# lbl_80539E68/lbl_8053BE58/lbl_8053BE5C/lbl_8053BE60 tables represent, or
# what fn_801F06F0 (0x630 bytes - does PSMTXIdentity/PSMTXConcat matrix work
# plus several more sub-calls) actually produces - likely part of the same
# broader effect/particle-spawn subsystem as project_fsa_effect_playback_primitive.md
# but NOT confirmed to be the same one; this->0x234/0x235/0x240 are NOT
# necessarily the same fields as GNON's own 0x234/0x238 script-timer fields
# documented in project_fsa_gnon_actor_progress.md (this is a generic
# low-level cluster, not GNON-specific code, so "this" here is a different/
# more general class - avoid conflating the two without further evidence).
# Landed as raw GNU-AS (not a plain .c ASM block) because it needs its own
# extab/extabindex content - see project_fsa_extab_bug_resolved.md for why
# that's required in this region. Labels are .global with an explicit .size
# per the same fix. Branch-to-local-label and @sda21 instructions are
# emitted as raw .4byte words (GNU AS has no MWCC-style "opword" pseudo-op) -
# same underlying fix-set as project_fsa_mwcc_branch_fold_bug.md, adapted for
# a GNU-AS target instead of MWCC. Float registers use bare numbers (no "f"
# prefix) since this binutils build has no register-name aliases loaded,
# same convention already used for GPRs in this file.
.section extab, "a"
.balign 4
.global etb_800056A8
etb_800056A8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800056A8, 8

.section extabindex, "a"
.balign 4
.global eti_8001192C
eti_8001192C:
    .4byte fn_800F3C70
    .4byte 0x00000198
    .4byte etb_800056A8
.size eti_8001192C, 12

.text
.balign 4
.global fn_800F3C70
fn_800F3C70:
    stwu 1, -0x80(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 10, 1, 0x38
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b L_800F3CF4
L_800F3C94:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_800F3CF4:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt L_800F3C94
    .4byte 0xC0228EB8 # lfs f1, lbl_8053BE58@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lwz 0, 0x90(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq L_800F3DB4
    .4byte 0xC0028EBC # lfs f0, lbl_8053BE5C@sda21(r0)
    addi 0, 1, 0x8
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stw 0, 0x50(1)
L_800F3DB4:
    lbz 0, 0x235(3)
    .4byte 0x388D82A8 # li r4, lbl_80539E68@sda21
    lbz 5, 0x234(3)
    lis 6, lbl_80463660@ha
    lbzx 0, 4, 0
    addi 4, 6, lbl_80463660@l
    .4byte 0xC0228EC0 # lfs f1, lbl_8053BE60@sda21(r0)
    slwi 5, 5, 1
    lwz 6, 0x240(3)
    slwi 0, 0, 2
    fmr 2, 1
    li 7, 0x0
    add 5, 6, 5
    addi 6, 1, 0x38
    add 5, 5, 0
    addi 5, 5, 0xa1
    bl fn_801F06F0
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
