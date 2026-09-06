# fn_800F9170: the container class's phase==2 handler (per
# fn_800F8A30's dispatch: phase 1 -> fn_800F953C, phase 2 ->
# fn_800F9170). The second-largest function this session (0x3CC/972
# bytes, needs `-mgekko`).
#
# Notable, CONCRETE new finding: calls `PSVECMag`, an official
# Nintendo SDK math-library symbol (vector magnitude) - the first
# externally-named (non `fn_XXXXXXXX`) SDK call site identified in
# this whole cluster, confirming the game links against the standard
# PS vector-math library rather than only hand-rolled fixed-point/FP
# math.
#
# Structure: picks a tiered scale/multiplier based on the owner's
# progress counter `owner->0x2ac` (bucketed against thresholds
# 8/0x10/0x15/0x18/0x1a - a level-up/difficulty-style progression),
# uses it to index BOTH the already-seen shared anchor table
# `lbl_8052EBC0` AND a NEW per-tier float table `lbl_8049C634`,
# blending them into a target X/Z position (same
# scale-anchor-plus-base-position shape as fn_800F8BAC's orbit-anchor
# branch), and advances `owner->0x2ac` by one.
#
# If a cached lookup ID `this->0xa0 != -1`, resolves it via the
# CONFIRMED `SpatialRegistry_GetBase`+`fn_801F666C` registry pair and compares its
# `+0x1a0` type code against a constant assembled from
# `0x424F0000+0x4D45` - **UNCONFIRMED arithmetic reconstruction,
# plausibly the ASCII code "BOME" but not independently verified** -
# if matched, resets `this->0x244=0x4000`/`this->0x24e=0` (a
# duration/timer pair) and skips the movement step entirely.
#
# Otherwise runs a homing-movement step: two NEW/unconfirmed gate
# calls `fn_801F3D94(this,1)`/`fn_801F305C(this)`, then computes a
# direction via `PSVECMag`, a FOURTH instance this session of the
# fast-inverse-sqrt idiom (frsqrte+Newton-Raphson) to normalize it,
# and a distance/timeout check (magnitude vs. threshold AND
# `this->0x24e > 0x50`) that can flip phase to 1 if the target isn't
# being reached. Applies the scaled homing step to position
# (`this->0xc/0x10/0x14`, paired-single add), advances the duration
# counter `this->0x244` by `0x480`, and applies a height-decay curve
# via YET ANOTHER `lbl_8052EBC0` lookup (indexed by the advancing
# `this->0x244`) - when height drops below a threshold, plays a
# "landing" sound/effect `0x583` via the CONFIRMED `fn_801F0E34`.
# Not yet cross-identified against the 195-entry dispatch table;
# `fn_800F953C`/`fn_801F3D94`/`fn_801F305C` remain open follow-ups.
.section extab, "a"
.balign 4
.global etb_80005798
etb_80005798:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80005798, 8

.section extabindex, "a"
.balign 4
.global eti_80011A94
eti_80011A94:
    .4byte fn_800F9170
    .4byte 0x000003CC
    .4byte etb_80005798
.size eti_80011A94, 12

.text
.balign 4
.global fn_800F9170

fn_800F9170:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 31, 3
    li 9, 0x1
    stb 9, 0x249(3)
    lwz 10, 0x240(3)
    lbz 4, 0x2ac(10)
    cmplwi 4, 0x8
    .4byte 0x40800010 # bge .L_800F91C4
    li 9, 0x0
    li 0, 0x2000
    .4byte 0x4800005C # b .L_800F921C
L_800F91C4:
    cmplwi 4, 0x10
    .4byte 0x4080000C # bge .L_800F91D4
    li 0, 0x2000
    .4byte 0x4800004C # b .L_800F921C
L_800F91D4:
    cmplwi 4, 0x15
    .4byte 0x40800010 # bge .L_800F91E8
    li 9, 0x2
    li 0, 0x3332
    .4byte 0x48000038 # b .L_800F921C
L_800F91E8:
    cmplwi 4, 0x18
    .4byte 0x40800010 # bge .L_800F91FC
    li 9, 0x3
    li 0, 0x5554
    .4byte 0x48000024 # b .L_800F921C
L_800F91FC:
    cmplwi 4, 0x1a
    .4byte 0x40800014 # bge .L_800F9214
    lis 3, 0x1
    li 9, 0x4
    addi 0, 3, -0x8000
    .4byte 0x4800000C # b .L_800F921C
L_800F9214:
    li 9, 0x5
    li 0, 0x2000
L_800F921C:
    mullw 0, 4, 0
    slwi 5, 9, 12
    lhz 6, 0x2ae(10)
    lis 4, lbl_8052EBC0@ha
    lis 7, lbl_8049C634@ha
    lfs 5, 0x2a8(10)
    add 5, 0, 5
    lis 0, 0x4330
    add 6, 6, 5
    slwi 8, 9, 2
    addi 5, 4, lbl_8052EBC0@l
    stw 0, 0x30(1)
    clrlwi 4, 6, 16
    addi 6, 7, lbl_8049C634@l
    rlwinm 7, 4, 30, 18, 28
    lfsx 1, 6, 8
    lfsx 2, 5, 7
    add 5, 5, 7
    mulli 4, 9, 0xd
    lfs 0, 0x4(5)
    fmuls 4, 1, 2
    lfs 2, 0x10(10)
    fmuls 3, 1, 0
    lfs 1, 0xc(10)
    fmadds 4, 5, 4, 1
    xoris 0, 4, 0x8000
    fmadds 3, 5, 3, 2
    stw 0, 0x34(1)
    lbz 3, 0x2ac(10)
    lfs 0, 0x14(10)
    .4byte 0xC022905C # lfs f1, lbl_8053BFFC@sda21(r0)
    addi 0, 3, 0x1
    stb 0, 0x2ac(10)
    fadds 0, 1, 0
    .4byte 0xC8429038 # lfd f2, lbl_8053BFD8@sda21(r0)
    lfd 1, 0x30(1)
    lwz 30, 0xa0(31)
    fsubs 1, 1, 2
    stfs 4, 0x8(1)
    cmpwi 30, -0x1
    stfs 3, 0xc(1)
    fadds 0, 1, 0
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    .4byte 0x4182003C # beq .L_800F9310
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_800F9310
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x424f
    cmplwi 0, 0x4d45
    .4byte 0x40820018 # bne .L_800F9310
    li 3, 0x4000
    li 0, 0x0
    sth 3, 0x244(31)
    sth 0, 0x24e(31)
    .4byte 0x48000200 # b .L_800F950C
L_800F9310:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x408201EC # bne .L_800F950C
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_800F9338
    .4byte 0x480001D8 # b .L_800F950C
L_800F9338:
    lis 4, 0x8
    addi 3, 1, 0x20
    addi 0, 4, 0x2
    stw 0, 0xb0(31)
    lhz 4, 0x24e(31)
    addi 0, 4, 0x1
    sth 0, 0x24e(31)
    lwz 4, 0x240(31)
    psq_l 1, 0xc(4), 0, 0
    lfs 0, 0x14(4)
    stfs 0, 0x28(1)
    psq_st 1, 0x0(3), 0, 0
    psq_l 2, 0x8(3), 1, 0
    psq_l 0, 0xc(31), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 0, 0x14(31), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(3), 1, 0
    bl PSVECMag
    .4byte 0xC002907C # lfs f0, lbl_8053C01C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_800F93A8
    lhz 0, 0x24e(31)
    cmplwi 0, 0x50
    .4byte 0x4081000C # ble .L_800F93A8
    li 0, 0x1
    stw 0, 0x234(31)
L_800F93A8:
    psq_l 2, 0x20(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x28(1)
    ps_mul 2, 2, 2
    .4byte 0xC0229074 # lfs f1, lbl_8053C014@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_800F942C
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800F93F0
    fmr 31, 4
    .4byte 0x48000028 # b .L_800F9414
L_800F93F0:
    frsqrte 3, 4
    .4byte 0xC0429010 # lfs f2, lbl_8053BFB0@sda21(r0)
    .4byte 0xC0029000 # lfs f0, lbl_8053BFA0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_800F9414:
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
L_800F942C:
    .4byte 0xC3C29028 # lfs f30, lbl_8053BFC8@sda21(r0)
    psq_l 0, 0x28(1), 1, 0
    psq_l 3, 0x20(1), 0, 0
    ps_muls0 2, 0, 30
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    ps_muls0 3, 3, 30
    .4byte 0xC002905C # lfs f0, lbl_8053BFFC@sda21(r0)
    psq_st 2, 0x28(1), 1, 0
    psq_st 3, 0x20(1), 0, 0
    stfs 1, 0x28(1)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_800F946C
    lhz 0, 0x24e(31)
    cmplwi 0, 0x50
    .4byte 0x40800014 # bge .L_800F947C
L_800F946C:
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 0, 0x28(1)
    stfs 0, 0x24(1)
    stfs 0, 0x20(1)
L_800F947C:
    lfs 0, 0x20(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0229080 # lfs f1, lbl_8053C020@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC0029048 # lfs f0, lbl_8053BFE8@sda21(r0)
    lfs 2, 0x24(1)
    stfs 2, 0x40(31)
    lfs 2, 0x28(1)
    stfs 2, 0x44(31)
    psq_l 3, 0xc(31), 0, 0
    psq_l 2, 0x3c(31), 0, 0
    ps_add 2, 3, 2
    psq_st 2, 0xc(31), 0, 0
    psq_l 3, 0x14(31), 1, 0
    psq_l 2, 0x44(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x14(31), 1, 0
    lhz 4, 0x244(31)
    addi 0, 4, 0x480
    sth 0, 0x244(31)
    lhz 0, 0x244(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 2, 3, 0
    fabs 2, 2
    fmuls 1, 1, 2
    stfs 1, 0x14(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_800F950C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x83
    li 5, 0x0
    bl fn_801F0E34
L_800F950C:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 0, 0x74(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

