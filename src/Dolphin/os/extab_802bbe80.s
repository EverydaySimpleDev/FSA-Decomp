/*
 * FIRE (burning status-effect actor) cluster, part 8/9 - setParams().
 * Track A (byte-exact asm) + structural overview - an elaborate
 * orientation+mode-dependent configuration function.
 *
 * fn_802BBE80(this): unpacks the raw spawn parameter into this->0x284
 * (1-bit), this->0x98 (2-bit orientation), this->0x260 (2-bit mode,
 * normalized to -1 for one sentinel value), this->0x292 (1-bit),
 * this->0x264 (4-bit "mode" 0-15) and this->0x268 (4-bit "sub-mode").
 * For this->0x268<2: reads a per-room enable byte via the confirmed
 * GetRoomConfigRecord (offset 0x31df into the config record) and picks between
 * 2 sets of direction-vector constants (this->0x60/64/68/6c and
 * this->0x80/84/88/8c) by orientation; for this->0x268>=2, uses a THIRD
 * constant set for both. A further orientation+mode switch sets a
 * second direction triple (this->0x23c/0x240/0x244) and a sprite/anim
 * selector (this->0x26c) from an elaborate combination of constant
 * tables. Mode 5 overrides this->0x280=5, replaces the direction
 * triple, and nudges position by a small per-orientation offset. For
 * other modes (room<8), applies ANOTHER positional nudge layer (keyed
 * by this->0x268) before spawning the 2 standard effect slots (the
 * confirmed fn_8013CC50, codes 0x19b/0x19c) with per-orientation
 * parameters applied via fn_800EF008 using the `lbl_8046D388` lookup
 * table shared with the core update() (part 6/9). Finally resets all
 * per-frame counters/flags and queues cue 0x334.
 */
.section extab, "a"
.balign 4
.global etb_8000C8D4
etb_8000C8D4:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000C8D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001B6B8
eti_8001B6B8:
    .4byte fn_802BBE80
    .4byte 0x00000798
    .4byte etb_8000C8D4
.size eti_8001B6B8, 12

.text
.balign 4
.global fn_802BBE80

fn_802BBE80:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 31, 3
    li 0, 0x0
    lwz 3, 0x90(3)
    .4byte 0xC002DBC8 # lfs f0, lbl_80540B68@sda21(r0)
    extrwi 3, 3, 1, 20
    stw 3, 0x284(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 2, 26
    stw 3, 0x98(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 30
    stw 3, 0x260(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 15
    stb 3, 0x292(31)
    stb 0, 0x293(31)
    stfs 0, 0x28c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0xf
    .4byte 0x4082000C # bne .L_802BBEF4
    li 0, -0x1
    stw 0, 0x260(31)
L_802BBEF4:
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 22
    stw 0, 0x264(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 16
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x2
    .4byte 0x408000A8 # bge .L_802BBFBC
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_802BBF88
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x40800028 # bge .L_802BBF64
    .4byte 0xC022DBF0 # lfs f1, lbl_80540B90@sda21(r0)
    .4byte 0xC002DBF4 # lfs f0, lbl_80540B94@sda21(r0)
    stfs 1, 0x80(31)
    .4byte 0xC022DBD8 # lfs f1, lbl_80540B78@sda21(r0)
    stfs 0, 0x84(31)
    .4byte 0xC002DBF8 # lfs f0, lbl_80540B98@sda21(r0)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    .4byte 0x48000040 # b .L_802BBFA0
L_802BBF64:
    .4byte 0xC022DBF4 # lfs f1, lbl_80540B94@sda21(r0)
    .4byte 0xC002DBF0 # lfs f0, lbl_80540B90@sda21(r0)
    stfs 1, 0x80(31)
    .4byte 0xC022DBF8 # lfs f1, lbl_80540B98@sda21(r0)
    stfs 0, 0x84(31)
    .4byte 0xC002DBD8 # lfs f0, lbl_80540B78@sda21(r0)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    .4byte 0x4800001C # b .L_802BBFA0
L_802BBF88:
    .4byte 0xC022DBF0 # lfs f1, lbl_80540B90@sda21(r0)
    .4byte 0xC002DBD8 # lfs f0, lbl_80540B78@sda21(r0)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
L_802BBFA0:
    .4byte 0xC022DBF0 # lfs f1, lbl_80540B90@sda21(r0)
    .4byte 0xC002DBD8 # lfs f0, lbl_80540B78@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800002C # b .L_802BBFE4
L_802BBFBC:
    .4byte 0xC022DBFC # lfs f1, lbl_80540B9C@sda21(r0)
    .4byte 0xC002DC00 # lfs f0, lbl_80540BA0@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
L_802BBFE4:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182013C # beq .L_802BC128
    .4byte 0x40800014 # bge .L_802BC004
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BC010
    .4byte 0x408000A0 # bge .L_802BC09C
    .4byte 0x4800023C # b .L_802BC23C
L_802BC004:
    cmpwi 0, 0x4
    .4byte 0x40800234 # bge .L_802BC23C
    .4byte 0x480001A8 # b .L_802BC1B4
L_802BC010:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_802BC034
    .4byte 0xC022DC04 # lfs f1, lbl_80540BA4@sda21(r0)
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    .4byte 0x48000038 # b .L_802BC068
L_802BC034:
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_802BC054
    .4byte 0xC022DC08 # lfs f1, lbl_80540BA8@sda21(r0)
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    .4byte 0x48000018 # b .L_802BC068
L_802BC054:
    .4byte 0xC022DBBC # lfs f1, lbl_80540B5C@sda21(r0)
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
L_802BC068:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BC084
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BC084
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802BC090
L_802BC084:
    li 0, 0x10
    stw 0, 0x26c(31)
    .4byte 0x480001B0 # b .L_802BC23C
L_802BC090:
    li 0, 0x0
    stw 0, 0x26c(31)
    .4byte 0x480001A4 # b .L_802BC23C
L_802BC09C:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_802BC0C0
    .4byte 0xC022DC0C # lfs f1, lbl_80540BAC@sda21(r0)
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    .4byte 0x48000038 # b .L_802BC0F4
L_802BC0C0:
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_802BC0E0
    .4byte 0xC022DC10 # lfs f1, lbl_80540BB0@sda21(r0)
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    .4byte 0x48000018 # b .L_802BC0F4
L_802BC0E0:
    .4byte 0xC022DC14 # lfs f1, lbl_80540BB4@sda21(r0)
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
L_802BC0F4:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BC110
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BC110
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802BC11C
L_802BC110:
    li 0, 0x14
    stw 0, 0x26c(31)
    .4byte 0x48000124 # b .L_802BC23C
L_802BC11C:
    li 0, 0x6
    stw 0, 0x26c(31)
    .4byte 0x48000118 # b .L_802BC23C
L_802BC128:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_802BC14C
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    .4byte 0xC002DC04 # lfs f0, lbl_80540BA4@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
    .4byte 0x48000038 # b .L_802BC180
L_802BC14C:
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_802BC16C
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    .4byte 0xC002DC08 # lfs f0, lbl_80540BA8@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
    .4byte 0x48000018 # b .L_802BC180
L_802BC16C:
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    .4byte 0xC002DBBC # lfs f0, lbl_80540B5C@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
L_802BC180:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BC19C
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BC19C
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802BC1A8
L_802BC19C:
    li 0, 0x18
    stw 0, 0x26c(31)
    .4byte 0x48000098 # b .L_802BC23C
L_802BC1A8:
    li 0, 0xc
    stw 0, 0x26c(31)
    .4byte 0x4800008C # b .L_802BC23C
L_802BC1B4:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_802BC1D8
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    .4byte 0xC002DC0C # lfs f0, lbl_80540BAC@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
    .4byte 0x48000038 # b .L_802BC20C
L_802BC1D8:
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_802BC1F8
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    .4byte 0xC002DC10 # lfs f0, lbl_80540BB0@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
    .4byte 0x48000018 # b .L_802BC20C
L_802BC1F8:
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    .4byte 0xC002DC14 # lfs f0, lbl_80540BB4@sda21(r0)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
L_802BC20C:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BC228
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BC228
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802BC234
L_802BC228:
    li 0, 0x1c
    stw 0, 0x26c(31)
    .4byte 0x4800000C # b .L_802BC23C
L_802BC234:
    li 0, 0x12
    stw 0, 0x26c(31)
L_802BC23C:
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x4082000C # bne .L_802BC250
    li 0, 0x20
    stw 0, 0x26c(31)
L_802BC250:
    li 0, 0x0
    stw 0, 0x254(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BC26C
    cmpwi 0, 0x4
    .4byte 0x4082000C # bne .L_802BC274
L_802BC26C:
    li 0, 0x28
    stw 0, 0x254(31)
L_802BC274:
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stw 0, 0x25c(31)
    stw 0, 0x280(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x40820094 # bne .L_802BC324
    li 0, 0x5
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stw 0, 0x280(31)
    stfs 0, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802BC300
    .4byte 0x40800014 # bge .L_802BC2CC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BC2D8
    .4byte 0x40800028 # bge .L_802BC2EC
    .4byte 0x4800005C # b .L_802BC324
L_802BC2CC:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_802BC324
    .4byte 0x48000040 # b .L_802BC314
L_802BC2D8:
    lfs 1, 0xc(31)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x4800003C # b .L_802BC324
L_802BC2EC:
    lfs 1, 0xc(31)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000028 # b .L_802BC324
L_802BC300:
    lfs 1, 0x10(31)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000014 # b .L_802BC324
L_802BC314:
    lfs 1, 0x10(31)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
L_802BC324:
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_802BC344
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802BC344
    cmpwi 3, 0x5
    .4byte 0x4082026C # bne .L_802BC5AC
L_802BC344:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800240 # bge .L_802BC58C
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    .4byte 0xC3E2DBC8 # lfs f31, lbl_80540B68@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x41820220 # beq .L_802BC58C
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802BC3C4
    .4byte 0x40800014 # bge .L_802BC390
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BC39C
    .4byte 0x40800028 # bge .L_802BC3B0
    .4byte 0x4800005C # b .L_802BC3E8
L_802BC390:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_802BC3E8
    .4byte 0x48000040 # b .L_802BC3D8
L_802BC39C:
    lfs 1, 0x8(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800003C # b .L_802BC3E8
L_802BC3B0:
    lfs 1, 0x8(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000028 # b .L_802BC3E8
L_802BC3C4:
    lfs 1, 0xc(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_802BC3E8
L_802BC3D8:
    lfs 1, 0xc(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_802BC3E8:
    lwz 0, 0x268(31)
    cmpwi 0, 0x2
    .4byte 0x408200D0 # bne .L_802BC4C0
    lwz 0, 0x98(31)
    .4byte 0xC3E2DBBC # lfs f31, lbl_80540B5C@sda21(r0)
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_802BC474
    .4byte 0x40800014 # bge .L_802BC418
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BC424
    .4byte 0x4080003C # bge .L_802BC44C
    .4byte 0x480000AC # b .L_802BC4C0
L_802BC418:
    cmpwi 0, 0x4
    .4byte 0x408000A4 # bge .L_802BC4C0
    .4byte 0x4800007C # b .L_802BC49C
L_802BC424:
    lfs 2, 0x8(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    .4byte 0xC022DBF8 # lfs f1, lbl_80540B98@sda21(r0)
    fadds 2, 2, 0
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 2, 0x8(1)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    .4byte 0x48000078 # b .L_802BC4C0
L_802BC44C:
    lfs 2, 0x8(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    .4byte 0xC022DBF4 # lfs f1, lbl_80540B94@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stfs 2, 0x8(1)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    .4byte 0x48000050 # b .L_802BC4C0
L_802BC474:
    lfs 2, 0xc(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    fadds 2, 2, 0
    .4byte 0xC002DBF8 # lfs f0, lbl_80540B98@sda21(r0)
    stfs 2, 0xc(1)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
    .4byte 0x48000028 # b .L_802BC4C0
L_802BC49C:
    lfs 2, 0xc(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002DBF4 # lfs f0, lbl_80540B94@sda21(r0)
    stfs 2, 0xc(1)
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 1, 0x244(31)
L_802BC4C0:
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x418200C4 # beq .L_802BC58C
    fmr 1, 31
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    li 5, 0x19b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x4182002C # beq .L_802BC52C
    lwz 0, 0x98(31)
    lis 3, lbl_8046D388@ha
    addi 4, 3, lbl_8046D388@l
    addi 6, 5, 0x68
    slwi 0, 0, 2
    li 3, 0x0
    lwzx 0, 4, 0
    li 5, 0x0
    extsh 4, 0
    bl fn_800EF008
L_802BC52C:
    fmr 1, 31
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    li 5, 0x19c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x4182002C # beq .L_802BC58C
    lwz 0, 0x98(31)
    lis 3, lbl_8046D388@ha
    addi 4, 3, lbl_8046D388@l
    addi 6, 5, 0x68
    slwi 0, 0, 2
    li 3, 0x0
    lwzx 0, 4, 0
    li 5, 0x0
    extsh 4, 0
    bl fn_800EF008
L_802BC58C:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BC5A0
    cmpwi 0, 0x4
    .4byte 0x40820020 # bne .L_802BC5BC
L_802BC5A0:
    li 0, -0x1
    stw 0, 0x260(31)
    .4byte 0x48000014 # b .L_802BC5BC
L_802BC5AC:
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_802BC5BC
    li 0, -0x1
    stw 0, 0x260(31)
L_802BC5BC:
    li 0, 0x2
    lis 4, 0x3
    stw 0, 0x274(31)
    li 6, 0x0
    mr 3, 31
    addi 4, 4, 0x34
    stw 6, 0x270(31)
    li 5, 0x0
    lwz 0, 0x4(31)
    stw 0, 0x278(31)
    sth 6, 0x288(31)
    stb 6, 0x290(31)
    stb 6, 0x291(31)
    stw 6, 0x238(31)
    bl fn_801F0E34
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

