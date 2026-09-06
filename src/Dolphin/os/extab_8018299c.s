.section extab, "a"
.balign 4
.global etb_800075BC
etb_800075BC:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_800075BC, 8

.section extabindex, "a"
.balign 4
.global eti_800142C0
eti_800142C0:
    .4byte fn_8018299C
    .4byte 0x00000764
    .4byte etb_800075BC
.size eti_800142C0, 12

.text
.balign 4
.global fn_8018299C

# fn_8018299C - update() override for "Class A" of the RUSA-repel
# movement-actor family (vtable lbl_804A1718, ctor fn_8020229C, see
# extab_8020229c.s). Shared shape confirmed across all 3 siblings
# (fn_8018359C/extab_8018359c.s is a near-twin at ~59% structural
# similarity - see its own banner; fn_801840E0/extab_801840e0.s,
# "Class C", shares the same core primitives but is much larger and
# structurally distinct):
#
# 1. Two early-return gates, each followed by the SAME "sync to a
#    linked actor" boilerplate: if the CONFIRMED shared knockback check
#    `fn_801F3D94` (project_fsa_stal_wizr_full_depth.md) is true, OR
#    `this->0x258` is set AND the CONFIRMED `fn_801F305C(this)`
#    (extab_801f305c.s - "is a player currently interacting with me,"
#    checked against all 4 player slots) returns true, this actor is
#    being interrupted - it copies its own position (`+0xc/+0x10/+0x14`)
#    into a linked actor at `this->0x274` (`linked->0xa4/0xa8/0xac`),
#    and if the CURRENT level-config record (`GetRoomConfigRecord`, CONFIRMED)
#    has its per-room flag `+0x31f2==1`, ALSO propagates a 3-byte
#    color/tint (`this->0x238-0x23a` -> `linked->0xb8-0xba`). Then
#    calls the CONFIRMED `fn_801F2618(this,0,0)` (extab_801f2618.s -
#    "re-resolve my own position against my home rectangle if not
#    already resolved this interrupt") and returns early.
#
# 2. Normal per-frame path: eases velocity (`this->0x3c`/`0x40`) toward
#    a target (`this->0x268`/`0x26c`) via the CONFIRMED `fn_801F71A4`
#    ease primitive, then integrates position += velocity via TWO
#    paired-single adds (`+0xc/+0x10` += `+0x3c/+0x40` using
#    quantization 0; `+0x14/+0x18`(inferred) += `+0x44/+0x48`(inferred)
#    using quantization 1 - a second position/velocity pair whose
#    exact meaning isn't pinned down). Then calls the CONFIRMED RUSA
#    registry getter+repel pair `RusaRegistry_GetOrInit`/`fn_80212AF0`
#    (project_fsa_80212af0_callers_closed.md) with its own position.
#    Calls the ALREADY-CONFIRMED `fn_801EEC98(this, this->0x198,
#    &outAngle, 0, &outInvDist, &outSlot, 0, mode=0)` (extab_801eec98.s
#    - "find which of up to 4 players is the relevant target and
#    report distance+angle to them," landed in an earlier session -
#    this call only wants the angle/distance/slot outputs, not the
#    conversion output). If `this->0x258` is set, calls the CONFIRMED
#    `fn_801F2B7C(this,-0x64,-1,1)` (extab_801f2b7c.s - "push/notify
#    any player standing in my area, using my own configured effect
#    ID"). Always calls `fn_801F2618(this,0,0)` again unconditionally
#    (the same position-resolve call from the gates above).
#
# 3. An 8-state switch (`jumptable_804A176C`, state var `this->0x230`,
#    0-7) drives a move/carry/release cycle. State 0 checks a
#    room-condition via the CONFIRMED shared vtable-slot-0x34 query
#    (fn_801F4760-family, project_fsa_vtable_slot_0x34_resolved.md via
#    the actor's own vtable+0x34) - if true, jumps straight to state 2;
#    otherwise picks a fixed compass direction from an 8-entry lookup
#    table (`lbl_8052EBC0`, indexed by a value fn_801EEC98 wrote to the
#    stack above) into `this->0x268/0x26c`, arms a 100-frame timer
#    (`this->0x240`), and enters state 1 (which re-picks the SAME
#    direction each frame while the timer counts down - the jump table
#    entry for state 1 lands mid-way through state 0's own body,
#    confirmed by address arithmetic on `jumptable_804A176C[1]`).
#    Later states (addresses not individually walked - open thread)
#    play a sound/effect via the CONFIRMED `fn_8013CC50` primitive
#    (project_fsa_effect_playback_primitive.md) with specific IDs
#    `0x1da` then `0x1db` (plausibly "pick up"/"drop" cues), store the
#    `0x1db` effect's handle into `this->0x274` (i.e. the object being
#    carried becomes the effect itself, or a new linked actor), and
#    eventually release the link (`this->0x274 = 0`, setting a flag
#    bit at `linked->0xf4` and `linked->0x24 = 1` - plausibly "you have
#    been dropped / are now free"). This overall shape - move along a
#    fixed direction, then pick up/drop something with a synced
#    position - reads as a "moving platform/cart that carries an
#    attached actor," consistent with the "captured/attached" pattern
#    already seen on other actors (project_fsa_okta_actor_progress.md,
#    project_fsa_tink_actor_progress.md).
#
# Individual state-to-state transition addresses beyond 0/1 were not
# hand-traced - a real target for a future deep-dive session.
fn_8018299C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    .4byte 0xC002AF2C # lfs f0, lbl_8053DECC@sda21(r0)
    li 4, 0x0
    li 0, -0x1
    sth 4, 0x8(1)
    mr 31, 3
    li 4, 0x1
    stfs 0, 0x10(1)
    stw 0, 0xc(1)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_80182A4C
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80182A38
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80182A38
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x274(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80182A38:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000698 # b .L_801830E0
L_80182A4C:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4182007C # beq .L_80182AD0
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_80182AD0
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80182ABC
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80182ABC
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x274(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80182ABC:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000614 # b .L_801830E0
L_80182AD0:
    lfs 1, 0x268(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AF30 # lfs f2, lbl_8053DED0@sda21(r0)
    .4byte 0xC062AF28 # lfs f3, lbl_8053DEC8@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x26c(31)
    addi 3, 31, 0x40
    .4byte 0xC042AF30 # lfs f2, lbl_8053DED0@sda21(r0)
    .4byte 0xC062AF28 # lfs f3, lbl_8053DEC8@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl RusaRegistry_GetOrInit
    addi 4, 31, 0xc
    bl fn_80212AF0
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 7, 1, 0x10
    addi 8, 1, 0xc
    li 6, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80182B68
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_80182B68:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmplwi 0, 0x7
    .4byte 0x41810524 # bgt .L_801830A4
    lis 3, jumptable_804A176C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A176C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_80182BD0
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418204E4 # beq .L_801830A4
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480004D8 # b .L_801830A4
L_80182BD0:
    li 3, 0x64
    li 0, 0x1
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AF34 # lfs f1, lbl_8053DED4@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x268(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x26c(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820484 # bne .L_801830A4
    li 0, 0x2
    stw 0, 0x230(31)
    li 0, 0x1
    stw 0, 0xb8(31)
    lwz 0, 0x274(31)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_80182CF4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AF28 # lfs f1, lbl_8053DEC8@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 30, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80182C98
    lbz 4, 0x23a(31)
    lbz 3, 0x239(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(30)
    stb 3, 0xb9(30)
    stb 4, 0xba(30)
L_80182C98:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AF28 # lfs f1, lbl_8053DEC8@sda21(r0)
    li 5, 0x1db
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x274(31)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80182CF4
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x274(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80182CF4:
    .4byte 0xC002AF2C # lfs f0, lbl_8053DECC@sda21(r0)
    li 4, 0x6
    li 3, 0x0
    li 0, 0x3
    stfs 0, 0x270(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x268(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 4, 0x23c(31)
    stw 3, 0x248(31)
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80182D60
    lwz 3, 0x254(31)
    li 0, 0x6
    addi 3, 3, 0x1
    stw 3, 0x254(31)
    stw 0, 0x23c(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_80182D60
    li 0, 0x4
    stw 0, 0x230(31)
L_80182D60:
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x4182033C # beq .L_801830A4
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820310 # bne .L_801830A4
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x274(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
    .4byte 0x480002F0 # b .L_801830A4
    lis 3, 0x1
    li 0, 0xc8
    addi 3, 3, 0x1101
    li 6, 0x6
    stw 3, 0xb0(31)
    li 5, 0x8
    li 4, 0x0
    li 3, 0x1
    stw 0, 0x240(31)
    li 0, 0x5
    stw 6, 0x254(31)
    stw 5, 0x23c(31)
    stw 4, 0x248(31)
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80182E48
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80182E48
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x274(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80182E48:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80182E60
    .4byte 0xC3E2AF28 # lfs f31, lbl_8053DEC8@sda21(r0)
    li 6, 0x300
    .4byte 0x4800000C # b .L_80182E68
L_80182E60:
    .4byte 0xC3E2AF34 # lfs f31, lbl_8053DED4@sda21(r0)
    li 6, 0x100
L_80182E68:
    lhz 4, 0x8(1)
    addi 3, 31, 0x264
    li 5, 0x1
    bl fn_801F714C
    lhz 0, 0x264(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 31, 0
    stfs 0, 0x268(31)
    lhz 0, 0x264(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 31, 0
    stfs 0, 0x26c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80182EE0
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_80182ED8
    li 0, 0x6
    stw 0, 0x254(31)
L_80182ED8:
    li 0, 0x8
    stw 0, 0x23c(31)
L_80182EE0:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408201BC # bne .L_801830A4
    li 0, 0x6
    stw 0, 0x230(31)
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80182F48
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80182F48
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x274(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80182F48:
    li 0, 0x1000
    .4byte 0xC002AF2C # lfs f0, lbl_8053DECC@sda21(r0)
    stw 0, 0xb0(31)
    li 5, 0x0
    li 4, 0x4
    li 3, 0x6
    stfs 0, 0x270(31)
    li 0, 0x7
    stfs 0, 0x26c(31)
    stfs 0, 0x268(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 5, 0x258(31)
    stw 4, 0x23c(31)
    stw 5, 0x248(31)
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80182FE4
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80182FE4
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x274(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80182FE4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408200B8 # bne .L_801830A4
    lwz 3, 0x254(31)
    li 0, 0x6
    subi 3, 3, 0x1
    stw 3, 0x254(31)
    stw 0, 0x23c(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x41810098 # bgt .L_801830A4
    lwz 0, 0x274(31)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_80183094
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AF28 # lfs f1, lbl_8053DEC8@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 30, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80183074
    lbz 4, 0x23a(31)
    lbz 3, 0x239(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(30)
    stb 3, 0xb9(30)
    stb 4, 0xba(30)
L_80183074:
    lwz 5, 0x274(31)
    li 3, 0x1
    li 0, 0x0
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x274(31)
L_80183094:
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
L_801830A4:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801830B8
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_801830B8:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801830CC
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_801830CC:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801830E0
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_801830E0:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
