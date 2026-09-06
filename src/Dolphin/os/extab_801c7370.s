.section extab, "a"
.balign 4
.global etb_80008170
etb_80008170:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008170, 8

.section extabindex, "a"
.balign 4
.global eti_8001534C
eti_8001534C:
    .4byte fn_801C7370
    .4byte 0x00000630
    .4byte etb_80008170
.size eti_8001534C, 12

.text
.balign 4
.global fn_801C7370

# fn_801C7370(this, hasCollided) - the master per-frame "drive rail
# movement" body. Called directly by fn_801C2ED4's orchestrator
# (extab_801c2ed4.s: `mr r3,r30; mr r4,r31; bl fn_801C7370` - r31
# there IS this function's own `hasCollided` argument, confirming the
# call chain). The LARGEST function in this batch (0x630 = 1584
# bytes); landed as Track A + overview - every branch was read, but
# several exact bit-flag meanings are inferred from usage rather than
# proven:
#
# 1. Unless this->0x230 bit 6 is set: calls the CONFIRMED
#    Slk2_RailGuardAlwaysFalse (extab_801c5340.s, an always-false stub) - the "true"
#    side transitions to state 0x1e and is effectively dead code given
#    that confirmed behavior. Then: if this->0x230 bit 9 is set,
#    transitions to state 0x12. Then: if the saturating counter
#    this->0x55c (CONFIRMED, extab_801c2ed4.s) has reached 30+ AND the
#    CONFIRMED hop-count this->0x55d (extab_801c8bc4.s) is exactly 1,
#    PRNG-rolls (lbl_8053EECC threshold) to possibly clear the hop
#    count to 0 - "randomly abandon the last hop after being docked."
# 2. Calls the not-yet-decompiled fn_801C53C4(this) -> r31. If NOT
#    docked (bit 6 clear) and r31 is false and the hop count is 0:
#    queries a target via the CONFIRMED fn_801D05F8 (with a
#    this->0x5a8 threshold override) and transitions to state 0xf if
#    none qualifies.
# 3. Same shape again with the CONFIRMED this->0x598 cooldown timer
#    and a different threshold (lbl_8053EED0): if a target DOES
#    qualify, transitions to state 0x1b.
# 4. Calls the CONFIRMED fn_801C7BD0 "arrived, advance" handler
#    (extab_801c7bd0.s) -> r28. If this->0x524's flag bit is set and
#    the actor is confirmed AT a waypoint (RAIL's CONFIRMED
#    fn_800FD5E8), plays a positional sound effect via the new
#    fn_8029E248(soundBank=lbl_8053AC98, point*, roomID), retrying with
#    a height-adjusted point (lbl_8053EED4) if the first call fails.
# 5. If the ring's current room (fn_800FE25C) does NOT match mine:
#    delegates to the CONFIRMED fn_801C79A0 cross-room teleport
#    (extab_801c79a0.s) and returns immediately.
# 6. If it DOES match and r28 (arrived+advanced) is true: decrements
#    the hop count if nonzero; if RAIL's fn_800FD548 gate fails,
#    transitions to state 0x12; otherwise validates the ring's
#    position via the CONFIRMED fn_801CCB1C room-containment test
#    (extab_801c887c.s) - if it FAILS, does a full re-acquire via the
#    CONFIRMED fn_801C8B50, and (gated by the CONFIRMED fn_801D0DD4
#    and a this->0x524 flag bit) may also peek the forward/backward
#    ring neighbors and snap the facing angle a quarter-turn toward
#    whichever neighbor is confirmed in-room (with PRNG fallbacks at
#    each step, mirroring this cluster's usual peek/tie-break idiom),
#    finally transitioning to state 0x1c.
# 7. If r28 was false (not yet arrived): optionally refreshes the
#    target via the CONFIRMED fn_801C8C84(this,1,0), then always
#    recomputes facing via the CONFIRMED fn_801D02E0 - easing toward it
#    smoothly via the CONFIRMED fn_801CD930 if this->0x230 bit 14 is
#    set, else snapping directly.
# 8. A periodic "every 30th frame" check (mod-30 reciprocal-multiply
#    idiom) that, when NOT currently colliding (`hasCollided` false),
#    re-queries a target via fn_801D05F8 and compares the ACTUAL
#    facing (fn_801D0280, not decompiled - likely a "get current
#    facing" accessor) against this->0x33c; if the deviation exceeds a
#    threshold (lbl_8053EEE0/E4), calls fn_801C8B50 to fully
#    re-acquire - "periodically check if I've drifted too far off my
#    intended heading and, if so, start over."
fn_801C7370:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stmw 27, 0x5c(1)
    mr 29, 3
    mr 30, 4
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x408200BC # bne .L_801C744C
    bl Slk2_RailGuardAlwaysFalse
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801C73BC
    lwz 0, 0x230(29)
    mr 3, 29
    li 4, 0x1e
    oris 0, 0, 0x200
    stw 0, 0x230(29)
    bl fn_801C3B7C
    .4byte 0x480005D4 # b .L_801C798C
L_801C73BC:
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 9, 9
    .4byte 0x41820020 # beq .L_801C73E4
    lwz 0, 0x230(29)
    mr 3, 29
    li 4, 0x12
    rlwinm 0, 0, 0, 10, 8
    stw 0, 0x230(29)
    bl fn_801C3B7C
    .4byte 0x480005AC # b .L_801C798C
L_801C73E4:
    lbz 0, 0x55c(29)
    cmplwi 0, 0x1e
    .4byte 0x41800060 # blt .L_801C744C
    lbz 0, 0x55d(29)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_801C744C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF2C # lfs f0, lbl_8053EECC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 2, 0x18(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801C744C
    li 0, 0x0
    stb 0, 0x55d(29)
L_801C744C:
    mr 3, 29
    bl fn_801C53C4
    lwz 0, 0x230(29)
    mr 31, 3
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x40820040 # bne .L_801C74A0
    clrlwi. 0, 31, 24
    .4byte 0x40820038 # bne .L_801C74A0
    lbz 0, 0x55d(29)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_801C74A0
    lfs 1, 0x5a8(29)
    mr 3, 29
    addi 4, 29, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_801C74A0
    mr 3, 29
    li 4, 0xf
    bl fn_801C3B7C
    .4byte 0x480004F0 # b .L_801C798C
L_801C74A0:
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x40820040 # bne .L_801C74E8
    clrlwi. 0, 31, 24
    .4byte 0x40820038 # bne .L_801C74E8
    lbz 0, 0x598(29)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_801C74E8
    .4byte 0xC022BF30 # lfs f1, lbl_8053EED0@sda21(r0)
    mr 3, 29
    addi 4, 29, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_801C74E8
    mr 3, 29
    li 4, 0x1b
    bl fn_801C3B7C
    .4byte 0x480004A8 # b .L_801C798C
L_801C74E8:
    mr 3, 29
    bl fn_801C7BD0
    lwz 0, 0x524(29)
    mr 28, 3
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x41820064 # beq .L_801C7560
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_801C7560
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 5, 0x4(29)
    bl fn_8029E248
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_801C7560
    lfs 1, 0x10(29)
    addi 4, 1, 0x34
    .4byte 0xC002BF34 # lfs f0, lbl_8053EED4@sda21(r0)
    lwz 5, 0x4(29)
    fsubs 1, 1, 0
    lfs 2, 0x14(29)
    lfs 0, 0xc(29)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 0, 0x34(1)
    stfs 1, 0x38(1)
    stfs 2, 0x3c(1)
    bl fn_8029E248
L_801C7560:
    lwz 27, 0x4(29)
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x41820010 # beq .L_801C7588
    mr 3, 29
    bl fn_801C79A0
    .4byte 0x48000408 # b .L_801C798C
L_801C7588:
    clrlwi. 0, 28, 24
    .4byte 0x41820300 # beq .L_801C788C
    lbz 3, 0x55d(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801C75A4
    subi 0, 3, 0x1
    stb 0, 0x55d(29)
L_801C75A4:
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD548
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801C75CC
    mr 3, 29
    li 4, 0x12
    bl fn_801C3B7C
    .4byte 0x480003C4 # b .L_801C798C
L_801C75CC:
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x40
    li 5, 0xff
    bl fn_800FE294
    lwz 4, 0x4(29)
    addi 3, 1, 0x40
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x418202B0 # beq .L_801C78A4
    mr 3, 29
    bl fn_801C8B50
    mr 3, 29
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820380 # beq .L_801C798C
    lwz 0, 0x524(29)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820374 # bne .L_801C798C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
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
    .4byte 0x4080032C # bge .L_801C798C
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 27, 0x3(3)
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 27, 0
    .4byte 0x40800008 # bge .L_801C76A4
    stb 27, 0x3(3)
L_801C76A4:
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 30, 0x3(3)
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 27, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C76DC
    stb 27, 0x3(3)
L_801C76DC:
    addic. 0, 1, 0x8
    .4byte 0x41820008 # beq .L_801C76E8
    stb 30, 0x8(1)
L_801C76E8:
    addic. 0, 1, 0x9
    .4byte 0x41820008 # beq .L_801C76F4
    stb 28, 0x9(1)
L_801C76F4:
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x1(3)
    cmplwi 0, 0x0
    .4byte 0x418200C0 # beq .L_801C77C4
    lwz 27, 0x4(29)
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x8(1)
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x40820044 # bne .L_801C7764
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0x8(1)
    mr 4, 3
    addi 3, 1, 0x1c
    bl fn_800FE294
    lfs 1, 0x1c(1)
    lfs 0, 0xc(29)
    fcmpo cr0, 0, 1
    .4byte 0x40800010 # bge .L_801C7758
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x48000128 # b .L_801C787C
L_801C7758:
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x4800011C # b .L_801C787C
L_801C7764:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
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
    .4byte 0x40800010 # bge .L_801C77B8
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x480000C8 # b .L_801C787C
L_801C77B8:
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x480000BC # b .L_801C787C
L_801C77C4:
    lwz 27, 0x4(29)
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x9(1)
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x40820044 # bne .L_801C7820
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0x9(1)
    mr 4, 3
    addi 3, 1, 0x28
    bl fn_800FE294
    lfs 1, 0x28(1)
    lfs 0, 0xc(29)
    fcmpo cr0, 0, 1
    .4byte 0x40800010 # bge .L_801C7814
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x4800006C # b .L_801C787C
L_801C7814:
    li 0, -0x4000
    sth 0, 0x33c(29)
    .4byte 0x48000060 # b .L_801C787C
L_801C7820:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C7874
    li 0, 0x4000
    sth 0, 0x33c(29)
    .4byte 0x4800000C # b .L_801C787C
L_801C7874:
    li 0, -0x4000
    sth 0, 0x33c(29)
L_801C787C:
    mr 3, 29
    li 4, 0x1c
    bl fn_801C3B7C
    .4byte 0x48000104 # b .L_801C798C
L_801C788C:
    clrlwi. 0, 30, 24
    .4byte 0x41820014 # beq .L_801C78A4
    mr 3, 29
    li 4, 0x1
    li 5, 0x0
    bl fn_801C8C84
L_801C78A4:
    mr 3, 29
    addi 4, 29, 0x32c
    bl fn_801D02E0
    lwz 0, 0x230(29)
    mr 4, 3
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x41820018 # beq .L_801C78D4
    addi 3, 29, 0x33c
    extsh 4, 4
    li 5, 0x500
    bl fn_801CD930
    .4byte 0x48000008 # b .L_801C78D8
L_801C78D4:
    sth 4, 0x33c(29)
L_801C78D8:
    lis 3, 0x8889
    lwz 4, 0x24c(29)
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 4
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x1e
    subf. 0, 0, 4
    .4byte 0x4082008C # bne .L_801C798C
    clrlwi. 0, 31, 24
    .4byte 0x40820084 # bne .L_801C798C
    .4byte 0xC022BF3C # lfs f1, lbl_8053EEDC@sda21(r0)
    mr 3, 29
    addi 4, 29, 0xc
    li 28, 0x0
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800058 # blt .L_801C797C
    mr 3, 29
    bl fn_801D0280
    lha 4, 0x33c(29)
    extsh 3, 3
    lis 0, 0x4330
    .4byte 0xC862BF48 # lfd f3, lbl_8053EEE8@sda21(r0)
    subf 3, 3, 4
    stw 0, 0x50(1)
    extsh 0, 3
    .4byte 0xC022BF40 # lfs f1, lbl_8053EEE0@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002BF44 # lfs f0, lbl_8053EEE4@sda21(r0)
    stw 0, 0x54(1)
    lfd 2, 0x50(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801C797C
    li 28, 0x1
L_801C797C:
    clrlwi. 0, 28, 24
    .4byte 0x4182000C # beq .L_801C798C
    mr 3, 29
    bl fn_801C8B50
L_801C798C:
    lmw 27, 0x5c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr
