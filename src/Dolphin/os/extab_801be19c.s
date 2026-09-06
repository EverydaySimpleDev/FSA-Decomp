.section extab, "a"
.balign 4
.global etb_80007EBC
etb_80007EBC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80007EBC, 8

.global etb_80007EC4
etb_80007EC4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007EC4, 8

.global etb_80007ECC
etb_80007ECC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007ECC, 8

.global etb_80007ED4
etb_80007ED4:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_80007ED4, 8

.global etb_80007EDC
etb_80007EDC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007EDC, 8

.global etb_80007EE4
etb_80007EE4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007EE4, 8

.section extabindex, "a"
.balign 4
.global eti_80014F98
eti_80014F98:
    .4byte fn_801BE19C
    .4byte 0x000000E8
    .4byte etb_80007EBC
.size eti_80014F98, 12

.global eti_80014FA4
eti_80014FA4:
    .4byte fn_801BE284
    .4byte 0x00000048
    .4byte etb_80007EC4
.size eti_80014FA4, 12

.global eti_80014FB0
eti_80014FB0:
    .4byte fn_801BE2D0
    .4byte 0x000000EC
    .4byte etb_80007ECC
.size eti_80014FB0, 12

.global eti_80014FBC
eti_80014FBC:
    .4byte fn_801BE3BC
    .4byte 0x00000308
    .4byte etb_80007ED4
.size eti_80014FBC, 12

.global eti_80014FC8
eti_80014FC8:
    .4byte fn_801BE6C4
    .4byte 0x000001A8
    .4byte etb_80007EDC
.size eti_80014FC8, 12

.global eti_80014FD4
eti_80014FD4:
    .4byte fn_801BE86C
    .4byte 0x0000019C
    .4byte etb_80007EE4
.size eti_80014FD4, 12

.text
.balign 4
.global fn_801BE19C
.global fn_801BE284
.global fn_801BE2CC
.global fn_801BE2D0
.global fn_801BE3BC
.global fn_801BE6C4
.global fn_801BE86C

fn_801BE19C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x40820098 # bne .L_801BE25C
    li 30, 0x0
L_801BE1CC:
    mr 3, 29
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 30, 3
    .4byte 0x40820048 # bne .L_801BE230
    mr 3, 30
    bl fn_8023B6CC
    mr 3, 30
    bl fn_8023E854
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_801BE230
    mr 3, 29
    addi 4, 1, 0x8
    bl fn_801F3128
    lwz 4, 0x114(29)
    mr 3, 30
    addi 5, 1, 0x8
    li 6, 0xa
    bl fn_80238548
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801BE230
    li 31, 0x1
L_801BE230:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF94 # blt .L_801BE1CC
    clrlwi. 0, 31, 24
    .4byte 0x41820024 # beq .L_801BE264
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xc
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800000C # b .L_801BE264
L_801BE25C:
    bl fn_801CEBD0
    mr 31, 3
L_801BE264:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BE284:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lhz 0, 0x2aa(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801BE2A8
    lis 4, 0x4e55
    addi 4, 4, 0x4c4c
    .4byte 0x48000008 # b .L_801BE2AC
L_801BE2A8:
    lwz 4, 0x1a0(3)
L_801BE2AC:
    lis 5, 0x5357
    li 6, 0x0
    addi 5, 5, 0x424d
    bl fn_801F2DB4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BE2CC:
    blr

fn_801BE2D0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    bl fn_801CE2BC
    lhz 3, 0x2aa(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801BE300
    subi 0, 3, 0x1
    sth 0, 0x2aa(30)
L_801BE300:
    lfs 4, 0x10(30)
    addi 3, 1, 0x8
    .4byte 0xC002BD14 # lfs f0, lbl_8053ECB4@sda21(r0)
    lfs 1, 0xc(30)
    fadds 3, 4, 0
    fadds 2, 1, 0
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x14(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 2, 0x10(1)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239914
    lhz 0, 0x2aa(30)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_801BE3A4
    lfs 4, 0x10(30)
    .4byte 0xC002BD14 # lfs f0, lbl_8053ECB4@sda21(r0)
    lfs 1, 0xc(30)
    fadds 3, 4, 0
    fadds 2, 1, 0
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x24(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 2, 0x20(1)
    lwz 31, 0x198(30)
    lwz 30, 0x4(30)
    bl fn_8020D58C
    mr 7, 3
    mr 5, 30
    lbz 0, 0x0(3)
    mr 6, 31
    addi 4, 1, 0x18
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 7, 3
    bl fn_8020D8C0
L_801BE3A4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801BE3BC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    lwz 0, 0x230(3)
    mr 31, 3
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182003C # beq .L_801BE42C
    lwz 27, 0x2b0(31)
    cmpwi 27, 0x0
    .4byte 0x41820030 # beq .L_801BE42C
    bl GetRoomConfigRecord
    mr 4, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801BE42C
    lwz 0, 0x230(31)
    mr 3, 31
    li 4, 0x0
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(31)
    bl fn_801BE6C4
L_801BE42C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x40820030 # bne .L_801BE464
    lwz 27, 0x2b4(31)
    cmpwi 27, 0x0
    .4byte 0x41820024 # beq .L_801BE464
    bl GetRoomConfigRecord
    mr 4, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801BE464
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_801BE464:
    lwz 0, 0x230(31)
    rlwinm. 3, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_801BE480
    mr 3, 31
    li 4, 0x1
    bl fn_801BE6C4
    .4byte 0x4800021C # b .L_801BE698
L_801BE480:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810210 # ble .L_801BE698
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x418201CC # beq .L_801BE660
    .4byte 0x40800014 # bge .L_801BE4AC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801BE4B8
    .4byte 0x40800034 # bge .L_801BE4D8
    .4byte 0x480001F0 # b .L_801BE698
L_801BE4AC:
    cmpwi 0, 0x4
    .4byte 0x408001E8 # bge .L_801BE698
    .4byte 0x480001C8 # b .L_801BE67C
L_801BE4B8:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418001D4 # blt .L_801BE698
    mr 3, 31
    li 4, 0x1
    bl fn_801BE6C4
    .4byte 0x480001C4 # b .L_801BE698
L_801BE4D8:
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_801BE4F4
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc1
    li 5, 0x0
    bl fn_801F0E34
L_801BE4F4:
    lha 3, 0x2a8(31)
    addi 0, 3, 0x100
    sth 0, 0x2a8(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1e
    .4byte 0x41800190 # blt .L_801BE698
    lha 0, 0x2a8(31)
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80534C00@ha
    .4byte 0xC042BD0C # lfs f2, lbl_8053ECAC@sda21(r0)
    addi 5, 4, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    add 4, 5, 0
    lfsx 1, 5, 0
    lfs 3, 0x4(4)
    addi 3, 3, lbl_80534C00@l
    .4byte 0xC002BD08 # lfs f0, lbl_8053ECA8@sda21(r0)
    fmuls 1, 2, 1
    li 27, -0x1
    fmuls 2, 0, 3
    bl fn_80093340
    .4byte 0xC002BD18 # lfs f0, lbl_8053ECB8@sda21(r0)
    li 28, 0x0
    .4byte 0xC3C2BD1C # lfs f30, lbl_8053ECBC@sda21(r0)
    lis 30, 0x4330
    fmuls 0, 1, 0
    .4byte 0xCBE2BD28 # lfd f31, lbl_8053ECC8@sda21(r0)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    extsh 29, 0
L_801BE570:
    lbz 0, 0x2ac(31)
    mr 3, 31
    stw 30, 0x8(1)
    mr 4, 28
    addi 5, 31, 0xc
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 31
    fmuls 1, 30, 0
    bl fn_801D08B4
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_801BE63C
    mr 3, 28
    bl fn_8023E724
    .4byte 0xC022BD04 # lfs f1, lbl_8053ECA4@sda21(r0)
    lfs 0, 0x10(31)
    lfs 2, 0x4(3)
    mr 3, 28
    fadds 0, 1, 0
    fsubs 29, 2, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0xc(31)
    fmr 2, 29
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 1, 0
    bl fn_80093340
    .4byte 0xC002BD18 # lfs f0, lbl_8053ECB8@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x10(1)
    fmuls 2, 1, 0
    .4byte 0xC862BD30 # lfd f3, lbl_8053ECD0@sda21(r0)
    .4byte 0xC022BD20 # lfs f1, lbl_8053ECC0@sda21(r0)
    .4byte 0xC002BD24 # lfs f0, lbl_8053ECC4@sda21(r0)
    fctiwz 2, 2
    stfd 2, 0x8(1)
    lwz 0, 0xc(1)
    subf 0, 0, 29
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801BE63C
    mr 27, 28
    .4byte 0x48000010 # b .L_801BE648
L_801BE63C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF2C # blt .L_801BE570
L_801BE648:
    cmpwi 27, 0x0
    .4byte 0x4180004C # blt .L_801BE698
    mr 3, 31
    li 4, 0x2
    bl fn_801BE6C4
    .4byte 0x4800003C # b .L_801BE698
L_801BE660:
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf
    .4byte 0x41800030 # blt .L_801BE698
    mr 3, 31
    li 4, 0x3
    bl fn_801BE6C4
    .4byte 0x48000020 # b .L_801BE698
L_801BE67C:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800010 # blt .L_801BE698
    mr 3, 31
    li 4, 0x1
    bl fn_801BE6C4
L_801BE698:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801BE6C4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 4
    cmpwi 29, 0x2
    .4byte 0x41820034 # beq .L_801BE71C
    .4byte 0x40800010 # bge .L_801BE6FC
    cmpwi 29, 0x0
    .4byte 0x41820014 # beq .L_801BE708
    .4byte 0x48000124 # b .L_801BE81C
L_801BE6FC:
    cmpwi 29, 0x4
    .4byte 0x4080011C # bge .L_801BE81C
    .4byte 0x480000EC # b .L_801BE7F0
L_801BE708:
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0x5a
    stw 0, 0x250(31)
    .4byte 0x48000104 # b .L_801BE81C
L_801BE71C:
    lha 0, 0x2a8(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042BD08 # lfs f2, lbl_8053ECA8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 1, 0x10(31)
    add 3, 4, 0
    .4byte 0xC0A2BD04 # lfs f5, lbl_8053ECA4@sda21(r0)
    lfs 4, 0x4(3)
    li 30, 0x0
    fadds 0, 5, 1
    .4byte 0xC062BD0C # lfs f3, lbl_8053ECAC@sda21(r0)
    fmadds 4, 2, 4, 1
    lfsx 2, 4, 0
    lfs 1, 0xc(31)
    fadds 4, 5, 4
    lfs 5, 0x14(31)
    fmadds 1, 3, 2, 1
    stfs 5, 0x10(1)
    fcmpo cr0, 4, 0
    stfs 1, 0x8(1)
    stfs 4, 0xc(1)
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801BE780
    li 30, 0x1
L_801BE780:
    lwz 3, 0x4(31)
    mr 7, 30
    .4byte 0xC022BD00 # lfs f1, lbl_8053ECA0@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0x1c
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    mr 7, 30
    .4byte 0xC022BD00 # lfs f1, lbl_8053ECA0@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0x1d
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x62
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x3c
    sth 0, 0x2aa(31)
    .4byte 0x48000030 # b .L_801BE81C
L_801BE7F0:
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0x5a
    mr 3, 31
    stw 0, 0x250(31)
    bl fn_801BE86C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x63
    li 5, 0x0
    bl fn_801F0E34
L_801BE81C:
    li 0, 0x0
    stw 0, 0x24c(31)
    stw 29, 0x248(31)
    lhz 0, 0x2aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801BE844
    lis 3, 0x4
    addi 0, 3, 0x2
    stw 0, 0xb0(31)
    .4byte 0x48000010 # b .L_801BE850
L_801BE844:
    lis 3, 0x4
    addi 0, 3, 0x4
    stw 0, 0xb0(31)
L_801BE850:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801BE86C:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC022BD08 # lfs f1, lbl_8053ECA8@sda21(r0)
    stw 0, 0x34(1)
    .4byte 0xC082BD04 # lfs f4, lbl_8053ECA4@sda21(r0)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    lis 3, lbl_8052EBC0@ha
    lha 0, 0x2a8(29)
    addi 3, 3, lbl_8052EBC0@l
    lfs 5, 0x14(29)
    addi 30, 3, 0x4
    rlwinm 0, 0, 30, 18, 28
    lfsx 2, 30, 0
    lfs 0, 0x10(29)
    stfs 5, 0x1c(1)
    fmadds 3, 1, 2, 0
    .4byte 0xC042BD0C # lfs f2, lbl_8053ECAC@sda21(r0)
    lfsx 1, 3, 0
    lfs 0, 0xc(29)
    fadds 3, 4, 3
    fmadds 0, 2, 1, 0
    stfs 3, 0x18(1)
    stfs 0, 0x14(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4c4e
    lwz 5, 0x4(29)
    lwz 7, 0x198(29)
    addi 4, 4, 0x424d
    addi 6, 1, 0x14
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 31, 3
    .4byte 0x418000F0 # blt .L_801BE9EC
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200DC # beq .L_801BE9EC
    .4byte 0xC022BD04 # lfs f1, lbl_8053ECA4@sda21(r0)
    li 4, 0x0
    lfs 0, 0x10(29)
    lfs 2, 0x18(1)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801BE938
    li 4, 0x1
L_801BE938:
    lha 0, 0x2a8(29)
    lis 5, lbl_8052EBC0@ha
    sth 4, 0x94(3)
    addi 5, 5, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002BD08 # lfs f0, lbl_8053ECA8@sda21(r0)
    lfsx 1, 30, 0
    lis 4, lbl_80539D44@ha
    .4byte 0xC042BD0C # lfs f2, lbl_8053ECAC@sda21(r0)
    fmuls 5, 0, 1
    lfsx 0, 5, 0
    .4byte 0xC022BD38 # lfs f1, lbl_8053ECD8@sda21(r0)
    fmuls 4, 2, 0
    lfs 0, lbl_80539D44@l(4)
    fmuls 2, 5, 5
    fmuls 0, 1, 0
    fmadds 6, 4, 4, 2
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801BE9C4
    .4byte 0xC002BD3C # lfs f0, lbl_8053ECDC@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801BE99C
    .4byte 0x48000024 # b .L_801BE9BC
L_801BE99C:
    frsqrte 3, 6
    .4byte 0xC042BD40 # lfs f2, lbl_8053ECE0@sda21(r0)
    .4byte 0xC002BD44 # lfs f0, lbl_8053ECE4@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_801BE9BC:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_801BE9C4:
    .4byte 0xC022BD48 # lfs f1, lbl_8053ECE8@sda21(r0)
    .4byte 0xC002BD3C # lfs f0, lbl_8053ECDC@sda21(r0)
    fmuls 4, 4, 1
    fmuls 5, 5, 1
    stfs 0, 0x10(1)
    stfs 4, 0x8(1)
    stfs 5, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801BE9EC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

