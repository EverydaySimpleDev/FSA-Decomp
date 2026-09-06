.section extab, "a"
.balign 4
.global etb_8000C8E4
etb_8000C8E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C8E4, 8

.global etb_8000C8EC
etb_8000C8EC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C8EC, 8

.global etb_8000C8F4
etb_8000C8F4:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000C8F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001B6D0
eti_8001B6D0:
    .4byte fn_802BC83C
    .4byte 0x00000050
    .4byte etb_8000C8E4
.size eti_8001B6D0, 12

.global eti_8001B6DC
eti_8001B6DC:
    .4byte fn_802BC930
    .4byte 0x000000C8
    .4byte etb_8000C8EC
.size eti_8001B6DC, 12

.global eti_8001B6E8
eti_8001B6E8:
    .4byte fn_802BC9F8
    .4byte 0x000007B0
    .4byte etb_8000C8F4
.size eti_8001B6E8, 12

.text
.balign 4
.global fn_802BC83C
.global fn_802BC88C
.global fn_802BC930
.global fn_802BC9F8

fn_802BC83C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(31)
    bl GetRoomConfigRecord
    lwz 4, 0x26c(31)
    li 5, 0x0
    bl fn_802D73CC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BC88C:
    lwz 6, 0x230(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802BC8B4
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x230(3)
L_802BC8B4:
    lwz 6, 0x234(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802BC8DC
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x234(3)
L_802BC8DC:
    lwz 6, 0x238(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802BC904
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x238(3)
L_802BC904:
    lwz 6, 0x23c(3)
    cmplwi 6, 0x0
    beqlr
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x23c(3)
    blr

fn_802BC930:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x240(3)
    cmpwi 0, 0x6
    .4byte 0x41820048 # beq .L_802BC994
    lwz 4, 0x4(31)
    cmpwi 4, 0x8
    .4byte 0x4180008C # blt .L_802BC9E4
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 0, 0x280(31)
    lwz 3, 0x198(31)
    srawi 6, 0, 1
    addi 6, 6, 0x109
    bl fn_803075AC
    .4byte 0x48000054 # b .L_802BC9E4
L_802BC994:
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    lis 4, lbl_8046D430@ha
    addi 4, 4, lbl_8046D430@l
    li 5, 0x18e
    fmr 2, 1
    li 6, 0x0
    li 7, 0x0
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x18e
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
L_802BC9E4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802BC9F8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 31, 3
    psq_l 1, 0xc(31), 0, 0
    lbz 0, 0x7f(4)
    lfs 0, 0x14(3)
    cmplwi 0, 0x1
    psq_st 1, 0x24(1), 0, 0
    lwz 4, 0x114(3)
    stfs 0, 0x2c(1)
    .4byte 0x40820008 # bne .L_802BCA40
    li 4, 0x0
L_802BCA40:
    lwz 0, 0x250(31)
    cmpwi 0, 0x4
    .4byte 0x4182002C # beq .L_802BCA74
    mr 3, 31
    li 5, -0x1
    li 6, 0x7
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_802BCA80
    mr 3, 31
    li 4, 0x5
    bl fn_801F2B20
    .4byte 0x48000010 # b .L_802BCA80
L_802BCA74:
    mr 3, 31
    li 4, 0x5
    bl fn_801F2B20
L_802BCA80:
    lwz 0, 0x240(31)
    cmplwi 0, 0x7
    .4byte 0x418106E4 # bgt .L_802BD16C
    lis 3, jumptable_804A8AA8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A8AA8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x1
    addi 3, 31, 0xc
    stw 0, 0x240(31)
    lwz 4, 0x4(31)
    bl fn_80226850
    sth 3, 0x29c(31)
    lhz 3, 0x29c(31)
    bl fn_801EE3C0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_802BCB04
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x258(31)
    lis 7, 0x1
    lwz 6, 0x4(31)
    li 8, 0x1
    bl fn_802A20F0
    .4byte 0x48000214 # b .L_802BCD14
L_802BCB04:
    lhz 0, 0x29c(31)
    cmplwi 0, 0x3eb
    .4byte 0x408200FC # bne .L_802BCC08
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0xf
    bl fn_802A381C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x254
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x255
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 2, 0x10(31)
    addi 3, 1, 0xc
    .4byte 0xC002DC1C # lfs f0, lbl_80540BBC@sda21(r0)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002DC20 # lfs f0, lbl_80540BC0@sda21(r0)
    stfs 1, 0xc(1)
    stfs 2, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3eb
    .4byte 0x40820030 # bne .L_802BCBEC
    psq_l 2, 0xc(31), 0, 0
    li 0, 0x5
    lfs 1, 0x14(31)
    .4byte 0xC002DC1C # lfs f0, lbl_80540BBC@sda21(r0)
    psq_st 2, 0x284(31), 0, 0
    stfs 1, 0x28c(31)
    lfs 1, 0x10(31)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stw 0, 0x240(31)
    .4byte 0x4800012C # b .L_802BCD14
L_802BCBEC:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x3e0
    bl fn_802A3948
    .4byte 0x48000110 # b .L_802BCD14
L_802BCC08:
    cmplwi 0, 0x33
    .4byte 0x40820084 # bne .L_802BCC90
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xad
    bl fn_802A3948
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x254
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x255
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000088 # b .L_802BCD14
L_802BCC90:
    cmplwi 0, 0x34
    .4byte 0x40820080 # bne .L_802BCD14
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x251
    bl fn_802A3948
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x254
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x255
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802BCD14:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002DC18 # lfs f0, lbl_80540BB8@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x8
    .4byte 0xC042DC24 # lfs f2, lbl_80540BC4@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    clrlwi 3, 3, 29
    stw 3, 0x27c(31)
    stw 0, 0x298(31)
    .4byte 0x480003F8 # b .L_802BD16C
    lwz 3, 0x298(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802BCD8C
    subi 0, 3, 0x1
    stw 0, 0x298(31)
L_802BCD8C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2f
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x254(31)
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x14
    .4byte 0x418103B8 # bgt .L_802BD16C
    clrlwi. 0, 0, 31
    .4byte 0x408203B0 # bne .L_802BD16C
    lbz 0, 0x278(31)
    cmplwi 0, 0x8
    .4byte 0x408003A4 # bge .L_802BD16C
    lwz 5, 0x27c(31)
    lis 4, lbl_8046D3B0@ha
    lis 3, lbl_8046D3F0@ha
    lfs 2, 0xc(31)
    slwi 0, 5, 2
    addi 4, 4, lbl_8046D3B0@l
    lfsx 1, 4, 0
    addi 3, 3, lbl_8046D3F0@l
    lfsx 0, 3, 0
    addi 0, 5, 0x1
    fadds 1, 2, 1
    addi 3, 1, 0x18
    stfs 1, 0x18(1)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
    lfs 0, 0x14(31)
    stfs 0, 0x20(1)
    stw 0, 0x27c(31)
    lbz 4, 0x278(31)
    addi 0, 4, 0x1
    stb 0, 0x278(31)
    lwz 4, 0x4(31)
    bl fn_80226850
    clrlwi 3, 3, 16
    bl fn_801EE3C0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820130 # bne .L_802BCF6C
    lwz 0, 0x250(31)
    cmpwi 0, 0x5
    .4byte 0x41820124 # beq .L_802BCF6C
    cmpwi 0, 0x6
    .4byte 0x4182011C # beq .L_802BCF6C
    lfs 1, 0x18(1)
    lfs 0, 0x25c(31)
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    stw 0, 0x270(31)
    lfs 1, 0x1c(1)
    lfs 0, 0x260(31)
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    stw 0, 0x274(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_802BCEA4
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000014 # b .L_802BCEB4
L_802BCEA4:
    cmpwi 0, 0x200
    .4byte 0x4180000C # blt .L_802BCEB4
    li 0, 0x1ff
    stw 0, 0x270(31)
L_802BCEB4:
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_802BCECC
    li 0, 0x0
    stw 0, 0x274(31)
    .4byte 0x48000014 # b .L_802BCEDC
L_802BCECC:
    cmpwi 0, 0x200
    .4byte 0x4180000C # blt .L_802BCEDC
    li 0, 0x1ff
    stw 0, 0x274(31)
L_802BCEDC:
    bl GetRoomConfigRecord
    lwz 5, 0x270(31)
    lwz 0, 0x274(31)
    rlwinm 4, 5, 0, 23, 23
    rlwimi 4, 0, 1, 22, 22
    rlwimi 4, 0, 0, 24, 27
    rlwimi 4, 5, 28, 28, 31
    bl fn_802D7384
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_802BCF6C
    lwz 30, 0x258(31)
    cmpwi 30, -0x1
    .4byte 0x40820034 # bne .L_802BCF40
    bl SpatialRegistry_GetBase
    lwz 0, 0x98(31)
    lis 4, 0x424c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a45
    slwi 0, 0, 4
    addi 6, 1, 0x18
    ori 7, 0, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000030 # b .L_802BCF6C
L_802BCF40:
    bl SpatialRegistry_GetBase
    lwz 0, 0x98(31)
    lis 4, 0x424c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a45
    slwi 0, 0, 4
    lwz 9, 0x110(31)
    addi 6, 1, 0x18
    li 8, -0x1
    or 7, 30, 0
    bl fn_801F9484
L_802BCF6C:
    lbz 0, 0x278(31)
    cmplwi 0, 0x8
    .4byte 0x408201F8 # bne .L_802BD16C
    li 0, 0x2
    stw 0, 0x240(31)
    .4byte 0x480001EC # b .L_802BD16C
    lwz 3, 0x254(31)
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x408201D4 # bne .L_802BD16C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480001BC # b .L_802BD16C
    lwz 3, 0x280(31)
    addi 0, 3, 0x1
    stw 0, 0x280(31)
    lwz 0, 0x280(31)
    cmpwi 0, 0x20
    .4byte 0x418001A4 # blt .L_802BD16C
    lhz 3, 0x29c(31)
    bl fn_801EE3C0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802BCFFC
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x258(31)
    lis 7, 0x1
    lwz 6, 0x4(31)
    li 8, 0x1
    bl fn_802A20F0
L_802BCFFC:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800015C # b .L_802BD16C
    lwz 3, 0x254(31)
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820144 # bne .L_802BD16C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x3e0
    bl fn_802A381C
    li 0, 0x6
    stw 0, 0x240(31)
    .4byte 0x48000124 # b .L_802BD16C
    .4byte 0xC3E2DC28 # lfs f31, lbl_80540BC8@sda21(r0)
L_802BD050:
    lfs 0, 0x10(31)
    fadds 0, 0, 31
    stfs 0, 0x10(31)
    lfs 1, 0x10(31)
    lfs 0, 0x288(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082FFE8 # bne .L_802BD050
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x3eb
    bl fn_802A381C
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x41800028 # blt .L_802BD0B0
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 30
    addi 4, 4, 0x5249
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802BD0B0:
    lfs 2, 0x288(31)
    addi 3, 31, 0xc
    .4byte 0xC022DC1C # lfs f1, lbl_80540BBC@sda21(r0)
    .4byte 0xC002DC2C # lfs f0, lbl_80540BCC@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x288(31)
    lfs 1, 0x10(31)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 4, 0x4(31)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3eb
    .4byte 0x41820044 # beq .L_802BD128
    lfs 1, 0x10(31)
    addi 4, 31, 0xc
    .4byte 0xC002DC1C # lfs f0, lbl_80540BBC@sda21(r0)
    li 5, 0x0
    li 7, 0x3e0
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 6, 0x4(31)
    bl fn_802A3948
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000048 # b .L_802BD16C
L_802BD128:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x3e0
    bl fn_802A381C
    .4byte 0x4BFFFF14 # b .L_802BD050
    lwz 3, 0x254(31)
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802BD16C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802BD16C:
    lwz 0, 0x250(31)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802BD188
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802BD188:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

