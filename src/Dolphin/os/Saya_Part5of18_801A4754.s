# SAYA cluster, part 5/18 (Track A byte-match + overview - 1480B).
# Second of 4 state-handler bodies. Uses the global PRNG advance,
# fn_801EAC20, fn_801F0E34/fn_801F3780/fn_801F4694/fn_801F666C/
# ClassifyBamAngleToQuadrant/SpatialRegistry_GetBase, fn_8022F3DC/fn_8022F514, per-room config
# GetRoomConfigRecord, plus unfamiliar fn_8023AC74/8023B22C.
.section extab, "a"
.balign 4
.global etb_800079C4
etb_800079C4:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_800079C4, 8

.section extabindex, "a"
.balign 4
.global eti_80014824
eti_80014824:
    .4byte fn_801A4754
    .4byte 0x000005C8
    .4byte etb_800079C4
.size eti_80014824, 12

.text
.balign 4
.global fn_801A4754

fn_801A4754:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 25, 0x44(1)
    mr 27, 3
    mr 29, 4
    mr 25, 5
    lwz 0, 0xb0(3)
    extrwi. 30, 0, 8, 8
    .4byte 0x4082000C # bne .L_801A4784
    li 3, 0x0
    .4byte 0x48000588 # b .L_801A4D08
L_801A4784:
    cmpwi 30, 0x2
    .4byte 0x41820014 # beq .L_801A479C
    cmpwi 30, 0x7
    .4byte 0x4182000C # beq .L_801A479C
    cmpwi 30, 0x8
    .4byte 0x408201AC # bne .L_801A4944
L_801A479C:
    lwz 26, 0xa0(27)
    cmpwi 26, 0x0
    .4byte 0x418001A0 # blt .L_801A4944
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x4182015C # beq .L_801A4914
    psq_l 1, 0xc(28), 0, 0
    mr 3, 29
    lfs 0, 0x14(28)
    mr 5, 25
    psq_st 1, 0x24(1), 0, 0
    lwz 4, 0x4(27)
    stfs 0, 0x2c(1)
    bl fn_8023AC74
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_801A47E8
    .4byte 0x906D8540 # stw r3, lbl_8053A100@sda21(r0)
L_801A47E8:
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    cmpwi 30, 0x8
    .4byte 0x40820028 # bne .L_801A4828
    lwz 0, 0x4(28)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801A4828
    lwz 4, 0xb4(27)
    li 0, -0x1
    li 3, 0x0
    stw 4, 0xb0(27)
    stw 0, 0xa0(27)
    .4byte 0x480004E4 # b .L_801A4D08
L_801A4828:
    lwz 3, 0x198(27)
    cntlzw 0, 3
    rlwinm. 0, 0, 27, 27, 27
    .4byte 0x4182005C # beq .L_801A4890
    clrlwi 3, 3, 29
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x30(1)
    .4byte 0xC862B650 # lfd f3, lbl_8053E5F0@sda21(r0)
    stw 3, 0x34(1)
    .4byte 0xC082B64C # lfs f4, lbl_8053E5EC@sda21(r0)
    lfd 0, 0x30(1)
    stw 3, 0x3c(1)
    fsubs 2, 0, 3
    lfs 5, 0x24(1)
    stw 0, 0x38(1)
    lfs 1, 0x28(1)
    lfd 0, 0x38(1)
    fsubs 2, 4, 2
    fsubs 0, 0, 3
    fadds 2, 5, 2
    fsubs 0, 4, 0
    stfs 2, 0x24(1)
    fadds 0, 1, 0
    stfs 0, 0x28(1)
    .4byte 0x48000058 # b .L_801A48E4
L_801A4890:
    clrlwi 3, 3, 29
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x38(1)
    .4byte 0xC862B650 # lfd f3, lbl_8053E5F0@sda21(r0)
    stw 3, 0x3c(1)
    .4byte 0xC082B64C # lfs f4, lbl_8053E5EC@sda21(r0)
    lfd 0, 0x38(1)
    stw 3, 0x34(1)
    fsubs 2, 0, 3
    lfs 5, 0x24(1)
    stw 0, 0x30(1)
    lfs 1, 0x28(1)
    lfd 0, 0x30(1)
    fsubs 2, 4, 2
    fsubs 0, 0, 3
    fsubs 2, 5, 2
    fsubs 0, 4, 0
    stfs 2, 0x24(1)
    fsubs 0, 1, 0
    stfs 0, 0x28(1)
L_801A48E4:
    psq_l 1, 0x24(1), 0, 0
    cmpwi 30, 0x2
    lfs 0, 0x2c(1)
    psq_st 1, 0xc(27), 0, 0
    stfs 0, 0x14(27)
    lwz 0, 0x4(28)
    stw 0, 0x4(27)
    .4byte 0x4082000C # bne .L_801A490C
    li 3, 0x32
    .4byte 0x48000400 # b .L_801A4D08
L_801A490C:
    li 3, 0xff
    .4byte 0x480003F8 # b .L_801A4D08
L_801A4914:
    cmpwi 30, 0x7
    .4byte 0x41820014 # beq .L_801A492C
    cmpwi 30, 0x2
    .4byte 0x4182000C # beq .L_801A492C
    cmpwi 30, 0x8
    .4byte 0x4082000C # bne .L_801A4934
L_801A492C:
    lwz 0, 0xb4(27)
    stw 0, 0xb0(27)
L_801A4934:
    li 0, -0x1
    li 3, 0x0
    stw 0, 0xa0(27)
    .4byte 0x480003C8 # b .L_801A4D08
L_801A4944:
    lwz 28, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_801A4978
    lfs 1, 0x14(27)
    .4byte 0xC002B63C # lfs f0, lbl_8053E5DC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801A4978
    li 3, 0x0
    .4byte 0x48000394 # b .L_801A4D08
L_801A4978:
    lwz 4, 0x4(27)
    mr 3, 29
    mr 5, 25
    bl fn_8023AC74
    mr. 29, 3
    .4byte 0x4080000C # bge .L_801A4998
    li 3, 0x0
    .4byte 0x48000374 # b .L_801A4D08
L_801A4998:
    li 28, 0x0
    bl fn_8023B22C
    mr 31, 3
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x4082000C # bne .L_801A49C0
    li 3, 0x0
    .4byte 0x4800034C # b .L_801A4D08
L_801A49C0:
    cmpwi 30, 0x6
    .4byte 0x4082009C # bne .L_801A4A60
    lfs 3, 0xc(27)
    lis 3, lbl_80534C00@ha
    lfs 2, 0xc(31)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x10(27)
    li 25, 0x0
    lfs 0, 0x10(31)
    fsubs 2, 3, 2
    li 30, 0x4
    fsubs 0, 1, 0
    fneg 1, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B640 # lfs f0, lbl_8053E5E0@sda21(r0)
    lwz 26, 0x98(27)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    xori 0, 26, 0x1
    cmpw 0, 3
    .4byte 0x41820008 # beq .L_801A4A2C
    li 25, 0x1
L_801A4A2C:
    cmplwi 31, 0x0
    .4byte 0x41820014 # beq .L_801A4A44
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A4A44
    li 25, 0x1
L_801A4A44:
    clrlwi. 0, 25, 24
    .4byte 0x40820008 # bne .L_801A4A50
    li 30, 0x1
L_801A4A50:
    lwz 0, 0xa4(27)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A4A60
    li 30, 0x1
L_801A4A60:
    cmpwi 29, 0x0
    .4byte 0x41800008 # blt .L_801A4A6C
    .4byte 0x93AD8540 # stw r29, lbl_8053A100@sda21(r0)
L_801A4A6C:
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    cmplwi 30, 0x8
    .4byte 0x41810280 # bgt .L_801A4D04
    lis 3, jumptable_804A2D74@ha
    slwi 0, 30, 2
    addi 3, 3, jumptable_804A2D74@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 4, 29
    addi 3, 27, 0x1dc
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801A4AC8
    lis 4, 0x4
    mr 3, 27
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801A4AC8:
    cmplwi 31, 0x0
    .4byte 0x4182000C # beq .L_801A4AD8
    li 0, 0x1
    stw 0, 0x254(31)
L_801A4AD8:
    li 0, 0x0
    stw 0, 0xd8(27)
    stw 0, 0xdc(27)
    cmpwi 30, 0x1
    li 28, 0xff
    .4byte 0x40820218 # bne .L_801A4D04
    lfs 1, 0x14(27)
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4082009C # bne .L_801A4B98
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC062B630 # lfs f3, lbl_8053E5D0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B648 # lfs f0, lbl_8053E5E8@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC022B644 # lfs f1, lbl_8053E5E4@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 4, 0x40(27)
    srwi 0, 0, 9
    lfs 2, 0x3c(27)
    oris 0, 0, 0x3f80
    stfs 4, 0x1c(1)
    stw 0, 0x8(1)
    lfs 4, 0x8(1)
    stfs 2, 0x18(1)
    fsubs 4, 4, 3
    psq_l 2, 0x18(1), 0, 0
    fnmsubs 0, 0, 4, 3
    psq_st 2, 0x3c(27), 0, 0
    fadds 2, 1, 0
    stfs 2, 0x44(27)
    lfs 1, 0x10(27)
    lfs 0, 0xc(27)
    stfs 1, 0x10(1)
    lfs 1, 0x14(27)
    stfs 0, 0xc(1)
    lfs 0, 0x44(27)
    psq_l 3, 0xc(1), 0, 0
    fadds 0, 1, 0
    stfs 2, 0x20(1)
    psq_st 3, 0xc(27), 0, 0
    stfs 0, 0x14(1)
    stfs 0, 0x14(27)
L_801A4B98:
    mr 3, 27
    li 4, 0x12c
    bl fn_801F3780
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x21
    li 28, 0x32
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000148 # b .L_801A4D04
    mr 3, 29
    li 28, 0x32
    bl fn_8023B22C
    stw 3, 0xa0(27)
    lis 0, 0x2
    mr 3, 27
    lwz 4, 0xb0(27)
    stw 4, 0xb4(27)
    stw 0, 0xb0(27)
    lwz 12, 0x0(27)
    lwz 12, 0x40(12)
    mtctr 12
    bctrl
    .4byte 0x48000110 # b .L_801A4D04
    lbz 0, 0xc4(27)
    li 28, 0xff
    cmplwi 0, 0x0
    .4byte 0x40820100 # bne .L_801A4D04
    mr 3, 29
    bl fn_8023B22C
    stw 3, 0xa0(27)
    lis 0, 0x7
    mr 3, 27
    lwz 4, 0xb0(27)
    stw 4, 0xb4(27)
    stw 0, 0xb0(27)
    lwz 12, 0x0(27)
    lwz 12, 0x40(12)
    mtctr 12
    bctrl
    .4byte 0x480000CC # b .L_801A4D04
    cmplwi 31, 0x0
    .4byte 0x4182009C # beq .L_801A4CDC
    lhz 4, 0x94(27)
    mr 3, 29
    li 26, 0x0
    subi 25, 4, 0x1
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801A4C78
    mr 3, 29
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x40820018 # bne .L_801A4C84
    li 26, 0x1
    .4byte 0x48000010 # b .L_801A4C84
L_801A4C78:
    cmpw 25, 29
    .4byte 0x40820008 # bne .L_801A4C84
    li 26, 0x1
L_801A4C84:
    lhz 0, 0x94(27)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801A4C98
    cmpwi 26, 0x1
    .4byte 0x40820048 # bne .L_801A4CDC
L_801A4C98:
    lwz 0, 0x254(31)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_801A4CDC
    li 0, 0x2
    mr 3, 29
    stw 0, 0x254(31)
    bl fn_8023B22C
    stw 3, 0xa0(27)
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x40(12)
    mtctr 12
    bctrl
    lwz 3, 0xb0(27)
    lis 0, 0x8
    stw 3, 0xb4(27)
    stw 0, 0xb0(27)
L_801A4CDC:
    li 28, 0xff
    .4byte 0x48000024 # b .L_801A4D04
    stw 29, 0x10c(27)
    mr 3, 27
    bl fn_801F4694
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801A4D04:
    mr 3, 28
L_801A4D08:
    lmw 25, 0x44(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

