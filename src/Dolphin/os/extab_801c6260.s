.section extab, "a"
.balign 4
.global etb_80008130
etb_80008130:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80008130, 8

.section extabindex, "a"
.balign 4
.global eti_800152EC
eti_800152EC:
    .4byte fn_801C6260
    .4byte 0x00000524
    .4byte etb_80008130
.size eti_800152EC, 12

.text
.balign 4
.global fn_801C6260

# fn_801C6260(this) - called by `fn_801C5B08` (extab_801c5b08.s) right
# after it stashes an index into `this->0x338`. Part of SLK2's
# rail-riding behavior (project_fsa_slk2_is_the_rail_cart.md). Landed
# as Track A (byte-matched) with the following overview, given its
# size (0x524 bytes) and that it largely REUSES the same steering
# idiom already documented in full in `fn_801C5EBC`
# (extab_801c5ebc.s) rather than introducing new primitives:
#
# 1. Computes a speed/distance-like value (`fn_801D0DA0(this,
#    this->0x338, this->0xc)`, CONFIRMED - the raw squared-distance
#    half of the fn_801D0D50/fn_801D0DA0 remembered-position-proximity
#    pair, extab_801d0d50.s) and a boolean (`fn_801D183C(this)`, not
#    decompiled). Combines these with whether `fn_801CAED4(this,
#    this->0x338)` (CONFIRMED - a small "this->0x560 != sentinel-4 and
#    != this->0x338" distinctness test, extab_801caed4.s) returned zero
#    (checked via the classic `cntlzw`/`srwi 5` "is this word zero"
#    bit-trick) and a flag bit (`this->0x524` bit 27) - if ALL
#    conditions line up AND the computed value is below a threshold
#    (`lbl_8053EE98`), transitions to state `0x22` via `fn_801C3B7C`
#    and returns.
# 2. Otherwise, if the value exceeds a second threshold
#    (`lbl_8053EE9C`), falls through to a long steering sequence that
#    is STRUCTURALLY IDENTICAL to `fn_801C5EBC`'s: branches on the
#    CONFIRMED per-room `+0x31df` flag, and (when clear, subject to a
#    cooldown/valid-target gate) indexes `this->0x1ac + index*0xc` -
#    CORRECTED (see the CONFIRMED `fn_801D05F8`, extab_801d05f8.s):
#    this is the PER-PLAYER remembered-position array, not a generic
#    local-point table - `index` here is a player index, so this is
#    "steer relative to a tracked player's last-known position," using
#    PRNG rolls (`lbl_8053AAF8->0xb4`) against several threshold
#    constants (`lbl_8053EE70`/`78`/`80`/`88`/`9c`/`a0`) and TWO
#    boundary/side tests (`fn_801CFCF0`, CONFIRMED, extab_801cfcf0.s -
#    called with a mode argument of `0` and `1` in the two branches,
#    i.e. an X-axis nudge each way) to decide whether to snap the
#    facing angle (`this->0x33c`) a quarter-turn (`+-0x4000`) or leave
#    it for the easing helper elsewhere. fn_801CFCF0/fn_801CFD68
#    (extab_801cfd68.s) turn out to be a real "would moving this way
#    put my bounding area somewhere blocked/detected" collision probe
#    (2D-area sibling of fn_801CFA70's 1D-line sweep) - so this whole
#    branch is "only snap toward this side if it's actually clear."
#
# The exact numeric thresholds were NOT traced line-by-line - this
# reuses the SAME confirmed "steer relative to my tracked player's
# remembered position, PRNG-jittered, per-room-flag-gated" shape as
# `fn_801C5EBC`, just with a different set of entry conditions and
# thresholds. `fn_801D183C` remains undecompiled.

fn_801C6260:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    lwz 4, 0x338(3)
    addi 5, 29, 0xc
    bl fn_801D0DA0
    fmr 31, 1
    .4byte 0xC022BE54 # lfs f1, lbl_8053EDF4@sda21(r0)
    mr 3, 29
    bl fn_801D183C
    lwz 4, 0x338(29)
    mr 31, 3
    mr 3, 29
    bl fn_801CAED4
    lbz 0, 0x597(29)
    clrlwi 3, 3, 24
    cntlzw 3, 3
    cmplwi 0, 0x0
    srwi 30, 3, 5
    .4byte 0x40820040 # bne .L_801C6304
    clrlwi. 0, 31, 24
    .4byte 0x41820038 # beq .L_801C6304
    clrlwi. 0, 30, 24
    .4byte 0x41820030 # beq .L_801C6304
    lwz 0, 0x524(29)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x41820024 # beq .L_801C6304
    .4byte 0xC002BEF8 # lfs f0, lbl_8053EE98@sda21(r0)
    fcmpo cr0, 31, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_801C6304
    mr 3, 29
    li 4, 0x22
    bl fn_801C3B7C
    .4byte 0x48000460 # b .L_801C6760
L_801C6304:
    .4byte 0xC002BEFC # lfs f0, lbl_8053EE9C@sda21(r0)
    fcmpo cr0, 31, 0
    cror eq, lt, eq
    .4byte 0x40820450 # bne .L_801C6760
    lbz 0, 0x59a(29)
    cmplwi 0, 0x0
    .4byte 0x40820344 # bne .L_801C6660
    mr 3, 29
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820334 # beq .L_801C6660
    lwz 0, 0x524(29)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820328 # bne .L_801C6660
    clrlwi. 0, 30, 24
    .4byte 0x4182004C # beq .L_801C638C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BEC8 # lfs f1, lbl_8053EE68@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BED0 # lfs f0, lbl_8053EE70@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    lfs 2, 0x20(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x408002D8 # bge .L_801C6660
L_801C638C:
    lwz 30, 0x338(29)
    lwz 31, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820284 # beq .L_801C662C
    lwz 4, 0x4(29)
    addi 3, 29, 0xc
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x40820270 # bne .L_801C662C
    lha 3, 0x33c(29)
    lis 0, 0x4330
    mulli 4, 30, 0xc
    stw 0, 0x28(1)
    addi 0, 3, 0x4000
    .4byte 0xC862BEE8 # lfd f3, lbl_8053EE88@sda21(r0)
    .4byte 0xC022BED8 # lfs f1, lbl_8053EE78@sda21(r0)
    extsh 0, 0
    xoris 0, 0, 0x8000
    .4byte 0xC002BEE0 # lfs f0, lbl_8053EE80@sda21(r0)
    stw 0, 0x2c(1)
    addi 30, 4, 0x1ac
    lfd 2, 0x28(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_801C6498
    mr 3, 29
    li 4, 0x1
    bl fn_801CFCF0
    clrlwi. 0, 3, 24
    .4byte 0x40820080 # bne .L_801C6498
    lfs 1, 0xc(29)
    lfsx 0, 29, 30
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C6438
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x4800021C # b .L_801C6650
L_801C6438:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BEC8 # lfs f1, lbl_8053EE68@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF00 # lfs f0, lbl_8053EEA0@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C648C
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x480001C8 # b .L_801C6650
L_801C648C:
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x480001BC # b .L_801C6650
L_801C6498:
    lha 3, 0x33c(29)
    lis 0, 0x4330
    stw 0, 0x28(1)
    subi 0, 3, 0x4000
    .4byte 0xC862BEE8 # lfd f3, lbl_8053EE88@sda21(r0)
    extsh 0, 0
    .4byte 0xC022BED8 # lfs f1, lbl_8053EE78@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002BEE0 # lfs f0, lbl_8053EE80@sda21(r0)
    stw 0, 0x2c(1)
    lfd 2, 0x28(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_801C6568
    mr 3, 29
    li 4, 0x0
    bl fn_801CFCF0
    clrlwi. 0, 3, 24
    .4byte 0x40820080 # bne .L_801C6568
    lfs 1, 0xc(29)
    lfsx 0, 29, 30
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_801C6508
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x4800014C # b .L_801C6650
L_801C6508:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BEC8 # lfs f1, lbl_8053EE68@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF00 # lfs f0, lbl_8053EEA0@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C655C
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x480000F8 # b .L_801C6650
L_801C655C:
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x480000EC # b .L_801C6650
L_801C6568:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042BEC8 # lfs f2, lbl_8053EE68@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC002BEDC # lfs f0, lbl_8053EE7C@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800058 # bge .L_801C6604
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002BED0 # lfs f0, lbl_8053EE70@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C65F8
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x4800005C # b .L_801C6650
L_801C65F8:
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x48000050 # b .L_801C6650
L_801C6604:
    lfs 1, 0xc(29)
    lfsx 0, 29, 30
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C6620
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x48000034 # b .L_801C6650
L_801C6620:
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x48000028 # b .L_801C6650
L_801C662C:
    lha 4, 0x33c(29)
    li 3, 0x4001
    addi 0, 4, -0x8000
    sth 0, 0x33c(29)
    bl fn_801CD664
    lha 0, 0x33c(29)
    subi 3, 3, 0x2000
    add 0, 0, 3
    sth 0, 0x33c(29)
L_801C6650:
    mr 3, 29
    li 4, 0x1c
    bl fn_801C3B7C
    .4byte 0x48000104 # b .L_801C6760
L_801C6660:
    lbz 0, 0x597(29)
    cmplwi 0, 0x0
    .4byte 0x408200F8 # bne .L_801C6760
    clrlwi. 0, 30, 24
    .4byte 0x418200F0 # beq .L_801C6760
    lwz 0, 0x524(29)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x418200C4 # beq .L_801C6740
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042BEC8 # lfs f2, lbl_8053EE68@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC002BF04 # lfs f0, lbl_8053EEA4@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_801C6740
    lwz 0, 0x524(29)
    rlwinm. 0, 0, 0, 26, 26
    .4byte 0x41820060 # beq .L_801C6730
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002BF08 # lfs f0, lbl_8053EEA8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801C6720
    mr 3, 29
    li 4, 0x26
    bl fn_801C3B7C
    .4byte 0x48000044 # b .L_801C6760
L_801C6720:
    mr 3, 29
    li 4, 0x25
    bl fn_801C3B7C
    .4byte 0x48000034 # b .L_801C6760
L_801C6730:
    mr 3, 29
    li 4, 0x25
    bl fn_801C3B7C
    .4byte 0x48000024 # b .L_801C6760
L_801C6740:
    clrlwi. 0, 31, 24
    .4byte 0x4182001C # beq .L_801C6760
    lwz 0, 0x524(29)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820010 # beq .L_801C6760
    mr 3, 29
    li 4, 0x22
    bl fn_801C3B7C
L_801C6760:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

