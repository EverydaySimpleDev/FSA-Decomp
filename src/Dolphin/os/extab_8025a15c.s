.section extab, "a"
.balign 4
.global etb_8000B8BC
etb_8000B8BC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B8BC, 8

.section extabindex, "a"
.balign 4
.global eti_80019EDC
eti_80019EDC:
    .4byte fn_8025A15C
    .4byte 0x00000864
    .4byte etb_8000B8BC
.size eti_80019EDC, 12

.text
.balign 4
.global fn_8025A15C

# fn_8025A15C(playerObj) - a PLAYER's per-frame status-effect update
# (Track A byte-matched + structural overview; the largest function
# landed to date at 0x864 bytes). Confirmed NOT a generic actor:
# playerObj is passed straight through as the confirmed "playerObj"
# argument to fn_8024F0E8 (the pose-trigger/co-op-broadcast function,
# extab_8024f0e8.s) and fn_802486A0 (the CONFIRMED co-op LINK/CHAIN
# helper, project_fsa_player_target_helper_decoded.md) - both of which
# only make sense operating on a player instance. Reads/writes several
# fields shared with the CONFIRMED per-player candidate-tracking system
# (this->0x3b4, project_fsa_player_candidate_tracking_system.md) and
# ends by writing this->0xb78 - the SAME flag fn_8023B400 reads via the
# global player array, closing that investigation's last loose end
# (this function is fn_8023B400's caller).
#
# Reads naturally as a "burning/fire status effect" tick: repeatedly
# spawns "FIRE"-coded companion actors (4-char code 0x46495245, via the
# CONFIRMED universal dispatcher fn_801F9484) tied to the player,
# tracks looping crackle-fire sound handles, and drives a
# flinch/hurt-reaction animation cycle while the effect is active.
#
# Fields (offsets on playerObj):
#   0xb8c  - general cooldown counter, decremented every call while >0.
#   0xb84  - "currently flinching/reacting" flag; auto-cleared via
#            fn_8022C274(this->0x4) when set. Gates the big "reaction"
#            branch (distance check + animation-frame cycling) versus
#            the "idle/attack" branch (targeting + companion spawn).
#   0x3fa  - elapsed-frame counter since the effect started (always
#            incremented once per call, at the very end).
#   0x3fb  - bucketed phase (0-5) derived from 0x3fa via cascading
#            thresholds (2/3/4/10/11/12); reaching the top bucket
#            (0x3fa>=12) also calls fn_80251AEC(this,0) - the CONFIRMED
#            player carry-mode setter (extab_80251aec.s) - as a one-time
#            "phase 5 entry" side effect.
#   0x580-0x58c - two computed 2D offset points (paired-single x/z each),
#            set up ONLY at the exact frame this->0x3fa==0xb(11), using
#            this->0x3dc (a 0-4 direction/pattern selector) to choose
#            which of 4 float-constant tuning sets (lbl_80540110/114/
#            118/8054011C/80540120) shapes the spread - a one-time
#            "burst pattern" setup for a visual effect.
#   0x3f8/0x3f9 - a wrapping 0-27 sub-frame counter and the per-direction
#            (0x3dc) byte it selects from an 8-entry animation-frame
#            table at lbl_8046AF00+0x250 - drives the flinch-loop's
#            visual frame while this->0xb84 is set. Reset to 0 whenever
#            playerObj is within a threshold distance of a reference
#            point (this->0x8/0xc/0x10 vs this->0x14/0x18/0x1c, boxed
#            per-axis against radius lbl_80539D44*lbl_805400D8),
#            otherwise incremented and wrapped.
#   0xb28  - handle for a single "self" FIRE companion, spawned once
#            (gated on 0xb8c<=0) via the CONFIRMED SpatialRegistry_GetBase+
#            fn_801F9484 pair; re-validated each call via
#            SpatialRegistry_GetBase+fn_801F666C, notified via fn_802BAA0C if still
#            alive, else reset to -1 with a 60-frame (0x3c) cooldown on
#            0xb8c.
#   0x12c4/0x12c8 - two looping SFX handles (CONFIRMED fn_8013CC50
#            lifecycle IDs 0x1ab/0x54a), pitch-modulated per-call via
#            not-yet-decompiled fn_800EF008 + fn_8013CB44 using
#            per-direction tables at lbl_8046AF00+0x270/+0x280.
#   0xb1c/0xb20/0xb24 - a 3-slot array of additional "FIRE" companion
#            handles (stride 4). While 0xb84 is clear and slot 0 is
#            still empty, gated on Player_IsLinked(this) AND
#            fn_802486A0(this)!=4 AND fn_8023B400(Player_GetLinkTargetIndex(this))
#            (very likely "is MY OWN player index's ready flag set" -
#            Player_GetLinkTargetIndex not independently confirmed) AND
#            fn_80247594(this,0): computes an offset spawn position
#            (direction-based wobble via lbl_80540128) and fills the
#            first free slot, storing this->0x3b4 into the new
#            companion's +0xb5c and setting this->0xb78=1 on success.
#
# When 0xb84 IS set: after the animation-frame update, if
# fn_80247594(this,1) returns false, clears 0xb84; then does the 0xb28
# self-companion maintenance and the two SFX-handle updates, and
# unconditionally calls fn_8024F0E8(this, 0x311) (a pose/broadcast
# notification) before the shared tail.
#
# Shared tail (both branches): when 0xb84 was clear, ORs flag 0x1 into
# both SFX handles' +0xf4 (a "keep looping" flag, same idiom seen in
# fn_80214E50/fn_801F37AC) before the targeting+spawn logic above.
# Always finishes by incrementing this->0x3fa and calling
# fn_80268B3C(this) (not yet decompiled - likely a generic
# "finalize/commit frame" player hook).
#
# Not yet decompiled: fn_8022C274, fn_802808E8, fn_80247594,
# fn_800EF008, fn_8013CB44, fn_802BAA0C, Player_IsLinked, Player_GetLinkTargetIndex,
# fn_80268B3C.
fn_8025A15C:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_8046AF00@ha
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    addi 31, 4, lbl_8046AF00@l
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    lwz 3, 0xb8c(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8025A198
    subi 0, 3, 0x1
    stw 0, 0xb8c(30)
L_8025A198:
    lbz 0, 0xb84(30)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8025A1BC
    lwz 3, 0x4(30)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8025A1BC
    li 0, 0x0
    stb 0, 0xb84(30)
L_8025A1BC:
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x2
    .4byte 0x40800010 # bge .L_8025A1D4
    li 0, 0x0
    stb 0, 0x3fb(30)
    .4byte 0x4800007C # b .L_8025A24C
L_8025A1D4:
    cmplwi 0, 0x3
    .4byte 0x40800010 # bge .L_8025A1E8
    li 0, 0x1
    stb 0, 0x3fb(30)
    .4byte 0x48000068 # b .L_8025A24C
L_8025A1E8:
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_8025A1FC
    li 0, 0x2
    stb 0, 0x3fb(30)
    .4byte 0x48000054 # b .L_8025A24C
L_8025A1FC:
    cmplwi 0, 0xa
    .4byte 0x40800010 # bge .L_8025A210
    li 0, 0x3
    stb 0, 0x3fb(30)
    .4byte 0x48000040 # b .L_8025A24C
L_8025A210:
    cmplwi 0, 0xb
    .4byte 0x40800010 # bge .L_8025A224
    li 0, 0x4
    stb 0, 0x3fb(30)
    .4byte 0x4800002C # b .L_8025A24C
L_8025A224:
    cmplwi 0, 0xc
    .4byte 0x40800010 # bge .L_8025A238
    li 0, 0x5
    stb 0, 0x3fb(30)
    .4byte 0x48000018 # b .L_8025A24C
L_8025A238:
    li 0, 0x5
    mr 3, 30
    stb 0, 0x3fb(30)
    li 4, 0x0
    bl fn_80251AEC
L_8025A24C:
    lbz 3, 0x3fa(30)
    cmplwi 3, 0xb
    .4byte 0x4082073C # bne .L_8025A990
    psq_l 1, 0x8(30), 0, 0
    lfs 0, 0x10(30)
    psq_st 1, 0x24(1), 0, 0
    stfs 0, 0x2c(1)
    lwz 0, 0x3dc(30)
    cmpwi 0, 0x2
    .4byte 0x418200D8 # beq .L_8025A348
    .4byte 0x40800014 # bge .L_8025A288
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025A294
    .4byte 0x40800070 # bge .L_8025A2F0
    .4byte 0x48000188 # b .L_8025A40C
L_8025A288:
    cmpwi 0, 0x4
    .4byte 0x40800180 # bge .L_8025A40C
    .4byte 0x4800011C # b .L_8025A3AC
L_8025A294:
    lfs 1, 0x24(1)
    .4byte 0xC002D170 # lfs f0, lbl_80540110@sda21(r0)
    lfs 5, 0x28(1)
    fadds 4, 1, 0
    .4byte 0xC022D174 # lfs f1, lbl_80540114@sda21(r0)
    .4byte 0xC002D178 # lfs f0, lbl_80540118@sda21(r0)
    fsubs 3, 5, 1
    fadds 2, 4, 0
    stfs 4, 0x24(1)
    fadds 1, 1, 5
    frsp 0, 4
    stfs 4, 0x14(1)
    stfs 3, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 0, 0x580(30)
    lfs 0, 0x18(1)
    stfs 0, 0x584(30)
    lfs 0, 0x1c(1)
    stfs 0, 0x588(30)
    lfs 0, 0x20(1)
    stfs 0, 0x58c(30)
    .4byte 0x48000120 # b .L_8025A40C
L_8025A2F0:
    lfs 2, 0x24(1)
    .4byte 0xC002D170 # lfs f0, lbl_80540110@sda21(r0)
    .4byte 0xC022D178 # lfs f1, lbl_80540118@sda21(r0)
    fsubs 3, 2, 0
    lfs 4, 0x28(1)
    .4byte 0xC002D174 # lfs f0, lbl_80540114@sda21(r0)
    fsubs 2, 3, 1
    stfs 3, 0x24(1)
    fsubs 1, 4, 0
    fadds 0, 0, 4
    stfs 3, 0x1c(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    stfs 2, 0x580(30)
    lfs 0, 0x18(1)
    stfs 0, 0x584(30)
    lfs 0, 0x1c(1)
    stfs 0, 0x588(30)
    lfs 0, 0x20(1)
    stfs 0, 0x58c(30)
    .4byte 0x480000C8 # b .L_8025A40C
L_8025A348:
    lfs 3, 0x24(1)
    .4byte 0xC022D140 # lfs f1, lbl_805400E0@sda21(r0)
    lfs 2, 0x28(1)
    .4byte 0xC002D17C # lfs f0, lbl_8054011C@sda21(r0)
    fadds 4, 3, 1
    .4byte 0xC022D174 # lfs f1, lbl_80540114@sda21(r0)
    fadds 3, 2, 0
    .4byte 0xC002D178 # lfs f0, lbl_80540118@sda21(r0)
    fsubs 2, 4, 1
    stfs 4, 0x24(1)
    fadds 1, 1, 4
    fadds 0, 3, 0
    stfs 3, 0x28(1)
    stfs 2, 0x14(1)
    stfs 3, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 2, 0x580(30)
    lfs 0, 0x18(1)
    stfs 0, 0x584(30)
    lfs 0, 0x1c(1)
    stfs 0, 0x588(30)
    lfs 0, 0x20(1)
    stfs 0, 0x58c(30)
    .4byte 0x48000064 # b .L_8025A40C
L_8025A3AC:
    lfs 3, 0x24(1)
    .4byte 0xC002D140 # lfs f0, lbl_805400E0@sda21(r0)
    lfs 2, 0x28(1)
    .4byte 0xC022D180 # lfs f1, lbl_80540120@sda21(r0)
    fsubs 4, 3, 0
    .4byte 0xC002D174 # lfs f0, lbl_80540114@sda21(r0)
    fsubs 3, 2, 1
    .4byte 0xC022D178 # lfs f1, lbl_80540118@sda21(r0)
    fsubs 2, 4, 0
    stfs 4, 0x24(1)
    fadds 0, 0, 4
    fsubs 1, 3, 1
    stfs 3, 0x28(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 3, 0x20(1)
    stfs 2, 0x580(30)
    lfs 0, 0x18(1)
    stfs 0, 0x584(30)
    lfs 0, 0x1c(1)
    stfs 0, 0x588(30)
    lfs 0, 0x20(1)
    stfs 0, 0x58c(30)
L_8025A40C:
    lbz 0, 0xb84(30)
    cmplwi 0, 0x0
    .4byte 0x418203DC # beq .L_8025A7F0
    .4byte 0xC022D184 # lfs f1, lbl_80540124@sda21(r0)
    mr 3, 30
    bl fn_802808E8
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC042D138 # lfs f2, lbl_805400D8@sda21(r0)
    mr 0, 4
    lfs 1, 0x8(30)
    fmuls 2, 2, 0
    lfs 0, 0x14(30)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025A46C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025A46C
    li 0, 0x1
L_8025A46C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_8025A4AC
    lfs 1, 0xc(30)
    li 0, 0x0
    lfs 0, 0x18(30)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025A4A0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025A4A0
    li 0, 0x1
L_8025A4A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8025A4AC
    li 3, 0x1
L_8025A4AC:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8025A4EC
    lfs 1, 0x10(30)
    li 0, 0x0
    lfs 0, 0x1c(30)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025A4E0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025A4E0
    li 0, 0x1
L_8025A4E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8025A4EC
    li 4, 0x1
L_8025A4EC:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_8025A500
    li 0, 0x0
    stb 0, 0x3f8(30)
    .4byte 0x48000024 # b .L_8025A520
L_8025A500:
    lbz 3, 0x3f8(30)
    addi 0, 3, 0x1
    stb 0, 0x3f8(30)
    lbz 0, 0x3f8(30)
    cmplwi 0, 0x1c
    .4byte 0x4180000C # blt .L_8025A520
    li 0, 0x0
    stb 0, 0x3f8(30)
L_8025A520:
    lbz 0, 0x3f8(30)
    cmplwi 0, 0x4
    .4byte 0x4080001C # bge .L_8025A544
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    lbzx 0, 3, 0
    stb 0, 0x3f9(30)
    .4byte 0x480000F4 # b .L_8025A634
L_8025A544:
    cmplwi 0, 0x6
    .4byte 0x40800020 # bge .L_8025A568
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x1(3)
    stb 0, 0x3f9(30)
    .4byte 0x480000D0 # b .L_8025A634
L_8025A568:
    cmplwi 0, 0xa
    .4byte 0x40800020 # bge .L_8025A58C
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x2(3)
    stb 0, 0x3f9(30)
    .4byte 0x480000AC # b .L_8025A634
L_8025A58C:
    cmplwi 0, 0xe
    .4byte 0x40800020 # bge .L_8025A5B0
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x3(3)
    stb 0, 0x3f9(30)
    .4byte 0x48000088 # b .L_8025A634
L_8025A5B0:
    cmplwi 0, 0x12
    .4byte 0x40800020 # bge .L_8025A5D4
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x4(3)
    stb 0, 0x3f9(30)
    .4byte 0x48000064 # b .L_8025A634
L_8025A5D4:
    cmplwi 0, 0x14
    .4byte 0x40800020 # bge .L_8025A5F8
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x5(3)
    stb 0, 0x3f9(30)
    .4byte 0x48000040 # b .L_8025A634
L_8025A5F8:
    cmplwi 0, 0x18
    .4byte 0x40800020 # bge .L_8025A61C
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x6(3)
    stb 0, 0x3f9(30)
    .4byte 0x4800001C # b .L_8025A634
L_8025A61C:
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x250
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x7(3)
    stb 0, 0x3f9(30)
L_8025A634:
    mr 3, 30
    li 4, 0x1
    bl fn_80247594
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8025A650
    li 0, 0x0
    stb 0, 0xb84(30)
L_8025A650:
    lwz 0, 0xb8c(30)
    cmpwi 0, 0x0
    .4byte 0x41810048 # bgt .L_8025A6A0
    lwz 0, 0xb28(30)
    cmpwi 0, 0x0
    .4byte 0x4080003C # bge .L_8025A6A0
    lwz 29, 0x4(30)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(30)
    lis 4, 0x4649
    lwz 5, 0x3b4(30)
    mr 9, 29
    clrlslwi 0, 0, 30, 4
    addi 4, 4, 0x5245
    ori 7, 0, 0x1040
    addi 6, 1, 0x24
    li 8, -0x1
    rlwimi 7, 29, 0, 30, 31
    bl fn_801F9484
    stw 3, 0xb28(30)
L_8025A6A0:
    lwz 29, 0xb28(30)
    cmpwi 29, 0x0
    .4byte 0x41800034 # blt .L_8025A6DC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025A6CC
    addi 4, 1, 0x14
    bl fn_802BAA0C
    .4byte 0x48000014 # b .L_8025A6DC
L_8025A6CC:
    li 3, -0x1
    li 0, 0x3c
    stw 3, 0xb28(30)
    stw 0, 0xb8c(30)
L_8025A6DC:
    lwz 0, 0x12c4(30)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8025A714
    lwz 3, 0x3b4(30)
    addi 4, 1, 0x24
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x1ab
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x12c4(30)
L_8025A714:
    lwz 3, 0x12c4(30)
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_8025A75C
    lwz 0, 0x3dc(30)
    addi 6, 3, 0x68
    addi 4, 31, 0x270
    li 3, 0x0
    slwi 0, 0, 2
    li 5, -0x8000
    lwzx 0, 4, 0
    extsh 4, 0
    bl fn_800EF008
    lwz 3, 0x12c4(30)
    addi 4, 1, 0x24
    li 5, 0x0
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
L_8025A75C:
    lwz 0, 0x12c8(30)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8025A794
    lwz 3, 0x3b4(30)
    addi 4, 1, 0x24
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x54a
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x12c8(30)
L_8025A794:
    lwz 3, 0x12c8(30)
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_8025A7DC
    lwz 0, 0x3dc(30)
    addi 6, 3, 0x68
    addi 5, 31, 0x280
    li 3, 0x0
    slwi 0, 0, 2
    li 4, 0x0
    lwzx 0, 5, 0
    extsh 5, 0
    bl fn_800EF008
    lwz 3, 0x12c8(30)
    addi 4, 1, 0x24
    li 5, -0x1
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_8025A7DC:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x11
    bl fn_8024F0E8
    .4byte 0x480001AC # b .L_8025A998
L_8025A7F0:
    lwz 3, 0x12c8(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025A808
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
L_8025A808:
    lwz 3, 0x12c4(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025A820
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
L_8025A820:
    lwz 0, 0xb28(30)
    cmpwi 0, 0x0
    .4byte 0x40800158 # bge .L_8025A980
    lwz 0, 0xb1c(30)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_8025A840
    li 3, 0x1
L_8025A840:
    cmpwi 3, 0x1
    .4byte 0x4080013C # bge .L_8025A980
    mr 3, 30
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8025A87C
    mr 3, 30
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x41820018 # beq .L_8025A87C
    mr 3, 30
    bl Player_GetLinkTargetIndex
    bl fn_8023B400
    clrlwi. 0, 3, 24
    .4byte 0x41820108 # beq .L_8025A980
L_8025A87C:
    mr 3, 30
    li 4, 0x0
    bl fn_80247594
    clrlwi. 0, 3, 24
    .4byte 0x418200F4 # beq .L_8025A980
    psq_l 1, 0x8(30), 0, 0
    lfs 0, 0x10(30)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x3dc(30)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_8025A8EC
    .4byte 0x40800050 # bge .L_8025A8FC
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8025A8C4
    .4byte 0x40800020 # bge .L_8025A8D8
    .4byte 0x48000040 # b .L_8025A8FC
    .4byte 0x4800003C # b .L_8025A8FC
L_8025A8C4:
    lfs 1, 0x8(1)
    .4byte 0xC002D188 # lfs f0, lbl_80540128@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000028 # b .L_8025A8FC
L_8025A8D8:
    lfs 1, 0x8(1)
    .4byte 0xC002D188 # lfs f0, lbl_80540128@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000014 # b .L_8025A8FC
L_8025A8EC:
    lfs 1, 0xc(1)
    .4byte 0xC002D188 # lfs f0, lbl_80540128@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_8025A8FC:
    li 28, 0x0
    mr 31, 30
L_8025A904:
    lwz 0, 0xb1c(31)
    cmpwi 0, 0x0
    .4byte 0x40800064 # bge .L_8025A970
    lwz 29, 0x4(30)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(30)
    lis 4, 0x4649
    lwz 5, 0x3b4(30)
    mr 9, 29
    clrlslwi 0, 0, 30, 4
    addi 4, 4, 0x5245
    ori 7, 0, 0x1000
    addi 6, 1, 0x8
    li 8, -0x1
    rlwimi 7, 29, 0, 30, 31
    bl fn_801F9484
    stw 3, 0xb1c(31)
    lwz 0, 0xb1c(31)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_8025A970
    slwi 0, 28, 2
    lwz 4, 0x3b4(30)
    add 3, 30, 0
    li 0, 0x1
    stw 4, 0xb5c(3)
    stb 0, 0xb78(30)
    .4byte 0x48000014 # b .L_8025A980
L_8025A970:
    addi 28, 28, 0x1
    addi 31, 31, 0x4
    cmpwi 28, 0x3
    .4byte 0x4180FF88 # blt .L_8025A904
L_8025A980:
    lbz 3, 0x3fa(30)
    addi 0, 3, 0x1
    stb 0, 0x3fa(30)
    .4byte 0x4800000C # b .L_8025A998
L_8025A990:
    addi 0, 3, 0x1
    stb 0, 0x3fa(30)
L_8025A998:
    mr 3, 30
    bl fn_80268B3C
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
