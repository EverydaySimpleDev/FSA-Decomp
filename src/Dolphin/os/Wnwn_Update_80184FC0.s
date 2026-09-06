.section extab, "a"
.balign 4
.global etb_80007654
etb_80007654:
    .4byte 0x39CA0000
    .4byte 0x00000000
.size etb_80007654, 8

.section extabindex, "a"
.balign 4
.global eti_800143A4
eti_800143A4:
    .4byte fn_80184FC0
    .4byte 0x00001D64
    .4byte etb_80007654
.size eti_800143A4, 12

.text
.balign 4
.global fn_80184FC0

# fn_80184FC0(this) - WNWN's real update(). 0x1D64 bytes, ~1880
# instructions - the largest function found in the project so far
# (~2.7x FAGN's update()). Confirmed a single genuine function via its
# own extab entry. Contains exactly one internal jump table,
# jumptable_804A1934 (10 cases, states 0-9 on this->0x230) - the
# addresses previously mis-reported as "WNWN's 3 extra vtable slots"
# (fn_801853A0/fn_80185424/fn_801858C0, see project_fsa_wnwn_actor_progress.md)
# are simply this table's first 3 data entries, the same false-alarm
# pattern already seen and corrected for RIVR/GDMN.
#
# PROLOGUE: caches the level/room config record's bounding rect
# (this->0x80/0x84/0x88/0x8c) into f28/f27/f26/f25 (used much later, in
# state 9) and this->0xc/0x10 into f31/f30. Sets a per-call sentinel
# this->0x4c=-1 and a cooldown this->0x108=0x2710.
#   - First-tick special case: if this->0x270==0xffff (the sentinel
#     setParams() leaves behind), queries the level config record
#     (GetRoomConfigRecord -> fn_802DCD0C); if a flag bit is set, builds a rect
#     from this->0x384/0x388 and calls fn_80226998 (terrain/environment
#     query at a point), clears the sentinel (this->0x270=3) and skips
#     straight to the epilogue - this frame does nothing else.
#   - Normal path: advances position by velocity via two fn_801F71A4
#     calls (direction this->0x288/0x28c, distance this->0x3c/0x40 and
#     0x3c/0x44) added into this->0xc/0x10/0x14 (paired-single adds),
#     then calls fn_801EF510 (bbox/collision-cache refresh, same helper
#     FAGN's update() calls every frame).
#
# PER-PLAYER SPLASH LOOP (4 iterations): for each player slot,
# fn_801F285C validates the slot and skips the currently-tracked target
# (this->0x260). For a hit, computes a point between this actor and the
# player (this->0x64/0x68/0x6c averaged with this->0xc/0x10), and
# fn_80237948 tests overlap there; on overlap, spawns two effects (codes
# 0x117/0x118) via fn_8013CC50 and plays sound 0x4d1 via fn_801F0E34 -
# a "player brushed past" splash reaction, structurally like RIVR/GDMN's
# splash pair but per-player instead of state-driven.
#
# NOTIFY + GROWTH RESET: calls fn_801F2B7C(this, this->0x114,
# this->0x260, code 6) (the shared notify/consequence primitive). If it
# returns true AND state==8 AND this->0x238==0 (i.e. "fully grown and
# idle"), rescales this->0x3c/0x40 by a fixed factor, clears the
# direction fields, arms a 0x14-frame timer, and decrements a use-count
# this->0x268 - a "consumed, shrink and start recovering" reaction.
#
# EFFECT KEEPALIVE: while state is 7 or 8, calls fn_801F2618(this,0,0)
# every frame to keep the tracked effect/sound handle alive (same
# pattern as RIVR/GDMN's persistent "ripple marker").
#
# TARGET TRACKING: if this->0x260 (tracked player index) is negative,
# builds a search rect from this->0x384/0x388 and the tracked bounding
# box, then fn_8023AA18 searches for a nearby player and stores the
# result back into this->0x260. If a target IS tracked, fn_80226998
# re-queries terrain/environment at the target's position; a changed
# result (vs. this->0x270) restores facing/animation from
# lbl_8052EBC0, while an unchanged result marks the target lost
# (this->0x260=-1) via the else path (L_80186388).
#
# STATE MACHINE (jumptable_804A1934, this->0x230, states 0-9) - a
# wander/chase AI cycle. Every state below shares the recognized inline
# Newton-Raphson inverse-sqrt normalize + IEEE bit-pattern angle-octant
# classification idiom (frsqrte + 3x fnmsub refinement, then a cascade
# comparing the float's raw bits against 0x7f80) to turn a direction
# vector into a facing/angle bucket:
#   0 (L_801853A0): init - clears grow timers (0x234/0x24c), rolls the
#       confirmed global PRNG for a short delay (this->0x238), -> state 1.
#   1 (L_80185424): normalizes (current pos - anchor this->0x384/0x388)
#       via the idiom above; if close enough, snapshots the anchor into
#       the trail-seed fields (0x300/0x304/0x308 and 0x378/0x37c/0x380)
#       via fn_80093340 (angle-from-vector) and rolls a new random
#       facing (this->0x272) via the PRNG. Once idle timers 0x238 and
#       0x23c both expire, plays a wander sound (fn_801F0E34 code
#       0x4b0) and arms a fresh randomized 0x23c wander timer; while
#       0x23c==1 specifically, rolls a second timer/sound pair. Speed
#       (this->0x14) decays toward 0 via friction this->0x44 the whole
#       time. A 4-iteration per-player proximity scan (Player_GetCapabilityFlagByIndex +
#       fn_8023DE58 + fn_8023E724 AABB test, gated on this->0x240==0 &&
#       this->0x23c!=0) detects a nearby player and, on a hit, jumps to
#       state 2 and registers an "attach" via fn_801EEC98 (code 2 - the
#       same captured/attached primitive as TINK/ZORA).
#   2 (L_801858C0): snaps facing (0x288/0x28c) from the lbl_8052EBC0
#       octant table scaled by speed (0x44), refreshes animation via
#       ClassifyBamAngleToQuadrant, plays sound 0x4b0, resets counters, arms a
#       fixed speed (0x44) -> state 3.
#   3 (L_80185958): normalizes (pos - anchor 0x384/0x388) again; once
#       within threshold, zeroes direction/speed, arms a 0x1e-frame
#       timer -> state 4.
#   4 (L_80185AC4): decays speed toward 0; once the 0x238 timer expires,
#       plays sound 0x4b0, resets the animation timer (0x26c) -> state 5.
#   5 (L_80185B30): computes direction AWAY from the fixed level anchor
#       lbl_80534C00 via fn_80093340, decays speed, normalizes the
#       away-vector via the idiom; once within threshold -> state 6
#       (arms a 0x14-frame timer).
#   6 (L_80185D3C): same away-from-anchor computation combined with a
#       player-relative distance factor; once the combined magnitude
#       drops below threshold, clears direction -> state 7.
#   7 (L_80185ECC): if this->0x248==0, rolls the PRNG for a 2-in-3
#       chance to hunt a player: a 4-slot scan (Player_GetCapabilityFlagByIndex +
#       fn_8023E724 AABB) records a hit into this->0x254 and resets the
#       cooldown timers, jumping straight to the epilogue (skips the
#       shared tail entirely) - OR, on no hit / failed roll, falls into
#       a waypoint-selection block (SpatialRegistry_GetBase/fn_801F7664/fn_801F666C,
#       the shared level-waypoint-node query primitives also used by
#       room/door pathing) that scans up to this->0x1008's node count
#       for one not already claimed by another actor (byte flag
#       0x1a8==1), derives a new facing/animation via fn_801F6874 and
#       lbl_8052EBC0, and either arms a fresh random wander delay or
#       marks the path as chosen (this->0x258).
#   8 (L_8018639C): if this->0x238==0, tries to re-approach the last
#       recorded player (this->0x254) via SpatialRegistry_GetBase/fn_801F666C,
#       computing a direction with fn_80093340 and ClassifyBamAngleToQuadrant when
#       still valid; if that player is gone, falls back to a fresh
#       4-slot scan (Player_GetCapabilityFlagByIndex/fn_8023DE58) for a replacement, or
#       ultimately gives up and returns to state 0 with a ~100-frame
#       cooldown (this->0x248) and a randomized rescan delay
#       (this->0x240).
#   9 (L_80186594): drives toward a smoothed chase-target point derived
#       from the cached level-config rect (f28/f27/f26/f25) and the
#       tracked player via fn_80093340. Queries terrain at the target
#       point (fn_802265FC); if not "regular ground" (code != 0xc) or
#       fn_801F6758 reports an obstacle, and this hasn't already been
#       flagged (this->0x258==0), treats it as "stuck" - plays sound
#       0x4b0, arms a 0x64-frame timer, clears direction. Adjusts speed
#       based on this->0x258 (0/1/2), re-registers the attach via
#       fn_801EEC98 (code 2), and once resolved (0x258==2) re-checks
#       fn_801F6758 to clear a "docked" flag byte (this->0x11c).
#
# SHARED TAIL (L_80186740, runs for every non-early-out state):
#   - For states {1,5,6,7,8,9}: once idle timers 0x23c/0x234 both
#     expire, advances a 2-frame idle animation (this->0x264 =
#     variant*2 + toggle bit at this->0x24c) and re-arms a 6-frame hold.
#   - For states {6,7,8,9}: calls fn_801F2B20(this,0) (a second,
#     differently-coded notify), decays speed toward 0 via friction, and
#     once speed bottoms out either resets to a small idle friction
#     constant (state 7) or plays a landing sound (fn_801F0E34 code
#     0x4b0) with a larger friction constant (other states).
#   - Trail-buffer maintenance (the position-history ring the confirmed
#     draw() function reads from): unless this->0x244!=0 or state==7
#     while already at the anchor, snapshots the current position into
#     the "last-good" cache (0x378/0x37c/0x380) and shifts the
#     secondary trail array (this->0x30c, 4 iterations) forward one
#     slot each (0x30c<-0x318<-0x324<-0x330..., matching the technique
#     already documented in project_fsa_wnwn_actor_progress.md). Arms a
#     freeze timer (this->0x244 = 8 normally, 2 while actively chasing
#     in states 8/9).
#   - Position-trail-predictor: a 9-iteration loop advances the primary
#     trail array (this->0x294, read by draw()) from the just-shifted
#     0x30c array via two fn_801F71A4 calls per slot plus an
#     exponential-decay damping factor - the same predictor idiom
#     documented for SLK2/TZOK. When this->0x260 is negative (no
#     tracked player), a second, error-corrected variant of the SAME
#     9-iteration predictor re-runs over the array, only re-applying
#     fn_801F71A4 where the projected point has drifted past a fixed
#     threshold from the anchor - a steadier "settle" pass used while
#     idly wandering instead of actively chasing.
#   - Unconditionally decrements six countdown timers if positive:
#     this->0x234, 0x238, 0x23c, 0x240, 0x244, 0x248.
fn_80184FC0:
    stwu 1, -0x140(1)
    mflr 0
    stw 0, 0x144(1)
    stfd 31, 0x130(1)
    psq_st 31, 0x138(1), 0, 0
    stfd 30, 0x120(1)
    psq_st 30, 0x128(1), 0, 0
    stfd 29, 0x110(1)
    psq_st 29, 0x118(1), 0, 0
    stfd 28, 0x100(1)
    psq_st 28, 0x108(1), 0, 0
    stfd 27, 0xf0(1)
    psq_st 27, 0xf8(1), 0, 0
    stfd 26, 0xe0(1)
    psq_st 26, 0xe8(1), 0, 0
    stfd 25, 0xd0(1)
    psq_st 25, 0xd8(1), 0, 0
    stmw 25, 0xb4(1)
    mr 31, 3
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    lfs 28, 0x80(3)
    li 3, -0x1
    lfs 27, 0x84(31)
    li 0, 0x2710
    lfs 26, 0x88(31)
    lfs 25, 0x8c(31)
    lfs 30, 0x10(31)
    lfs 31, 0xc(31)
    stfs 0, 0x50(1)
    stw 3, 0x4c(1)
    stw 0, 0x108(31)
    lhz 0, 0x270(31)
    cmplwi 0, 0xffff
    .4byte 0x40820038 # bne .L_8018507C
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40821C84 # bne .L_80186CD8
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lfs 1, 0x388(31)
    lfs 0, 0x384(31)
    stfs 0, 0x5c(1)
    stfs 1, 0x60(1)
    bl fn_80226998
    sth 3, 0x270(31)
    .4byte 0x48001C60 # b .L_80186CD8
L_8018507C:
    lfs 1, 0x288(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AFA8 # lfs f2, lbl_8053DF48@sda21(r0)
    .4byte 0xC062AFA0 # lfs f3, lbl_8053DF40@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x28c(31)
    addi 3, 31, 0x40
    .4byte 0xC042AFA8 # lfs f2, lbl_8053DF48@sda21(r0)
    .4byte 0xC062AFA0 # lfs f3, lbl_8053DF40@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801EF510
    li 26, 0x0
L_801850D0:
    mr 3, 31
    mr 7, 26
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x418000C8 # blt .L_801851B4
    lwz 0, 0x260(31)
    cmpw 0, 3
    .4byte 0x418200BC # beq .L_801851B4
    lfs 1, 0x10(31)
    addi 4, 1, 0x6c
    lfs 4, 0x64(31)
    lfs 6, 0x6c(31)
    lfs 0, 0xc(31)
    fadds 4, 4, 1
    lfs 3, 0x60(31)
    fadds 6, 6, 1
    lfs 5, 0x68(31)
    fadds 3, 3, 0
    .4byte 0xC042AFAC # lfs f2, lbl_8053DF4C@sda21(r0)
    fadds 5, 5, 0
    fsubs 0, 4, 6
    fsubs 1, 3, 5
    fmadds 0, 2, 0, 6
    fmadds 1, 2, 1, 5
    stfs 0, 0x70(1)
    stfs 1, 0x6c(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801851B4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AFA0 # lfs f1, lbl_8053DF40@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AFA0 # lfs f1, lbl_8053DF40@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801851B4:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF14 # blt .L_801850D0
    lwz 4, 0x114(31)
    mr 3, 31
    lwz 5, 0x260(31)
    li 6, 0x6
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_80185244
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x40820060 # bne .L_80185244
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_80185244
    lfs 0, 0x3c(31)
    li 0, 0x14
    .4byte 0xC062AFB0 # lfs f3, lbl_8053DF50@sda21(r0)
    .4byte 0xC022AFA4 # lfs f1, lbl_8053DF44@sda21(r0)
    fmuls 2, 0, 3
    .4byte 0xC002AFB4 # lfs f0, lbl_8053DF54@sda21(r0)
    stfs 2, 0x3c(31)
    lfs 2, 0x40(31)
    fmuls 2, 2, 3
    stfs 2, 0x40(31)
    stfs 1, 0x290(31)
    stfs 1, 0x28c(31)
    stfs 1, 0x288(31)
    stfs 0, 0x44(31)
    stw 0, 0x238(31)
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80185244
    subi 0, 3, 0x1
    stw 0, 0x268(31)
L_80185244:
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_80185258
    cmpwi 0, 0x8
    .4byte 0x40820014 # bne .L_80185268
L_80185258:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_80185268:
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x4080010C # bge .L_8018537C
    lfs 5, 0x388(31)
    addi 3, 1, 0x7c
    lfs 1, 0x384(31)
    addi 5, 1, 0x64
    stfs 1, 0x64(1)
    stfs 5, 0x68(1)
    lfs 0, 0x70(31)
    stfs 0, 0x7c(1)
    fadds 3, 0, 1
    lfs 0, 0x74(31)
    stfs 0, 0x80(1)
    fadds 2, 0, 5
    lfs 0, 0x78(31)
    stfs 0, 0x84(1)
    fadds 1, 0, 1
    lfs 4, 0x7c(31)
    fadds 0, 4, 5
    stfs 4, 0x88(1)
    stfs 3, 0x7c(1)
    stfs 2, 0x80(1)
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
    lwz 4, 0x4(31)
    bl fn_8023AA18
    stw 3, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x4180009C # blt .L_8018537C
    lwz 4, 0x4(31)
    addi 3, 1, 0x54
    lfs 1, 0x388(31)
    lfs 0, 0x384(31)
    stfs 0, 0x54(1)
    stfs 1, 0x58(1)
    bl fn_80226998
    lhz 0, 0x270(31)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41820068 # beq .L_80185374
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x6
    .4byte 0xC042AFB8 # lfs f2, lbl_8053DF58@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x38(1)
    lfs 1, 0x38(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x98(1)
    lwz 3, 0x9c(1)
    addi 3, 3, 0x32
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8018537C
L_80185374:
    li 0, -0x1
    stw 0, 0x260(31)
L_8018537C:
    lwz 0, 0x230(31)
    cmplwi 0, 0x9
    .4byte 0x418113BC # bgt .L_80186740
    lis 3, jumptable_804A1934@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A1934@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
L_801853A0:
    li 4, 0x0
    lis 3, 0x19
    stw 4, 0x234(31)
    addi 3, 3, 0x660d
    .4byte 0xC042AFA0 # lfs f2, lbl_8053DF40@sda21(r0)
    li 0, 0x1
    stw 4, 0x24c(31)
    .4byte 0xC082AFBC # lfs f4, lbl_8053DF5C@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC022AFC0 # lfs f1, lbl_8053DF60@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x34(1)
    lfs 3, 0x34(1)
    fsubs 2, 3, 2
    fmuls 2, 4, 2
    fctiwz 2, 2
    stfd 2, 0x98(1)
    lwz 3, 0x9c(1)
    addi 3, 3, 0x1e
    stw 3, 0x238(31)
    stfs 1, 0x26c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    stw 0, 0x230(31)
L_80185424:
    lfs 1, 0x10(31)
    lfs 0, 0x388(31)
    lfs 2, 0xc(31)
    fsubs 6, 1, 0
    lfs 1, 0x384(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fsubs 5, 2, 1
    fmuls 1, 6, 6
    fmadds 4, 5, 5, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80185498
    frsqrte 1, 4
    .4byte 0xC862AFC8 # lfd f3, lbl_8053DF68@sda21(r0)
    .4byte 0xC842AFD0 # lfd f2, lbl_8053DF70@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_8018551C
L_80185498:
    .4byte 0xC802AFD8 # lfd f0, lbl_8053DF78@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801854B0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_8018551C
L_801854B0:
    stfs 4, 0x48(1)
    lis 0, 0x7f80
    lwz 4, 0x48(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801854D8
    .4byte 0x40800040 # bge .L_80185508
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801854F0
    .4byte 0x48000034 # b .L_80185508
L_801854D8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801854E8
    li 0, 0x1
    .4byte 0x48000028 # b .L_8018550C
L_801854E8:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8018550C
L_801854F0:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80185500
    li 0, 0x5
    .4byte 0x48000010 # b .L_8018550C
L_80185500:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8018550C
L_80185508:
    li 0, 0x4
L_8018550C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8018551C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_8018551C:
    .4byte 0xC002AFE0 # lfs f0, lbl_8053DF80@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, gt, eq
    .4byte 0x408200C0 # bne .L_801855E8
    lfs 1, 0x300(31)
    lis 3, lbl_80534C00@ha
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fneg 2, 6
    stfs 1, 0xc(31)
    fneg 1, 5
    addi 3, 3, lbl_80534C00@l
    lfs 3, 0x304(31)
    stfs 3, 0x10(31)
    lfs 3, 0x308(31)
    stfs 3, 0x14(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    bl fn_80093340
    .4byte 0xC042AFE4 # lfs f2, lbl_8053DF84@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    fmuls 1, 1, 2
    .4byte 0xC042AFB4 # lfs f2, lbl_8053DF54@sda21(r0)
    fctiwz 1, 1
    stfd 1, 0x98(1)
    lwz 3, 0x9c(1)
    sth 3, 0x272(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x30(1)
    lfs 1, 0x30(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 3, 0xa4(1)
    addi 0, 3, 0xa
    stw 0, 0x238(31)
    .4byte 0x48000034 # b .L_80185618
L_801855E8:
    lfs 0, 0xc(31)
    stfs 0, 0x300(31)
    lfs 0, 0x10(31)
    stfs 0, 0x304(31)
    lfs 0, 0x14(31)
    stfs 0, 0x308(31)
    lfs 0, 0xc(31)
    stfs 0, 0x378(31)
    lfs 0, 0x10(31)
    stfs 0, 0x37c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x380(31)
L_80185618:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820084 # bne .L_801856A4
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_801856A4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022AFA0 # lfs f1, lbl_8053DF40@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC062AFB4 # lfs f3, lbl_8053DF54@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x2c(1)
    lfs 2, 0x2c(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0xa0(1)
    lwz 3, 0xa4(1)
    addi 0, 3, 0xa
    stw 0, 0x23c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
L_801856A4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x408200C0 # bne .L_8018576C
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    lis 4, 0x4
    .4byte 0xC042AFA0 # lfs f2, lbl_8053DF40@sda21(r0)
    lwz 0, 0xb4(8)
    addi 7, 3, 0x660d
    .4byte 0xC062AFBC # lfs f3, lbl_8053DF5C@sda21(r0)
    mr 3, 31
    mullw 6, 0, 7
    .4byte 0xC022AFE8 # lfs f1, lbl_8053DF88@sda21(r0)
    addi 4, 4, 0xb0
    li 5, 0x0
    addis 6, 6, 0x3c6f
    subi 0, 6, 0xca1
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x28(1)
    lfs 0, 0x28(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 6, 0xa4(1)
    addi 0, 6, 0x1e
    stw 0, 0x238(31)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(8)
    mullw 6, 0, 7
    addis 6, 6, 0x3c6f
    subi 0, 6, 0xca1
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    lhz 6, 0x272(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x24(1)
    lfs 0, 0x24(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x98(1)
    lwz 0, 0x9c(1)
    add 0, 6, 0
    sth 0, 0x272(31)
    bl fn_801F0E34
L_8018576C:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018578C
    lfs 1, 0x44(31)
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8018578C:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_801857B8
    stfs 0, 0x14(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801857B8
    .4byte 0xC002AFEC # lfs f0, lbl_8053DF8C@sda21(r0)
    stfs 0, 0x44(31)
L_801857B8:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_801857FC
    lhz 0, 0x272(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    stfs 0, 0x28c(31)
    lhz 3, 0x272(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
L_801857FC:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820F3C # bne .L_80186740
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820F30 # beq .L_80186740
    li 26, 0x0
L_80185818:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_801858B0
    lwz 28, 0x4(31)
    mr 3, 26
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x40820078 # bne .L_801858B0
    mr 3, 26
    bl fn_8023E724
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x14(31), 1, 0
    psq_l 3, 0x0(3), 0, 0
    psq_l 2, 0xc(31), 0, 0
    ps_sub 1, 1, 0
    .4byte 0xC002AFF0 # lfs f0, lbl_8053DF90@sda21(r0)
    ps_sub 2, 3, 2
    psq_st 1, 0x94(1), 1, 0
    ps_mul 3, 2, 2
    lfs 29, 0x94(1)
    psq_st 2, 0x8c(1), 0, 0
    ps_madd 1, 29, 29, 3
    ps_sum0 1, 1, 3, 3
    fcmpo cr0, 1, 0
    .4byte 0x40800034 # bge .L_801858B0
    lwz 4, 0x198(31)
    mr 3, 31
    mr 9, 26
    addi 5, 31, 0x272
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000E94 # b .L_80186740
L_801858B0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF60 # blt .L_80185818
    .4byte 0x48000E84 # b .L_80186740
L_801858C0:
    lhz 0, 0x272(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AFF4 # lfs f1, lbl_8053DF94@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x28c(31)
    lhz 3, 0x272(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0xb0
    bl fn_801F0E34
    .4byte 0xC002AFF8 # lfs f0, lbl_8053DF98@sda21(r0)
    stfs 0, 0x26c(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 1
    stw 0, 0x264(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x3
    .4byte 0x41820010 # beq .L_80185944
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
L_80185944:
    .4byte 0xC002AFFC # lfs f0, lbl_8053DF9C@sda21(r0)
    li 0, 0x3
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x48000DEC # b .L_80186740
L_80185958:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_80185978
    lfs 1, 0x44(31)
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_80185978:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80185994
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_80185994:
    lfs 1, 0x10(31)
    lfs 0, 0x388(31)
    lfs 2, 0xc(31)
    fsubs 3, 1, 0
    lfs 1, 0x384(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80185A08
    frsqrte 1, 4
    .4byte 0xC862AFC8 # lfd f3, lbl_8053DF68@sda21(r0)
    .4byte 0xC842AFD0 # lfd f2, lbl_8053DF70@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80185A8C
L_80185A08:
    .4byte 0xC802AFD8 # lfd f0, lbl_8053DF78@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80185A20
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80185A8C
L_80185A20:
    stfs 4, 0x44(1)
    lis 0, 0x7f80
    lwz 4, 0x44(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80185A48
    .4byte 0x40800040 # bge .L_80185A78
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80185A60
    .4byte 0x48000034 # b .L_80185A78
L_80185A48:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80185A58
    li 0, 0x1
    .4byte 0x48000028 # b .L_80185A7C
L_80185A58:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80185A7C
L_80185A60:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80185A70
    li 0, 0x5
    .4byte 0x48000010 # b .L_80185A7C
L_80185A70:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80185A7C
L_80185A78:
    li 0, 0x4
L_80185A7C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80185A8C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80185A8C:
    .4byte 0xC002B000 # lfs f0, lbl_8053DFA0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x41800CAC # blt .L_80186740
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    li 3, 0x1e
    li 0, 0x4
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
L_80185AC4:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_80185AE4
    lfs 1, 0x44(31)
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_80185AE4:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80185B00
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_80185B00:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820C38 # bne .L_80186740
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb0
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002AFC0 # lfs f0, lbl_8053DF60@sda21(r0)
    li 0, 0x5
    stfs 0, 0x26c(31)
    stw 0, 0x230(31)
L_80185B30:
    lfs 3, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x384(31)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x10(31)
    lfs 0, 0x388(31)
    fsubs 25, 3, 2
    fsubs 26, 1, 0
    fneg 1, 25
    fneg 2, 26
    bl fn_80093340
    .4byte 0xC002AFE4 # lfs f0, lbl_8053DF84@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    sth 0, 0x272(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    stfs 0, 0x28c(31)
    lhz 3, 0x272(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_80185BCC
    lfs 1, 0x44(31)
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_80185BCC:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_80185BEC
    stfs 0, 0x14(31)
    .4byte 0xC002AFEC # lfs f0, lbl_8053DF8C@sda21(r0)
    stfs 0, 0x44(31)
L_80185BEC:
    fmuls 1, 26, 26
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fmadds 4, 25, 25, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80185C48
    frsqrte 1, 4
    .4byte 0xC862AFC8 # lfd f3, lbl_8053DF68@sda21(r0)
    .4byte 0xC842AFD0 # lfd f2, lbl_8053DF70@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80185CCC
L_80185C48:
    .4byte 0xC802AFD8 # lfd f0, lbl_8053DF78@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80185C60
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80185CCC
L_80185C60:
    stfs 4, 0x40(1)
    lis 0, 0x7f80
    lwz 4, 0x40(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80185C88
    .4byte 0x40800040 # bge .L_80185CB8
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80185CA0
    .4byte 0x48000034 # b .L_80185CB8
L_80185C88:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80185C98
    li 0, 0x1
    .4byte 0x48000028 # b .L_80185CBC
L_80185C98:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80185CBC
L_80185CA0:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80185CB0
    li 0, 0x5
    .4byte 0x48000010 # b .L_80185CBC
L_80185CB0:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80185CBC
L_80185CB8:
    li 0, 0x4
L_80185CBC:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80185CCC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80185CCC:
    .4byte 0xC002B004 # lfs f0, lbl_8053DFA4@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800A6C # bge .L_80186740
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x0
    .4byte 0xC042B008 # lfs f2, lbl_8053DFA8@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 3, 0xa4(1)
    addi 3, 3, 0x14
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000A08 # b .L_80186740
L_80185D3C:
    lfs 3, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x384(31)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x10(31)
    lfs 0, 0x388(31)
    fsubs 25, 3, 2
    fsubs 26, 1, 0
    fneg 1, 25
    fneg 2, 26
    bl fn_80093340
    .4byte 0xC002AFE4 # lfs f0, lbl_8053DF84@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    sth 0, 0x272(31)
    lhz 3, 0x272(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    fmuls 0, 26, 26
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC042B00C # lfs f2, lbl_8053DFAC@sda21(r0)
    lhz 0, 0x272(31)
    addi 3, 3, lbl_8052EBC0@l
    fmadds 4, 25, 25, 0
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    lfsx 1, 3, 0
    fcmpo cr0, 4, 0
    fmuls 0, 2, 1
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 2, 0
    stfs 0, 0x28c(31)
    .4byte 0x4081004C # ble .L_80185E20
    frsqrte 1, 4
    .4byte 0xC862AFC8 # lfd f3, lbl_8053DF68@sda21(r0)
    .4byte 0xC842AFD0 # lfd f2, lbl_8053DF70@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80185EA4
L_80185E20:
    .4byte 0xC802AFD8 # lfd f0, lbl_8053DF78@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80185E38
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80185EA4
L_80185E38:
    stfs 4, 0x3c(1)
    lis 0, 0x7f80
    lwz 4, 0x3c(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80185E60
    .4byte 0x40800040 # bge .L_80185E90
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80185E78
    .4byte 0x48000034 # b .L_80185E90
L_80185E60:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80185E70
    li 0, 0x1
    .4byte 0x48000028 # b .L_80185E94
L_80185E70:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80185E94
L_80185E78:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80185E88
    li 0, 0x5
    .4byte 0x48000010 # b .L_80185E94
L_80185E88:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80185E94
L_80185E90:
    li 0, 0x4
L_80185E94:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80185EA4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80185EA4:
    .4byte 0xC002B010 # lfs f0, lbl_8053DFB0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800894 # bge .L_80186740
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    li 0, 0x7
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    stw 0, 0x230(31)
    .4byte 0x48000878 # b .L_80186740
L_80185ECC:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820124 # bne .L_80185FF8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40810114 # ble .L_80185FF8
    li 26, 0x0
L_80185EEC:
    lwz 0, 0x260(31)
    cmpw 26, 0
    .4byte 0x418200F8 # beq .L_80185FEC
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200E8 # beq .L_80185FEC
    mr 3, 26
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408200D8 # bne .L_80185FEC
    lwz 28, 0x4(31)
    mr 3, 26
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x408200C4 # bne .L_80185FEC
    mr 3, 26
    bl fn_8023E724
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x14(31), 1, 0
    psq_l 3, 0x0(3), 0, 0
    psq_l 2, 0xc(31), 0, 0
    ps_sub 1, 1, 0
    .4byte 0xC002B014 # lfs f0, lbl_8053DFB4@sda21(r0)
    ps_sub 2, 3, 2
    psq_st 1, 0x94(1), 1, 0
    ps_mul 3, 2, 2
    lfs 29, 0x94(1)
    psq_st 2, 0x8c(1), 0, 0
    ps_madd 1, 29, 29, 3
    ps_sum0 1, 1, 3, 3
    fcmpo cr0, 1, 0
    .4byte 0x40800080 # bge .L_80185FEC
    stw 26, 0x254(31)
    li 4, 0x0
    lis 3, 0x19
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    stw 4, 0x238(31)
    addi 3, 3, 0x660d
    .4byte 0xC042AFB8 # lfs f2, lbl_8053DF58@sda21(r0)
    li 0, 0x8
    stw 4, 0x25c(31)
    stw 4, 0x23c(31)
    stw 4, 0x258(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 3, 0xa4(1)
    addi 3, 3, 0x32
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000CF0 # b .L_80186CD8
L_80185FEC:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FEF8 # blt .L_80185EEC
L_80185FF8:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820188 # bne .L_80186188
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4082017C # bne .L_80186188
    bl SpatialRegistry_GetBase
    addi 4, 31, 0xc
    li 5, 0x0
    bl fn_801F7664
    stw 3, 0x254(31)
    lwz 27, 0x254(31)
    cmpwi 27, 0x0
    .4byte 0x4180009C # blt .L_801860C8
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    lwz 4, 0x4(31)
    lwz 0, 0x4(3)
    cmpw 4, 0
    .4byte 0x40820080 # bne .L_801860C8
    li 0, 0x1
    lis 3, 0x19
    stw 0, 0x258(31)
    li 4, 0x0
    addi 3, 3, 0x660d
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    stw 4, 0x25c(31)
    li 0, 0x8
    .4byte 0xC042AFB8 # lfs f2, lbl_8053DF58@sda21(r0)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 3, 0xa4(1)
    addi 3, 3, 0x32
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000C14 # b .L_80186CD8
L_801860C8:
    bl SpatialRegistry_GetBase
    lwz 28, 0x1008(3)
    li 26, 0x0
    li 27, 0x0
    li 29, 0x0
    .4byte 0x48000044 # b .L_80186120
L_801860E0:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820028 # beq .L_80186118
    lwz 3, 0x4(4)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_80186118
    lbz 0, 0x1a8(4)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80186118
    li 27, 0x1
    .4byte 0x48000014 # b .L_80186128
L_80186118:
    addi 29, 29, 0x4
    addi 26, 26, 0x1
L_80186120:
    cmpw 26, 28
    .4byte 0x4180FFBC # blt .L_801860E0
L_80186128:
    cmpwi 27, 0x0
    .4byte 0x4082005C # bne .L_80186188
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x272(31)
    lis 3, lbl_8052EBC0@ha
    addi 5, 3, lbl_8052EBC0@l
    .4byte 0xC022B00C # lfs f1, lbl_8053DFAC@sda21(r0)
    lhz 4, 0x272(31)
    li 3, 0x0
    li 0, 0x9
    rlwinm 4, 4, 30, 18, 28
    lfsx 0, 5, 4
    fmuls 0, 1, 0
    stfs 0, 0x288(31)
    lhz 4, 0x272(31)
    rlwinm 4, 4, 30, 18, 28
    add 4, 5, 4
    lfs 0, 0x4(4)
    fmuls 0, 1, 0
    stfs 0, 0x28c(31)
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    .4byte 0x48000B54 # b .L_80186CD8
L_80186188:
    lwz 4, 0x25c(31)
    mr 3, 31
    addi 5, 31, 0x272
    addi 6, 1, 0x4c
    addi 0, 4, 0x1
    addi 7, 1, 0x50
    stw 0, 0x25c(31)
    li 8, 0x0
    li 10, 0x2
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 27
    stw 0, 0x25c(31)
    lwz 4, 0x198(31)
    lwz 9, 0x260(31)
    bl fn_801EEC98
    lfs 1, 0x50(1)
    .4byte 0xC002AFE0 # lfs f0, lbl_8053DF80@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810034 # ble .L_80186204
    lhz 0, 0x272(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    stfs 0, 0x28c(31)
    .4byte 0x480000A4 # b .L_801862A4
L_80186204:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_801862A4
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_801862A4
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb0
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022AFA0 # lfs f1, lbl_8053DF40@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC062AFB4 # lfs f3, lbl_8053DF54@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0xa0(1)
    lwz 3, 0xa4(1)
    addi 0, 3, 0xa
    stw 0, 0x23c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_801862A4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x408200DC # bne .L_80186388
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC062AFA0 # lfs f3, lbl_8053DF40@sda21(r0)
    lwz 0, 0xb4(6)
    addi 5, 4, 0x660d
    .4byte 0xC082AFE8 # lfs f4, lbl_8053DF88@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    mullw 4, 0, 5
    .4byte 0xC002B018 # lfs f0, lbl_8053DFB8@sda21(r0)
    .4byte 0xC022AFB8 # lfs f1, lbl_8053DF58@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lhz 4, 0x272(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 2, 2, 3
    fnmsubs 0, 4, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    add 0, 4, 0
    sth 0, 0x272(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    stfs 0, 0x28c(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x98(1)
    lwz 3, 0x9c(1)
    addi 0, 3, 0x32
    stw 0, 0x238(31)
L_80186388:
    lwz 0, 0x4c(1)
    cmpwi 0, -0x1
    .4byte 0x418203B0 # beq .L_80186740
    stw 0, 0x98(31)
    .4byte 0x480003A8 # b .L_80186740
L_8018639C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082016C # bne .L_80186510
    li 0, -0x1
    stw 0, 0x4c(1)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801863E4
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 9, 0x254(31)
    addi 5, 31, 0x272
    addi 6, 1, 0x4c
    addi 7, 1, 0x50
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    .4byte 0x48000074 # b .L_80186454
L_801863E4:
    bl SpatialRegistry_GetBase
    lwz 4, 0x254(31)
    bl fn_801F666C
    mr. 4, 3
    .4byte 0x41820060 # beq .L_80186454
    lwz 0, 0x108(4)
    cmpwi 0, 0x0
    .4byte 0x40810054 # ble .L_80186454
    lfs 3, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 2, 0xc(4)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x10(31)
    lfs 0, 0x10(4)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fneg 1, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002AFE4 # lfs f0, lbl_8053DF84@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    sth 0, 0x272(31)
    lhz 3, 0x272(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x4c(1)
L_80186454:
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x41800048 # blt .L_801864A4
    lhz 0, 0x272(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AFEC # lfs f1, lbl_8053DF8C@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x28c(31)
    lwz 0, 0x4c(1)
    stw 0, 0x98(31)
    .4byte 0x48000070 # b .L_80186510
L_801864A4:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_80186500
    li 26, 0x0
    li 28, 0x0
L_801864B8:
    lwz 0, 0x260(31)
    cmpw 26, 0
    .4byte 0x41820030 # beq .L_801864F0
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801864F0
    lwz 29, 0x4(31)
    mr 3, 26
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x4082000C # bne .L_801864F0
    stw 28, 0x238(31)
    stw 26, 0x254(31)
L_801864F0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFC0 # blt .L_801864B8
    .4byte 0x48000014 # b .L_80186510
L_80186500:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x240(31)
    stw 0, 0x25c(31)
L_80186510:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820228 # bne .L_80186740
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x238(31)
    addi 4, 3, 0x660d
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    li 3, 0x64
    stw 0, 0x23c(31)
    li 0, 0x7
    .4byte 0xC042AFB8 # lfs f2, lbl_8053DF58@sda21(r0)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 4, 0xa4(1)
    addi 4, 4, 0x32
    stw 4, 0x240(31)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x480001B0 # b .L_80186740
L_80186594:
    fadds 28, 28, 31
    .4byte 0xC042AFAC # lfs f2, lbl_8053DF4C@sda21(r0)
    fadds 26, 26, 31
    addi 3, 1, 0x74
    fadds 27, 27, 30
    fadds 25, 25, 30
    fsubs 1, 28, 26
    fsubs 0, 27, 25
    fmadds 1, 2, 1, 26
    fmadds 0, 2, 0, 25
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    lwz 4, 0x4(31)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0xc
    .4byte 0x4182001C # beq .L_801865F0
    .4byte 0xC022B01C # lfs f1, lbl_8053DFBC@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_8018663C
L_801865F0:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_8018663C
    li 0, 0x1
    lis 4, 0x4
    stw 0, 0x258(31)
    li 0, 0x64
    mr 3, 31
    addi 4, 4, 0xb0
    stw 0, 0x238(31)
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_8018663C:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x418200D0 # beq .L_80186714
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_80186668
    lfs 1, 0x44(31)
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_80186668:
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80186680
    stfs 0, 0x14(31)
L_80186680:
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 9, 0x260(31)
    addi 6, 1, 0x4c
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_801866B4
    stw 0, 0x98(31)
L_801866B4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_80186714
    li 0, 0x2
    lis 3, lbl_8052EBC0@ha
    stw 0, 0x258(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022B00C # lfs f1, lbl_8053DFAC@sda21(r0)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x288(31)
    lhz 0, 0x272(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x28c(31)
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80186714
    xori 0, 0, 0x1
    stw 0, 0x98(31)
L_80186714:
    lwz 0, 0x258(31)
    cmpwi 0, 0x2
    .4byte 0x40820024 # bne .L_80186740
    .4byte 0xC022B010 # lfs f1, lbl_8053DFB0@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80186740
    li 0, 0x0
    stb 0, 0x11c(31)
L_80186740:
    lwz 3, 0x230(31)
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_80186760
    subi 0, 3, 0x5
    cmplwi 0, 0x3
    .4byte 0x4081000C # ble .L_80186760
    cmpwi 3, 0x9
    .4byte 0x40820064 # bne .L_801867C0
L_80186760:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_801867C0
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_801867C0
    lwz 0, 0x98(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8018678C
    li 0, 0x0
    stw 0, 0x24c(31)
L_8018678C:
    lwz 4, 0x98(31)
    li 0, 0x6
    lwz 3, 0x24c(31)
    slwi 4, 4, 1
    add 3, 4, 3
    stw 3, 0x264(31)
    lwz 3, 0x24c(31)
    addi 3, 3, 0x1
    stw 3, 0x24c(31)
    lwz 3, 0x24c(31)
    clrlwi 3, 3, 31
    stw 3, 0x24c(31)
    stw 0, 0x234(31)
L_801867C0:
    lwz 3, 0x230(31)
    cmpwi 3, 0x6
    .4byte 0x41820018 # beq .L_801867E0
    subi 0, 3, 0x7
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_801867E0
    cmpwi 3, 0x9
    .4byte 0x4082023C # bne .L_80186A18
L_801867E0:
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    lfs 1, 0x14(31)
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018680C
    lfs 1, 0x44(31)
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8018680C:
    lfs 0, 0x14(31)
    .4byte 0xC022AFA4 # lfs f1, lbl_8053DF44@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820060 # bne .L_8018687C
    stfs 1, 0x14(31)
    lfs 0, 0x3c(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8018683C
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820044 # beq .L_8018687C
L_8018683C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8018687C
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x40820010 # bne .L_80186860
    .4byte 0xC002AFEC # lfs f0, lbl_8053DF8C@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000020 # b .L_8018687C
L_80186860:
    .4byte 0xC002B020 # lfs f0, lbl_8053DFC0@sda21(r0)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x44(31)
    addi 4, 4, 0xb0
    bl fn_801F0E34
L_8018687C:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_801868C0
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x40820020 # bne .L_801868B0
    lfs 0, 0x3c(31)
    .4byte 0xC022AFA4 # lfs f1, lbl_8053DF44@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_801868B0
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820014 # beq .L_801868C0
L_801868B0:
    lfs 0, 0xc(31)
    stfs 0, 0x378(31)
    lfs 0, 0x10(31)
    stfs 0, 0x37c(31)
L_801868C0:
    lfs 0, 0x14(31)
    li 0, 0x4
    addi 3, 31, 0xc
    .4byte 0xC022AFA4 # lfs f1, lbl_8053DF44@sda21(r0)
    stfs 0, 0x380(31)
    li 4, 0x1
    mtctr 0
L_801868DC:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8018691C
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x4082001C # bne .L_8018690C
    lfs 0, 0x3c(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8018690C
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820014 # beq .L_8018691C
L_8018690C:
    lfs 0, 0x318(3)
    stfs 0, 0x30c(3)
    lfs 0, 0x31c(3)
    stfs 0, 0x310(3)
L_8018691C:
    lfs 0, 0x320(3)
    stfs 0, 0x314(3)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80186964
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x4082001C # bne .L_80186954
    lfs 0, 0x3c(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_80186954
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820014 # beq .L_80186964
L_80186954:
    lfs 0, 0x324(3)
    stfs 0, 0x318(3)
    lfs 0, 0x328(3)
    stfs 0, 0x31c(3)
L_80186964:
    lfs 0, 0x32c(3)
    addi 4, 4, 0x1
    stfs 0, 0x320(3)
    addi 3, 3, 0x18
    .4byte 0x4200FF68 # bdnz .L_801868DC
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801869A8
    li 0, 0x8
    stw 0, 0x244(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_801869A0
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_801869A8
L_801869A0:
    li 0, 0x2
    stw 0, 0x244(31)
L_801869A8:
    .4byte 0xC342B024 # lfs f26, lbl_8053DFC4@sda21(r0)
    addi 29, 31, 0xc
    .4byte 0xCB22B028 # lfd f25, lbl_8053DFC8@sda21(r0)
    li 26, 0x1
    lis 28, 0x4330
L_801869BC:
    lfs 1, 0x30c(29)
    addi 3, 29, 0x294
    .4byte 0xC042AFAC # lfs f2, lbl_8053DF4C@sda21(r0)
    .4byte 0xC062B020 # lfs f3, lbl_8053DFC0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x310(29)
    addi 3, 29, 0x298
    .4byte 0xC042AFAC # lfs f2, lbl_8053DF4C@sda21(r0)
    .4byte 0xC062B020 # lfs f3, lbl_8053DFC0@sda21(r0)
    bl fn_801F71A4
    xoris 0, 26, 0x8000
    addi 26, 26, 0x1
    stw 0, 0xa4(1)
    cmpwi 26, 0x9
    lfs 1, 0x314(29)
    stw 28, 0xa0(1)
    lfd 0, 0xa0(1)
    fsubs 0, 0, 25
    fmuls 0, 26, 0
    fmuls 0, 1, 0
    stfs 0, 0x29c(29)
    addi 29, 29, 0xc
    .4byte 0x4180FFA8 # blt .L_801869BC
L_80186A18:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_80186A34
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_80186A34
    cmpwi 0, 0x5
    .4byte 0x40820034 # bne .L_80186A64
L_80186A34:
    lfs 0, 0xc(31)
    stfs 0, 0x300(31)
    lfs 0, 0x10(31)
    stfs 0, 0x304(31)
    lfs 0, 0x14(31)
    stfs 0, 0x308(31)
    lfs 0, 0xc(31)
    stfs 0, 0x378(31)
    lfs 0, 0x10(31)
    stfs 0, 0x37c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x380(31)
L_80186A64:
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x408001F4 # bge .L_80186C60
    lfs 0, 0x318(31)
    lis 4, lbl_80534C00@ha
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3E2AFE4 # lfs f31, lbl_8053DF84@sda21(r0)
    stfs 0, 0x30c(31)
    addi 27, 31, 0xc
    .4byte 0xC362AFF4 # lfs f27, lbl_8053DF94@sda21(r0)
    addi 28, 4, lbl_80534C00@l
    lfs 0, 0x31c(31)
    addi 29, 3, lbl_8052EBC0@l
    .4byte 0xC342B024 # lfs f26, lbl_8053DFC4@sda21(r0)
    li 25, 0x1
    stfs 0, 0x310(31)
    lis 30, 0x4330
    .4byte 0xCB22B028 # lfd f25, lbl_8053DFC8@sda21(r0)
    lfs 0, 0x320(31)
    stfs 0, 0x314(31)
    lfs 0, 0x324(31)
    stfs 0, 0x318(31)
    lfs 0, 0x328(31)
    stfs 0, 0x31c(31)
    lfs 0, 0x32c(31)
    stfs 0, 0x320(31)
    lfs 0, 0x330(31)
    stfs 0, 0x324(31)
    lfs 0, 0x334(31)
    stfs 0, 0x328(31)
    lfs 0, 0x338(31)
    stfs 0, 0x32c(31)
    lfs 0, 0x33c(31)
    stfs 0, 0x330(31)
    lfs 0, 0x340(31)
    stfs 0, 0x334(31)
    lfs 0, 0x344(31)
    stfs 0, 0x338(31)
    lfs 0, 0x348(31)
    stfs 0, 0x33c(31)
    lfs 0, 0x34c(31)
    stfs 0, 0x340(31)
    lfs 0, 0x350(31)
    stfs 0, 0x344(31)
    lfs 0, 0x354(31)
    stfs 0, 0x348(31)
    lfs 0, 0x358(31)
    stfs 0, 0x34c(31)
    lfs 0, 0x35c(31)
    stfs 0, 0x350(31)
    lfs 0, 0x360(31)
    stfs 0, 0x354(31)
    lfs 0, 0x364(31)
    stfs 0, 0x358(31)
    lfs 0, 0x368(31)
    stfs 0, 0x35c(31)
    lfs 0, 0x36c(31)
    stfs 0, 0x360(31)
    lfs 0, 0x370(31)
    stfs 0, 0x364(31)
    lfs 0, 0x374(31)
    stfs 0, 0x368(31)
    lfs 0, 0x378(31)
    stfs 0, 0x36c(31)
    lfs 0, 0x37c(31)
    stfs 0, 0x370(31)
    lfs 0, 0x380(31)
    stfs 0, 0x374(31)
L_80186B74:
    lfs 3, 0x288(27)
    mr 3, 28
    lfs 2, 0x318(27)
    lfs 1, 0x28c(27)
    lfs 0, 0x31c(27)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fneg 1, 2
    fneg 2, 0
    bl fn_80093340
    fmuls 1, 1, 31
    lfs 2, 0x26c(31)
    lfs 0, 0x288(27)
    lfs 3, 0x294(27)
    fctiwz 1, 1
    stfd 1, 0xa0(1)
    lwz 0, 0xa4(1)
    rlwinm 0, 0, 30, 18, 28
    add 26, 29, 0
    lfs 1, 0x0(26)
    fmadds 1, 2, 1, 0
    fsubs 0, 3, 1
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 27
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80186BF0
    .4byte 0xC042AFAC # lfs f2, lbl_8053DF4C@sda21(r0)
    addi 3, 27, 0x294
    .4byte 0xC062AFB4 # lfs f3, lbl_8053DF54@sda21(r0)
    bl fn_801F71A4
L_80186BF0:
    lfs 2, 0x26c(31)
    lfs 1, 0x4(26)
    lfs 0, 0x28c(27)
    lfs 3, 0x298(27)
    fmadds 1, 2, 1, 0
    fsubs 0, 3, 1
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 27
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80186C2C
    .4byte 0xC042AFAC # lfs f2, lbl_8053DF4C@sda21(r0)
    addi 3, 27, 0x298
    .4byte 0xC062AFB4 # lfs f3, lbl_8053DF54@sda21(r0)
    bl fn_801F71A4
L_80186C2C:
    xoris 0, 25, 0x8000
    addi 25, 25, 0x1
    stw 0, 0xa4(1)
    cmpwi 25, 0x9
    lfs 1, 0x320(27)
    stw 30, 0xa0(1)
    lfd 0, 0xa0(1)
    fsubs 0, 0, 25
    fmuls 0, 26, 0
    fmuls 0, 1, 0
    stfs 0, 0x29c(27)
    addi 27, 27, 0xc
    .4byte 0x4180FF18 # blt .L_80186B74
L_80186C60:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80186C74
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80186C74:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80186C88
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80186C88:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80186C9C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80186C9C:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80186CB0
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80186CB0:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80186CC4
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80186CC4:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80186CD8
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80186CD8:
    psq_l 31, 0x138(1), 0, 0
    lfd 31, 0x130(1)
    psq_l 30, 0x128(1), 0, 0
    lfd 30, 0x120(1)
    psq_l 29, 0x118(1), 0, 0
    lfd 29, 0x110(1)
    psq_l 28, 0x108(1), 0, 0
    lfd 28, 0x100(1)
    psq_l 27, 0xf8(1), 0, 0
    lfd 27, 0xf0(1)
    psq_l 26, 0xe8(1), 0, 0
    lfd 26, 0xe0(1)
    psq_l 25, 0xd8(1), 0, 0
    lfd 25, 0xd0(1)
    lmw 25, 0xb4(1)
    lwz 0, 0x144(1)
    mtlr 0
    addi 1, 1, 0x140
    blr
