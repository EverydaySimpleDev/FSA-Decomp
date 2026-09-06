# fn_802E4FD8 - BLZ2: main per-frame update() (0x74C, largest piece)
# State-machine driver dispatched via jumptable_804A9D84 on this->0x2f0 (7
# states, 0-6). Before dispatch: conditionally resolves a per-player-index
# record via fn_8020D58C/fn_8020D7D0, then calls fn_801F2718 (generic
# room/level query, FourCC-tagged 0x5455424F). One state (fall-through path
# starting at .L_802E5080) performs the same virtual-call gate (vtable slot
# 0x34) seen in other actors, then a ring/expanding-burst loop reusing the
# same fn_8013CC50 spawn triple as fn_802E4E6C. Track A: byte-match verified,
# structural overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000CFEC
etb_8000CFEC:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000CFEC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C12C
eti_8001C12C:
    .4byte fn_802E4FD8
    .4byte 0x0000074C
    .4byte etb_8000CFEC
.size eti_8001C12C, 12

.text
.balign 4
.global fn_802E4FD8

fn_802E4FD8:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stmw 27, 0x5c(1)
    mr 31, 3
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x48(1), 0, 0
    stfs 0, 0x50(1)
    lwz 0, 0x2f0(3)
    cmpwi 0, 0x1
    .4byte 0x41800028 # blt .L_802E503C
    lwz 29, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 29
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
L_802E503C:
    psq_l 1, 0xc(31), 0, 0
    lis 4, 0x5455
    lfs 0, 0x14(31)
    mr 3, 31
    addi 4, 4, 0x424f
    psq_st 1, 0x48(1), 0, 0
    stfs 0, 0x50(1)
    bl fn_801F2718
    lwz 0, 0x2f0(31)
    cmplwi 0, 0x6
    .4byte 0x4181069C # bgt .L_802E5700
    lis 3, jumptable_804A9D84@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A9D84@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_802E50B0
    .4byte 0x41820674 # beq .L_802E5700
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820654 # bne .L_802E5700
L_802E50B0:
    psq_l 1, 0xc(31), 0, 0
    mr 30, 31
    lfs 0, 0x14(31)
    li 27, 0x0
    .4byte 0xC3C2E270 # lfs f30, lbl_80541210@sda21(r0)
    psq_st 1, 0x3c(1), 0, 0
    stfs 0, 0x44(1)
    .4byte 0x480000D0 # b .L_802E519C
L_802E50D0:
    mr 29, 30
    li 28, 0x0
    .4byte 0x480000A0 # b .L_802E5178
L_802E50DC:
    lwz 3, 0x4(31)
    addi 4, 1, 0x3c
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x34c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
    addi 4, 1, 0x3c
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x34d
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x270(29)
    addi 4, 1, 0x3c
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x54d
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2b0(29)
    addi 29, 29, 0x4
    addi 30, 30, 0x4
    addi 28, 28, 0x1
    lfs 0, 0x40(1)
    fadds 0, 0, 30
    stfs 0, 0x40(1)
L_802E5178:
    lwz 0, 0x2f8(31)
    cmpw 28, 0
    .4byte 0x4180FF5C # blt .L_802E50DC
    lfs 0, 0x3c(1)
    addi 27, 27, 0x1
    lfs 1, 0x10(31)
    fadds 0, 0, 30
    stfs 1, 0x40(1)
    stfs 0, 0x3c(1)
L_802E519C:
    lwz 0, 0x2f4(31)
    cmpw 27, 0
    .4byte 0x4180FF2C # blt .L_802E50D0
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802E51C0
    li 0, 0x2
    stw 0, 0x2f0(31)
    .4byte 0x48000020 # b .L_802E51DC
L_802E51C0:
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802E51D4
    li 0, 0x6
    stw 0, 0x2f0(31)
    .4byte 0x4800000C # b .L_802E51DC
L_802E51D4:
    li 0, 0x1
    stw 0, 0x2f0(31)
L_802E51DC:
    li 0, 0x1
    sth 0, 0x94(31)
    .4byte 0x4800051C # b .L_802E5700
    lis 4, lbl_8046F0C8@ha
    lis 3, lbl_8046F108@ha
    addi 29, 4, lbl_8046F0C8@l
    li 28, 0x0
    addi 30, 3, lbl_8046F108@l
L_802E51FC:
    lfs 2, 0xc(31)
    addi 3, 1, 0x30
    lfs 1, 0x0(29)
    lfs 0, 0x0(30)
    fadds 1, 2, 1
    stfs 1, 0x30(1)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x34(1)
    lfs 0, 0x14(31)
    stfs 0, 0x38(1)
    lwz 4, 0x4(31)
    bl fn_80226850
    clrlwi 3, 3, 16
    bl fn_801EE3C0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_802E5290
    bl SpatialRegistry_GetBase
    lwz 0, 0x98(31)
    lis 4, 0x424c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a45
    slwi 0, 0, 4
    addi 6, 1, 0x30
    ori 7, 0, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lis 4, 0x424c
    li 3, 0x4
    addi 4, 4, 0x5a45
    li 0, 0x28
    stw 4, 0x1a0(31)
    stw 3, 0x2f0(31)
    stw 0, 0x304(31)
    .4byte 0x48000474 # b .L_802E5700
L_802E5290:
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x8
    addi 29, 29, 0x4
    .4byte 0x4180FF5C # blt .L_802E51FC
    .4byte 0x4800045C # b .L_802E5700
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x41820030 # beq .L_802E52E0
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x2
    .4byte 0x408200F8 # bne .L_802E53B4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200D8 # bne .L_802E53B4
L_802E52E0:
    bl GetRoomConfigRecord
    lwz 4, 0x308(31)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    .4byte 0xC3C2E270 # lfs f30, lbl_80541210@sda21(r0)
    mr 30, 31
    li 28, 0x0
    .4byte 0x48000078 # b .L_802E538C
L_802E5318:
    mr 29, 30
    li 27, 0x0
    .4byte 0x48000048 # b .L_802E5368
L_802E5324:
    lwz 3, 0x4(31)
    addi 4, 1, 0x48
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x4f2
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
    addi 29, 29, 0x4
    addi 30, 30, 0x4
    addi 27, 27, 0x1
    lfs 0, 0x4c(1)
    fadds 0, 0, 30
    stfs 0, 0x4c(1)
L_802E5368:
    lwz 0, 0x2f8(31)
    cmpw 27, 0
    .4byte 0x4180FFB4 # blt .L_802E5324
    lfs 0, 0x48(1)
    addi 28, 28, 0x1
    lfs 1, 0x10(31)
    fadds 0, 0, 30
    stfs 1, 0x4c(1)
    stfs 0, 0x48(1)
L_802E538C:
    lwz 0, 0x2f4(31)
    cmpw 28, 0
    .4byte 0x4180FF84 # blt .L_802E5318
    li 0, 0x5
    li 3, 0x3c
    stw 0, 0x2f0(31)
    li 0, 0x0
    stw 3, 0x304(31)
    sth 0, 0x94(31)
    .4byte 0x48000350 # b .L_802E5700
L_802E53B4:
    psq_l 1, 0xc(31), 0, 0
    addi 29, 1, 0x8
    lfs 0, 0x14(31)
    li 28, 0x0
    psq_st 1, 0x24(1), 0, 0
    .4byte 0xC3C2E270 # lfs f30, lbl_80541210@sda21(r0)
    stfs 0, 0x2c(1)
    lfs 31, 0x28(1)
    .4byte 0x48000140 # b .L_802E5514
L_802E53D8:
    li 27, 0x0
    .4byte 0x48000118 # b .L_802E54F4
L_802E53E0:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    lfs 0, 0x14(31)
    mr 4, 29
    psq_st 1, 0x0(29), 0, 0
    stfs 0, 0x10(1)
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802E5420
    li 0, 0x3
    stw 0, 0x2f0(31)
    .4byte 0x480002E4 # b .L_802E5700
L_802E5420:
    lfs 3, 0x60(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x7
    stfs 3, 0x14(1)
    lfs 2, 0x64(31)
    stfs 2, 0x18(1)
    lfs 1, 0x68(31)
    stfs 1, 0x1c(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x20(1)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x18(1)
    stfs 3, 0x14(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 4, 0x114(31)
    bl fn_801F2B7C
    lwz 4, 0x80(31)
    addi 3, 1, 0x14
    lwz 0, 0x84(31)
    stw 4, 0x14(1)
    stw 0, 0x18(1)
    lfs 3, 0x14(1)
    lwz 4, 0x88(31)
    lwz 0, 0x8c(31)
    lfs 2, 0x18(1)
    stw 4, 0x1c(1)
    stw 0, 0x20(1)
    lfs 1, 0x1c(1)
    lfs 4, 0xc(31)
    lfs 5, 0x10(31)
    lfs 0, 0x20(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x14(1)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lfs 0, 0x10(31)
    addi 27, 27, 0x1
    fadds 0, 0, 30
    stfs 0, 0x10(31)
L_802E54F4:
    lwz 0, 0x2f8(31)
    cmpw 27, 0
    .4byte 0x4180FEE4 # blt .L_802E53E0
    stfs 31, 0x10(31)
    addi 28, 28, 0x1
    lfs 0, 0xc(31)
    fadds 0, 0, 30
    stfs 0, 0xc(31)
L_802E5514:
    lwz 0, 0x2f4(31)
    cmpw 28, 0
    .4byte 0x4180FEBC # blt .L_802E53D8
    lfs 0, 0x24(1)
    lfs 1, 0x28(1)
    stfs 0, 0xc(31)
    lfs 0, 0x2c(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    .4byte 0x480001C8 # b .L_802E5700
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    lis 29, 0x424c
    .4byte 0xC3E2E270 # lfs f31, lbl_80541210@sda21(r0)
    addi 30, 29, 0x5a45
    li 28, 0x0
    .4byte 0x4800006C # b .L_802E55CC
L_802E5564:
    li 27, 0x0
    .4byte 0x48000040 # b .L_802E55A8
L_802E556C:
    bl SpatialRegistry_GetBase
    lwz 0, 0x98(31)
    addi 4, 29, 0x5a45
    lwz 5, 0x4(31)
    addi 6, 1, 0x48
    slwi 0, 0, 4
    li 8, -0x1
    ori 7, 0, 0xf
    li 9, -0x1
    bl fn_801F9484
    stw 30, 0x1a0(31)
    addi 27, 27, 0x1
    lfs 0, 0x4c(1)
    fadds 0, 0, 31
    stfs 0, 0x4c(1)
L_802E55A8:
    lwz 0, 0x2f8(31)
    cmpw 27, 0
    .4byte 0x4180FFBC # blt .L_802E556C
    lfs 0, 0x48(1)
    addi 28, 28, 0x1
    lfs 1, 0x10(31)
    fadds 0, 0, 31
    stfs 1, 0x4c(1)
    stfs 0, 0x48(1)
L_802E55CC:
    lwz 0, 0x2f4(31)
    cmpw 28, 0
    .4byte 0x4180FF90 # blt .L_802E5564
    li 0, 0x0
    mr 3, 31
    sth 0, 0x94(31)
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800010C # b .L_802E5700
    lwz 3, 0x304(31)
    subi 0, 3, 0x1
    stw 0, 0x304(31)
    lwz 0, 0x304(31)
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_802E5700
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000DC # b .L_802E5700
    lwz 3, 0x304(31)
    subi 0, 3, 0x1
    stw 0, 0x304(31)
    lwz 0, 0x304(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802E5658
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000AC # b .L_802E5700
L_802E5658:
    cmpwi 0, 0x34
    .4byte 0x408200A4 # bne .L_802E5700
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800008C # b .L_802E5700
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x7
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802E56B8
    li 3, 0x0
    bl fn_80234CF8
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802E56B0
    li 0, 0x1
    stw 0, 0x304(31)
    .4byte 0x4800000C # b .L_802E56B8
L_802E56B0:
    li 0, 0x0
    stw 0, 0x304(31)
L_802E56B8:
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x41820040 # beq .L_802E5700
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802E5700
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    sth 0, 0x94(31)
    stw 0, 0x2f0(31)
L_802E5700:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    lmw 27, 0x5c(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

