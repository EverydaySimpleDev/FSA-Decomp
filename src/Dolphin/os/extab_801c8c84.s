.section extab, "a"
.balign 4
.global etb_800081B8
etb_800081B8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_800081B8, 8

.section extabindex, "a"
.balign 4
.global eti_800153B8
eti_800153B8:
    .4byte fn_801C8C84
    .4byte 0x000005B0
    .4byte etb_800081B8
.size eti_800153B8, 12

.text
.balign 4
.global fn_801C8C84

# fn_801C8C84(this, exact, allowRefresh) - the "acquire/refresh my RAIL
# movement target" query fn_801C8B50 calls as `(this,0,0)`. Every
# instruction was read; the shape (not literal C) is summarized below,
# since several called helpers (fn_801C9234, fn_801CAEF4) remain
# undecompiled and their exact roles are inferred from usage.
#
# `exact == 0` path (the actual call site's case):
# 1. Always seeds a baseline target (this->0x32c/0x330/0x334) from the
#    ring-tracker's (&this->0x358) CURRENT position via RAIL's
#    CONFIRMED fn_800FE294(ringObj, 0xff) (project_fsa_rail_actor_identified.md).
# 2. If the current room is config-restricted (GetRoomConfigRecord()->0x31df,
#    CONFIRMED): bails immediately unless the ring's own room
#    (fn_800FE25C(ringObj,0xff), new) matches this->0x4 AND RAIL's
#    CONFIRMED fn_800FD548(ringObj,0xff) gate passes. If both hold,
#    computes a cardinal-offset candidate point via the CONFIRMED
#    fn_801CC9F8 (extab_801cc9f8.s) fed by the ring position; if
#    fn_801CC9F8 says yes AND the CONFIRMED fn_8022461C terrain/hazard
#    classifier (project_fsa_player_proximity_helpers.md) reports clear,
#    uses that offset candidate as the final target; otherwise uses the
#    offset candidate's X/Z but SNAPS THE HEIGHT to this actor's own
#    current height (this->0x10) rather than the ring's stored height.
# 3. If the room is NOT restricted (the common case) and `allowRefresh`
#    is 0: checks whether this actor either already has this->0x230 bit
#    10 set, or is currently AT a valid waypoint per RAIL's CONFIRMED
#    fn_800FD5E8 "arrival" test (project_fsa_slk2_rail_riding_core.md).
#    If neither (and this->0x524 bit 23 permits a fallback check), also
#    tries the SAME forward/backward-neighbor-adjacency peek used in
#    fn_801C71BC (extab_801c71bc.s) via fn_800FD5E8. If none of this
#    confirms "I'm near a real waypoint," the baseline target from step
#    1 stands unchanged and the function returns.
# 4. Otherwise (confirmed near a waypoint): jitters the baseline target
#    by a PRNG-scaled offset per axis (lbl_8053EEC8/8053EF04/8053EED4
#    constants, CONFIRMED global PRNG lbl_8053AAF8), then validates the
#    JITTERED point via the not-yet-decompiled fn_801CAEF4(this,
#    &this->0x32c, this->0x4) - if that fails, the (now-jittered, unused)
#    fields are simply left as-is and the function returns; if it
#    succeeds, the PRE-jitter baseline snapshot (saved before jittering)
#    is restored as the final target instead of the jittered point -
#    i.e. the jitter appears to serve as a probe/validation offset for
#    fn_801CAEF4 rather than the actual destination, though fn_801CAEF4's
#    real contract isn't confirmed.
#
# `exact != 0` path: gated by the this->0x59b cooldown timer (one of
# fn_801C2ED4's 5 CONFIRMED saturating per-frame timers, extab_801c2ed4.s)
# and the same room-restriction/waypoint-arrival checks as above. When
# it proceeds: calls the not-yet-decompiled fn_801C9234(this, &local) to
# compute a candidate point, and - if this->0x524 bit 20 is set and
# this->0x230 bits 6/11 are clear and the CONFIRMED fn_801CF888
# line-of-sight sweep (project_fsa_slk2_area_probe_closed.md) reports
# the path to the CURRENT target is obstructed - retries the SAME
# forward/backward neighbor-hop recovery as fn_801C71BC before falling
# through. Either way, records both the OLD point (stack) and the
# actor's OWN current target into the CONFIRMED 16-slot position-history
# ring buffer (this->0x2ac, project_fsa_slk2_target_selection_solved.md
# - previously thought player-history-only; this confirms SLK2 also
# uses that SAME base-class buffer for its own rail-point history), then
# commits fn_801C9234's candidate as the new target (this->0x32c/0x330,
# height fixed to lbl_8053EEF4), recomputes facing via the CONFIRMED
# fn_801D02E0 (extab_801d02e0.s), and sets/clears a couple this->0x230
# flag bits.
fn_801C8C84:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    clrlwi. 0, 4, 24
    stmw 27, 0x6c(1)
    mr 31, 3
    mr 27, 5
    .4byte 0x40820300 # bne .L_801C8FA0
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x44
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0x44(1)
    stfs 0, 0x32c(31)
    lfs 0, 0x48(1)
    stfs 0, 0x330(31)
    lfs 0, 0x4c(1)
    stfs 0, 0x334(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200C0 # beq .L_801C8DAC
    lwz 29, 0x4(31)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FE25C
    cmpw 29, 3
    .4byte 0x40820518 # bne .L_801C9220
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD548
    clrlwi. 0, 3, 24
    .4byte 0x40820500 # bne .L_801C9220
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x38
    li 5, 0xff
    bl fn_800FE294
    psq_l 1, 0x38(1), 0, 0
    addi 3, 31, 0xc
    lfs 0, 0x40(1)
    psq_st 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801C8D90
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x40820020 # bne .L_801C8D90
    lfs 0, 0x2c(1)
    stfs 0, 0x32c(31)
    lfs 0, 0x30(1)
    stfs 0, 0x330(31)
    lfs 0, 0x34(1)
    stfs 0, 0x334(31)
    .4byte 0x48000494 # b .L_801C9220
L_801C8D90:
    lfs 2, 0x34(1)
    lfs 1, 0x10(31)
    lfs 0, 0x2c(1)
    stfs 0, 0x32c(31)
    stfs 1, 0x330(31)
    stfs 2, 0x334(31)
    .4byte 0x48000478 # b .L_801C9220
L_801C8DAC:
    clrlwi. 0, 27, 24
    .4byte 0x40820470 # bne .L_801C9220
    lwz 0, 0x230(31)
    li 29, 0x0
    rlwinm. 0, 0, 0, 10, 10
    .4byte 0x40820028 # bne .L_801C8DE8
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    mr 30, 3
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x3(30)
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801C8DF0
L_801C8DE8:
    li 29, 0x1
    .4byte 0x480000D4 # b .L_801C8EC0
L_801C8DF0:
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x418200C8 # beq .L_801C8EC0
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 30, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801C8E3C
    stb 30, 0x3(3)
L_801C8E3C:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 27, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 30, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C8E74
    stb 30, 0x3(3)
L_801C8E74:
    addic. 0, 1, 0xb
    .4byte 0x41820008 # beq .L_801C8E80
    stb 27, 0xb(1)
L_801C8E80:
    addic. 0, 1, 0xc
    .4byte 0x41820008 # beq .L_801C8E8C
    stb 28, 0xc(1)
L_801C8E8C:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xb(1)
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_801C8EBC
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xc(1)
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801C8EC0
L_801C8EBC:
    li 29, 0x1
L_801C8EC0:
    clrlwi. 0, 29, 24
    .4byte 0x4082035C # bne .L_801C9220
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 6, 3, 0x660d
    addi 4, 31, 0x32c
    lwz 0, 0xb4(7)
    mr 3, 31
    psq_l 1, 0x0(4), 0, 0
    mullw 5, 0, 6
    lfs 0, 0x334(31)
    .4byte 0xC042BF28 # lfs f2, lbl_8053EEC8@sda21(r0)
    psq_st 1, 0x50(1), 0, 0
    .4byte 0xC062BF64 # lfs f3, lbl_8053EF04@sda21(r0)
    .4byte 0xC082BF34 # lfs f4, lbl_8053EED4@sda21(r0)
    addis 5, 5, 0x3c6f
    stfs 0, 0x58(1)
    subi 0, 5, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    lfs 0, 0x32c(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 1, 1, 2
    fmsubs 1, 3, 1, 2
    fmadds 0, 4, 1, 0
    stfs 0, 0x32c(31)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(7)
    mullw 5, 0, 6
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    lfs 0, 0x330(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 1, 1, 2
    fmsubs 1, 3, 1, 2
    fmadds 0, 4, 1, 0
    stfs 0, 0x330(31)
    lwz 5, 0x4(31)
    bl fn_801CAEF4
    clrlwi. 0, 3, 24
    .4byte 0x418202A0 # beq .L_801C9220
    lfs 0, 0x50(1)
    lfs 1, 0x54(1)
    stfs 0, 0x32c(31)
    lfs 0, 0x58(1)
    stfs 1, 0x330(31)
    stfs 0, 0x334(31)
    .4byte 0x48000284 # b .L_801C9220
L_801C8FA0:
    lbz 0, 0x59b(31)
    li 29, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_801C8FF0
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801C8FF0
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820020 # beq .L_801C8FF4
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801C8FF4
L_801C8FF0:
    li 29, 0x0
L_801C8FF4:
    clrlwi. 0, 29, 24
    .4byte 0x41820228 # beq .L_801C9220
    mr 3, 31
    addi 4, 1, 0x18
    bl fn_801C9234
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 20, 20
    .4byte 0x41820170 # beq .L_801C9180
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 6, 6
    .4byte 0x40820164 # bne .L_801C9180
    rlwinm. 0, 3, 0, 11, 11
    .4byte 0x4082015C # bne .L_801C9180
    lwz 6, 0x4(31)
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 31, 0x32c
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x41820140 # beq .L_801C9180
    addi 3, 31, 0x358
    li 29, 0x0
    bl GetCurrentSlotPtr
    lbz 27, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 27, 0
    .4byte 0x40800008 # bge .L_801C9088
    stb 27, 0x3(3)
L_801C9088:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 30, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 27, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C90C0
    stb 27, 0x3(3)
L_801C90C0:
    addic. 0, 1, 0x8
    .4byte 0x41820008 # beq .L_801C90CC
    stb 30, 0x8(1)
L_801C90CC:
    addic. 0, 1, 0x9
    .4byte 0x41820008 # beq .L_801C90D8
    stb 27, 0x9(1)
L_801C90D8:
    addic. 0, 1, 0xa
    .4byte 0x41820008 # beq .L_801C90E4
    stb 28, 0xa(1)
L_801C90E4:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x9(1)
    lbz 5, 0x8(1)
    bl fn_800FD4C0
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_801C911C
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x9(1)
    lbz 5, 0xa(1)
    bl fn_800FD4C0
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_801C9178
L_801C911C:
    li 0, 0x0
    lis 3, 0xfffe
    stw 0, 0x2a8(31)
    subi 0, 3, 0x1001
    addi 3, 31, 0x358
    lwz 4, 0x230(31)
    and 0, 4, 0
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    oris 0, 0, 0x40
    stw 0, 0x230(31)
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x20
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0x20(1)
    li 29, 0x1
    stfs 0, 0x32c(31)
    lfs 0, 0x24(1)
    stfs 0, 0x330(31)
    lfs 0, 0x28(1)
    stfs 0, 0x334(31)
L_801C9178:
    clrlwi. 0, 29, 24
    .4byte 0x408200A4 # bne .L_801C9220
L_801C9180:
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x10
    .4byte 0x40800028 # bge .L_801C91B0
    slwi 0, 0, 3
    lfs 0, 0x18(1)
    add 3, 31, 0
    stfs 0, 0x2ac(3)
    lfs 0, 0x1c(1)
    stfs 0, 0x2b0(3)
    lwz 3, 0x2a8(31)
    addi 0, 3, 0x1
    stw 0, 0x2a8(31)
L_801C91B0:
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x10
    .4byte 0x40800028 # bge .L_801C91E0
    slwi 0, 0, 3
    lfs 0, 0x32c(31)
    add 3, 31, 0
    stfs 0, 0x2ac(3)
    lfs 0, 0x330(31)
    stfs 0, 0x2b0(3)
    lwz 3, 0x2a8(31)
    addi 0, 3, 0x1
    stw 0, 0x2a8(31)
L_801C91E0:
    lfs 2, 0x1c(1)
    mr 3, 31
    lfs 1, 0x18(1)
    addi 4, 31, 0x32c
    .4byte 0xC002BF54 # lfs f0, lbl_8053EEF4@sda21(r0)
    stfs 1, 0x32c(31)
    stfs 2, 0x330(31)
    stfs 0, 0x334(31)
    bl fn_801D02E0
    sth 3, 0x33c(31)
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 15, 13
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    ori 0, 0, 0x1000
    stw 0, 0x230(31)
L_801C9220:
    lmw 27, 0x6c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
