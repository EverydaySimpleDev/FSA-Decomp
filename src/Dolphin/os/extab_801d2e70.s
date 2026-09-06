/*
 * fn_801D2E70 (0x801D2E70-0x801D2FEC, 0x17C/380 bytes) - the per-frame update() for
 * "ClassX" (see project_fsa_multiple_inheritance_pattern.md). Manages a byte countdown
 * (this->0x2a8, a "grace period") - while nonzero, decrements it, and only once it reaches
 * 0 does the real per-frame check run:
 *   - fetches a bounding-box-shaped struct via the CONFIRMED GetRoomConfigRecord settings accessor
 *     (offset +0xcc if this->0x4<8, else +0xdc - the same "type<8" gating pattern confirmed
 *     elsewhere this session), and tests this->0xc/0x10 (position) against its 4 float bounds.
 *   - if outside bounds, clears this->0x11c (the confirmed "active" flag) and stops.
 *   - if inside, calls fn_801F2A10(this, -1, 0, 0, this->0x98); on success, resets the grace
 *     counter (this->0x2a8=2) and stops for this frame. Otherwise calls
 *     fn_801F2B7C(this, -1, 1, this->0x114); on success, clears this->0x11c.
 *   - the very first branch (grace counter was already 0 on entry... actually: if grace
 *     counter STARTS nonzero, decrements it, and once it hits exactly 0 for the first time,
 *     plays a sound cue (fn_801F0E34, EFFECT ID 0x400d1 - NOT 0x4d1, see fix note below) and
 *     calls fn_801CB538(this->0x4, this+0xc, 0, 0), clearing this->0x11c - an expiry/cleanup
 *     path distinct from the bounds-check path above).
 * Tail: if this->0x11c (active) is still set, integrates position (this->0xc/0x10/0x14 +=
 * this->0x3c/0x40/0x44, the velocity set by fn_801D2CF0, via paired-single ps_add), then
 * unconditionally calls fn_801CE4BC(this) (unidentified, likely a commit/finalize step).
 *
 * Attempted real-C++ promotion (Phase 4): got EXTREMELY close - matched
 * the exact 0x17C byte SIZE and all but 14 bytes of CONTENT (all 14 are
 * register-number bits inside otherwise-correct instructions, not extra/
 * missing instructions) via 4 real fixes:
 * 1. if/else physical layout: retail treats the grace-countdown/decrement
 *    path (this->0x2a8 != 0) as the FALLTHROUGH and the bounds-check path
 *    as the branch target - the OPPOSITE of a naive `if (counter==0) {
 *    boundsCheck } else { decrement }` (same "if/else physical-layout"
 *    lesson as fn_801D5338/fn_80401FA0/etc - write
 *    `if (counter != 0) { decrement } else { boundsCheck }` instead.
 * 2. The sound-effect ID: `lis 4,0x4 / li 5,0 / addi 4,4,0xd1` encodes
 *    0x400D1 (0x40000+0xd1), NOT the 3-hex-digit 0x4d1 a superficial
 *    read of "addi 4,4,0xd1" suggests - matches the established
 *    fn_801F0E34 caller convention (IDs like 0x50029/0x40005/0x4005b/
 *    0x400c2, all 5-hex-digit 0x4XXXX-shaped). A value needing the full
 *    lis+addi encoding (>0xffff or needing the upper halfword) is a
 *    reliable tell that a "small-looking" addi immediate is actually
 *    only the LOW 16 bits of a much larger constant - always reconstruct
 *    the full value from BOTH the lis and addi immediates, not just the
 *    addi's operand.
 * 3. Paired-single tail block: an explicit `asm { psq_l/ps_add/psq_st }`
 *    block (this project's established convention, see
 *    Yasi_TerrainImpactResponse_802DF508.cpp) is required - 3 separate
 *    scalar `this->x += this->vx;` C++ statements do NOT get
 *    auto-vectorized by MWCC into the ps form retail uses (confirmed:
 *    plain scalar C++ compiled to 12 scalar lfs/stfs/fadds instructions,
 *    16 bytes too long). The asm operand needs a `register void*`
 *    parameter (a plain `char*` local errors with "was not assigned to
 *    a register").
 * 4. The 4-float bounding-box test needs a SINGLE `&&`-chained
 *    conjunction (`if (posX>=b0 && posY>=b1 && posX<b2 && posY<b3) flag=1;`),
 *    NOT a flat goto-per-condition chain (`if(cond)goto fail;` x4) and
 *    NOT fully-nested ifs either - both of those alternate structures
 *    made MWCC apply the SAME instruction idiom (cror-based NaN-safe
 *    negation, or plain fcmpo+bge) uniformly to ALL 4 comparisons,
 *    while retail actually uses a MIX: comparisons 1-2 (the "posX>=b0",
 *    "posY>=b1" continue-conditions) compile via the cror eq,gt,eq +
 *    bne idiom, comparisons 3-4 (the "posX<b2","posY<b3" continue-
 *    conditions, written as their negation "posX>=b2"/"posY>=b3" for
 *    the fail-goto form) compile via plain fcmpo+bge with NO cror. Only
 *    the single `&&`-chain source form reproduced this exact mix
 *    (confirmed: goto-chain and nested-if variants both gave uniform
 *    cror on all 4, off by +4 to +8 bytes).
 *
 * The ONE remaining residual after all 4 fixes: retail loads posX into
 * f2 and the first bounds float into f0 for the comparison chain, while
 * my code (inlining the loads directly, or hoisting to named `f32 posX/
 * posY` locals declared first - both tried) always gets f3/f2 instead.
 * This is the SAME scheduler-internal "float register-role assignment"
 * wall conclusively established elsewhere this session (fn_80204DAC: 5
 * attempts + external research; fn_801CC9F8; fn_803D6BDC's integer-
 * register sibling) - not reachable via source phrasing. Do NOT
 * re-attempt via another local-variable/declaration-order variant;
 * this is the CLOSEST near-miss of the whole session (14 of ~380 bytes,
 * all register-number bits) and the 4 real fixes above should be
 * preserved verbatim for a future attempt IF a genuine new lever for
 * the float-register-role wall is ever found (compiler flag/pragma,
 * not another C++ phrasing).
 */

.section extab, "a"
.balign 4
.global etb_80008560
etb_80008560:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008560, 8

.section extabindex, "a"
.balign 4
.global eti_800158F8
eti_800158F8:
    .4byte fn_801D2E70
    .4byte 0x0000017C
    .4byte etb_80008560
.size eti_800158F8, 12

.text
.balign 4
.global fn_801D2E70

fn_801D2E70:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lbz 4, 0x2a8(3)
    cmplwi 4, 0x0
    .4byte 0x41820048 # beq .L_801D2ED8
    subi 0, 4, 0x1
    stb 0, 0x2a8(30)
    lbz 0, 0x2a8(30)
    cmplwi 0, 0x0
    .4byte 0x408200FC # bne .L_801D2FA0
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0xd1
    bl fn_801F0E34
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB538
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x480000CC # b .L_801D2FA0
L_801D2ED8:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801D2EF0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801D2EF4
L_801D2EF0:
    addi 3, 3, 0xdc
L_801D2EF4:
    lfs 2, 0xc(30)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801D2F3C
    lfs 1, 0x10(30)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801D2F3C
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801D2F3C
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801D2F3C
    li 0, 0x1
L_801D2F3C:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_801D2F50
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000054 # b .L_801D2FA0
L_801D2F50:
    lwz 5, 0x98(30)
    mr 3, 30
    li 4, -0x1
    li 6, 0x0
    li 7, 0x0
    bl fn_801F2A10
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801D2F7C
    li 0, 0x2
    stb 0, 0x2a8(30)
    .4byte 0x48000028 # b .L_801D2FA0
L_801D2F7C:
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801D2FA0
    li 0, 0x0
    stb 0, 0x11c(30)
L_801D2FA0:
    lbz 0, 0x11c(30)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_801D2FCC
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
L_801D2FCC:
    mr 3, 30
    bl fn_801CE4BC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

