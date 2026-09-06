/*
 * fn_801D217C (0x801D217C-0x801D21F0, 0x74/116 bytes) - a narrower boolean query for the
 * "timed-cue lookup table" component: returns false immediately unless this->0x28 (mode) is
 * exactly 2, in which case computes a time-delta from this->0xc against lbl_8053F044 and
 * calls fn_800C3638(this+0x24, timeDelta), returning its result directly. This is the same
 * "mode==2" case fn_801D208C's own mode==0 branch special-cases, factored out here as its
 * own standalone entry point - see project_fsa_multiple_inheritance_pattern.md.
 *
 * Attempted real-C++ promotion (Phase 4): the plain `(f32)(s32)x` int-to-
 * float cast idiom (already proven elsewhere, see
 * reference_fsa_int_to_float_cast_idiom.md) matched EVERYTHING except
 * ONE data reference - the compiler-auto-generated "magic double" bias
 * constant (0x4530000080000000) landed at a freshly-allocated address
 * instead of reusing retail's existing shared instance at
 * `lbl_8053F038`. A manual union-based reconstruction explicitly
 * referencing `lbl_8053F038` as an extern ADDED an instruction (the
 * XOR-based sign-flip became a separate op instead of being folded into
 * the auto-generated sequence), making the function 4 bytes too big
 * instead of 1 word wrong - strictly worse. This looks like a linker-
 * level constant-deduplication nuance (whether mwld recognizes a
 * freshly-compiled TU's float literal as identical to an existing
 * shared one) rather than something controllable via source structure.
 * Reverted to raw asm after 2 attempts; see
 * project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_80008508
etb_80008508:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008508, 8

.section extabindex, "a"
.balign 4
.global eti_80015874
eti_80015874:
    .4byte fn_801D217C
    .4byte 0x00000074
    .4byte etb_80008508
.size eti_80015874, 12

.text
.balign 4
.global fn_801D217C

fn_801D217C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    lbz 0, 0x28(3)
    cmplwi 0, 0x2
    .4byte 0x40820040 # bne .L_801D21D8
    lwz 4, 0xc(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    addi 3, 3, 0x24
    xoris 0, 4, 0x8000
    .4byte 0xC842C098 # lfd f2, lbl_8053F038@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC002C0A4 # lfs f0, lbl_8053F044@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fsubs 1, 1, 0
    bl fn_800C3638
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_801D21D8
    li 31, 0x1
L_801D21D8:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

