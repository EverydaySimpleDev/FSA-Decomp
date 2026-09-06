.section extab, "a"
.balign 4
.global etb_8000BE3C
etb_8000BE3C:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000BE3C, 8

.section extabindex, "a"
.balign 4
.global eti_8001A71C
eti_8001A71C:
    .4byte fn_802808E8
    .4byte 0x00000248
    .4byte etb_8000BE3C
.size eti_8001A71C, 12

.text
.balign 4
.global fn_802808E8

# fn_802808E8(playerObj, pitchBase) - "pick a safe knockback/push
# direction and apply it" (Track A byte-matched + structural overview;
# several callees not yet independently decompiled). Confirmed caller:
# fn_8025A15C's fire-status handler (extab_8025a15c.s), passing
# lbl_80540124 as pitchBase.
#
# Fast path: if playerObj->0x1216 is set, skips straight to the tail -
# a single position nudge on playerObj->0xc using pitchBase and the
# CURRENT f30/f31 (both equal to the incoming pitchBase, unmodified).
#
# Otherwise: computes squared magnitude of playerObj->0x35c/0x364 (a 2D
# vector, paired-single ps_mul/ps_madd/ps_sum0) against a threshold
# (lbl_8054035C*lbl_80539D44); if below it, overrides f30=f31 with a
# fixed constant (lbl_80540360). Two byte flags (+0x3c1/+0x3c2)
# independently force f30/f31 to the SAME constant regardless. Calls
# the CONFIRMED player-proximity terrain/hazard classifier
# fn_8022461C(&playerObj->0x8, playerObj->0x3b4)
# (project_fsa_player_proximity_helpers.md); if the (result-0x2c) falls
# in [0,2] or equals 0x2f (specific terrain/hazard classifications),
# scales f31 by lbl_8054037C. If not-yet-decompiled IsPoseOverrideEligible()
# ("pose-override eligibility", also seen in fn_8024F0E8) is true AND
# fn_802416C4(playerObj) returns 5, scales BOTH f30/f31 by
# lbl_805403A0. Stores the final f30/f31 into playerObj->0x38c/0x390.
#
# Recomputes squared magnitude of (f30,f31) against the same threshold;
# if below it, bails to the tail entirely. Otherwise checks
# playerObj->0xbf0->0xb7 (a sub-object byte) - if set, also bails to
# the tail. Else calls not-yet-decompiled fn_80246B10(playerObj, 0x40);
# if that returns nonzero, forces playerObj->0x368/0x36c both to
# lbl_80540360 and bails to the tail. Otherwise calls not-yet-
# decompiled fn_8022C82C(playerObj->0x4) and applies f30*pitchBase to
# playerObj->0x8.
#
# Direction-search: fetches the CONFIRMED config record (GetRoomConfigRecord)
# and checks a per-target-index byte flag at +0x31df for
# playerObj->0x3b4. If set: calls not-yet-decompiled
# fn_8022C76C(playerObj->0x4) (an angle/pitch accessor) and, if above
# threshold, loops i=0..7 calling not-yet-decompiled
# fn_8024B298(playerObj, i, &localStack) - an 8-candidate-direction
# search (matching fn_8025A15C's own 8-entry per-direction table
# theme) - applying each candidate via fn_8022C76C + fn_8022461C until
# one classifies as terrain code 2 (a "safe" spot), storing the final
# position into playerObj->0xc; if the loop exhausts all 8 without a
# safe spot, forces playerObj->0x36c to lbl_80540360 instead. If the
# +0x31df flag was clear, applies a single fn_8022C76C-based position
# nudge directly to playerObj->0xc with no search.
#
# Not yet decompiled: IsPoseOverrideEligible, fn_802416C4, fn_80246B10,
# fn_8022C82C, fn_8022C76C, fn_8024B298.
fn_802808E8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    lbz 0, 0x1216(3)
    fmr 30, 1
    fmr 31, 1
    mr 31, 3
    cmplwi 0, 0x0
    .4byte 0x408201E8 # bne .L_80280B08
    psq_l 3, 0x35c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 2, 0x364(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D3BC # lfs f1, lbl_8054035C@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4182000C # beq .L_8028095C
    .4byte 0xC3C2D3C0 # lfs f30, lbl_80540360@sda21(r0)
    fmr 31, 30
L_8028095C:
    lbz 0, 0x3c1(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8028096C
    .4byte 0xC3C2D3C0 # lfs f30, lbl_80540360@sda21(r0)
L_8028096C:
    lbz 0, 0x3c2(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8028097C
    .4byte 0xC3E2D3C0 # lfs f31, lbl_80540360@sda21(r0)
L_8028097C:
    lwz 4, 0x3b4(31)
    addi 3, 31, 0x8
    bl fn_8022461C
    subi 0, 3, 0x2c
    clrlwi 0, 0, 16
    cmplwi 0, 0x2
    .4byte 0x40810010 # ble .L_802809A4
    clrlwi 0, 3, 16
    cmplwi 0, 0x2f
    .4byte 0x4082000C # bne .L_802809AC
L_802809A4:
    .4byte 0xC002D3DC # lfs f0, lbl_8054037C@sda21(r0)
    fmuls 31, 31, 0
L_802809AC:
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_802809D4
    mr 3, 31
    bl fn_802416C4
    cmpwi 3, 0x5
    .4byte 0x40820010 # bne .L_802809D4
    .4byte 0xC002D400 # lfs f0, lbl_805403A0@sda21(r0)
    fmuls 30, 30, 0
    fmuls 31, 31, 0
L_802809D4:
    stfs 30, 0x38c(31)
    fmuls 2, 31, 31
    lis 3, lbl_80539D44@ha
    .4byte 0xC022D3BC # lfs f1, lbl_8054035C@sda21(r0)
    stfs 31, 0x390(31)
    fmadds 2, 30, 30, 2
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4182010C # beq .L_80280B08
    lwz 3, 0xbf0(31)
    lbz 0, 0xb7(3)
    cmplwi 0, 0x0
    .4byte 0x408200FC # bne .L_80280B08
    mr 3, 31
    li 4, 0x40
    bl fn_80246B10
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80280A34
    .4byte 0xC002D3C0 # lfs f0, lbl_80540360@sda21(r0)
    stfs 0, 0x368(31)
    stfs 0, 0x36c(31)
    .4byte 0x480000D8 # b .L_80280B08
L_80280A34:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    lfs 0, 0x8(31)
    fmadds 0, 30, 1, 0
    stfs 0, 0x8(31)
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_80280AF0
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D3C0 # lfs f0, lbl_80540360@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081007C # ble .L_80280AF0
    li 30, 0x0
L_80280A7C:
    mr 3, 31
    mr 4, 30
    addi 5, 1, 0x8
    bl fn_8024B298
    lwz 3, 0x4(31)
    bl fn_8022C76C
    fneg 1, 1
    lfs 0, 0xc(1)
    addi 3, 1, 0x8
    fmadds 0, 31, 1, 0
    stfs 0, 0xc(1)
    lwz 4, 0x3b4(31)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x41820020 # beq .L_80280AD8
    lwz 3, 0x4(31)
    bl fn_8022C76C
    fneg 1, 1
    lfs 0, 0xc(31)
    fmadds 0, 31, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000034 # b .L_80280B08
L_80280AD8:
    addi 30, 30, 0x1
    cmpwi 30, 0x8
    .4byte 0x4180FF9C # blt .L_80280A7C
    .4byte 0xC002D3C0 # lfs f0, lbl_80540360@sda21(r0)
    stfs 0, 0x36c(31)
    .4byte 0x4800001C # b .L_80280B08
L_80280AF0:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    fneg 1, 1
    lfs 0, 0xc(31)
    fmadds 0, 31, 1, 0
    stfs 0, 0xc(31)
L_80280B08:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x44(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
