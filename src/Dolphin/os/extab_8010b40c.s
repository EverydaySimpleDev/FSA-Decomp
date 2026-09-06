/*
 * fn_8010B40C (0x8010B40C-0x8010B644, 0x23C/572 bytes) - "setState(this, newState)" for a
 * NEW, unrelated class (field family 0x100/0x104/0x230/0x234/0x238/0x23c/0x244/0x27c/0xd8/
 * 0x11d - distinct from the fn_80109534-class). Survey-level.
 *
 * Attempted real-C++ promotion (Phase 4 session 5): fully traced and
 * landed byte-exact EXCEPT the state==4 body (position/init reset
 * block). CORRECTION vs the header prose below: the "cue" IDs passed
 * to fn_801F0E34 for states 1/2/3 are actually 0x3007C/0x30061/0x3007D
 * (computed via `lis r4,3; addi r4,r4,N`), NOT the 0x37c/0x37d/etc
 * implied by a literal reading of the low halfword - always verify
 * against the real lis/addi pair, not just the trailing addi immediate.
 * The state==4 body hits the CONFIRMED "float-load-reordering"
 * wall (see reference_fsa_mwcc_scheduling_wall_investigation.md):
 * retail hoists 2 independent SDA float-constant loads (lbl_8053C470,
 * lbl_8053C47C) several instructions earlier than any source-order
 * phrasing reproduces - 2 attempts (original statement order; float-
 * assignment-first + named-local hoist for the 2nd constant) each
 * compiled a DIFFERENT still-wrong instruction order, confirming the
 * scheduler's placement is independent of source phrasing. All other
 * states (0/1/2/3/5) + the dispatch + the tail (incl. the "return 1"
 * this function apparently always returns, per a stray `li r3,1`
 * right before the epilogue - the function is not truly void) traced
 * clean. Deferred, reverted to this raw transcription.
 *
 * Dispatches on newState (0-5+, via range checks rather than a jumptable):
 *   - state 1: plays sound cue `0x37c` via fn_801F0E34.
 *   - state 2: releases two handles at this->0x100/0x104 (fn_8013C824+fn_800EC240, a new
 *     "release a spawned handle" pattern), then either plays two sound cues (`0x28d`/`0x28e`
 *     via fn_8013CC50, caching the 2nd's result into this->0x27c) if this->0x4==0, or falls
 *     through; finally plays cue `0x37d`.
 *   - state 3: plays cues `0x28b`/`0x28c`, then reconfigures an embedded object at
 *     `this+0x244` via `fn_801D22DC(this+0x244, 1, 0, 0)` - the SAME reconfigure-call shape
 *     confirmed for the fn_80109534-class's setState (fn_801096C8), but at a DIFFERENT offset
 *     (+0x244 vs +0x33c) - a likely 6th class this session embedding the shared
 *     fn_801D1C18-family base type (not yet confirmed via this class's destructor). Plays
 *     cue `0x37d`.
 *   - state 4 (fallthrough range): resets this->0x11d=0, reconfigures the embedded object
 *     via `fn_801D22DC(this+0x244, 0, 2, 0)`, then resets position (this->0xc/0x10/0x14 from
 *     this->0x24/0x28/0x2c, with a Y offset subtraction) - a "return to spawn point" idiom.
 *   - state 5: resets this->0xd8/0x238=0.
 *
 * Tail (always runs): `fn_801D1F14(this+0x244, ...)` (finalize the embedded object),
 * this->0x230=newState, this->0x234=0 - the exact same setState() tail shape as
 * fn_801096C8.
 */

.section extab, "a"
.balign 4
.global etb_80005BF8
etb_80005BF8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005BF8, 8

.section extabindex, "a"
.balign 4
.global eti_80012058
eti_80012058:
    .4byte fn_8010B40C
    .4byte 0x0000023C
    .4byte etb_80005BF8
.size eti_80012058, 12

.text
.balign 4
.global fn_8010B40C

fn_8010B40C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmpwi 31, 0x3
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x41820108 # beq .L_8010B534
    .4byte 0x40800014 # bge .L_8010B444
    cmpwi 31, 0x1
    .4byte 0x4182001C # beq .L_8010B454
    .4byte 0x40800034 # bge .L_8010B470
    .4byte 0x480001D4 # b .L_8010B614
L_8010B444:
    cmpwi 31, 0x5
    .4byte 0x418201C0 # beq .L_8010B608
    .4byte 0x408001C8 # bge .L_8010B614
    .4byte 0x48000168 # b .L_8010B5B8
L_8010B454:
    .4byte 0xC00294D0 # lfs f0, lbl_8053C470@sda21(r0)
    lis 4, 0x3
    addi 4, 4, 0x7c
    li 5, 0x0
    stfs 0, 0x23c(30)
    bl fn_801F0E34
    .4byte 0x480001A8 # b .L_8010B614
L_8010B470:
    lwz 0, 0x100(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8010B494
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x100(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x100(30)
L_8010B494:
    lwz 0, 0x104(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8010B4B8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x104(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x104(30)
L_8010B4B8:
    lwz 3, 0x4(30)
    cmpwi 3, 0x0
    .4byte 0x40820054 # bne .L_8010B514
    .4byte 0xC02294D4 # lfs f1, lbl_8053C474@sda21(r0)
    addi 4, 30, 0xc
    li 5, 0x28d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02294D4 # lfs f1, lbl_8053C474@sda21(r0)
    li 5, 0x28e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x27c(30)
L_8010B514:
    .4byte 0xC00294D0 # lfs f0, lbl_8053C470@sda21(r0)
    lis 4, 0x3
    mr 3, 30
    li 5, 0x0
    stfs 0, 0x23c(30)
    addi 4, 4, 0x61
    bl fn_801F0E34
    .4byte 0x480000E4 # b .L_8010B614
L_8010B534:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02294D8 # lfs f1, lbl_8053C478@sda21(r0)
    li 5, 0x28b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02294D8 # lfs f1, lbl_8053C478@sda21(r0)
    li 5, 0x28c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 3, 30, 0x244
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC00294D0 # lfs f0, lbl_8053C470@sda21(r0)
    lis 4, 0x3
    mr 3, 30
    li 5, 0x0
    stfs 0, 0x23c(30)
    addi 4, 4, 0x7d
    bl fn_801F0E34
    .4byte 0x48000060 # b .L_8010B614
L_8010B5B8:
    li 0, 0x0
    .4byte 0xC00294D0 # lfs f0, lbl_8053C470@sda21(r0)
    stb 0, 0x11d(30)
    addi 3, 30, 0x244
    li 4, 0x0
    li 5, 0x2
    stfs 0, 0x240(30)
    li 6, 0x0
    bl fn_801D22DC
    lfs 1, 0x24(30)
    .4byte 0xC00294DC # lfs f0, lbl_8053C47C@sda21(r0)
    stfs 1, 0xc(30)
    lfs 1, 0x28(30)
    stfs 1, 0x10(30)
    lfs 1, 0x2c(30)
    stfs 1, 0x14(30)
    lfs 1, 0x28(30)
    fsubs 0, 1, 0
    stfs 0, 0x10(30)
    .4byte 0x48000010 # b .L_8010B614
L_8010B608:
    li 0, 0x0
    stw 0, 0xd8(30)
    stw 0, 0x238(30)
L_8010B614:
    .4byte 0xC02294D0 # lfs f1, lbl_8053C470@sda21(r0)
    addi 3, 30, 0x244
    bl fn_801D1F14
    stw 31, 0x230(30)
    li 0, 0x0
    li 3, 0x1
    stw 0, 0x234(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

