.section extab, "a"
.balign 4
.global etb_8000DC44
etb_8000DC44:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000DC44, 8

.section extabindex, "a"
.balign 4
.global eti_8001D2CC
eti_8001D2CC:
    .4byte fn_8032C664
    .4byte 0x00000ED0
    .4byte etb_8000DC44
.size eti_8001D2CC, 12

.text
.balign 4
.global fn_8032C664

# fn_8032C664(this) - RUPY's (Rupee) update(). Closes out the actor
# (see project_fsa_rupy_actor_progress.md for dtor/draw/setParams).
#
# PROLOGUE: caches the current position into the "anchor" pair
# this->0x29c/0x2a4 (same convention as WNWN's this->0x384/0x388).
# Unless the current state is 0xf/0x10/0x11 (the "sparkle burst"
# states, see below), advances position by velocity (this->0x3c/0x40/
# 0x44, paired-single adds into this->0xc/0x10/0x14). For subtype !=1,
# tests for an obstacle at the new position (fn_801F6758); on a hit,
# clears this->0x11c (the confirmed spatial-registry "active" flag -
# see reference_fsa_spatial_registry_system.md). Calls fn_8032B7C0(this)
# (a bespoke per-frame helper, not decompiled).
#
# STATE MACHINE (jumptable_804AB72C, this->0x230, states 0-0x11):
#   0: the main "resting on the ground" loop. Computes squared speed
#     from this->0x3c/0x40/0x44; above a threshold, plays a per-size-
#     class bounce sound (fn_8013CC50, ID table `lbl_80471948+0x30`).
#     For subtype 0x22, re-tests for an obstacle and zeroes horizontal
#     velocity on a hit. Keeps an effect handle alive (fn_801F2618). If
#     a looping "airborne hum" was playing (this->0x17d==1 &&
#     this->0x280==1), stops it (fn_801F0D20 code 0x42). Calls two
#     bespoke gates (fn_8032B3F8, fn_8032B0A4, neither decompiled) that
#     can skip the rest of the state; otherwise rolls a new random
#     bounce-direction blend (fn_801F71A4 + the shared octant table
#     `lbl_8052EBC0`) and a PRNG-jittered recheck cooldown
#     (this->0x270). A 4-slot per-player scan (fn_80230188) decrements
#     the lifetime timer (this->0x24c) once per active player found.
#     Re-queries the level config record (GetRoomConfigRecord, byte 0x31df,
#     confirmed idiom): if set, returns to idle unless already idle
#     with this->0x27e set; if clear and airborne (this->0x14>0),
#     forces itself back to state 0. Finally, if the lifetime timer has
#     run out, calls fn_801F3668 (hide/deregister).
#   1: a bespoke gate (fn_8032B0A4) can bail immediately. Otherwise
#     rolls the same random-direction-blend + jittered cooldown as
#     state 0, runs the same per-player lifetime-decrement scan, and
#     once the lifetime timer drops to <=500 frames, clears
#     this->0x11c (active) without fully hiding - an "about to expire"
#     transitional flag distinct from full deregistration.
#   2: a simple "keep effect alive, expire on timeout" loop - per-
#     player scan decrementing lifetime, keepalive via fn_801F2618,
#     and fn_801F3668 once the timer runs out.
#   3: zeroes velocity. If size class>=4, a valid tracked player index
#     (this->0x264>=0), this->0x4>=8, and the confirmed global mode
#     flag `lbl_8053AAF8->0x7e==1` all hold, remaps the player index
#     via the CONFIRMED `fn_8022F340` (see
#     project_fsa_player_registry_discovery.md) and calls a per-size-
#     class handler resolved from a function-pointer table anchored at
#     the CONFIRMED `lbl_8053AED0` global via `fn_8043D67C` - notifying
#     whichever player-interaction subsystem cares that this rupee
#     reached this state. Falls straight through into state 4's body
#     (arms a 530-frame timer, sets state=4, begins decaying speed).
#   4: decays speed toward a threshold; once slow enough while grounded,
#     snaps to a full stop. Then: if this->0x282==0 and this->0x264 is
#     a valid player slot (`Player_GetCapabilityFlagByIndex`, confirmed accessor), snaps
#     position to that PLAYER's live position (`fn_8023E724`, confirmed
#     accessor) with a small vertical offset - the rupee sticks to a
#     carrying player. Otherwise resolves this->0x264 as a general
#     CONFIRMED spatial-registry ID instead (`SpatialRegistry_GetBase`+
#     `fn_801F666C`) and snaps to that record's position the same way.
#     A per-player lifetime-decrement scan follows; on timeout, clears
#     this->0x11c WITHOUT hiding (unlike states 0-2).
#   5, 7, 8: trivial - state 5 just calls `fn_801F3668` (hide); states
#     7/8 call a distinct bespoke `fn_8032BB90` (not decompiled) - both
#     match draw()'s early-out list for these exact states.
#   6: the same lifetime-decrement-then-deactivate shape as state 1.
#   9: if a looping sound was playing (this->0x280), stops it the same
#     way as state 0. A bespoke gate (`fn_8032B0A4`) otherwise decays a
#     secondary counter (this->0x274). For subtypes other than 0x23/
#     0x24, rolls the same direction-blend+cooldown as states 0/1; then
#     re-checks the level config record - clearing back to idle (state
#     0) once the config flag drops, mirroring state 0's own re-idle
#     transition. This is the "waiting on the level-config flag" state
#     several setParams subtypes (3, 0x23, 0x24) land in directly via
#     their 780-frame timer + this->0x27d=1 setup.
#   0xa: a virtual call through vtable slot 0x34 (the same generic
#     check used throughout RUPY's own code); on success, arms a fresh
#     780-frame timer, sets this->0x27d=1, and transitions to state
#     0xf (the sparkle-burst entry state, below).
#   0xb: subtype-0-only logic: if the level config flag (0x31df) is set
#     and the rupee is airborne, snaps it to the ground (subtracts
#     height from position, zeroes height) - then unconditionally
#     returns to state 0.
#   0xc: the SAME vtable-slot-0x34 check as 0xa; on success (size
#     class>=4, this->0x4>=8), spawns a REAL sibling actor "RSNP" (code
#     0x52534e50, confirmed in reference_fsa_full_dispatch_sweep.md,
#     same spawn setParams's subtype 0x1c also triggers) via the
#     CONFIRMED dispatcher `fn_801F9484`. Either way, falls into a
#     shared re-arm tail: rolls a fresh countdown (this->0x250) and
#     picks the long lifetime timer (0x3d9 or 0x325 frames) via the
#     confirmed `lbl_8053AAF8->0x7e` mode flag - the same formula
#     setParams uses - then returns to state 0.
#   0xd: a genuine HOMING behavior. Resolves a tracked registry ID
#     (this->0x26c) via the CONFIRMED spatial registry
#     (`SpatialRegistry_GetBase`+`fn_801F666C`); if invalid or the target's own
#     `+0x11c` (active) flag is clear, gives up (clears this->0x26c to
#     -1). Otherwise computes a normalized direction to the target via
#     the CONFIRMED inline Newton-Raphson inverse-sqrt idiom (same one
#     documented for WNWN); once close enough, increments a "capture
#     count" on the target record (its +0x2c0 field) and calls
#     `fn_801F3668` to hide itself - the rupee is CONSUMED on arrival.
#     While still far, rolls a jittered re-scan cooldown and a new
#     direction blend, using the octant table and (when airborne) an
#     angle toward the shared fixed level anchor `lbl_80534C00` (the
#     same anchor WNWN's update() uses).
#   0xe: the same re-arm tail as state 0xc (fresh countdown + long
#     lifetime timer via `lbl_8053AAF8->0x7e`) without the RSNP spawn,
#     returning to state 0.
#   0xf: plays a sound (`fn_801F0E34`) and spawns THREE effects
#     (`fn_8013CC50`) from three different per-size-class IDs in the
#     `lbl_80471948` table (+0x48/+0x60/+0x78) - a burst of sparkle
#     effects matching the 780-frame-timer subtypes' payoff. Advances
#     to state 0x10.
#   0x10: counts down this->0x274 (armed to 0xa by several setParams
#     paths); once it reaches 0, either returns to the level-config-
#     wait state 9 (if this->0x27d is set) or goes fully idle (state 0,
#     re-applying the level-config ground-snap offset one more time).
#   0x11: the "sparkling variant" override state (see setParams' shared
#     tail, and draw()'s matching early-out) - decrements this->0x278;
#     once it hits 0, restores whatever real state was cached in
#     this->0x234.
#
# SHARED TAIL (runs every frame after the switch): calls
# `fn_8032ABE0(this)` (bespoke, not decompiled). Unless in states
# {7,8,0xa,0xc,0xe}, this->0x4<8, size class<3, or this->0x281 is set,
# projects a drop shadow via `fn_8030C210` using the CONFIRMED
# `lbl_8053AB10->0x24` global (already flagged as an important
# registry field in project_fsa_player_registry_discovery.md - here
# reused for shadow projection). Decrements the master countdown timer
# this->0x250; on expiry, while the long lifetime timer is still >=256
# frames, advances a per-instance 2-bit "blink phase" counter
# (this->0x254) and re-arms the countdown (jittered, or a fixed value
# when the phase wraps to 0) - each rupee tracks its own blink phase
# independently of the confirmed GLOBAL blink-sync flag draw() reads
# (`lbl_8053AAF8->0x96`), which must be driven from elsewhere. Finally,
# gated on a separate global flag `lbl_8053AAF8->0xfe` (or, if clear,
# an additional check `fn_802DEBA0()`), may clear this->0x11c
# (active) unconditionally every frame regardless of state.
fn_8032C664:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    lis 3, lbl_80471948@ha
    psq_l 1, 0xc(30), 0, 0
    addi 31, 3, lbl_80471948@l
    lfs 0, 0x14(30)
    psq_st 1, 0x29c(30), 0, 0
    stfs 0, 0x2a4(30)
    lwz 0, 0x230(30)
    cmpwi 0, 0x11
    .4byte 0x41820034 # beq .L_8032C6E0
    cmpwi 0, 0xf
    .4byte 0x4182002C # beq .L_8032C6E0
    cmpwi 0, 0x10
    .4byte 0x41820024 # beq .L_8032C6E0
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
L_8032C6E0:
    lhz 0, 0x94(30)
    cmplwi 0, 0x1
    .4byte 0x41820028 # beq .L_8032C710
    .4byte 0xC022EE40 # lfs f1, lbl_80541DE0@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032C710
    li 0, 0x0
    stb 0, 0x11c(30)
L_8032C710:
    mr 3, 30
    bl fn_8032B7C0
    lwz 0, 0x230(30)
    cmplwi 0, 0x11
    .4byte 0x41810C88 # bgt .L_8032D3A8
    lis 3, jumptable_804AB72C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB72C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
L_8032C73C:
    lwz 0, 0x278(30)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8032C750
    lwz 0, 0x234(30)
    stw 0, 0x230(30)
L_8032C750:
    lwz 3, 0x278(30)
    subi 0, 3, 0x1
    stw 0, 0x278(30)
    .4byte 0x48000DB0 # b .L_8032D50C
L_8032C760:
    psq_l 2, 0x3c(30), 0, 0
    lfs 30, 0x44(30)
    ps_mul 2, 2, 2
    .4byte 0xC002EE44 # lfs f0, lbl_80541DE4@sda21(r0)
    ps_madd 1, 30, 30, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    .4byte 0x40810038 # ble .L_8032C7B4
    lwz 0, 0x268(30)
    addi 5, 31, 0x30
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    slwi 0, 0, 1
    .4byte 0xC022EE48 # lfs f1, lbl_80541DE8@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8032C7B4:
    lhz 0, 0x94(30)
    cmplwi 0, 0x22
    .4byte 0x40820038 # bne .L_8032C7F4
    .4byte 0xC022EE4C # lfs f1, lbl_80541DEC@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8032C7E4
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
L_8032C7E4:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_8032C7F4:
    lbz 0, 0x17d(30)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_8032C820
    lbz 0, 0x280(30)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8032C820
    mr 3, 30
    li 4, 0x42
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x280(30)
L_8032C820:
    mr 3, 30
    bl fn_8032B3F8
    clrlwi. 0, 3, 24
    .4byte 0x41820B7C # beq .L_8032D3A8
    lbz 0, 0x27d(30)
    cmplwi 0, 0x0
    .4byte 0x40820B70 # bne .L_8032D3A8
L_8032C83C:
    mr 3, 30
    bl fn_8032B0A4
    clrlwi. 0, 3, 24
    .4byte 0x40820B60 # bne .L_8032D3A8
    lwz 0, 0x270(30)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC042EE44 # lfs f2, lbl_80541DE4@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC082EE50 # lfs f4, lbl_80541DF0@sda21(r0)
    lfsx 1, 3, 0
    fmr 3, 2
    .4byte 0xC002EE14 # lfs f0, lbl_80541DB4@sda21(r0)
    addi 3, 30, 0x298
    fmadds 1, 4, 1, 0
    bl fn_801F71A4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    lwz 3, 0xb4(4)
    li 31, 0x0
    .4byte 0xC042EE54 # lfs f2, lbl_80541DF4@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x270(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    add 3, 0, 3
    addi 0, 3, 0x200
    stw 0, 0x270(30)
L_8032C8E0:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8032C900
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000010 # b .L_8032C90C
L_8032C900:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFD8 # blt .L_8032C8E0
L_8032C90C:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8032C94C
    lbz 0, 0x27e(30)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_8032C96C
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_8032C96C
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000024 # b .L_8032C96C
L_8032C94C:
    lfs 1, 0x14(30)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8032C96C
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x230(30)
    stw 0, 0x260(30)
L_8032C96C:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x41810A34 # bgt .L_8032D3A8
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000A28 # b .L_8032D3A8
L_8032C984:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x6d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x268(30)
    addi 5, 31, 0x48
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    slwi 0, 0, 1
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x268(30)
    addi 5, 31, 0x60
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    slwi 0, 0, 1
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x268(30)
    addi 5, 31, 0x78
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    slwi 0, 0, 1
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8032CA3C:
    li 0, 0x10
    stw 0, 0x230(30)
    lwz 3, 0x274(30)
    cmpwi 3, 0x0
    .4byte 0x41810070 # bgt .L_8032CAB4
    lbz 0, 0x27d(30)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8032CA60
    li 0, 0x9
    stw 0, 0x230(30)
    .4byte 0x48000030 # b .L_8032CA8C
L_8032CA60:
    li 0, 0x0
    stw 0, 0x230(30)
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032CA8C
    .4byte 0xC002EE14 # lfs f0, lbl_80541DB4@sda21(r0)
    stfs 0, 0x40(30)
L_8032CA8C:
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    lis 3, 0x2
    stfs 0, 0x238(30)
    stw 3, 0xb0(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x4
    .4byte 0x41800904 # blt .L_8032D3A8
    addi 0, 3, 0xa
    stw 0, 0xb0(30)
    .4byte 0x480008F8 # b .L_8032D3A8
L_8032CAB4:
    .4byte 0x408108F4 # ble .L_8032D3A8
    subi 0, 3, 0x1
    stw 0, 0x274(30)
    .4byte 0x480008E8 # b .L_8032D3A8
L_8032CAC4:
    li 31, 0x0
L_8032CAC8:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8032CAE8
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000010 # b .L_8032CAF4
L_8032CAE8:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFD8 # blt .L_8032CAC8
L_8032CAF4:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8032CB18
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x41810894 # bgt .L_8032D3A8
L_8032CB18:
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000888 # b .L_8032D3A8
L_8032CB24:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x4
    .4byte 0x41800054 # blt .L_8032CB90
    lwz 3, 0x264(30)
    cmpwi 3, 0x0
    .4byte 0x41800048 # blt .L_8032CB90
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x4180003C # blt .L_8032CB90
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8032CB90
    bl fn_8022F340
    lwz 0, 0x268(30)
    mr 5, 3
    addi 4, 31, 0xc0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    slwi 0, 0, 2
    li 6, 0x0
    add 4, 4, 0
    lwz 4, -0x10(4)
    bl fn_8043D67C
L_8032CB90:
    mr 3, 30
    bl fn_801F3604
    li 0, 0x0
    .4byte 0xC002EE14 # lfs f0, lbl_80541DB4@sda21(r0)
    stw 0, 0x250(30)
    li 3, 0x212
    li 0, 0x4
    stfs 0, 0x44(30)
    stw 3, 0x24c(30)
    stw 0, 0x230(30)
L_8032CBB8:
    lfs 2, 0x44(30)
    .4byte 0xC002EE0C # lfs f0, lbl_80541DAC@sda21(r0)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x44(30)
    lfs 0, 0x14(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_8032CBF8
    lfs 0, 0x44(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_8032CBF8
    stfs 1, 0x44(30)
    stfs 1, 0x40(30)
    stfs 1, 0x3c(30)
    stfs 1, 0x14(30)
L_8032CBF8:
    lbz 0, 0x282(30)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_8032CC58
    lwz 3, 0x264(30)
    cmpwi 3, 0x0
    .4byte 0x4180004C # blt .L_8032CC58
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_8032CC90
    lwz 3, 0x264(30)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    lwz 3, 0x264(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC002EE58 # lfs f0, lbl_80541DF8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(30)
    lwz 3, 0x264(30)
    bl fn_8023E724
    lfs 0, 0x8(3)
    stfs 0, 0x14(30)
    .4byte 0x4800003C # b .L_8032CC90
L_8032CC58:
    lwz 31, 0x264(30)
    cmpwi 31, 0x0
    .4byte 0x41800030 # blt .L_8032CC90
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8032CC90
    lfs 1, 0xc(3)
    .4byte 0xC002EE58 # lfs f0, lbl_80541DF8@sda21(r0)
    stfs 1, 0xc(30)
    lfs 1, 0x10(3)
    fsubs 0, 1, 0
    stfs 0, 0x10(30)
L_8032CC90:
    li 31, 0x0
L_8032CC94:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8032CCB4
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000010 # b .L_8032CCC0
L_8032CCB4:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFD8 # blt .L_8032CC94
L_8032CCC0:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1f4
    .4byte 0x418106E0 # bgt .L_8032D3A8
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x480006D4 # b .L_8032D3A8
L_8032CCD8:
    li 31, 0x0
L_8032CCDC:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8032CCFC
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000010 # b .L_8032CD08
L_8032CCFC:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFD8 # blt .L_8032CCDC
L_8032CD08:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x41810698 # bgt .L_8032D3A8
    mr 3, 30
    bl fn_801F3668
    .4byte 0x4800068C # b .L_8032D3A8
L_8032CD20:
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000680 # b .L_8032D3A8
L_8032CD2C:
    mr 3, 30
    bl fn_8032BB90
    .4byte 0x48000674 # b .L_8032D3A8
L_8032CD38:
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x40820668 # bne .L_8032D3A8
    lis 3, 0x2
    stw 3, 0xb0(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8032CD60
    addi 0, 3, 0xa
    stw 0, 0xb0(30)
L_8032CD60:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8032CD9C
    lfs 2, 0x14(30)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810014 # ble .L_8032CD9C
    lfs 0, 0x10(30)
    fsubs 0, 0, 2
    stfs 0, 0x10(30)
    stfs 1, 0x14(30)
L_8032CD9C:
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000604 # b .L_8032D3A8
L_8032CDA8:
    lbz 0, 0x280(30)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8032CDC8
    mr 3, 30
    li 4, 0x42
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x280(30)
L_8032CDC8:
    mr 3, 30
    bl fn_8032B0A4
    clrlwi. 0, 3, 24
    .4byte 0x408205D4 # bne .L_8032D3A8
    lwz 3, 0x274(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8032CDEC
    subi 0, 3, 0x1
    stw 0, 0x274(30)
L_8032CDEC:
    lhz 0, 0x94(30)
    cmplwi 0, 0x23
    .4byte 0x4182009C # beq .L_8032CE90
    cmplwi 0, 0x24
    .4byte 0x41820094 # beq .L_8032CE90
    lwz 0, 0x270(30)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC042EE44 # lfs f2, lbl_80541DE4@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC082EE50 # lfs f4, lbl_80541DF0@sda21(r0)
    lfsx 1, 3, 0
    fmr 3, 2
    .4byte 0xC002EE14 # lfs f0, lbl_80541DB4@sda21(r0)
    addi 3, 30, 0x298
    fmadds 1, 4, 1, 0
    bl fn_801F71A4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EE54 # lfs f2, lbl_80541DF4@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x270(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    add 3, 0, 3
    addi 0, 3, 0x200
    stw 0, 0x270(30)
L_8032CE90:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820500 # beq .L_8032D3A8
    lbz 0, 0x27e(30)
    cmplwi 0, 0x0
    .4byte 0x408204F4 # bne .L_8032D3A8
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x480004E8 # b .L_8032D3A8
L_8032CEC4:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418204CC # beq .L_8032D3A8
    li 0, 0x30c
    li 3, 0x1
    stw 0, 0x24c(30)
    li 0, 0xf
    stb 3, 0x27d(30)
    stw 0, 0x230(30)
    .4byte 0x480004B0 # b .L_8032D3A8
L_8032CEFC:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820494 # beq .L_8032D3A8
    lwz 0, 0x268(30)
    cmpwi 0, 0x4
    .4byte 0x41800034 # blt .L_8032CF54
    lwz 31, 0x4(30)
    cmpwi 31, 0x8
    .4byte 0x41800028 # blt .L_8032CF54
    bl SpatialRegistry_GetBase
    lis 4, 0x5253
    mr 5, 31
    addi 4, 4, 0x4e50
    addi 6, 30, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8032CF54:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EE5C # lfs f2, lbl_80541DFC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 0, 3, 0x3c
    stw 0, 0x250(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032CFC8
    li 0, 0x3d9
    stw 0, 0x24c(30)
    .4byte 0x4800000C # b .L_8032CFD0
L_8032CFC8:
    li 0, 0x325
    stw 0, 0x24c(30)
L_8032CFD0:
    lis 3, 0x2
    stw 3, 0xb0(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8032CFEC
    addi 0, 3, 0xa
    stw 0, 0xb0(30)
L_8032CFEC:
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x480003B4 # b .L_8032D3A8
L_8032CFF8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EE5C # lfs f2, lbl_80541DFC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 0, 3, 0x3c
    stw 0, 0x250(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032D06C
    li 0, 0x3d9
    stw 0, 0x24c(30)
    .4byte 0x4800000C # b .L_8032D074
L_8032D06C:
    li 0, 0x325
    stw 0, 0x24c(30)
L_8032D074:
    lis 3, 0x2
    stw 3, 0xb0(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8032D090
    addi 0, 3, 0xa
    stw 0, 0xb0(30)
L_8032D090:
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000310 # b .L_8032D3A8
L_8032D09C:
    lwz 31, 0x26c(30)
    cmpwi 31, 0x0
    .4byte 0x418002A4 # blt .L_8032D348
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8032D0C8
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8032D0D4
L_8032D0C8:
    li 0, -0x1
    stw 0, 0x26c(30)
    .4byte 0x480002D8 # b .L_8032D3A8
L_8032D0D4:
    lfs 2, 0x10(30)
    lfs 0, 0x14(30)
    lfs 1, 0x10(3)
    fsubs 2, 2, 0
    lfs 4, 0xc(30)
    lfs 3, 0xc(3)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    fsubs 30, 2, 1
    fsubs 31, 4, 3
    fmuls 1, 30, 30
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_8032D150
    frsqrte 1, 4
    .4byte 0xC862EE60 # lfd f3, lbl_80541E00@sda21(r0)
    .4byte 0xC842EE68 # lfd f2, lbl_80541E08@sda21(r0)
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
    .4byte 0x48000088 # b .L_8032D1D4
L_8032D150:
    .4byte 0xC802EE70 # lfd f0, lbl_80541E10@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_8032D168
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
    .4byte 0x48000070 # b .L_8032D1D4
L_8032D168:
    stfs 4, 0x20(1)
    lis 0, 0x7f80
    lwz 5, 0x20(1)
    rlwinm 4, 5, 0, 1, 8
    cmpw 4, 0
    .4byte 0x41820014 # beq .L_8032D190
    .4byte 0x40800040 # bge .L_8032D1C0
    cmpwi 4, 0x0
    .4byte 0x41820020 # beq .L_8032D1A8
    .4byte 0x48000034 # b .L_8032D1C0
L_8032D190:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_8032D1A0
    li 0, 0x1
    .4byte 0x48000028 # b .L_8032D1C4
L_8032D1A0:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8032D1C4
L_8032D1A8:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_8032D1B8
    li 0, 0x5
    .4byte 0x48000010 # b .L_8032D1C4
L_8032D1B8:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8032D1C4
L_8032D1C0:
    li 0, 0x4
L_8032D1C4:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032D1D4
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
L_8032D1D4:
    .4byte 0xC0C2EDF8 # lfs f6, lbl_80541D98@sda21(r0)
    fcmpo cr0, 4, 6
    .4byte 0x4080003C # bge .L_8032D218
    lwz 31, 0x26c(3)
    cmpwi 31, 0x0
    .4byte 0x41800024 # blt .L_8032D20C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8032D20C
    lwz 4, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2c0(3)
L_8032D20C:
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000194 # b .L_8032D3A8
L_8032D218:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    lis 3, lbl_8052EBC0@ha
    lwz 5, 0xb4(6)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    addi 3, 30, 0x14
    mullw 5, 5, 0
    .4byte 0xC0A2EE54 # lfs f5, lbl_80541DF4@sda21(r0)
    .4byte 0xC002EE58 # lfs f0, lbl_80541DF8@sda21(r0)
    .4byte 0xC042EE0C # lfs f2, lbl_80541DAC@sda21(r0)
    .4byte 0xC062EE1C # lfs f3, lbl_80541DBC@sda21(r0)
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lwz 5, 0x258(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 4, 0xc(1)
    fsubs 1, 4, 1
    fmuls 1, 5, 1
    fctiwz 1, 1
    stfd 1, 0x30(1)
    lwz 0, 0x34(1)
    add 5, 0, 5
    addi 0, 5, 0x200
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    fmadds 1, 6, 1, 0
    bl fn_801F71A4
    lfs 1, 0x14(30)
    .4byte 0xC002EE58 # lfs f0, lbl_80541DF8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418000F8 # blt .L_8032D3A8
    fneg 1, 31
    lis 3, lbl_80534C00@ha
    fneg 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002EE78 # lfs f0, lbl_80541E18@sda21(r0)
    addi 3, 30, 0x240
    lhz 0, 0x242(30)
    li 5, 0x1
    fmuls 0, 1, 0
    li 6, 0x1000
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    add 0, 0, 4
    clrlwi 4, 0, 16
    bl fn_801F714C
    addi 3, 30, 0x242
    li 4, 0x0
    li 5, 0x1
    li 6, 0x500
    bl fn_801F714C
    lhz 0, 0x240(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022EE1C # lfs f1, lbl_80541DBC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x3c(30)
    lhz 0, 0x240(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(30)
    .4byte 0x48000020 # b .L_8032D364
L_8032D348:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    li 0, 0x0
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    stw 0, 0x230(30)
    sth 0, 0x94(30)
L_8032D364:
    li 31, 0x0
L_8032D368:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8032D388
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000010 # b .L_8032D394
L_8032D388:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFD8 # blt .L_8032D368
L_8032D394:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8032D3A8
    mr 3, 30
    bl fn_801F3668
L_8032D3A8:
    mr 3, 30
    bl fn_8032ABE0
    lwz 0, 0x230(30)
    cmpwi 0, 0x7
    .4byte 0x41820078 # beq .L_8032D430
    cmpwi 0, 0x8
    .4byte 0x41820070 # beq .L_8032D430
    cmpwi 0, 0xa
    .4byte 0x41820068 # beq .L_8032D430
    cmpwi 0, 0xc
    .4byte 0x41820060 # beq .L_8032D430
    cmpwi 0, 0xe
    .4byte 0x41820058 # beq .L_8032D430
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x4080004C # bge .L_8032D430
    lwz 0, 0x268(30)
    cmpwi 0, 0x3
    .4byte 0x41800040 # blt .L_8032D430
    lbz 0, 0x281(30)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8032D430
    lfs 2, 0x10(30)
    addi 4, 1, 0x24
    lfs 0, 0x14(30)
    lfs 1, 0xc(30)
    fsubs 2, 2, 0
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 1, 0x24(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8032D430:
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x418100A4 # bgt .L_8032D4E8
    lwz 0, 0x24c(30)
    cmpwi 0, 0x100
    .4byte 0x41800090 # blt .L_8032D4E0
    lwz 3, 0x254(30)
    addi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    clrlwi 0, 0, 30
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_8032D4D4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EE5C # lfs f2, lbl_80541DFC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 0, 3, 0x3c
    stw 0, 0x250(30)
    .4byte 0x48000018 # b .L_8032D4E8
L_8032D4D4:
    li 0, 0x2
    stw 0, 0x250(30)
    .4byte 0x4800000C # b .L_8032D4E8
L_8032D4E0:
    li 0, 0x0
    stw 0, 0x254(30)
L_8032D4E8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0xfe(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8032D50C
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8032D50C
    li 0, 0x0
    stb 0, 0x11c(30)
L_8032D50C:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 0, 0x64(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x60
    blr
