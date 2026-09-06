# SAYA cluster, part 10/18 (Track A byte-match + overview -
# 0xD08=3336B, one of the largest pieces of this actor). Fifth state-
# handler body, invoked by the master dispatcher fn_801A6160. Uses the
# global PRNG advance, effect spawn fn_8013CC50, the confirmed lookup-
# table accessor Warp_GetLookupTableValue, the generic FourCC actor dispatcher
# fn_801F9484, fn_801F37AC/fn_801F666C/ClassifyBamAngleToQuadrant/fn_801F6874/
# fn_801F714C/SpatialRegistry_GetBase, player-position fn_8023E724, per-room
# config GetRoomConfigRecord, plus unfamiliar fn_8023AE34/8023B2B0/8023B5B4.
.section extab, "a"
.balign 4
.global etb_800079EC
etb_800079EC:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_800079EC, 8

.section extabindex, "a"
.balign 4
.global eti_80014860
eti_80014860:
    .4byte fn_801A5400
    .4byte 0x00000D08
    .4byte etb_800079EC
.size eti_80014860, 12

.text
.balign 4
.global fn_801A5400

fn_801A5400:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stmw 24, 0xa0(1)
    mr 31, 3
    mr 3, 4
    lwz 0, 0xb0(31)
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_801A5434
    li 3, 0x0
    .4byte 0x48000CBC # b .L_801A60EC
L_801A5434:
    lwz 4, 0x4(31)
    li 27, 0x0
    bl fn_8023AE34
    lwz 25, 0x4(31)
    mr 30, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 25
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_801A5478
    lfs 1, 0x14(31)
    .4byte 0xC002B63C # lfs f0, lbl_8053E5DC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801A5478
    li 3, 0x0
    .4byte 0x48000C78 # b .L_801A60EC
L_801A5478:
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x4080095C # bge .L_801A5DDC
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_801A5494
    li 3, 0x0
    .4byte 0x48000C5C # b .L_801A60EC
L_801A5494:
    lwz 0, 0xb0(31)
    clrlwi 29, 0, 24
    cmpwi 29, 0x3
    .4byte 0x41820024 # beq .L_801A54C4
    mr 3, 30
    bl fn_8023B2B0
    stw 3, 0xa0(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0xa0(31)
    bl fn_801F666C
    mr 26, 3
    .4byte 0x48000020 # b .L_801A54E0
L_801A54C4:
    mr 3, 30
    bl fn_8023B2B0
    mr 25, 3
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    mr 26, 3
L_801A54E0:
    cmplwi 26, 0x0
    .4byte 0x40820014 # bne .L_801A54F8
    li 0, -0x1
    li 3, 0x0
    stw 0, 0xa0(31)
    .4byte 0x48000BF8 # b .L_801A60EC
L_801A54F8:
    lwz 0, 0x108(26)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801A5514
    li 0, -0x1
    li 3, 0x0
    stw 0, 0xa0(31)
    .4byte 0x48000BDC # b .L_801A60EC
L_801A5514:
    cmpwi 29, 0x9
    stw 30, 0x10c(31)
    .4byte 0x40820080 # bne .L_801A559C
    mr 3, 30
    li 29, 0x4
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 30
    lfs 0, 0xc(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    fneg 1, 31
    addi 3, 3, lbl_80534C00@l
    fsubs 0, 0, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B640 # lfs f0, lbl_8053E5E0@sda21(r0)
    lwz 25, 0x98(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    cmpw 25, 3
    .4byte 0x41820008 # beq .L_801A558C
    li 29, 0x5
L_801A558C:
    lwz 0, 0xa4(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A559C
    li 29, 0x5
L_801A559C:
    cmpwi 29, 0x10
    .4byte 0x4082006C # bne .L_801A560C
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 30
    lfs 0, 0xc(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    fneg 1, 31
    addi 3, 3, lbl_80534C00@l
    fsubs 0, 0, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B640 # lfs f0, lbl_8053E5E0@sda21(r0)
    lwz 25, 0x98(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    cmpw 25, 3
    .4byte 0x41820008 # beq .L_801A560C
    li 29, 0x4
L_801A560C:
    lhz 4, 0x94(26)
    cmplwi 4, 0x0
    .4byte 0x41820040 # beq .L_801A5654
    cmplwi 4, 0x4
    .4byte 0x41820038 # beq .L_801A5654
    cmpwi 29, 0x1
    .4byte 0x4182000C # beq .L_801A5630
    cmpwi 29, 0x8
    .4byte 0x40820008 # bne .L_801A5634
L_801A5630:
    li 29, 0x2
L_801A5634:
    cmpwi 29, 0xa
    .4byte 0x4182000C # beq .L_801A5644
    cmpwi 29, 0x11
    .4byte 0x40820014 # bne .L_801A5654
L_801A5644:
    li 0, -0x1
    li 3, 0x0
    stw 0, 0xa0(31)
    .4byte 0x48000A9C # b .L_801A60EC
L_801A5654:
    cmpwi 29, 0xb
    .4byte 0x40820014 # bne .L_801A566C
    lwz 0, 0xac(31)
    cmpwi 0, 0x3
    .4byte 0x41800008 # blt .L_801A566C
    li 29, 0x4
L_801A566C:
    cmplwi 29, 0x12
    .4byte 0x418100CC # bgt .L_801A573C
    lis 3, jumptable_804A2DE0@ha
    slwi 0, 29, 2
    addi 3, 3, jumptable_804A2DE0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x270(26)
    li 0, 0x0
    addi 3, 3, 0x1
    stw 3, 0x270(26)
    stw 0, 0xd8(31)
    stw 0, 0xdc(31)
    stw 30, 0x10c(31)
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801A56C4
    li 0, -0x1
    li 27, 0xff
    stw 0, 0xa0(31)
    .4byte 0x48000648 # b .L_801A5D08
L_801A56C4:
    cmpwi 29, 0x8
    .4byte 0x40820030 # bne .L_801A56F8
    lfs 0, 0x14(31)
    .4byte 0xC022B634 # lfs f1, lbl_8053E5D4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_801A56E8
    lfs 0, 0x44(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820014 # beq .L_801A56F8
L_801A56E8:
    li 0, -0x1
    li 27, 0xff
    stw 0, 0xa0(31)
    .4byte 0x48000614 # b .L_801A5D08
L_801A56F8:
    lfs 3, 0x10(31)
    cmpwi 29, 0x8
    lfs 2, 0x10(26)
    lfs 1, 0xc(31)
    lfs 0, 0xc(26)
    fsubs 3, 3, 2
    lfs 2, 0x14(31)
    fsubs 0, 1, 0
    lfs 1, 0x14(26)
    stfs 3, 0x68(1)
    fsubs 1, 2, 1
    stfs 0, 0x64(1)
    psq_l 0, 0x64(1), 0, 0
    stfs 1, 0x6c(1)
    psq_st 0, 0x24(31), 0, 0
    stfs 1, 0x2c(31)
    .4byte 0x418205D0 # beq .L_801A5D08
L_801A573C:
    lwz 0, 0x98(26)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4082002C # bne .L_801A5770
    .4byte 0xC002B67C # lfs f0, lbl_8053E61C@sda21(r0)
    .4byte 0xC022B628 # lfs f1, lbl_8053E5C8@sda21(r0)
    stfs 0, 0x58(1)
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    stfs 1, 0x5c(1)
    psq_l 1, 0x58(1), 0, 0
    stfs 0, 0x60(1)
    psq_st 1, 0x48(31), 0, 0
    stfs 0, 0x50(31)
    .4byte 0x4800059C # b .L_801A5D08
L_801A5770:
    .4byte 0xC002B628 # lfs f0, lbl_8053E5C8@sda21(r0)
    .4byte 0xC022B67C # lfs f1, lbl_8053E61C@sda21(r0)
    stfs 0, 0x4c(1)
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    stfs 1, 0x50(1)
    psq_l 1, 0x4c(1), 0, 0
    stfs 0, 0x54(1)
    psq_st 1, 0x48(31), 0, 0
    stfs 0, 0x50(31)
    .4byte 0x48000574 # b .L_801A5D08
    lwz 25, 0x108(31)
    mr 3, 30
    bl fn_8023B5B4
    subf 0, 3, 25
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    cmpwi 0, 0x3e8
    .4byte 0x408000FC # bge .L_801A58B0
    lwz 0, 0x98(26)
    cmpwi 0, 0x2
    .4byte 0x4182008C # beq .L_801A584C
    .4byte 0x40800014 # bge .L_801A57D8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801A57E4
    .4byte 0x40800048 # bge .L_801A5818
    .4byte 0x480000DC # b .L_801A58B0
L_801A57D8:
    cmpwi 0, 0x4
    .4byte 0x408000D4 # bge .L_801A58B0
    .4byte 0x480000A0 # b .L_801A5880
L_801A57E4:
    lwz 25, 0x4(26)
    mr 3, 31
    bl Warp_GetLookupTableValue
    mr 3, 25
    addi 4, 31, 0xc
    li 5, 0x177
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800009C # b .L_801A58B0
L_801A5818:
    lwz 25, 0x4(26)
    mr 3, 31
    bl Warp_GetLookupTableValue
    mr 3, 25
    addi 4, 31, 0xc
    li 5, 0x176
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000068 # b .L_801A58B0
L_801A584C:
    lwz 25, 0x4(26)
    mr 3, 31
    bl Warp_GetLookupTableValue
    mr 3, 25
    addi 4, 31, 0xc
    li 5, 0x175
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000034 # b .L_801A58B0
L_801A5880:
    lwz 25, 0x4(26)
    mr 3, 31
    bl Warp_GetLookupTableValue
    mr 3, 25
    addi 4, 31, 0xc
    li 5, 0x178
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801A58B0:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801A58C4
    li 27, 0xff
    .4byte 0x48000448 # b .L_801A5D08
L_801A58C4:
    cmpwi 29, 0x10
    .4byte 0x41820030 # beq .L_801A58F8
    lwz 25, 0x108(31)
    mr 3, 30
    bl fn_8023B5B4
    subf. 0, 3, 25
    .4byte 0x41810018 # bgt .L_801A58F4
    li 0, 0x0
    li 27, 0x14
    stw 0, 0x108(31)
    stb 0, 0x11c(26)
    .4byte 0x48000418 # b .L_801A5D08
L_801A58F4:
    stw 0, 0x108(31)
L_801A58F8:
    cmpwi 29, 0xb
    .4byte 0x40820010 # bne .L_801A590C
    lwz 3, 0xac(31)
    addi 0, 3, 0x1
    stw 0, 0xac(31)
L_801A590C:
    li 0, 0x0
    cmpwi 29, 0x5
    stb 0, 0x11c(26)
    .4byte 0x41820024 # beq .L_801A593C
    cmpwi 29, 0x10
    .4byte 0x4182001C # beq .L_801A593C
    cmpwi 29, 0xb
    .4byte 0x41820014 # beq .L_801A593C
    cmpwi 29, 0x12
    .4byte 0x4182000C # beq .L_801A593C
    cmpwi 29, 0xf
    .4byte 0x40820228 # bne .L_801A5B60
L_801A593C:
    bl SpatialRegistry_GetBase
    lis 4, 0x4f4b
    lwz 5, 0x4(26)
    addi 4, 4, 0x544d
    addi 6, 26, 0xc
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 25, 3
    .4byte 0x418001FC # blt .L_801A5B60
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x418201E8 # beq .L_801A5B60
    lwz 0, 0x230(27)
    cmpwi 0, 0x4
    .4byte 0x418201DC # beq .L_801A5B60
    lwz 3, 0x98(31)
    bl fn_801F6874
    lfs 1, 0x10(31)
    mr 28, 3
    lfs 0, 0x10(27)
    .4byte 0xC082B680 # lfs f4, lbl_8053E620@sda21(r0)
    fsubs 1, 1, 0
    lfs 3, 0xc(31)
    lfs 2, 0xc(27)
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    fsubs 2, 3, 2
    fmuls 6, 4, 1
    fmuls 5, 4, 2
    fmuls 1, 6, 6
    fmadds 4, 5, 5, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801A5A14
    frsqrte 1, 4
    .4byte 0xC862B660 # lfd f3, lbl_8053E600@sda21(r0)
    .4byte 0xC842B668 # lfd f2, lbl_8053E608@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801A5A98
L_801A5A14:
    .4byte 0xC802B670 # lfd f0, lbl_8053E610@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801A5A2C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801A5A98
L_801A5A2C:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801A5A54
    .4byte 0x40800040 # bge .L_801A5A84
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801A5A6C
    .4byte 0x48000034 # b .L_801A5A84
L_801A5A54:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A5A64
    li 0, 0x1
    .4byte 0x48000028 # b .L_801A5A88
L_801A5A64:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801A5A88
L_801A5A6C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A5A7C
    li 0, 0x5
    .4byte 0x48000010 # b .L_801A5A88
L_801A5A7C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801A5A88
L_801A5A84:
    li 0, 0x4
L_801A5A88:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A5A98
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801A5A98:
    fneg 1, 5
    lis 3, lbl_80534C00@ha
    fneg 2, 6
    stfs 4, 0x254(27)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002B640 # lfs f0, lbl_8053E5E0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    sth 0, 0x8(1)
    lwz 3, 0x98(26)
    bl fn_801F6874
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 24, 0, 16
    .4byte 0x48000018 # b .L_801A5AF4
L_801A5AE0:
    mr 4, 24
    addi 3, 1, 0x8
    li 5, 0x1
    li 6, 0x1000
    bl fn_801F714C
L_801A5AF4:
    mr 3, 24
    bl ClassifyBamAngleToQuadrant
    lhz 0, 0x8(1)
    mr 25, 3
    mr 3, 0
    bl ClassifyBamAngleToQuadrant
    cmpw 3, 25
    .4byte 0x4082FFD0 # bne .L_801A5AE0
    lhz 0, 0x8(1)
    cmpwi 29, 0xf
    subf 3, 0, 28
    .4byte 0x40820010 # bne .L_801A5B30
    li 0, 0x5
    stw 0, 0x230(27)
    .4byte 0x48000028 # b .L_801A5B54
L_801A5B30:
    cmpwi 29, 0x10
    .4byte 0x4182000C # beq .L_801A5B40
    cmpwi 29, 0x12
    .4byte 0x40820010 # bne .L_801A5B4C
L_801A5B40:
    li 0, 0x6
    stw 0, 0x230(27)
    .4byte 0x4800000C # b .L_801A5B54
L_801A5B4C:
    li 0, 0x4
    stw 0, 0x230(27)
L_801A5B54:
    lwz 0, 0x198(31)
    stw 0, 0x258(27)
    sth 3, 0x25c(27)
L_801A5B60:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xa0(31)
    cmpwi 29, 0xf
    li 27, 0xa
    stw 0, 0xd8(31)
    stw 0, 0xdc(31)
    .4byte 0x4082018C # bne .L_801A5D08
    li 27, 0xff
    .4byte 0x48000184 # b .L_801A5D08
    li 27, 0xff
    .4byte 0x4800017C # b .L_801A5D08
    li 27, 0xa
    .4byte 0x48000174 # b .L_801A5D08
    lwz 3, 0x4(26)
    addi 4, 26, 0xc
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(26)
    addi 4, 26, 0xc
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stw 0, 0x230(31)
    li 24, 0x0
    li 27, 0x0
L_801A5BF8:
    mr 3, 24
    bl fn_8023B2B0
    mr. 25, 3
    .4byte 0x41800020 # blt .L_801A5C24
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    cmplwi 3, 0x0
    mr 26, 3
    .4byte 0x41820008 # beq .L_801A5C24
    stw 27, 0x108(3)
L_801A5C24:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FFCC # blt .L_801A5BF8
    li 0, -0x1
    stw 0, 0xa0(31)
    li 27, 0xff
    .4byte 0x480000CC # b .L_801A5D08
    li 0, 0x0
    stb 0, 0x11c(31)
    li 0, -0x1
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    stw 0, 0xa0(31)
    addi 4, 26, 0xc
    li 5, 0x24a
    li 6, 0x0
    lwz 3, 0x4(26)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(26)
    addi 4, 26, 0xc
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    li 5, 0x24b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    li 27, 0xff
    stb 0, 0x11c(26)
    .4byte 0x4800005C # b .L_801A5D08
    cmplwi 4, 0x1
    .4byte 0x4082000C # bne .L_801A5CC0
    li 0, 0x2
    sth 0, 0x94(26)
L_801A5CC0:
    lhz 0, 0x94(26)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801A5CD4
    li 0, 0x4
    sth 0, 0x94(26)
L_801A5CD4:
    li 0, -0x1
    li 27, 0xff
    stw 0, 0xa0(31)
    .4byte 0x48000028 # b .L_801A5D08
    cmplwi 4, 0x2
    .4byte 0x4182000C # beq .L_801A5CF4
    cmplwi 4, 0x4
    .4byte 0x4082000C # bne .L_801A5CFC
L_801A5CF4:
    li 0, 0x1
    sth 0, 0x94(31)
L_801A5CFC:
    li 0, -0x1
    li 27, 0xff
    stw 0, 0xa0(31)
L_801A5D08:
    cmpwi 30, 0x0
    .4byte 0x41800008 # blt .L_801A5D14
    .4byte 0x93CD8540 # stw r30, lbl_8053A100@sda21(r0)
L_801A5D14:
    cmpwi 29, 0x4
    .4byte 0x41820020 # beq .L_801A5D38
    cmpwi 29, 0x8
    .4byte 0x41820018 # beq .L_801A5D38
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
L_801A5D38:
    cmpwi 27, 0x0
    .4byte 0x418200A0 # beq .L_801A5DDC
    subi 0, 29, 0x1
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_801A5D5C
    cmpwi 29, 0x5
    .4byte 0x4182000C # beq .L_801A5D5C
    cmpwi 29, 0x10
    .4byte 0x4082007C # bne .L_801A5DD4
L_801A5D5C:
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x7c
    lfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x0
    li 6, 0x0
    stfs 0, 0x84(1)
    li 7, 0x3
    li 8, -0x1
    psq_st 1, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    psq_l 0, 0x3c(26), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(26), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(5), 1, 0
    bl fn_801F37AC
    lwz 0, 0xbc(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_801A5DB8
    cmpwi 29, 0x5
    .4byte 0x40820020 # bne .L_801A5DD4
L_801A5DB8:
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    stfs 0, 0x40(1)
    stfs 0, 0x44(1)
    psq_l 1, 0x40(1), 0, 0
    stfs 0, 0x48(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_801A5DD4:
    mr 3, 27
    .4byte 0x48000314 # b .L_801A60EC
L_801A5DDC:
    lwz 24, 0xa0(31)
    cmpwi 24, 0x0
    .4byte 0x41800304 # blt .L_801A60E8
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820294 # beq .L_801A608C
    lwz 3, 0x1a0(29)
    subis 0, 3, 0x4152
    cmplwi 0, 0x5257
    .4byte 0x408202E0 # bne .L_801A60E8
    lwz 0, 0xb0(31)
    li 27, 0xa
    clrlwi 0, 0, 24
    cmplwi 0, 0x11
    .4byte 0x418102CC # bgt .L_801A60E8
    lis 3, jumptable_804A2D98@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A2D98@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    psq_l 1, 0xc(29), 0, 0
    cmpwi 30, 0x0
    lfs 0, 0x14(29)
    psq_st 1, 0x70(1), 0, 0
    stfs 0, 0x78(1)
    .4byte 0x41800008 # blt .L_801A5E54
    .4byte 0x93CD8540 # stw r30, lbl_8053A100@sda21(r0)
L_801A5E54:
    lwz 3, 0x198(31)
    cntlzw 0, 3
    rlwinm. 0, 0, 27, 27, 27
    .4byte 0x4182005C # beq .L_801A5EBC
    clrlwi 3, 3, 29
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x88(1)
    .4byte 0xC862B650 # lfd f3, lbl_8053E5F0@sda21(r0)
    stw 3, 0x8c(1)
    .4byte 0xC082B64C # lfs f4, lbl_8053E5EC@sda21(r0)
    lfd 0, 0x88(1)
    stw 3, 0x94(1)
    fsubs 2, 0, 3
    lfs 5, 0x70(1)
    stw 0, 0x90(1)
    lfs 1, 0x74(1)
    lfd 0, 0x90(1)
    fsubs 2, 4, 2
    fsubs 0, 0, 3
    fadds 2, 5, 2
    fsubs 0, 4, 0
    stfs 2, 0x70(1)
    fadds 0, 1, 0
    stfs 0, 0x74(1)
    .4byte 0x48000058 # b .L_801A5F10
L_801A5EBC:
    clrlwi 3, 3, 29
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x90(1)
    .4byte 0xC862B650 # lfd f3, lbl_8053E5F0@sda21(r0)
    stw 3, 0x94(1)
    .4byte 0xC082B64C # lfs f4, lbl_8053E5EC@sda21(r0)
    lfd 0, 0x90(1)
    stw 3, 0x8c(1)
    fsubs 2, 0, 3
    lfs 5, 0x70(1)
    stw 0, 0x88(1)
    lfs 1, 0x74(1)
    lfd 0, 0x88(1)
    fsubs 2, 4, 2
    fsubs 0, 0, 3
    fsubs 2, 5, 2
    fsubs 0, 4, 0
    stfs 2, 0x70(1)
    fsubs 0, 1, 0
    stfs 0, 0x74(1)
L_801A5F10:
    psq_l 1, 0x70(1), 0, 0
    mr 3, 31
    lfs 0, 0x78(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x4(29)
    stw 0, 0x4(31)
    lwz 12, 0x0(31)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    .4byte 0x480001AC # b .L_801A60E8
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801A5F68
    lfs 0, 0x14(31)
    .4byte 0xC022B634 # lfs f1, lbl_8053E5D4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_801A5F68
    lfs 0, 0x44(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820014 # beq .L_801A5F78
L_801A5F68:
    li 0, -0x1
    li 27, 0xff
    stw 0, 0xa0(31)
    .4byte 0x48000174 # b .L_801A60E8
L_801A5F78:
    lwz 0, 0x26c(29)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_801A5F98
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xa0(31)
    stw 0, 0x108(31)
    stw 0, 0xb0(31)
L_801A5F98:
    lfs 0, 0x14(29)
    mr 3, 31
    psq_l 1, 0xc(29), 0, 0
    stfs 0, 0x24(1)
    psq_l 3, 0x24(31), 0, 0
    psq_l 2, 0x24(1), 1, 0
    psq_l 0, 0x2c(31), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x1c(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(31), 0, 0
    psq_st 0, 0x24(1), 1, 0
    lfs 0, 0x24(1)
    psq_st 3, 0x1c(1), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x4(29)
    psq_st 3, 0x34(1), 0, 0
    stw 0, 0x4(31)
    lwz 12, 0x0(31)
    stfs 0, 0x3c(1)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    lwz 0, 0x26c(29)
    cmpwi 0, 0x2
    .4byte 0x408200EC # bne .L_801A60E8
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 27, 0x14
    .4byte 0x480000D0 # b .L_801A60E8
    lfs 0, 0x14(29)
    psq_l 1, 0xc(29), 0, 0
    stfs 0, 0x18(1)
    psq_l 3, 0x24(31), 0, 0
    psq_l 2, 0x18(1), 1, 0
    psq_l 0, 0x2c(31), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x10(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(31), 0, 0
    psq_st 0, 0x18(1), 1, 0
    lfs 0, 0x18(1)
    psq_st 3, 0x10(1), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x4(29)
    psq_st 3, 0x28(1), 0, 0
    stw 0, 0x4(31)
    lwz 0, 0x26c(29)
    stfs 0, 0x30(1)
    cmpwi 0, 0x2
    .4byte 0x4082007C # bne .L_801A60E8
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 27, 0x14
    .4byte 0x48000060 # b .L_801A60E8
L_801A608C:
    lwz 0, 0xb0(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0xa
    .4byte 0x41820044 # beq .L_801A60DC
    .4byte 0x40800010 # bge .L_801A60AC
    cmpwi 0, 0x8
    .4byte 0x41820014 # beq .L_801A60B8
    .4byte 0x48000020 # b .L_801A60C8
L_801A60AC:
    cmpwi 0, 0x11
    .4byte 0x4182002C # beq .L_801A60DC
    .4byte 0x48000014 # b .L_801A60C8
L_801A60B8:
    li 0, 0x0
    stw 0, 0x108(31)
    stw 0, 0xb0(31)
    .4byte 0x48000018 # b .L_801A60DC
L_801A60C8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801A60DC:
    li 0, -0x1
    li 27, 0x14
    stw 0, 0xa0(31)
L_801A60E8:
    mr 3, 27
L_801A60EC:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    lmw 24, 0xa0(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

