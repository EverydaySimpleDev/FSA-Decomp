/*
 * FIRE (burning status-effect actor) cluster, part 4/9 - per-mode tick.
 * Track A (byte-exact asm) + structural overview.
 *
 * fn_802BAE78(this): dispatches on this->0x264 (mode 0-6ish). Mode 0:
 * snaps this->0xc/0x10 (position) to a fixed-point grid cell (the
 * classic "snap to tile grid" idiom - __cvt_fp2unsigned + clear low 4
 * bits) then applies an orientation-dependent offset (this->0x98, one
 * of 4 directions) - aligning the fire to a tile edge facing outward.
 * Modes 3/4: if room<8, just clears this->0x11c. Other modes: restores
 * position from the cached this->0x248/0x250 (the same snapshot
 * fn_802BAB80, part 1/9, reads) and clears this->0x11c.
 *
 * Then calls the confirmed nearby-ICEB check fn_802BACE4 (part 3/9); if
 * ice is nearby, skips straight to the tail (fire suppressed). Mode 5
 * (with this->0x291 unset): if room<8, spawns an effect (code 0x19d);
 * if room>=8, spawns the confirmed actor code **"KMRI"** (0x4B4D5249 -
 * the same mystery code resolved in [[project_fsa_door_key0_full_depth]])
 * via the confirmed fn_801F9484 dispatcher. Other modes/gate states:
 * spawn a "BLZE" burst instead (same 3-variant flag pattern as the
 * confirmed fn_802BABEC, part 2/9, inlined here rather than shared).
 * Tail (mode-0, room<8 only): retires both effect slots (this->0x230/
 * 0x234) via the confirmed cull idiom.
 */
.section extab, "a"
.balign 4
.global etb_8000C8B4
etb_8000C8B4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C8B4, 8

.section extabindex, "a"
.balign 4
.global eti_8001B688
eti_8001B688:
    .4byte fn_802BAE78
    .4byte 0x00000380
    .4byte etb_8000C8B4
.size eti_8001B688, 12

.text
.balign 4
.global fn_802BAE78

fn_802BAE78:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x264(3)
    cmpwi 0, 0x3
    .4byte 0x418202C4 # beq .L_802BB160
    cmpwi 0, 0x4
    .4byte 0x418202BC # beq .L_802BB160
    cmpwi 0, 0x0
    .4byte 0x40820184 # bne .L_802BB030
    lfs 1, 0xc(31)
    bl __cvt_fp2unsigned
    clrrwi 3, 3, 4
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC822DBD0 # lfd f1, lbl_80540B70@sda21(r0)
    stw 3, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lfs 1, 0x10(31)
    bl __cvt_fp2unsigned
    clrrwi 3, 3, 4
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC822DBD0 # lfd f1, lbl_80540B70@sda21(r0)
    stw 3, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x10(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820068 # beq .L_802BAF78
    .4byte 0x40800014 # bge .L_802BAF28
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BAF34
    .4byte 0x40800038 # bge .L_802BAF58
    .4byte 0x48000094 # b .L_802BAFB8
L_802BAF28:
    cmpwi 0, 0x4
    .4byte 0x4080008C # bge .L_802BAFB8
    .4byte 0x4800006C # b .L_802BAF9C
L_802BAF34:
    lfs 2, 0xc(31)
    .4byte 0xC022DBC0 # lfs f1, lbl_80540B60@sda21(r0)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000064 # b .L_802BAFB8
L_802BAF58:
    lfs 0, 0xc(31)
    .4byte 0xC022DBB0 # lfs f1, lbl_80540B50@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    .4byte 0x48000044 # b .L_802BAFB8
L_802BAF78:
    lfs 2, 0xc(31)
    .4byte 0xC022DBB0 # lfs f1, lbl_80540B50@sda21(r0)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000020 # b .L_802BAFB8
L_802BAF9C:
    lfs 0, 0xc(31)
    .4byte 0xC022DBB0 # lfs f1, lbl_80540B50@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fsubs 0, 0, 1
    stfs 0, 0x10(31)
L_802BAFB8:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_802BB024
    lwz 3, 0x4(31)
    cmpwi 3, 0x8
    .4byte 0x40800028 # bge .L_802BAFF4
    .4byte 0xC022DBC8 # lfs f1, lbl_80540B68@sda21(r0)
    addi 4, 31, 0xc
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802BAFF4:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_802BB00C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000040 # b .L_802BB048
L_802BB00C:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x26c(31)
    stw 0, 0x270(31)
    .4byte 0x48000028 # b .L_802BB048
L_802BB024:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800001C # b .L_802BB048
L_802BB030:
    psq_l 1, 0x248(31), 0, 0
    li 0, 0x0
    lfs 0, 0x250(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stb 0, 0x11c(31)
L_802BB048:
    mr 3, 31
    bl fn_802BACE4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820184 # beq .L_802BB1DC
    lwz 0, 0x264(31)
    li 29, 0x0
    cmpwi 0, 0x5
    .4byte 0x40820008 # bne .L_802BB070
    li 29, 0x4
L_802BB070:
    cmpwi 0, 0x5
    .4byte 0x40820070 # bne .L_802BB0E4
    lbz 0, 0x291(31)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_802BB0E4
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x40800030 # bge .L_802BB0BC
    .4byte 0xC022DBC8 # lfs f1, lbl_80540B68@sda21(r0)
    mr 3, 30
    addi 4, 31, 0xc
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000D4 # b .L_802BB18C
L_802BB0BC:
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 30
    addi 4, 4, 0x5249
    addi 6, 31, 0xc
    li 7, 0x6
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000AC # b .L_802BB18C
L_802BB0E4:
    lwz 30, 0x260(31)
    cmpwi 30, 0x0
    .4byte 0x4080003C # bge .L_802BB128
    bl SpatialRegistry_GetBase
    lwz 4, 0x98(31)
    lis 7, 0x424c
    slwi 0, 29, 6
    lwz 5, 0x4(31)
    slwi 6, 4, 4
    addi 4, 7, 0x5a45
    or 0, 6, 0
    addi 6, 31, 0xc
    ori 7, 0, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000068 # b .L_802BB18C
L_802BB128:
    bl SpatialRegistry_GetBase
    lwz 4, 0x98(31)
    lis 6, 0x424c
    slwi 0, 29, 6
    lwz 5, 0x4(31)
    slwi 4, 4, 4
    lwz 9, 0x110(31)
    or 0, 4, 0
    addi 4, 6, 0x5a45
    addi 6, 31, 0xc
    li 8, -0x1
    or 7, 30, 0
    bl fn_801F9484
    .4byte 0x48000030 # b .L_802BB18C
L_802BB160:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_802BB178
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000018 # b .L_802BB18C
L_802BB178:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x26c(31)
    stw 0, 0x270(31)
L_802BB18C:
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802BB1B4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(31)
L_802BB1B4:
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802BB1DC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(31)
L_802BB1DC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

