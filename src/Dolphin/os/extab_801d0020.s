# Fused dtk split unit (0x801D0020-0x801D0280, no extab/extabindex) - 3
# functions dtk cannot cherry-pick individually. Landing this closes the
# previously-deferred fn_801D01A0 (project_fsa_slk2_helper_backlog_batch1.md);
# it turns out fn_801D0020/fn_801D00B4 are NOT unrelated after all - both
# reference this->0x1ac, the SAME CONFIRMED per-player remembered-position
# array used by the already-landed fn_801D0280/fn_801D02E0
# (extab_801d0280.s/801d02e0.s, project_fsa_slk2_target_selection_solved.md).
#
# fn_801D0020(this, point, playerIdx, tieBreak) - quadrant/axis classifier.
# Compares |dx| vs |dz| between `point` and this->0x1ac[playerIdx] (the
# tracked player's remembered position); whichever axis has the larger
# absolute delta (ties broken toward the z-axis when tieBreak==1) decides
# which pair of return codes is used: x-axis comparison returns 0 (point
# is on the -x side) or 1 (+x side); z-axis comparison returns 2 (-z) or
# 3 (+z). A 4-way directional bucket, likely feeding one of SLK2's
# ring-hop/direction-selection tables.
#
# fn_801D00B4(this, dstOut, playerIdx, maxStep) - "step toward tracked
# player, capped by maxStep." Computes the direction from this->0xc/0x10
# (this's own position) to this->0x1ac[playerIdx]; if the squared
# distance is below a threshold (lbl_8053EFE0*lbl_80539D44), the raw
# (unnormalized) delta is kept as-is, otherwise it's normalized via the
# project's standard fast-rsqrt idiom. Recomputes the true distance with
# a second fast-sqrt (frsqrte * self trick), clamps maxStep down to that
# true distance when closer, and scales the stored direction vector by
# the clamped step - producing a bounded per-frame movement step toward
# the tracked position in dstOut.
#
# fn_801D01A0(this, targetPoint, dstOut, maxStep) - the SAME "step toward,
# capped by maxStep" primitive as fn_801D00B4, but taking an explicit
# targetPoint argument instead of indexing this->0x1ac by player - the
# general-purpose form of the same movement-step utility.
.text
.balign 4
.global fn_801D0020
.global fn_801D00B4
.global fn_801D01A0

fn_801D0020:
    mulli 5, 5, 0xc
    lfs 2, 0x0(4)
    lfs 0, 0x4(4)
    addi 5, 5, 0x1ac
    add 5, 3, 5
    lfs 3, 0x0(5)
    lfs 1, 0x4(5)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fabs 1, 2
    fabs 0, 0
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801D005C
    clrlwi. 0, 6, 24
    .4byte 0x4182001C # beq .L_801D0074
L_801D005C:
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_801D0094
    clrlwi 0, 6, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_801D0094
L_801D0074:
    lfs 1, 0x0(4)
    lfs 0, 0x0(5)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801D008C
    li 3, 0x0
    blr
L_801D008C:
    li 3, 0x1
    blr
L_801D0094:
    lfs 1, 0x4(4)
    lfs 0, 0x4(5)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801D00AC
    li 3, 0x2
    blr
L_801D00AC:
    li 3, 0x3
    blr

fn_801D00B4:
    mulli 6, 4, 0xc
    lis 4, lbl_80539D44@ha
    lfs 5, 0x10(3)
    lfs 3, 0xc(3)
    addi 6, 6, 0x1ac
    .4byte 0xC042C040 # lfs f2, lbl_8053EFE0@sda21(r0)
    add 6, 3, 6
    lfs 0, lbl_80539D44@l(4)
    lfs 6, 0x4(6)
    lfs 4, 0x0(6)
    fmuls 0, 2, 0
    fsubs 6, 6, 5
    fsubs 5, 4, 3
    fmuls 2, 6, 6
    fmadds 7, 5, 5, 2
    fcmpo cr0, 7, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801D0138
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 7, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D0110
    .4byte 0x48000024 # b .L_801D0130
L_801D0110:
    frsqrte 4, 7
    .4byte 0xC062C044 # lfs f3, lbl_8053EFE4@sda21(r0)
    .4byte 0xC002C048 # lfs f0, lbl_8053EFE8@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 0, 7, 2, 0
    fmuls 7, 3, 0
L_801D0130:
    fmuls 5, 5, 7
    fmuls 6, 6, 7
L_801D0138:
    lfs 4, 0x0(6)
    lfs 3, 0xc(3)
    lfs 2, 0x4(6)
    lfs 0, 0x10(3)
    fsubs 3, 4, 3
    stfs 5, 0x0(5)
    fsubs 2, 2, 0
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fmuls 3, 3, 3
    stfs 6, 0x4(5)
    fmuls 2, 2, 2
    fadds 2, 3, 2
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_801D0178
    frsqrte 0, 2
    fmuls 2, 0, 2
L_801D0178:
    fcmpo cr0, 2, 1
    .4byte 0x40800008 # bge .L_801D0184
    fmr 1, 2
L_801D0184:
    lfs 0, 0x0(5)
    fmuls 0, 0, 1
    stfs 0, 0x0(5)
    lfs 0, 0x4(5)
    fmuls 0, 0, 1
    stfs 0, 0x4(5)
    blr

fn_801D01A0:
    lfs 2, 0x4(4)
    lis 6, lbl_80539D44@ha
    lfs 0, 0x10(3)
    lfs 3, 0x0(4)
    fsubs 6, 2, 0
    lfs 0, 0xc(3)
    .4byte 0xC042C040 # lfs f2, lbl_8053EFE0@sda21(r0)
    fsubs 5, 3, 0
    lfs 0, lbl_80539D44@l(6)
    fmuls 3, 6, 6
    fmuls 0, 2, 0
    fmadds 7, 5, 5, 3
    fcmpo cr0, 7, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801D0218
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 7, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D01F0
    .4byte 0x48000024 # b .L_801D0210
L_801D01F0:
    frsqrte 4, 7
    .4byte 0xC062C044 # lfs f3, lbl_8053EFE4@sda21(r0)
    .4byte 0xC002C048 # lfs f0, lbl_8053EFE8@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 0, 7, 2, 0
    fmuls 7, 3, 0
L_801D0210:
    fmuls 5, 5, 7
    fmuls 6, 6, 7
L_801D0218:
    lfs 4, 0x0(4)
    lfs 3, 0xc(3)
    lfs 2, 0x4(4)
    lfs 0, 0x10(3)
    fsubs 3, 4, 3
    stfs 5, 0x0(5)
    fsubs 2, 2, 0
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fmuls 3, 3, 3
    stfs 6, 0x4(5)
    fmuls 2, 2, 2
    fadds 2, 3, 2
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_801D0258
    frsqrte 0, 2
    fmuls 2, 0, 2
L_801D0258:
    fcmpo cr0, 2, 1
    .4byte 0x40800008 # bge .L_801D0264
    fmr 1, 2
L_801D0264:
    lfs 0, 0x0(5)
    fmuls 0, 0, 1
    stfs 0, 0x0(5)
    lfs 0, 0x4(5)
    fmuls 0, 0, 1
    stfs 0, 0x4(5)
    blr
