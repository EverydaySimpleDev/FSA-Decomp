/*
 * fn_80107660 (0x80107660-0x80107F38, 0x8D8/2264 bytes) - large per-frame update() for the
 * same class as fn_80107360 (shares the this->0x274 state-dispatch field). Survey-level only;
 * not every branch's exact semantics are claimed here.
 *
 * - Opens with the confirmed shared virtual contract: this->vtable[slot15] (0x3c/4), then
 *   conditionally this->vtable[slot13] (0x34/4) if this->0x274 is 0 or 1 - same sequence
 *   confirmed for fn_80106C84 and fn_80107458 (see project_fsa_extab_bug_resolved.md).
 * - On failure of that contract: plays a one-shot sound cue (fn_8013CC50, ID 0x503, gated by
 *   an already-played flag at this->0x269), then fn_801F0E34(this, 0x303, 0) and
 *   fn_801F0D20(this, 0x42) - the confirmed sound/effect-notify primitives.
 * - Dispatches on this->0x274 (0/1/2/4+):
 *   - States 0/1: recompute a bounding region (this->0x44-0x50 scratch from this->0x60-0x6c
 *     and this->0xc/0x10/0x14), then loop over 4 candidates checking a global bitmask
 *     (lbl_8053AAF8->0x82) or fn_8022CAF8(candidate)==4, then fn_8023B0F4 (bounding-box test),
 *     accepting the first match into this->0x26c if unset, advancing to state 2 and calling
 *     fn_80230FD0 (arg 0x20035).
 *   - State 2: a time-based ease-in/ease-out interpolation driven by lbl_8053C2D4/E0/DC/EC/F8/FC
 *     and a direction flag (this->0x27c), integrating position (this->0xc/0x10/0x14 via
 *     ps_add), clamping this->0x10 against this->0x28c. Increments a frame counter
 *     (this->0x270); between 0xb4-0x12c (180-300) computes an eased angle lookup into the
 *     CONFIRMED shared anchor table lbl_8052EBC0 (fctiwz+clrlslwi float-to-index conversion,
 *     same table used by fn_801053E8); at >=0x12c calls fn_80231590(this->0x26c, this->0x198)
 *     (unidentified "release/finalize" on the accepted candidate). Then fn_801F285C(this, 0, 0,
 *     1, -1) (unidentified, returns a status); on success, a priority cascade of 4 mutually-
 *     exclusive category checks - fn_8023AA18, fn_8023AE34+fn_801CC820, fn_8023AC74+fn_801CC538,
 *     fn_8023AD54+fn_801CC640 - each tried in order, first match wins (same accept-chain family
 *     as fn_8023DE58/E724/F264, see project_fsa_shared_effect_subsystem_crossref.md, though these
 *     are a DIFFERENT function family with the same "try in priority order" shape). Falls back
 *     to fn_801F2DB4(this, this->0x1a0, 0x4e554c4c, 0) if none match.
 *   - State 4+: drives a NEW global, SHARED (not per-instance) noise/wobble oscillator -
 *     lbl_8053AA70 (counter)/74 (first-use init guard)/78 (accumulator float)/7c - via an ease
 *     computation against lbl_8053C2D0-E4, integrating into position and resetting after 30
 *     (0x1e) ticks; past that also resets this->0x270/0x26c/0x274 to restart the whole state
 *     machine. Because the oscillator lives at a fixed global address rather than per-this,
 *     multiple simultaneous instances of this class would share one wobble phase.
 * - Tail: calls fn_801D1C18(this+0x230) - the per-frame re-evaluation driver of the
 *   "timed-cue lookup table" shared component this class embeds at +0x230 (see
 *   project_fsa_multiple_inheritance_pattern.md for the full real-decomp writeup). CORRECTION:
 *   earlier framing called this "driving a second base subobject" and flagged the differing
 *   offset from fn_80105368's +0x374 as an open question about multiple-inheritance layout -
 *   resolved: it's an embedded MEMBER object, not a base class, so each derived class is free
 *   to place it at its own offset. No further mystery; the offset difference is expected.
 */

.section extab, "a"
.balign 4
.global etb_80005AD0
etb_80005AD0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005AD0, 8

.section extabindex, "a"
.balign 4
.global eti_80011F14
eti_80011F14:
    .4byte fn_80107660
    .4byte 0x000008D8
    .4byte etb_80005AD0
.size eti_80011F14, 12

.text
.balign 4
.global fn_80107660

fn_80107660:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    stw 30, 0x88(1)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4182009C # beq .L_80107728
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801076A4
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_80107728
L_801076A4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801076CC
    li 0, 0x0
    stb 0, 0x269(31)
    .4byte 0x48000858 # b .L_80107F20
L_801076CC:
    lbz 0, 0x269(31)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80107720
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229354 # lfs f1, lbl_8053C2F4@sda21(r0)
    li 5, 0x503
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x42
    bl fn_801F0D20
L_80107720:
    li 0, 0x1
    stb 0, 0x269(31)
L_80107728:
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8010773C
    cmpwi 0, 0x1
    .4byte 0x4082011C # bne .L_80107854
L_8010773C:
    lfs 3, 0x60(31)
    li 30, 0x0
    stfs 3, 0x44(1)
    lfs 5, 0x64(31)
    stfs 5, 0x48(1)
    lfs 2, 0x68(31)
    stfs 2, 0x4c(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x50(1)
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    lfs 6, 0xc(31)
    fsubs 0, 1, 0
    fadds 3, 3, 6
    fadds 1, 2, 6
    fadds 2, 5, 0
    fadds 0, 4, 0
    stfs 3, 0x44(1)
    stfs 2, 0x48(1)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
L_80107790:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 30
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_801077BC
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820048 # bne .L_80107800
L_801077BC:
    lwz 5, 0x4(31)
    mr 3, 30
    .4byte 0xC0229350 # lfs f1, lbl_8053C2F0@sda21(r0)
    addi 4, 1, 0x44
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80107800
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x4080001C # bge .L_80107800
    lwz 4, 0x198(31)
    mr 3, 30
    bl fn_8023162C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80107800
    .4byte 0x48000014 # b .L_80107810
L_80107800:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF88 # blt .L_80107790
    li 30, -0x1
L_80107810:
    cmpwi 30, 0x0
    .4byte 0x41800040 # blt .L_80107854
    stw 30, 0x26c(31)
    li 0, 0x2
    lwz 3, 0x274(31)
    stw 3, 0x278(31)
    stw 0, 0x274(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_80107844
    .4byte 0x4080001C # bge .L_80107854
    .4byte 0x48000018 # b .L_80107854
    .4byte 0x48000014 # b .L_80107854
L_80107844:
    lis 4, 0x2
    lwz 3, 0x26c(31)
    addi 4, 4, 0x35
    bl fn_80230FD0
L_80107854:
    lwz 0, 0x274(31)
    cmpwi 0, 0x2
    .4byte 0x41820138 # beq .L_80107994
    .4byte 0x40800010 # bge .L_80107870
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8010787C
    .4byte 0x480006AC # b .L_80107F18
L_80107870:
    cmpwi 0, 0x4
    .4byte 0x408006A4 # bge .L_80107F18
    .4byte 0x48000568 # b .L_80107DE0
L_8010787C:
    lfs 1, 0x280(31)
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4182068C # beq .L_80107F18
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801078A4
    .4byte 0x40800014 # bge .L_801078B0
    .4byte 0x48000010 # b .L_801078B0
L_801078A4:
    .4byte 0xC0A29334 # lfs f5, lbl_8053C2D4@sda21(r0)
    .4byte 0xC0829340 # lfs f4, lbl_8053C2E0@sda21(r0)
    .4byte 0x4800000C # b .L_801078B8
L_801078B0:
    .4byte 0xC0A2933C # lfs f5, lbl_8053C2DC@sda21(r0)
    .4byte 0xC082934C # lfs f4, lbl_8053C2EC@sda21(r0)
L_801078B8:
    .4byte 0xC0029358 # lfs f0, lbl_8053C2F8@sda21(r0)
    lfs 3, 0xc(31)
    lfs 2, 0x288(31)
    fmuls 1, 0, 1
    .4byte 0xC002935C # lfs f0, lbl_8053C2FC@sda21(r0)
    fsubs 2, 3, 2
    fdivs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_801078EC
    fsubs 0, 1, 0
    fnmsubs 5, 4, 0, 5
L_801078EC:
    lbz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8010790C
    stfs 5, 0x3c(31)
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000018 # b .L_80107920
L_8010790C:
    fneg 1, 5
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
L_80107920:
    psq_l 2, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    .4byte 0xC0229358 # lfs f1, lbl_8053C2F8@sda21(r0)
    ps_add 0, 2, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0x280(31)
    lfs 2, 0x288(31)
    fmuls 1, 1, 0
    lfs 3, 0xc(31)
    fadds 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80107974
    stfs 0, 0xc(31)
    li 0, 0x0
    stb 0, 0x268(31)
    .4byte 0x480005A8 # b .L_80107F18
L_80107974:
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820598 # bne .L_80107F18
    stfs 0, 0xc(31)
    li 0, 0x1
    stb 0, 0x268(31)
    .4byte 0x48000588 # b .L_80107F18
L_80107994:
    lfs 1, 0x280(31)
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820104 # beq .L_80107AA8
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801079BC
    .4byte 0x40800014 # bge .L_801079C8
    .4byte 0x48000010 # b .L_801079C8
L_801079BC:
    .4byte 0xC0A29334 # lfs f5, lbl_8053C2D4@sda21(r0)
    .4byte 0xC0829340 # lfs f4, lbl_8053C2E0@sda21(r0)
    .4byte 0x4800000C # b .L_801079D0
L_801079C8:
    .4byte 0xC0A2933C # lfs f5, lbl_8053C2DC@sda21(r0)
    .4byte 0xC082934C # lfs f4, lbl_8053C2EC@sda21(r0)
L_801079D0:
    .4byte 0xC0029358 # lfs f0, lbl_8053C2F8@sda21(r0)
    lfs 3, 0xc(31)
    lfs 2, 0x288(31)
    fmuls 1, 0, 1
    .4byte 0xC002935C # lfs f0, lbl_8053C2FC@sda21(r0)
    fsubs 2, 3, 2
    fdivs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80107A04
    fsubs 0, 1, 0
    fnmsubs 5, 4, 0, 5
L_80107A04:
    lbz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80107A24
    stfs 5, 0x3c(31)
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000018 # b .L_80107A38
L_80107A24:
    fneg 1, 5
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
L_80107A38:
    psq_l 2, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    .4byte 0xC0229358 # lfs f1, lbl_8053C2F8@sda21(r0)
    ps_add 0, 2, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0x280(31)
    lfs 2, 0x288(31)
    fmuls 1, 1, 0
    lfs 3, 0xc(31)
    fadds 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80107A8C
    stfs 0, 0xc(31)
    li 0, 0x0
    stb 0, 0x268(31)
    .4byte 0x48000020 # b .L_80107AA8
L_80107A8C:
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_80107AA8
    stfs 0, 0xc(31)
    li 0, 0x1
    stb 0, 0x268(31)
L_80107AA8:
    lfs 2, 0x284(31)
    .4byte 0xC0229348 # lfs f1, lbl_8053C2E8@sda21(r0)
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    fadds 1, 2, 1
    .4byte 0xC042933C # lfs f2, lbl_8053C2DC@sda21(r0)
    stfs 0, 0x40(1)
    .4byte 0xC062934C # lfs f3, lbl_8053C2EC@sda21(r0)
    stfs 1, 0x284(31)
    psq_l 4, 0x40(1), 1, 0
    lfs 1, 0x284(31)
    stfs 0, 0x38(1)
    fsubs 0, 2, 1
    psq_l 1, 0xc(31), 0, 0
    fmuls 0, 3, 0
    stfs 0, 0x3c(1)
    psq_l 0, 0x38(1), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 0, 0x14(31), 1, 0
    ps_add 0, 0, 4
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0x10(31)
    lfs 1, 0x28c(31)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_80107B10
    stfs 1, 0x10(31)
L_80107B10:
    lfs 1, 0x284(31)
    .4byte 0xC0029334 # lfs f0, lbl_8053C2D4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80107B28
    stfs 0, 0x284(31)
L_80107B28:
    lwz 3, 0x270(31)
    addi 0, 3, 0x1
    stw 0, 0x270(31)
    lwz 3, 0x270(31)
    cmpwi 3, 0xb4
    .4byte 0x41800114 # blt .L_80107C50
    cmpwi 3, 0x12c
    .4byte 0x4080010C # bge .L_80107C50
    subi 5, 3, 0xb4
    lis 3, 0x2aab
    mullw 4, 5, 5
    lis 0, 0x4330
    subi 3, 3, 0x5555
    stw 0, 0x58(1)
    .4byte 0xC8429328 # lfd f2, lbl_8053C2C8@sda21(r0)
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    mulhw 4, 3, 4
    srwi 3, 4, 31
    add 3, 4, 3
    extsh 3, 3
    xoris 3, 3, 0x8000
    stw 3, 0x5c(1)
    lfd 1, 0x58(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800040 # bge .L_80107BCC
    stw 3, 0x64(1)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC0229318 # lfs f1, lbl_8053C2B8@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    stw 0, 0x60(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 0, 0x6c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 3, 0
    .4byte 0x48000038 # b .L_80107C00
L_80107BCC:
    stw 3, 0x74(1)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC022931C # lfs f1, lbl_8053C2BC@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    stw 0, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x78(1)
    lwz 0, 0x7c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 3, 3, 0
L_80107C00:
    lis 3, 0x51ec
    lis 0, 0x4330
    subfic 4, 5, 0xc8
    stw 0, 0x80(1)
    subi 0, 3, 0x7ae1
    .4byte 0xC8429328 # lfd f2, lbl_8053C2C8@sda21(r0)
    mulhw 0, 0, 4
    lfs 0, 0x28c(31)
    srawi 0, 0, 6
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 3, 0, 0xc
    addi 0, 3, 0x2
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 1, 0x80(1)
    fsubs 1, 1, 2
    fmadds 0, 1, 3, 0
    stfs 0, 0x10(31)
    .4byte 0x48000018 # b .L_80107C64
L_80107C50:
    cmpwi 3, 0x12c
    .4byte 0x41800010 # blt .L_80107C64
    lwz 3, 0x26c(31)
    lwz 4, 0x198(31)
    bl fn_80231590
L_80107C64:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80107C94
    lwz 3, 0x26c(31)
    lwz 4, 0x198(31)
    bl fn_80231590
    .4byte 0x48000288 # b .L_80107F18
L_80107C94:
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    addi 3, 1, 0x1c
    addi 5, 1, 0x8
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    lfs 4, 0xc(31)
    lfs 0, 0x70(31)
    fsubs 5, 2, 1
    stfs 0, 0x1c(1)
    fadds 3, 0, 4
    lfs 0, 0x74(31)
    stfs 0, 0x20(1)
    fadds 2, 0, 5
    lfs 0, 0x78(31)
    stfs 0, 0x24(1)
    fadds 1, 0, 4
    lfs 4, 0x7c(31)
    fadds 0, 4, 5
    stfs 4, 0x28(1)
    stfs 3, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    lwz 4, 0x4(31)
    bl fn_8023AA18
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80107D10
    li 0, 0x1
    .4byte 0x4800008C # b .L_80107D98
L_80107D10:
    lwz 4, 0x4(31)
    addi 3, 1, 0x1c
    addi 5, 1, 0x8
    bl fn_8023AE34
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80107D38
    li 4, 0x0
    bl fn_801CC820
    li 0, 0x1
    .4byte 0x48000064 # b .L_80107D98
L_80107D38:
    lwz 4, 0x4(31)
    addi 3, 1, 0x1c
    addi 5, 1, 0x8
    bl fn_8023AC74
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_80107D68
    addi 4, 1, 0x8
    addi 5, 1, 0x2c
    li 6, 0x0
    bl fn_801CC538
    li 0, 0x1
    .4byte 0x48000034 # b .L_80107D98
L_80107D68:
    lwz 4, 0x4(31)
    addi 3, 1, 0x1c
    addi 5, 1, 0x8
    bl fn_8023AD54
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80107D94
    li 4, 0x0
    li 5, 0x0
    bl fn_801CC640
    li 0, 0x1
    .4byte 0x48000008 # b .L_80107D98
L_80107D94:
    li 0, 0x0
L_80107D98:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80107DB0
    lwz 3, 0x26c(31)
    lwz 4, 0x198(31)
    bl fn_80231590
    .4byte 0x4800016C # b .L_80107F18
L_80107DB0:
    lis 5, 0x4e55
    lwz 4, 0x1a0(31)
    mr 3, 31
    li 6, 0x0
    addi 5, 5, 0x4c4c
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x4182014C # beq .L_80107F18
    lwz 3, 0x26c(31)
    lwz 4, 0x198(31)
    bl fn_80231590
    .4byte 0x4800013C # b .L_80107F18
L_80107DE0:
    .4byte 0x880D8EB4 # lbz r0, lbl_8053AA74@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_80107DFC
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D8EB0 # stw r3, lbl_8053AA70@sda21(r0)
    .4byte 0x980D8EB4 # stb r0, lbl_8053AA74@sda21(r0)
L_80107DFC:
    .4byte 0x880D8EBC # lbz r0, lbl_8053AA7C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_80107E18
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    li 0, 0x1
    .4byte 0x980D8EBC # stb r0, lbl_8053AA7C@sda21(r0)
    .4byte 0xD00D8EB8 # stfs f0, lbl_8053AA78@sda21(r0)
L_80107E18:
    .4byte 0xC04D8EB8 # lfs f2, lbl_8053AA78@sda21(r0)
    .4byte 0xC0229330 # lfs f1, lbl_8053C2D0@sda21(r0)
    .4byte 0xC0029334 # lfs f0, lbl_8053C2D4@sda21(r0)
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0xD02D8EB8 # stfs f1, lbl_8053AA78@sda21(r0)
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80107E3C
    .4byte 0xD00D8EB8 # stfs f0, lbl_8053AA78@sda21(r0)
L_80107E3C:
    .4byte 0xC04D8EB8 # lfs f2, lbl_8053AA78@sda21(r0)
    .4byte 0xC0029344 # lfs f0, lbl_8053C2E4@sda21(r0)
    .4byte 0x806D8EB0 # lwz r3, lbl_8053AA70@sda21(r0)
    fcmpo cr0, 2, 0
    addi 0, 3, 0x1
    .4byte 0x900D8EB0 # stw r0, lbl_8053AA70@sda21(r0)
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_80107E70
    .4byte 0xC002933C # lfs f0, lbl_8053C2DC@sda21(r0)
    .4byte 0xC0229338 # lfs f1, lbl_8053C2D8@sda21(r0)
    fsubs 0, 0, 2
    fmuls 1, 1, 0
    .4byte 0x48000010 # b .L_80107E7C
L_80107E70:
    fsubs 0, 0, 2
    .4byte 0xC0229340 # lfs f1, lbl_8053C2E0@sda21(r0)
    fmuls 1, 1, 0
L_80107E7C:
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    stfs 1, 0x14(1)
    psq_l 2, 0xc(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    ps_add 1, 2, 1
    psq_l 0, 0x18(1), 1, 0
    psq_st 1, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0x10(31)
    lfs 1, 0x28c(31)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_80107EC0
    stfs 1, 0x10(31)
L_80107EC0:
    .4byte 0xC02D8EB8 # lfs f1, lbl_8053AA78@sda21(r0)
    .4byte 0xC0029334 # lfs f0, lbl_8053C2D4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_80107EF8
    .4byte 0x800D8EB0 # lwz r0, lbl_8053AA70@sda21(r0)
    cmpwi 0, 0x1e
    .4byte 0x4180001C # blt .L_80107EF8
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    li 0, 0x0
    .4byte 0x900D8EB0 # stw r0, lbl_8053AA70@sda21(r0)
    li 0, 0x1
    .4byte 0xD00D8EB8 # stfs f0, lbl_8053AA78@sda21(r0)
    .4byte 0x48000008 # b .L_80107EFC
L_80107EF8:
    li 0, 0x0
L_80107EFC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80107F18
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x270(31)
    stw 0, 0x26c(31)
    stw 3, 0x274(31)
L_80107F18:
    addi 3, 31, 0x230
    bl fn_801D1C18
L_80107F20:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

