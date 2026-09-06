/*
 * IDENTIFIED: this is ZLDA - "Princess Zelda" (see extab_80109534.s's header note,
 * reference_fsa_actor_dispatch_table.md, and project_fsa_zlda_actor_progress.md, which already
 * fully mapped this exact function's 18-state jumptable case-by-case).
 *
 * fn_801096C8 (0x801096C8-0x80109AE0, 0x418/1048 bytes) - ZLDA's "setState(this, newState)".
 * Survey-level only.
 *
 * Saves the old state into this->0x32c, sets this->0x328=newState, resets this->0x338=0,
 * then dispatches via `jumptable_8049CF34` on newState (0-0x11 = 18 states; >0x11 aborts,
 * returning 0).
 *
 * MOST state handlers call fn_801D22DC(this+0x33c, arg1, arg2, arg3) with different literal
 * args per state - this->0x33c is the embedded "timed-cue lookup table" shared component
 * (see project_fsa_multiple_inheritance_pattern.md), and fn_801D22DC(sequenceIndex, mode,
 * evaluateNow) is that component's real "select and activate sequence" call - explaining
 * why it's invoked repeatedly with varying arguments rather than once at construction: this
 * setState() dispatcher is switching which attack/cue sequence is active per game-state.
 * The function's tail calls fn_801D1F14(this+0x33c, ...) - that component's "what's due
 * right now" query. RESOLVED (was flagged as open at landing time, before this component was
 * understood): this->0x33c is a plain embedded MEMBER, confirmed by this class's own
 * destructor (fn_8010AF3C) resetting the nested blend-timer's vtable at +0x360=+0x33c+0x24.
 *
 * Individual states of note:
 *   - state 1: plays a sound cue via fn_8013CC50 (confirmed primitive) with a computed
 *     position (this->0xc/0x10/0x14 + offset via lbl_8053C3E4/E8).
 *   - state 9 (80109890): sets this->0x2f8=1 (matches fn_80109534's checked flag).
 *   - state 0xa (801098B4): loops 4 times calling fn_80230AD4(i) (the recurring "4-player"
 *     pattern), then loops again checking a per-player bitmask against
 *     lbl_8053AAF8->0x82 (the SAME global bitmask confirmed in fn_80107660) and calling
 *     fn_8023764C(player, 0) for each set bit.
 *   - state 0xa continued: looks up this->0x310's registered handle via the CONFIRMED
 *     SpatialRegistry_GetBase+fn_801F666C pair, and if its this->0x1a0 field equals `0x4C494D54`
 *     ("LIMT" - the SAME 4-char code confirmed in fn_80109534), clears its this->0x11c
 *     "active" flag - a despawn/cleanup of the companion handle.
 *   - state 0xb (8010998C): re-spawns the "LIMT" companion via the CONFIRMED fn_801F9484,
 *     caching into this->0x310 - the SAME spawn call as fn_80109534.
 *   - state 0xc (801099E8): conditionally calls fn_800FE3EC (the CONFIRMED ring/chain-
 *     adjacency library constructor, see project_fsa_extab_bug_resolved.md) with this+0x230
 *     and a computed position - a NEW sighting of this reusable component in yet another,
 *     unrelated class.
 *   - state 0xe (80109A70): calls fn_80230534 (the CONFIRMED generic "reset" primitive).
 */

.section extab, "a"
.balign 4
.global etb_80005B9C
etb_80005B9C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005B9C, 8

.section extabindex, "a"
.balign 4
.global eti_80011FEC
eti_80011FEC:
    .4byte fn_801096C8
    .4byte 0x00000418
    .4byte etb_80005B9C
.size eti_80011FEC, 12

.text
.balign 4
.global fn_801096C8

fn_801096C8:
    stwu 1, -0x50(1)
    mflr 0
    cmplwi 4, 0x11
    stw 0, 0x54(1)
    li 0, 0x0
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lwz 3, 0x328(3)
    stw 3, 0x32c(31)
    stw 4, 0x328(31)
    stb 0, 0x338(31)
    .4byte 0x418103B0 # bgt .L_80109AAC
    lis 3, jumptable_8049CF34@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_8049CF34@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, 0x0
    .4byte 0x480003A8 # b .L_80109AC4
    li 0, 0x1
    addi 3, 31, 0x33c
    stb 0, 0x338(31)
    li 4, 0x7
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000378 # b .L_80109AB4
    lwz 30, 0x16c(31)
    cmpwi 30, -0x1
    .4byte 0x41820018 # beq .L_80109760
    bl GetRoomConfigRecord
    lbz 5, 0x1a8(31)
    mr 4, 30
    lwz 6, 0x4(31)
    bl fn_802D7704
L_80109760:
    addi 3, 31, 0x33c
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000340 # b .L_80109AB4
    addi 3, 31, 0x33c
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000328 # b .L_80109AB4
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x14
    lfs 3, 0x14(31)
    li 5, 0x33a
    .4byte 0xC0029444 # lfs f0, lbl_8053C3E4@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x0
    .4byte 0xC0229448 # lfs f1, lbl_8053C3E8@sda21(r0)
    li 8, 0x0
    lfs 2, 0x18(1)
    li 9, 0x0
    stfs 3, 0x1c(1)
    li 10, 0x1
    fadds 0, 2, 0
    stfs 0, 0x18(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    addi 3, 31, 0x33c
    li 4, 0x9
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480002C8 # b .L_80109AB4
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x8
    lfs 3, 0x14(31)
    li 5, 0x33a
    .4byte 0xC0029444 # lfs f0, lbl_8053C3E4@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x0
    .4byte 0xC0229448 # lfs f1, lbl_8053C3E8@sda21(r0)
    li 8, 0x0
    lfs 2, 0xc(1)
    li 9, 0x0
    stfs 3, 0x10(1)
    li 10, 0x1
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    addi 3, 31, 0x33c
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000268 # b .L_80109AB4
    lwz 3, 0x300(31)
    bl fn_80230CFC
    mr 4, 3
    addi 3, 31, 0x33c
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000248 # b .L_80109AB4
    lwz 3, 0x300(31)
    bl fn_80230CFC
    mr 4, 3
    addi 3, 31, 0x33c
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000228 # b .L_80109AB4
    lwz 4, 0x98(31)
    addi 3, 31, 0x33c
    li 5, 0x0
    li 6, 0x0
    addi 4, 4, 0xa
    bl fn_801D22DC
    li 0, 0x1
    stb 0, 0x2f8(31)
    .4byte 0x48000204 # b .L_80109AB4
    addi 3, 31, 0x33c
    li 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x300(31)
    li 4, 0xa
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
    li 30, 0x0
L_801098E0:
    mr 3, 30
    bl fn_80230AD4
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFF0 # blt .L_801098E0
    .4byte 0x480001C0 # b .L_80109AB4
    li 29, 0x0
    li 30, 0x1
L_80109900:
    mr 3, 29
    li 4, 0x0
    bl fn_80230224
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_80109930
    mr 3, 29
    li 4, 0x0
    bl fn_8023764C
L_80109930:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFC8 # blt .L_80109900
    lwz 30, 0x310(31)
    cmpwi 30, 0x0
    .4byte 0x41800030 # blt .L_80109974
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80109974
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4c49
    cmplwi 0, 0x4d54
    .4byte 0x4082000C # bne .L_80109974
    li 0, 0x0
    stb 0, 0x11c(3)
L_80109974:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x308(31)
    li 3, 0x1
    stw 0, 0x310(31)
    .4byte 0x4800013C # b .L_80109AC4
    addi 3, 31, 0x33c
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    li 4, 0x0
    li 3, 0x4
    .4byte 0x988D8EC0 # stb r4, lbl_8053AA80@sda21(r0)
    li 0, 0x1
    stw 3, 0x108(31)
    stb 0, 0x2f8(31)
    stw 4, 0x30c(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x4c49
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d54
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x310(31)
    .4byte 0x480000D0 # b .L_80109AB4
    lwz 4, 0x2fc(31)
    cmpwi 4, 0x0
    .4byte 0x40810030 # ble .L_80109A20
    lwz 0, 0x320(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80109A20
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x2c
    lfs 0, 0x14(31)
    addi 3, 31, 0x230
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x34(1)
    lwz 6, 0x4(31)
    bl fn_800FE3EC
L_80109A20:
    bl fn_8023077C
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x20
    lfs 3, 0x14(31)
    li 5, 0x33a
    .4byte 0xC0029444 # lfs f0, lbl_8053C3E4@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x0
    .4byte 0xC0229448 # lfs f1, lbl_8053C3E8@sda21(r0)
    li 8, 0x0
    lfs 2, 0x24(1)
    li 9, 0x0
    stfs 3, 0x28(1)
    li 10, 0x1
    fadds 0, 2, 0
    stfs 0, 0x24(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0x48000048 # b .L_80109AB4
    li 3, 0x0
    bl fn_80230534
    addi 3, 31, 0x33c
    li 4, 0x7
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x338(31)
    stw 0, 0x318(31)
    .4byte 0x48000018 # b .L_80109AB4
    li 0, 0x1
    stb 0, 0x338(31)
    .4byte 0x4800000C # b .L_80109AB4
L_80109AAC:
    li 3, 0x0
    .4byte 0x48000014 # b .L_80109AC4
L_80109AB4:
    .4byte 0xC0229440 # lfs f1, lbl_8053C3E0@sda21(r0)
    addi 3, 31, 0x33c
    bl fn_801D1F14
    li 3, 0x1
L_80109AC4:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

