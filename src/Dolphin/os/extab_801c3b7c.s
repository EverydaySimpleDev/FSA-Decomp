.section extab, "a"
.balign 4
.global etb_800080B0
etb_800080B0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800080B0, 8

.section extabindex, "a"
.balign 4
.global eti_80015268
eti_80015268:
    .4byte fn_801C3B7C
    .4byte 0x0000152C
    .4byte etb_800080B0
.size eti_80015268, 12

.text
.balign 4
.global fn_801C3B7C

# fn_801C3B7C(this, newState) - the CONFIRMED state-transition function
# referenced throughout every SLK2 banner in this project
# (project_fsa_slk2_orchestrator_landed.md and earlier). Landed as
# Track A (byte-matched, 0x152C = 5420 bytes - even BIGGER than
# fn_801C2ED4, the previous largest function in the project) with a
# structural overview - a full trace of all 48 per-state ENTRY bodies
# was out of scope for one session, but the architecture is solid:
#
# 1. Unconditionally calls fn_801C50A8(this) FIRST - itself another
#    large (0x298 = 664 bytes), undecompiled function with its OWN
#    32-entry jump table (`jumptable_804A4674`). Given it runs before
#    the OLD this->0x248 is overwritten, this is almost certainly an
#    "on EXIT from the current state" cleanup dispatcher, symmetric to
#    this function's "on ENTER the new state" role - a natural next
#    target, and a substantial one in its own right.
# 2. Bounds-checks `newState` (0-0x2f, 48 states) and dispatches through
#    `jumptable_804A45B4` to a per-state ENTRY setup body. Confirmed
#    common shapes across the bodies read this session:
#    - Nearly every case sets this->0x250 (the "required duration"
#      counter fn_801C2ED4 compares this->0x24c against every frame) -
#      sometimes a fixed literal, sometimes `this->0x250 = base +/-
#      fn_801CD664(N)` (CONFIRMED "random int in [0,N)" via the global
#      PRNG, extab_801cd664.s) for jittered durations.
#    - Several compute a linear interpolation: this->0x3c/0x40/0x44
#      (per-axis VELOCITY fields) derived from the delta between a
#      target position (this->0x24/0x28/0x2c) and current position
#      (this->0xc/0x10/0x14), divided by a duration-derived
#      denominator - "move to target position over this->0x250 frames."
#    - Several toggle a sub-object's active flag via
#      fn_800FEB78(&this->0x340, 0 or 1) (not decompiled - this->0x340
#      itself is read as a small integer elsewhere, so it may be a
#      mode/slot index rather than a plain bool).
#    - A recurring 16-instruction block appears verbatim at least 3
#      times: reset this->0x254/0x258/0x3c/0x40/0x44 to shared
#      constants, OR 0x100 into this->0x230, and reseed the 4 extent
#      fields this->0x60/64/68/6c (mirrored to 0x70/74/78/7c) - the
#      SAME reseed block fn_801C2ED4 also duplicates twice; clearly
#      meant to be one shared "reset to idle defaults" helper that the
#      compiler inlined repeatedly instead.
#    - Some cases branch on the OLD this->0x248 (read via
#      fn_801C0D70()... no - via a direct `lwz this->0x248` - i.e. a
#      genuine "coming FROM state X, tweak Y" special case) BEFORE it
#      gets overwritten by the common tail below - confirming this
#      really is a from-state-aware transition, not a pure to-state
#      setter.
#    - Others delegate to fn_801F0E34(this, soundOrEffectID, 0) (not
#      decompiled) or to already-confirmed helpers (GetRoomConfigRecord's
#      per-room `+0x31df` flag, fn_801C0D70's global singleton,
#      fn_80093340/fn_80214E50/fn_80214740, none decompiled this
#      session).
# 3. Shared epilogue (`.L_801C5070`, reached by every case): resets
#    this->0x24c (elapsed-timer) to 0, writes this->0x248 = newState -
#    CONFIRMS this IS the field fn_801C2ED4 reads every frame to
#    dispatch - then does the SAME "cache facing vector" tail as
#    fn_801C2ED4's own epilogue (this->0x33c angle -> ClassifyBamAngleToQuadrant ->
#    this->0x98), duplicated rather than shared.
#
# Natural next target: fn_801C50A8, the exit-state cleanup counterpart
# with its own 32-way dispatch, called unconditionally at the top of
# every transition.
fn_801C3B7C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    bl fn_801C50A8
    cmplwi 31, 0x2f
    .4byte 0x418114CC # bgt .L_801C5070
    lis 3, jumptable_804A45B4@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A45B4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x1
    stw 0, 0x250(30)
    lwz 3, 0x230(30)
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x408214A0 # bne .L_801C5070
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x41821498 # beq .L_801C5070
    bl fn_801C0D70
    lhz 0, 0x2(3)
    cmplwi 0, 0x2
    .4byte 0x41801488 # blt .L_801C5070
    li 3, 0x2d
    bl fn_801CD664
    lwz 0, 0x250(30)
    add 0, 0, 3
    stw 0, 0x250(30)
    .4byte 0x48001470 # b .L_801C5070
    bl fn_801C0D70
    lwz 0, 0x50(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801C3C20
    li 0, 0xa0
    stw 0, 0x250(30)
    .4byte 0x4800000C # b .L_801C3C28
L_801C3C20:
    li 0, 0xeb
    stw 0, 0x250(30)
L_801C3C28:
    lwz 4, 0x4(30)
    addi 3, 30, 0x4ec
    addi 5, 30, 0xc
    li 6, 0x0
    bl fn_80214740
    .4byte 0x48001434 # b .L_801C5070
    li 0, 0x1
    stb 0, 0x11d(30)
    bl fn_801C0D70
    lwz 0, 0x50(3)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801C3C68
    lfs 1, 0x10(30)
    .4byte 0xC002BE7C # lfs f0, lbl_8053EE1C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(30)
L_801C3C68:
    .4byte 0xC002BEA8 # lfs f0, lbl_8053EE48@sda21(r0)
    addi 3, 30, 0x340
    li 4, 0x4
    stfs 0, 0x44(30)
    bl fn_800FEB78
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x35
    li 5, 0x0
    bl fn_801F0E34
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418213C8 # beq .L_801C5070
    .4byte 0xC022BE80 # lfs f1, lbl_8053EE20@sda21(r0)
    .4byte 0xC002BE74 # lfs f0, lbl_8053EE14@sda21(r0)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    .4byte 0x480013AC # b .L_801C5070
    bl fn_801C0D70
    bl fn_801C11F0
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801C3CE8
    bl fn_801C0D70
    lhz 0, 0x0(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_801C3CF4
L_801C3CE8:
    li 0, 0x3c
    stw 0, 0x250(30)
    .4byte 0x4800000C # b .L_801C3CFC
L_801C3CF4:
    li 0, 0xf
    stw 0, 0x250(30)
L_801C3CFC:
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48001368 # b .L_801C5070
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820030 # beq .L_801C3D48
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820018 # beq .L_801C3D3C
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xd7
    li 5, 0x0
    bl fn_801F0E34
L_801C3D3C:
    li 0, 0x1e
    stw 0, 0x250(30)
    .4byte 0x4800003C # b .L_801C3D80
L_801C3D48:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x4182002C # beq .L_801C3D80
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820018 # beq .L_801C3D78
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x3a
    li 5, 0x0
    bl fn_801F0E34
L_801C3D78:
    li 0, 0x3c
    stw 0, 0x250(30)
L_801C3D80:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x408212E8 # bne .L_801C5070
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801C3DC0
    .4byte 0xC022BE80 # lfs f1, lbl_8053EE20@sda21(r0)
    .4byte 0xC002BE74 # lfs f0, lbl_8053EE14@sda21(r0)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
L_801C3DC0:
    bl fn_801C0D70
    psq_l 1, 0x54(3), 0, 0
    lis 0, 0x4330
    lfs 0, 0x5c(3)
    stw 0, 0x8(1)
    .4byte 0xC842BEC0 # lfd f2, lbl_8053EE60@sda21(r0)
    psq_st 1, 0xc(30), 0, 0
    .4byte 0xC062BE88 # lfs f3, lbl_8053EE28@sda21(r0)
    stfs 0, 0x14(30)
    psq_l 1, 0x54(3), 0, 0
    lfs 0, 0x5c(3)
    stw 0, 0x10(1)
    psq_st 1, 0x18(30), 0, 0
    stfs 0, 0x20(30)
    lwz 0, 0x250(30)
    lfs 1, 0x24(30)
    xoris 0, 0, 0x8000
    lfs 0, 0xc(30)
    stw 0, 0xc(1)
    fsubs 0, 1, 0
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 1, 3, 1
    fmuls 0, 1, 0
    stfs 0, 0x3c(30)
    lwz 0, 0x250(30)
    lfs 1, 0x28(30)
    xoris 0, 0, 0x8000
    lfs 0, 0x10(30)
    stw 0, 0x14(1)
    fsubs 0, 1, 0
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 1, 3, 1
    fmuls 0, 1, 0
    stfs 0, 0x40(30)
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820024 # beq .L_801C3E80
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    li 0, 0x0
    addi 3, 30, 0x340
    li 4, 0x0
    stfs 0, 0x44(30)
    sth 0, 0x33c(30)
    bl fn_800FEB78
    .4byte 0x480011F4 # b .L_801C5070
L_801C3E80:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x418211E4 # beq .L_801C5070
    lwz 4, 0x250(30)
    lis 0, 0x4330
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    lis 3, lbl_80534C00@ha
    xoris 4, 4, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC822BEC0 # lfd f1, lbl_8053EE60@sda21(r0)
    fneg 2, 0
    stw 4, 0x14(1)
    addi 3, 3, lbl_80534C00@l
    .4byte 0xC062BE98 # lfs f3, lbl_8053EE38@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fmuls 0, 3, 0
    stfs 0, 0x44(30)
    lfs 1, 0x3c(30)
    lfs 2, 0x40(30)
    bl fn_80093340
    .4byte 0xC002BEAC # lfs f0, lbl_8053EE4C@sda21(r0)
    addi 3, 30, 0x340
    li 4, 0x4
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    sth 0, 0x33c(30)
    bl fn_800FEB78
    .4byte 0x48001170 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    cmpwi 31, 0xb
    stfs 0, 0x258(30)
    stfs 0, 0x254(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    .4byte 0x41820034 # beq .L_801C3F54
    bl fn_801C0D70
    lwz 0, 0x50(3)
    srwi 0, 0, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x4082001C # bne .L_801C3F54
    lfs 0, 0x24(30)
    stfs 0, 0xc(30)
    lfs 0, 0x28(30)
    stfs 0, 0x10(30)
    lfs 0, 0x2c(30)
    stfs 0, 0x14(30)
L_801C3F54:
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41821114 # beq .L_801C5070
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48001104 # b .L_801C5070
    .4byte 0xC022BE68 # lfs f1, lbl_8053EE08@sda21(r0)
    li 0, 0x0
    .4byte 0xC002BE88 # lfs f0, lbl_8053EE28@sda21(r0)
    stfs 1, 0x254(30)
    stfs 0, 0x258(30)
    sth 0, 0x33c(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x1
    .4byte 0x418210E0 # beq .L_801C5070
    addi 3, 30, 0x340
    li 4, 0x1
    bl fn_800FEB78
    .4byte 0x480010D0 # b .L_801C5070
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x418210C4 # beq .L_801C5070
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x19b
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0xd
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    bl GetRoomConfigRecord
    li 4, 0x1
    bl ConfigRecord_SetByte_0x131f4
    .4byte 0x48001088 # b .L_801C5070
    lhz 3, 0x94(30)
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add. 0, 0, 3
    .4byte 0x4082106C # bne .L_801C5070
    lwz 4, 0x4(30)
    addi 3, 30, 0x4ec
    addi 5, 30, 0xc
    li 6, 0x1
    bl fn_80214740
    .4byte 0x48001054 # b .L_801C5070
    cmpwi 31, 0xe
    .4byte 0x40820128 # bne .L_801C414C
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820030 # beq .L_801C4060
    bl fn_801C0D70
    lwz 0, 0x50(3)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801C4054
    bl fn_801C0D70
    lhz 0, 0x0(3)
    ori 0, 0, 0x40
    sth 0, 0x0(3)
L_801C4054:
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    bl fn_8022ADE4
L_801C4060:
    li 0, 0x1
    stb 0, 0x11d(30)
    lwz 0, 0x524(30)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820034 # bne .L_801C40A4
    bl fn_801C0D70
    lwz 0, 0x50(3)
    srwi 0, 0, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x4082001C # bne .L_801C40A4
    lfs 0, 0x24(30)
    stfs 0, 0xc(30)
    lfs 0, 0x28(30)
    stfs 0, 0x10(30)
    lfs 0, 0x2c(30)
    stfs 0, 0x14(30)
L_801C40A4:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    addi 3, 30, 0x358
    .4byte 0xC042BE80 # lfs f2, lbl_8053EE20@sda21(r0)
    addi 6, 30, 0xc
    stfs 0, 0x3c(30)
    li 4, 0x0
    .4byte 0xC022BE74 # lfs f1, lbl_8053EE14@sda21(r0)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 24, 22
    stw 0, 0x230(30)
    stfs 2, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 1, 0x8c(30)
    lwz 0, 0x90(30)
    lwz 7, 0x4(30)
    extrwi 5, 0, 4, 20
    bl fn_8021425C
    addi 3, 30, 0x358
    li 4, 0x0
    bl SetCurrentSlotIndex
    li 3, 0x1a
    bl fn_801CD664
    addi 0, 3, 0x5
    addi 3, 30, 0x550
    stw 0, 0x250(30)
    bl fn_80217484
    .4byte 0x4800006C # b .L_801C41B4
L_801C414C:
    cmpwi 31, 0x10
    .4byte 0x40820044 # bne .L_801C4194
    lwz 0, 0x564(30)
    lis 3, lbl_8046A748@ha
    addi 3, 3, lbl_8046A748@l
    mulli 0, 0, 0xa
    add 3, 3, 0
    lhz 29, 0x6(3)
    lhz 0, 0x8(3)
    subf 3, 29, 0
    addi 3, 3, 0x1
    bl fn_801CD664
    add 0, 29, 3
    stw 0, 0x250(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 9, 7
    stw 0, 0x230(30)
    .4byte 0x48000024 # b .L_801C41B4
L_801C4194:
    cmpwi 31, 0xf
    .4byte 0x4082001C # bne .L_801C41B4
    li 3, 0x10
    bl fn_801CD664
    addi 0, 3, 0xf
    addi 3, 30, 0x550
    stw 0, 0x250(30)
    bl fn_80217484
L_801C41B4:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801C41D4
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
L_801C41D4:
    li 3, 0x1f
    bl fn_801CD664
    addi 3, 3, 0x46
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC822BEC0 # lfd f1, lbl_8053EE60@sda21(r0)
    li 3, 0x12d
    stw 4, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x5a4(30)
    bl fn_801CD664
    addi 0, 3, 0x12c
    li 3, 0x12c1
    sth 0, 0x5a0(30)
    bl fn_801CD664
    addi 0, 3, 0x258
    sth 0, 0x5a2(30)
    .4byte 0x48000E50 # b .L_801C5070
    lwz 0, 0x248(30)
    cmpwi 0, 0x17
    .4byte 0x41820E44 # beq .L_801C5070
    cmpwi 0, 0x18
    .4byte 0x41820E3C # beq .L_801C5070
    .4byte 0xC002BE88 # lfs f0, lbl_8053EE28@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_801C4258
    addi 3, 30, 0x340
    li 4, 0x1
    bl fn_800FEB78
L_801C4258:
    lwz 0, 0x248(30)
    cmpwi 0, 0x16
    .4byte 0x41820E10 # beq .L_801C5070
    li 3, 0x51
    bl fn_801CD664
    addi 3, 3, 0x78
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC822BEC0 # lfd f1, lbl_8053EE60@sda21(r0)
    li 0, 0x0
    stw 3, 0x14(1)
    mr 3, 30
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x5a8(30)
    stw 0, 0x2a8(30)
    bl fn_801C7F98
    mr 3, 30
    bl fn_801C7EE4
    .4byte 0x48000DC8 # b .L_801C5070
    .4byte 0xC022BE68 # lfs f1, lbl_8053EE08@sda21(r0)
    mr 3, 30
    addi 4, 30, 0xc
    li 29, 0x0
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800020 # blt .L_801C42E4
    .4byte 0xC022BE7C # lfs f1, lbl_8053EE1C@sda21(r0)
    mr 3, 30
    addi 5, 30, 0xc
    bl fn_801D0D50
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801C42E4
    li 29, 0x1
L_801C42E4:
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_801C42F8
    li 0, 0x2
    stw 0, 0x250(30)
    .4byte 0x4800000C # b .L_801C4300
L_801C42F8:
    li 0, 0x5a
    stw 0, 0x250(30)
L_801C4300:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801C4324
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
L_801C4324:
    lfs 3, 0x32c(30)
    lis 3, lbl_80534C00@ha
    lfs 1, 0xc(30)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x330(30)
    lfs 0, 0x10(30)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002BEAC # lfs f0, lbl_8053EE4C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x33c(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 15, 13
    stw 0, 0x230(30)
    .4byte 0x48000D04 # b .L_801C5070
    .4byte 0xC022BE68 # lfs f1, lbl_8053EE08@sda21(r0)
    mr 3, 30
    addi 4, 30, 0xc
    li 29, 0x0
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800020 # blt .L_801C43A8
    .4byte 0xC022BE7C # lfs f1, lbl_8053EE1C@sda21(r0)
    mr 3, 30
    addi 5, 30, 0xc
    bl fn_801D0D50
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801C43A8
    li 29, 0x1
L_801C43A8:
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_801C43BC
    li 0, 0x2
    stw 0, 0x250(30)
    .4byte 0x4800000C # b .L_801C43C4
L_801C43BC:
    li 0, 0x1e
    stw 0, 0x250(30)
L_801C43C4:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    addi 3, 30, 0x340
    li 4, 0x4
    stfs 0, 0x258(30)
    bl fn_800FEB78
    .4byte 0x48000C98 # b .L_801C5070
    .4byte 0xC022BE68 # lfs f1, lbl_8053EE08@sda21(r0)
    lis 3, lbl_80534C00@ha
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    addi 3, 3, lbl_80534C00@l
    stfs 1, 0x258(30)
    .4byte 0xC062BE88 # lfs f3, lbl_8053EE28@sda21(r0)
    fneg 0, 0
    lwz 0, 0x230(30)
    .4byte 0xC022BE84 # lfs f1, lbl_8053EE24@sda21(r0)
    ori 0, 0, 0x100
    .4byte 0xC042BEB0 # lfs f2, lbl_8053EE50@sda21(r0)
    stw 0, 0x230(30)
    fmuls 0, 1, 0
    .4byte 0xC022BE98 # lfs f1, lbl_8053EE38@sda21(r0)
    stfs 3, 0x60(30)
    fmuls 0, 1, 0
    .4byte 0xC082BEB4 # lfs f4, lbl_8053EE54@sda21(r0)
    stfs 3, 0x64(30)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 3, 0x80(30)
    stfs 3, 0x84(30)
    stfs 2, 0x88(30)
    stfs 2, 0x8c(30)
    lfs 2, 0x32c(30)
    lfs 1, 0xc(30)
    lfs 3, 0x330(30)
    fsubs 1, 2, 1
    lfs 2, 0x10(30)
    fsubs 2, 3, 2
    fmuls 1, 4, 1
    fmuls 2, 4, 2
    stfs 1, 0x3c(30)
    stfs 2, 0x40(30)
    stfs 0, 0x44(30)
    lfs 1, 0x3c(30)
    lfs 2, 0x40(30)
    bl fn_80093340
    .4byte 0xC002BEAC # lfs f0, lbl_8053EE4C@sda21(r0)
    lis 4, 0x4
    mr 3, 30
    li 5, 0x0
    fmuls 0, 1, 0
    addi 4, 4, 0x36
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x33c(30)
    bl fn_801F0E34
    .4byte 0x48000BB0 # b .L_801C5070
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    li 0, 0x0
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    cmpwi 31, 0x17
    stfs 1, 0x258(30)
    stw 0, 0x2a8(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x1100
    stw 0, 0x230(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 15, 13
    stw 0, 0x230(30)
    .4byte 0x41820B4C # beq .L_801C5070
    lwz 0, 0x58c(30)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_801C454C
    lwz 4, 0x57c(30)
    addi 3, 30, 0x4ec
    addi 5, 30, 0x580
    li 6, 0x1
    bl fn_80214740
    .4byte 0x48000B28 # b .L_801C5070
L_801C454C:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x4a
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000B10 # b .L_801C5070
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x4082000C # bne .L_801C4578
    li 0, 0x1e
    stb 0, 0x599(30)
L_801C4578:
    .4byte 0xC002BE88 # lfs f0, lbl_8053EE28@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_801C4598
    addi 3, 30, 0x340
    li 4, 0x1
    bl fn_800FEB78
L_801C4598:
    li 3, 0x10
    bl fn_801CD664
    addi 3, 3, 0x41
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC822BEC0 # lfd f1, lbl_8053EE60@sda21(r0)
    li 3, 0x0
    stw 4, 0x14(1)
    li 0, 0x1
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x5ac(30)
    stb 3, 0x595(30)
    stb 0, 0x596(30)
    .4byte 0x48000A9C # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    addi 3, 30, 0x340
    li 4, 0x4
    stfs 0, 0x258(30)
    bl fn_800FEB78
    .4byte 0xC002BEA8 # lfs f0, lbl_8053EE48@sda21(r0)
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    stfs 0, 0x44(30)
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    lwz 0, 0x230(30)
    ori 0, 0, 0x100
    stw 0, 0x230(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x2a
    .4byte 0x41820A30 # beq .L_801C5070
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x36
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000A18 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    lwz 0, 0x230(30)
    ori 0, 0, 0x100
    stw 0, 0x230(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x418209BC # beq .L_801C5070
    addi 3, 30, 0x4ec
    bl fn_80214E50
    li 0, 0x3c
    stb 0, 0x59c(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x418209A0 # beq .L_801C5070
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48000990 # b .L_801C5070
    lwz 0, 0x248(30)
    cmpwi 0, 0xd
    .4byte 0x408200D4 # bne .L_801C47C0
    li 0, 0x1
    stb 0, 0x11d(30)
    lwz 0, 0x524(30)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820034 # bne .L_801C4734
    bl fn_801C0D70
    lwz 0, 0x50(3)
    srwi 0, 0, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x4082001C # bne .L_801C4734
    lfs 0, 0x24(30)
    stfs 0, 0xc(30)
    lfs 0, 0x28(30)
    stfs 0, 0x10(30)
    lfs 0, 0x2c(30)
    stfs 0, 0x14(30)
L_801C4734:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    addi 3, 30, 0x358
    .4byte 0xC042BE80 # lfs f2, lbl_8053EE20@sda21(r0)
    addi 6, 30, 0xc
    stfs 0, 0x3c(30)
    li 4, 0x0
    .4byte 0xC022BE74 # lfs f1, lbl_8053EE14@sda21(r0)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 24, 22
    stw 0, 0x230(30)
    stfs 2, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 1, 0x8c(30)
    lwz 0, 0x90(30)
    lwz 7, 0x4(30)
    extrwi 5, 0, 4, 20
    bl fn_8021425C
    addi 3, 30, 0x358
    li 4, 0x0
    bl SetCurrentSlotIndex
L_801C47C0:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    addi 3, 30, 0x340
    .4byte 0xC042BE88 # lfs f2, lbl_8053EE28@sda21(r0)
    li 4, 0x4
    stfs 0, 0x254(30)
    .4byte 0xC022BEB0 # lfs f1, lbl_8053EE50@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x100
    stw 0, 0x230(30)
    stfs 2, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 1, 0x8c(30)
    bl fn_800FEB78
    lwz 0, 0x248(30)
    cmpwi 0, 0xd
    .4byte 0x40820098 # bne .L_801C48CC
    lhz 0, 0x94(30)
    lis 3, lbl_8052EBC0@ha
    lis 4, 0x4
    lfs 0, 0x24(30)
    slwi 0, 0, 16
    addi 7, 3, lbl_8052EBC0@l
    srawi 0, 0, 2
    .4byte 0xC022BEB8 # lfs f1, lbl_8053EE58@sda21(r0)
    addze 3, 0
    .4byte 0xC062BE68 # lfs f3, lbl_8053EE08@sda21(r0)
    addi 0, 3, 0x2000
    addi 4, 4, 0x35
    extsh 0, 0
    mr 3, 30
    neg 0, 0
    li 5, 0x0
    rlwinm 0, 0, 30, 18, 28
    add 6, 7, 0
    lfsx 5, 7, 0
    lfs 4, 0x4(6)
    fmuls 2, 1, 5
    stfs 0, 0x32c(30)
    fmuls 0, 1, 4
    lfs 1, 0x28(30)
    fmsubs 2, 3, 4, 2
    fmadds 0, 3, 5, 0
    stfs 1, 0x330(30)
    lfs 1, 0x2c(30)
    stfs 1, 0x334(30)
    lfs 1, 0x32c(30)
    fadds 1, 1, 2
    stfs 1, 0x32c(30)
    lfs 1, 0x330(30)
    fadds 0, 1, 0
    stfs 0, 0x330(30)
    bl fn_801F0E34
    .4byte 0x48000048 # b .L_801C4910
L_801C48CC:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x4182001C # beq .L_801C48F4
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x36
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000020 # b .L_801C4910
L_801C48F4:
    mr 3, 30
    bl fn_801D3320
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x36
    li 5, 0x0
    bl fn_801F0E34
L_801C4910:
    lfs 2, 0x32c(30)
    lis 3, lbl_80534C00@ha
    lfs 1, 0xc(30)
    addi 3, 3, lbl_80534C00@l
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    fsubs 3, 2, 1
    .4byte 0xC0A2BEB4 # lfs f5, lbl_8053EE54@sda21(r0)
    lfs 4, 0x330(30)
    fneg 0, 0
    lfs 2, 0x10(30)
    .4byte 0xC022BE84 # lfs f1, lbl_8053EE24@sda21(r0)
    fsubs 4, 4, 2
    .4byte 0xC042BE98 # lfs f2, lbl_8053EE38@sda21(r0)
    fmuls 0, 1, 0
    fmuls 3, 5, 3
    fmuls 1, 5, 4
    fmuls 0, 2, 0
    stfs 3, 0x3c(30)
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    lfs 1, 0x3c(30)
    lfs 2, 0x40(30)
    bl fn_80093340
    .4byte 0xC002BEAC # lfs f0, lbl_8053EE4C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x33c(30)
    .4byte 0x480006EC # b .L_801C5070
    cmpwi 31, 0x15
    .4byte 0x4082005C # bne .L_801C49E8
    .4byte 0xC022BE68 # lfs f1, lbl_8053EE08@sda21(r0)
    mr 3, 30
    addi 4, 30, 0xc
    li 29, 0x0
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800020 # blt .L_801C49C8
    .4byte 0xC022BE7C # lfs f1, lbl_8053EE1C@sda21(r0)
    mr 3, 30
    addi 5, 30, 0xc
    bl fn_801D0D50
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801C49C8
    li 29, 0x1
L_801C49C8:
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_801C49DC
    li 0, 0x2
    stw 0, 0x250(30)
    .4byte 0x48000040 # b .L_801C4A18
L_801C49DC:
    li 0, 0x1e
    stw 0, 0x250(30)
    .4byte 0x48000034 # b .L_801C4A18
L_801C49E8:
    lwz 0, 0x564(30)
    lis 3, lbl_8046A748@ha
    addi 3, 3, lbl_8046A748@l
    mulli 0, 0, 0xa
    add 3, 3, 0
    lhz 29, 0x2(3)
    lhz 0, 0x4(3)
    subf 3, 29, 0
    addi 3, 3, 0x1
    bl fn_801CD664
    add 0, 29, 3
    stw 0, 0x250(30)
L_801C4A18:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    li 0, 0x8
    .4byte 0xC042BE80 # lfs f2, lbl_8053EE20@sda21(r0)
    stfs 0, 0x254(30)
    .4byte 0xC022BE74 # lfs f1, lbl_8053EE14@sda21(r0)
    stfs 0, 0x258(30)
    stb 0, 0x34d(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 24, 22
    stw 0, 0x230(30)
    stfs 2, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 1, 0x8c(30)
    .4byte 0x480005F0 # b .L_801C5070
    .4byte 0xC022BE68 # lfs f1, lbl_8053EE08@sda21(r0)
    mr 3, 30
    addi 4, 30, 0xc
    li 29, 0x0
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800020 # blt .L_801C4ABC
    .4byte 0xC022BE7C # lfs f1, lbl_8053EE1C@sda21(r0)
    mr 3, 30
    addi 5, 30, 0xc
    bl fn_801D0D50
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801C4ABC
    li 29, 0x1
L_801C4ABC:
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_801C4AD0
    li 0, 0x2
    stw 0, 0x250(30)
    .4byte 0x4800000C # b .L_801C4AD8
L_801C4AD0:
    li 0, 0x5a
    stw 0, 0x250(30)
L_801C4AD8:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41820588 # beq .L_801C5070
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48000578 # b .L_801C5070
    li 0, 0xa
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    .4byte 0x48000560 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 5, 5
    .4byte 0x41820020 # beq .L_801C4B48
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_801C4B84
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48000040 # b .L_801C4B84
L_801C4B48:
    lis 3, lbl_80534C00@ha
    lfs 1, 0x3c(30)
    lfs 2, 0x40(30)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002BEAC # lfs f0, lbl_8053EE4C@sda21(r0)
    addi 3, 30, 0x340
    li 4, 0x5
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 5, 0x14(1)
    addi 0, 5, -0x8000
    sth 0, 0x33c(30)
    bl fn_800FEB78
L_801C4B84:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xc2
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480004D8 # b .L_801C5070
    li 3, 0x10
    bl fn_801CD664
    addi 0, 3, 0x5
    .4byte 0xC002BE88 # lfs f0, lbl_8053EE28@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_801C4BCC
    addi 3, 30, 0x340
    li 4, 0x1
    bl fn_800FEB78
L_801C4BCC:
    li 0, 0x0
    li 3, 0x15
    stw 0, 0x2a8(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x1000
    stw 0, 0x230(30)
    bl fn_801CD664
    addi 3, 3, 0x14
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC822BEC0 # lfd f1, lbl_8053EE60@sda21(r0)
    stw 3, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x5b0(30)
    .4byte 0x48000464 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    cmpwi 31, 0x23
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    .4byte 0x40820038 # bne .L_801C4C58
    mr 3, 30
    lis 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xcc
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 30, 0x340
    li 4, 0x2
    bl fn_800FEB78
    .4byte 0x48000010 # b .L_801C4C64
L_801C4C58:
    addi 3, 30, 0x340
    li 4, 0x9
    bl fn_800FEB78
L_801C4C64:
    li 0, 0x0
    stb 0, 0x594(30)
    .4byte 0x48000404 # b .L_801C5070
    cmpwi 31, 0x27
    .4byte 0x40820018 # bne .L_801C4C8C
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0x5a
    stw 0, 0x250(30)
    .4byte 0x48000014 # b .L_801C4C9C
L_801C4C8C:
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0x5a
    stw 0, 0x250(30)
L_801C4C9C:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x3
    .4byte 0x418203C4 # beq .L_801C5070
    cmpwi 0, 0x0
    .4byte 0x418203BC # beq .L_801C5070
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x480003AC # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801C4CE8
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
L_801C4CE8:
    lwz 3, 0x244(30)
    lis 4, 0x4
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    li 0, 0x0
    stw 3, 0x108(30)
    mr 3, 30
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    addi 4, 4, 0x37
    lwz 6, 0x230(30)
    li 5, 0x0
    ori 6, 6, 0x300
    stw 6, 0x230(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stw 0, 0xb0(30)
    bl fn_801F0E34
    bl fn_801C0D70
    lhz 4, 0x6(3)
    addi 0, 4, 0x1
    sth 0, 0x6(3)
    bl fn_801C0D70
    bl fn_801C1314
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801C4D90
    lwz 0, 0x230(30)
    li 4, 0xa0
    li 5, 0x0
    oris 0, 0, 0x800
    stw 0, 0x230(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134DE4
    .4byte 0x480002E4 # b .L_801C5070
L_801C4D90:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x418202D8 # beq .L_801C5070
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x3
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x480002C4 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    lwz 0, 0x230(30)
    ori 0, 0, 0x100
    stw 0, 0x230(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    .4byte 0x48000274 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    li 0, 0x0
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    sth 0, 0x33c(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x7
    .4byte 0x41820010 # beq .L_801C4E2C
    addi 3, 30, 0x340
    li 4, 0x7
    bl fn_800FEB78
L_801C4E2C:
    lwz 0, 0x230(30)
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    ori 0, 0, 0x100
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    stw 0, 0x230(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    .4byte 0x48000200 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x2b
    .4byte 0x4182000C # beq .L_801C4E94
    cmpwi 0, 0x1e
    .4byte 0x4082001C # bne .L_801C4EAC
L_801C4E94:
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801C4EAC
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
L_801C4EAC:
    lwz 0, 0x560(30)
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_801C4EC4
    li 3, 0x4
    bl fn_801CD664
    stw 3, 0x560(30)
L_801C4EC4:
    lwz 0, 0x560(30)
    addi 3, 30, 0x548
    clrlwi 4, 0, 24
    bl InitFlagBlock3c_WithFlag
    lwz 0, 0x560(30)
    cmpwi 0, 0x0
    .4byte 0x41800028 # blt .L_801C4F04
    cmpwi 0, 0x3
    .4byte 0x41810020 # bgt .L_801C4F04
    lis 3, lbl_80469450@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_80469450@l
    mr 3, 30
    lwzx 4, 4, 0
    li 5, 0x0
    bl fn_801F0E34
L_801C4F04:
    lwz 0, 0x230(30)
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    ori 0, 0, 0x100
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    stw 0, 0x230(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    .4byte 0x48000128 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    li 0, 0x0
    addi 3, 30, 0x340
    li 4, 0x8
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    sth 0, 0x33c(30)
    bl fn_800FEB78
    lwz 0, 0x230(30)
    lis 4, 0x4
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    mr 3, 30
    ori 0, 0, 0x100
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    stw 0, 0x230(30)
    addi 4, 4, 0x36
    li 5, 0x0
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    bl fn_801F0E34
    .4byte 0x480000AC # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    li 0, 0x0
    stfs 0, 0x258(30)
    sth 0, 0x33c(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x7
    .4byte 0x41820090 # beq .L_801C5070
    addi 3, 30, 0x340
    li 4, 0x7
    bl fn_800FEB78
    .4byte 0x48000080 # b .L_801C5070
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    lwz 0, 0x340(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801C5024
    addi 3, 30, 0x340
    li 4, 0x0
    bl fn_800FEB78
L_801C5024:
    lwz 3, 0x230(30)
    li 0, 0x0
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    ori 3, 3, 0x100
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    stw 3, 0x230(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stw 0, 0x2a8(30)
L_801C5070:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lha 0, 0x33c(30)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(30)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

