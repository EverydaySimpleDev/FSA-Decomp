/*
 * fn_80104EB0(this): LOSW's results-fanfare method (identity confirmed -
 * see fn_80104C3C's updated banner), called from fn_80104CA0 once 4-flag
 * consensus is reached. If bit 25 of this->0x90 is set, returns true
 * immediately (skip-celebration flag). Otherwise a multi-stage
 * results/celebration state machine on this->0x24f:
 *  - 0: calls fn_8023077C (the same "condition check" used in the
 *    consensus checker); on true, advances to state 1 with a 30-frame
 *    (0x1e) countdown in this->0x248.
 *  - 1: per-player (4 slots) draws a UI message via fn_8023E724+
 *    fn_8030C210 (shared lbl_8053AB10 global) for confirmed players
 *    (Player_GetCapabilityFlagByIndex check). At countdown 0, starts a SECOND per-player
 *    sub-sequence (this->0x24a incremented up to 13/0xd): for confirmed
 *    players, plays a sound (fn_80230498) and at sub-count==1 calls
 *    fn_80230FD0 (a "big" call, arg 0x10001) - likely a fanfare/camera
 *    cue per player. Resets countdown to 2 each tick; once this->0x24a
 *    reaches 13, advances to state 2 with a 50-frame (0x32) countdown.
 *  - other (2+): decrements the countdown; at 0, resets this->0x24f/
 *    0x24a, calls fn_80230534 (the confirmed reset call), and returns
 *    true (celebration complete). NOTE: the actual dispatch only ever
 *    reaches this path for state==2 exactly - state>=3 is unreachable
 *    dead code that falls straight to a plain `return 0` (state never
 *    exceeds 2 in practice, since each transition only increments by
 *    1 from a known starting point).
 * This is the "4-player consensus" class's results-fanfare sequence,
 * matching the shared-base minigame family's fn_80103A90 pattern.
 *
 * Attempted real-C++ promotion (Phase 4): landed the ENTIRE function
 * except a single dead register-store instruction (4 of ~440 bytes) -
 * the closest possible near-miss short of byte-exact. 2 real fixes
 * were needed: (1) `state` (this->0x24f) needs `s32`, not `u8` -
 * retail uses SIGNED `cmpwi` for every comparison including a
 * `state>=0` check that's tautological for an unsigned byte (0-255)
 * but genuinely meaningful for a signed value the compiler can't
 * prove is non-negative - the same lesson as fn_801E3250/fn_801F0D20,
 * now confirmed for a state-dispatch variable too, not just bitfields;
 * (2) the 4 dispatch blocks (state0/state1/state2/default0) must be
 * written via explicit `goto` in retail's EXACT PHYSICAL ORDER
 * (dispatch -> state0 -> state1 -> state2 -> default), not whatever
 * order feels natural in source - writing state0 or state2 adjacent
 * to default0 in the SOURCE lets the compiler drop their trailing
 * branch as an unnecessary fallthrough, when retail's own physical
 * layout requires an explicit branch there (this cost 8 bytes/2
 * instructions until reordered to match).
 *
 * The ONE remaining residual: retail's state2 body has an extra
 * `li 3,0` immediately followed by `li 3,1` 3 instructions later, with
 * r3 never read in between - a genuinely, provably DEAD register
 * store any correct optimizer would eliminate. 2 variants tried: a
 * plain `s32 result=0;...result=1;return result;` (correctly
 * optimized away, no effect); a `volatile s32 result` (forced real
 * stack traffic, grew the function by 12 bytes instead of recovering
 * the missing 4 - overshoot, not a fix). Deferred after 2 attempts;
 * this is an extremely close near-miss (1 dead instruction in ~110)
 * and both real fixes above should be preserved for a future attempt.
 */

.section extab, "a"
.balign 4
.global etb_800059C0
etb_800059C0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800059C0, 8

.section extabindex, "a"
.balign 4
.global eti_80011DD0
eti_80011DD0:
    .4byte fn_80104EB0
    .4byte 0x000001B8
    .4byte etb_800059C0
.size eti_80011DD0, 12

.text
.balign 4
.global fn_80104EB0

fn_80104EB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x4082000C # bne .L_80104EDC
    li 3, 0x1
    .4byte 0x48000178 # b .L_80105050
L_80104EDC:
    lbz 0, 0x24f(31)
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_80104F28
    .4byte 0x40800010 # bge .L_80104EF8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80104F04
    .4byte 0x48000158 # b .L_8010504C
L_80104EF8:
    cmpwi 0, 0x3
    .4byte 0x40800150 # bge .L_8010504C
    .4byte 0x48000118 # b .L_80105018
L_80104F04:
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820140 # beq .L_8010504C
    lbz 3, 0x24f(31)
    li 0, 0x1e
    addi 3, 3, 0x1
    stb 3, 0x24f(31)
    sth 0, 0x248(31)
    .4byte 0x48000128 # b .L_8010504C
L_80104F28:
    li 30, 0x0
L_80104F2C:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80104F54
    mr 3, 30
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    lwz 3, 0x24(5)
    bl fn_8030C210
L_80104F54:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80104F2C
    lhz 3, 0x248(31)
    subi 0, 3, 0x1
    sth 0, 0x248(31)
    lhz 0, 0x248(31)
    cmplwi 0, 0x0
    .4byte 0x408200D8 # bne .L_8010504C
    lhz 3, 0x24a(31)
    li 30, 0x0
    addi 0, 3, 0x1
    sth 0, 0x24a(31)
L_80104F88:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80104FE0
    mr 3, 30
    bl fn_8023E724
    lhz 5, 0x24a(31)
    mr 4, 3
    mr 3, 30
    li 6, 0xff
    addi 5, 5, 0xdb
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lhz 0, 0x24a(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80104FE0
    lis 4, 0x1
    mr 3, 30
    addi 4, 4, 0x1
    bl fn_80230FD0
L_80104FE0:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFA0 # blt .L_80104F88
    li 0, 0x2
    sth 0, 0x248(31)
    lhz 0, 0x24a(31)
    cmplwi 0, 0xd
    .4byte 0x40820050 # bne .L_8010504C
    lbz 3, 0x24f(31)
    li 0, 0x32
    addi 3, 3, 0x1
    stb 3, 0x24f(31)
    sth 0, 0x248(31)
    .4byte 0x48000038 # b .L_8010504C
L_80105018:
    lhz 3, 0x248(31)
    subi 0, 3, 0x1
    sth 0, 0x248(31)
    lhz 0, 0x248(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8010504C
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x24f(31)
    sth 0, 0x24a(31)
    bl fn_80230534
    li 3, 0x1
    .4byte 0x48000008 # b .L_80105050
L_8010504C:
    li 3, 0x0
L_80105050:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

