# GOL2 cluster, part 3/5 (Track A byte-match + overview -
# 0xE20=3616B, the LARGEST piece of this actor). update() core. Uses
# the global PRNG advance, effect spawn fn_8013CC50, the confirmed
# generic FourCC actor dispatcher fn_801F9484, fn_801EE434/fn_801F0D20/
# fn_801F0E34/fn_801F2B7C/SpatialRegistry_GetBase, the per-room config accessor
# GetRoomConfigRecord, an already-landed callee from the 802d6d70 block
# (fn_802DE7CC), plus unfamiliar fn_801F34DC/80237060/80238548/
# 80239914/8023B8E4/802D75BC/8030C210/8043D67C.
.section extab, "a"
.balign 4
.global etb_8000CF64
etb_8000CF64:
    .4byte 0x794A0000
    .4byte 0x00000000
.size etb_8000CF64, 8

.section extabindex, "a"
.balign 4
.global eti_8001C078
eti_8001C078:
    .4byte fn_802E2C28
    .4byte 0x00000E20
    .4byte etb_8000CF64
.size eti_8001C078, 12

.text
.balign 4
.global fn_802E2C28

fn_802E2C28:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stfd 27, 0x80(1)
    psq_st 27, 0x88(1), 0, 0
    stmw 17, 0x44(1)
    mr 19, 3
    lis 3, lbl_8046EA10@ha
    lwz 0, 0x230(19)
    addi 31, 3, lbl_8046EA10@l
    cmpwi 0, 0x1
    .4byte 0x40800010 # bge .L_802E2C84
    lwz 3, 0x248(19)
    addi 0, 3, 0x1
    stw 0, 0x248(19)
L_802E2C84:
    lfs 0, 0x24c(19)
    stfs 0, 0xc(19)
    lfs 0, 0x250(19)
    stfs 0, 0x10(19)
    lfs 0, 0x254(19)
    stfs 0, 0x14(19)
    lwz 0, 0x230(19)
    lfs 29, 0xc(19)
    cmpwi 0, 0x3
    lfs 28, 0x10(19)
    lfs 27, 0x14(19)
    .4byte 0x41820CC0 # beq .L_802E3970
    .4byte 0x4080001C # bge .L_802E2CD0
    cmpwi 0, 0x1
    .4byte 0x41820B84 # beq .L_802E3840
    .4byte 0x40800020 # bge .L_802E2CE0
    cmpwi 0, 0x0
    .4byte 0x40800040 # bge .L_802E2D08
    .4byte 0x48000CA4 # b .L_802E3970
L_802E2CD0:
    cmpwi 0, 0x5
    .4byte 0x41820C9C # beq .L_802E3970
    .4byte 0x40800C98 # bge .L_802E3970
    .4byte 0x48000B90 # b .L_802E386C
L_802E2CE0:
    lwz 3, 0x2c4(19)
    subi 0, 3, 0x1
    stw 0, 0x2c4(19)
    lwz 0, 0x2c4(19)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_802E2D08
    li 3, 0x1
    li 0, 0x0
    .4byte 0x986D9040 # stb r3, lbl_8053AC00@sda21(r0)
    stw 0, 0x230(19)
L_802E2D08:
    lwz 0, 0x288(19)
    li 20, 0x0
    cmpwi 0, 0x4
    .4byte 0x40820008 # bne .L_802E2D1C
    li 20, 0x1
L_802E2D1C:
    lwz 0, 0x28c(19)
    cmpwi 0, 0x4
    .4byte 0x40820008 # bne .L_802E2D2C
    addi 20, 20, 0x1
L_802E2D2C:
    lwz 0, 0x290(19)
    cmpwi 0, 0x4
    .4byte 0x40820008 # bne .L_802E2D3C
    addi 20, 20, 0x1
L_802E2D3C:
    lwz 0, 0x294(19)
    cmpwi 0, 0x4
    .4byte 0x40820008 # bne .L_802E2D4C
    addi 20, 20, 0x1
L_802E2D4C:
    li 21, 0x0
    .4byte 0xC3C2E234 # lfs f30, lbl_805411D4@sda21(r0)
    .4byte 0xC3E2E238 # lfs f31, lbl_805411D8@sda21(r0)
    mr 30, 19
    mr 29, 19
    mr 28, 19
    mr 27, 21
    addi 26, 31, 0x3b0
    addi 25, 31, 0x470
    addi 24, 31, 0x530
    addi 23, 31, 0x5c0
L_802E2D78:
    psq_l 1, 0x258(30), 0, 0
    addi 3, 1, 0x24
    lfs 0, 0x260(30)
    addi 5, 1, 0x10
    li 6, 0x1
    psq_st 1, 0xc(19), 0, 0
    stfs 0, 0x14(19)
    stfs 30, 0x60(19)
    stfs 30, 0x64(19)
    stfs 31, 0x68(19)
    stfs 31, 0x6c(19)
    lfs 3, 0x60(19)
    stfs 3, 0x24(1)
    lfs 2, 0x64(19)
    stfs 2, 0x28(1)
    lfs 1, 0x68(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x6c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(19)
    bl fn_8023B8E4
    lwz 0, 0x288(29)
    mr 17, 3
    cmpwi 0, 0x1
    .4byte 0x40820154 # bne .L_802E2F5C
    cmpwi 17, 0x0
    .4byte 0x418000D0 # blt .L_802E2EE0
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x408200C4 # bne .L_802E2EE0
    lwz 3, 0x4(19)
    addi 4, 19, 0xc
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 5, 0x113
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(19)
    addi 4, 19, 0xc
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 5, 0x114
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x2
    lis 4, 0x3
    stw 0, 0x288(29)
    li 0, 0x14
    li 5, 0x0
    addi 22, 21, 0x2c0
    stw 0, 0x298(29)
    li 0, 0xff
    mr 3, 19
    addi 4, 4, 0x3a
    stw 5, 0x2a8(29)
    li 5, 0x0
    stbx 0, 19, 22
    bl fn_801F0E34
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    cmpwi 20, 0x3
    .4byte 0x418001B4 # blt .L_802E3070
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x288(29)
    stbx 0, 19, 22
    lbzx 0, 19, 22
    lwz 3, 0x2c8(29)
    stb 0, 0xbb(3)
    .4byte 0x48000194 # b .L_802E3070
L_802E2EE0:
    cmpwi 17, 0x0
    .4byte 0x4180018C # blt .L_802E3070
    lwz 3, 0x4(19)
    addi 4, 19, 0xc
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 5, 0x7b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 1, 0x10(19)
    mr 3, 17
    lfs 0, 0xc(19)
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0xa
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_80238548
    lis 4, 0x3
    mr 3, 19
    addi 4, 4, 0x8b
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x2
    li 0, 0x2d
    stw 3, 0x230(19)
    stw 0, 0x2c4(19)
    .4byte 0x48000118 # b .L_802E3070
L_802E2F5C:
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_802E2FAC
    addi 4, 21, 0x2c0
    lbzx 3, 19, 4
    subi 0, 3, 0xc
    stbx 0, 19, 4
    lwz 3, 0x298(29)
    subi 0, 3, 0x1
    stw 0, 0x298(29)
    lwz 0, 0x298(29)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_802E2F9C
    li 3, 0x0
    li 0, 0x3
    stbx 3, 19, 4
    stw 0, 0x288(29)
L_802E2F9C:
    lbzx 0, 19, 4
    lwz 3, 0x2c8(29)
    stb 0, 0xbb(3)
    .4byte 0x480000C8 # b .L_802E3070
L_802E2FAC:
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_802E2FE8
    lwz 3, 0x2c8(29)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_802E2FCC
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2c8(29)
L_802E2FCC:
    li 0, 0x4
    cmpwi 20, 0x3
    stw 0, 0x288(29)
    .4byte 0x41800098 # blt .L_802E3070
    li 0, 0x1
    stw 0, 0x298(29)
    .4byte 0x4800008C # b .L_802E3070
L_802E2FE8:
    cmpwi 0, 0x4
    .4byte 0x40820084 # bne .L_802E3070
    lwz 3, 0x2a8(29)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E3004
    subi 0, 3, 0x1
    stw 0, 0x2a8(29)
L_802E3004:
    lwz 0, 0x2a8(29)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_802E3070
    cmpwi 17, 0x0
    .4byte 0x4180005C # blt .L_802E3070
    lwz 3, 0x4(19)
    addi 4, 19, 0xc
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 5, 0x113
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(19)
    addi 4, 19, 0xc
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 5, 0x114
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x14
    stw 0, 0x2a8(29)
L_802E3070:
    stfs 30, 0x80(19)
    addi 3, 1, 0x24
    stfs 30, 0x84(19)
    stfs 31, 0x88(19)
    stfs 31, 0x8c(19)
    lwz 4, 0x80(19)
    lwz 0, 0x84(19)
    stw 4, 0x24(1)
    stw 0, 0x28(1)
    lfs 3, 0x24(1)
    lwz 4, 0x88(19)
    lwz 0, 0x8c(19)
    lfs 2, 0x28(1)
    stw 4, 0x2c(1)
    stw 0, 0x30(1)
    lfs 1, 0x2c(1)
    lfs 4, 0xc(19)
    lfs 5, 0x10(19)
    lfs 0, 0x30(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    stfs 4, 0x10(1)
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(19)
    lwz 5, 0x198(19)
    bl fn_80239914
    lhz 0, 0x2b8(28)
    cmplwi 0, 0x0
    .4byte 0x418204E0 # beq .L_802E35D8
    lwz 0, 0x238(19)
    cmpwi 0, 0x4
    .4byte 0x41820288 # beq .L_802E338C
    .4byte 0x40800014 # bge .L_802E311C
    cmpwi 0, 0x1
    .4byte 0x4182014C # beq .L_802E325C
    .4byte 0x40800014 # bge .L_802E3128
    .4byte 0x48000010 # b .L_802E3128
L_802E311C:
    cmpwi 0, 0x6
    .4byte 0x40800008 # bge .L_802E3128
    .4byte 0x480004B4 # b .L_802E35D8
L_802E3128:
    slwi 3, 0, 6
    addi 0, 31, 0x1b0
    add 4, 3, 27
    mr 3, 19
    add 4, 0, 4
    li 5, -0x1
    lfs 0, 0x0(4)
    li 6, 0x1a
    lfs 1, 0x4(4)
    stfs 0, 0x60(19)
    lfs 0, 0x8(4)
    stfs 1, 0x64(19)
    lfs 1, 0xc(4)
    stfs 0, 0x68(19)
    stfs 1, 0x6c(19)
    lfs 3, 0x60(19)
    stfs 3, 0x24(1)
    lfs 2, 0x64(19)
    stfs 2, 0x28(1)
    lfs 1, 0x68(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x6c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x114(19)
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820418 # bne .L_802E35D8
    lwz 4, 0x238(19)
    addi 0, 31, 0x2b0
    addi 3, 1, 0x24
    slwi 4, 4, 6
    add 4, 4, 27
    add 4, 0, 4
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x80(19)
    lfs 0, 0x8(4)
    stfs 1, 0x84(19)
    lfs 1, 0xc(4)
    stfs 0, 0x88(19)
    stfs 1, 0x8c(19)
    lfs 3, 0x80(19)
    stfs 3, 0x24(1)
    lfs 2, 0x84(19)
    stfs 2, 0x28(1)
    lfs 1, 0x88(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x8c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(19)
    lwz 5, 0x198(19)
    bl fn_80239914
    .4byte 0x48000380 # b .L_802E35D8
L_802E325C:
    mr 22, 26
    mr 18, 25
    li 17, 0x0
L_802E3268:
    lfs 0, 0x0(22)
    mr 3, 19
    lfs 1, 0x4(22)
    li 5, -0x1
    stfs 0, 0x60(19)
    li 6, 0x1a
    lfs 0, 0x8(22)
    stfs 1, 0x64(19)
    lfs 1, 0xc(22)
    stfs 0, 0x68(19)
    stfs 1, 0x6c(19)
    lfs 3, 0x60(19)
    stfs 3, 0x24(1)
    lfs 2, 0x64(19)
    stfs 2, 0x28(1)
    lfs 1, 0x68(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x6c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x114(19)
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820084 # bne .L_802E3374
    lfs 0, 0x0(18)
    addi 3, 1, 0x24
    lfs 1, 0x4(18)
    stfs 0, 0x80(19)
    lfs 0, 0x8(18)
    stfs 1, 0x84(19)
    lfs 1, 0xc(18)
    stfs 0, 0x88(19)
    stfs 1, 0x8c(19)
    lfs 3, 0x80(19)
    stfs 3, 0x24(1)
    lfs 2, 0x84(19)
    stfs 2, 0x28(1)
    lfs 1, 0x88(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x8c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(19)
    lwz 5, 0x198(19)
    bl fn_80239914
L_802E3374:
    addi 17, 17, 0x1
    addi 18, 18, 0x10
    cmpwi 17, 0x3
    addi 22, 22, 0x10
    .4byte 0x4180FEE4 # blt .L_802E3268
    .4byte 0x48000250 # b .L_802E35D8
L_802E338C:
    cmpwi 21, 0x3
    .4byte 0x40800248 # bge .L_802E35D8
    cmpwi 21, 0x1
    .4byte 0x41820134 # beq .L_802E34CC
    mr 18, 24
    mr 22, 23
    li 17, 0x0
L_802E33A8:
    lfs 0, 0x0(18)
    mr 3, 19
    lfs 1, 0x4(18)
    li 5, -0x1
    stfs 0, 0x60(19)
    li 6, 0x4
    lfs 0, 0x8(18)
    stfs 1, 0x64(19)
    lfs 1, 0xc(18)
    stfs 0, 0x68(19)
    stfs 1, 0x6c(19)
    lfs 3, 0x60(19)
    stfs 3, 0x24(1)
    lfs 2, 0x64(19)
    stfs 2, 0x28(1)
    lfs 1, 0x68(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x6c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x114(19)
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820084 # bne .L_802E34B4
    lfs 0, 0x0(22)
    addi 3, 1, 0x24
    lfs 1, 0x4(22)
    stfs 0, 0x80(19)
    lfs 0, 0x8(22)
    stfs 1, 0x84(19)
    lfs 1, 0xc(22)
    stfs 0, 0x88(19)
    stfs 1, 0x8c(19)
    lfs 3, 0x80(19)
    stfs 3, 0x24(1)
    lfs 2, 0x84(19)
    stfs 2, 0x28(1)
    lfs 1, 0x88(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x8c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(19)
    lwz 5, 0x198(19)
    bl fn_80239914
L_802E34B4:
    addi 17, 17, 0x1
    addi 22, 22, 0x10
    cmpwi 17, 0x3
    addi 18, 18, 0x10
    .4byte 0x4180FEE4 # blt .L_802E33A8
    .4byte 0x48000110 # b .L_802E35D8
L_802E34CC:
    .4byte 0xC022E23C # lfs f1, lbl_805411DC@sda21(r0)
    mr 3, 19
    .4byte 0xC002E240 # lfs f0, lbl_805411E0@sda21(r0)
    li 5, -0x1
    stfs 1, 0x60(19)
    li 6, 0x4
    .4byte 0xC022E244 # lfs f1, lbl_805411E4@sda21(r0)
    stfs 0, 0x64(19)
    .4byte 0xC002E248 # lfs f0, lbl_805411E8@sda21(r0)
    stfs 1, 0x68(19)
    stfs 0, 0x6c(19)
    lfs 3, 0x60(19)
    stfs 3, 0x24(1)
    lfs 2, 0x64(19)
    stfs 2, 0x28(1)
    lfs 1, 0x68(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x6c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x114(19)
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820084 # bne .L_802E35D8
    .4byte 0xC022E23C # lfs f1, lbl_805411DC@sda21(r0)
    addi 3, 1, 0x24
    .4byte 0xC002E24C # lfs f0, lbl_805411EC@sda21(r0)
    stfs 1, 0x80(19)
    .4byte 0xC022E244 # lfs f1, lbl_805411E4@sda21(r0)
    stfs 0, 0x84(19)
    .4byte 0xC002E250 # lfs f0, lbl_805411F0@sda21(r0)
    stfs 1, 0x88(19)
    stfs 0, 0x8c(19)
    lfs 3, 0x80(19)
    stfs 3, 0x24(1)
    lfs 2, 0x84(19)
    stfs 2, 0x28(1)
    lfs 1, 0x88(19)
    stfs 1, 0x2c(1)
    lfs 4, 0x8c(19)
    stfs 4, 0x30(1)
    lfs 5, 0x10(19)
    lfs 0, 0xc(19)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x10(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x14(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(19)
    lwz 5, 0x198(19)
    bl fn_80239914
L_802E35D8:
    addi 21, 21, 0x1
    addi 29, 29, 0x4
    cmpwi 21, 0x4
    addi 28, 28, 0x2
    addi 27, 27, 0x10
    addi 26, 26, 0x30
    addi 25, 25, 0x30
    addi 24, 24, 0x30
    addi 23, 23, 0x30
    addi 30, 30, 0xc
    .4byte 0x4180F778 # blt .L_802E2D78
    lwz 0, 0x288(19)
    li 3, 0x0
    cmpwi 0, 0x4
    .4byte 0x41820008 # beq .L_802E3618
    li 3, 0x1
L_802E3618:
    lwz 0, 0x28c(19)
    cmpwi 0, 0x4
    .4byte 0x41820008 # beq .L_802E3628
    li 3, 0x1
L_802E3628:
    lwz 0, 0x290(19)
    cmpwi 0, 0x4
    .4byte 0x41820008 # beq .L_802E3638
    li 3, 0x1
L_802E3638:
    lwz 0, 0x294(19)
    cmpwi 0, 0x4
    .4byte 0x41820008 # beq .L_802E3648
    li 3, 0x1
L_802E3648:
    cmpwi 3, 0x0
    .4byte 0x40820324 # bne .L_802E3970
    mr 18, 19
    mr 21, 19
    addi 20, 19, 0xc
    li 22, 0x0
L_802E3660:
    psq_l 2, 0x258(18), 0, 0
    mr 4, 20
    lfs 0, 0x260(18)
    li 5, 0x7b
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 6, 0x0
    psq_st 2, 0x0(20), 0, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x8(20)
    li 10, 0x1
    lwz 3, 0x4(19)
    bl fn_8013CC50
    lwz 3, 0x4(19)
    addi 4, 19, 0xc
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 5, 0x7c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(19)
    addi 4, 19, 0xc
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    li 5, 0x7d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 5, 0x2d8(21)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802E3710
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2d8(21)
L_802E3710:
    addi 22, 22, 0x1
    addi 21, 21, 0x4
    cmpwi 22, 0x4
    addi 18, 18, 0xc
    .4byte 0x4180FF40 # blt .L_802E3660
    lwz 0, 0x238(19)
    cmpwi 0, 0x5
    .4byte 0x40820024 # bne .L_802E3750
    mr 3, 19
    li 4, 0xff
    lwz 12, 0x0(19)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x4800002C # b .L_802E3778
L_802E3750:
    lwz 0, 0x244(19)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_802E3778
    mr 3, 19
    li 4, 0xff
    lwz 12, 0x0(19)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802E3778:
    bl fn_802DE7CC
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_802E3818
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    lwz 6, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_802E37A4
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_802E37AC
L_802E37A4:
    li 0, 0x0
    .4byte 0x48000054 # b .L_802E37FC
L_802E37AC:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_802E37BC
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_802E37C4
L_802E37BC:
    li 0, 0x0
    .4byte 0x4800003C # b .L_802E37FC
L_802E37C4:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802E37FC:
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802E3818
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x341
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
L_802E3818:
    lis 4, 0x3
    mr 3, 19
    addi 4, 4, 0x39
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x1
    li 0, 0x14
    stw 3, 0x230(19)
    stw 0, 0x234(19)
    .4byte 0x48000134 # b .L_802E3970
L_802E3840:
    lwz 3, 0x234(19)
    subi 0, 3, 0x1
    stw 0, 0x234(19)
    lwz 0, 0x234(19)
    cmpwi 0, 0x0
    .4byte 0x4082011C # bne .L_802E3970
    li 3, 0x4
    li 0, 0x64
    stw 3, 0x230(19)
    stw 0, 0x234(19)
    .4byte 0x48000108 # b .L_802E3970
L_802E386C:
    lwz 3, 0x234(19)
    subi 0, 3, 0x1
    stw 0, 0x234(19)
    lwz 0, 0x234(19)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_802E395C
    lwz 0, 0x238(19)
    cmpwi 0, 0x5
    .4byte 0x418200C4 # beq .L_802E3950
    stfs 29, 0xc(19)
    li 17, 0x0
    stfs 28, 0x10(19)
    stfs 27, 0x14(19)
    lwz 0, 0x248(19)
    cmpwi 0, 0x258
    .4byte 0x40800020 # bge .L_802E38C8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802E38C4
    li 17, 0x2
    .4byte 0x48000008 # b .L_802E38C8
L_802E38C4:
    li 17, 0x1
L_802E38C8:
    bl GetRoomConfigRecord
    lwz 4, 0x16c(19)
    bl fn_802D75BC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802E38E8
    mr 3, 19
    bl fn_801F34DC
    .4byte 0x48000008 # b .L_802E38EC
L_802E38E8:
    li 17, 0x0
L_802E38EC:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_802E390C
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4182003C # beq .L_802E3944
L_802E390C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x238(19)
    lis 6, 0x474f
    slwi 9, 17, 17
    lwz 5, 0x4(19)
    addi 0, 4, 0x1
    addi 4, 6, 0x414c
    slwi 7, 0, 12
    addi 6, 19, 0xc
    addi 7, 7, 0x2
    li 8, -0x1
    add 7, 9, 7
    li 9, -0x1
    bl fn_801F9484
L_802E3944:
    li 0, 0x0
    stb 0, 0x11c(19)
    .4byte 0x48000024 # b .L_802E3970
L_802E3950:
    li 0, 0x5
    stw 0, 0x230(19)
    .4byte 0x48000018 # b .L_802E3970
L_802E395C:
    cmpwi 0, 0x3c
    .4byte 0x40820010 # bne .L_802E3970
    mr 3, 19
    li 4, 0x3
    bl fn_801F0D20
L_802E3970:
    lwz 0, 0x230(19)
    cmpwi 0, 0x4
    .4byte 0x40800018 # bge .L_802E3990
    lis 4, 0x3
    mr 3, 19
    addi 4, 4, 0x38
    li 5, 0x0
    bl fn_801F0E34
L_802E3990:
    stfs 29, 0xc(19)
    addi 5, 31, 0x650
    addi 4, 1, 0x18
    stfs 28, 0x10(19)
    stfs 27, 0x14(19)
    lwz 0, 0x238(19)
    lfs 3, 0x10(19)
    slwi 0, 0, 3
    lfs 1, 0xc(19)
    add 3, 5, 0
    lfsx 0, 5, 0
    lfs 2, 0x4(3)
    lfs 4, 0x14(19)
    fadds 0, 1, 0
    fadds 1, 3, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 4, 0x20(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x2e8(19)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E39F8
    lbz 0, 0x2f4(19)
    stb 0, 0xbb(3)
L_802E39F8:
    lwz 3, 0x2ec(19)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E3A0C
    lbz 0, 0x2f4(19)
    stb 0, 0xbb(3)
L_802E3A0C:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    psq_l 27, 0x88(1), 0, 0
    lfd 27, 0x80(1)
    lmw 17, 0x44(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

