# GOL2 cluster, part 5/5 (856B). setParams-related - uses the
# confirmed effect spawn fn_8013CC50, the per-room config family
# GetRoomConfigRecord/fn_802D800C, sound fn_80457E54, plus fn_80138A30.
.section extab, "a"
.balign 4
.global etb_8000CF74
etb_8000CF74:
    .4byte 0x484A0000
    .4byte 0x00000000
.size etb_8000CF74, 8

.section extabindex, "a"
.balign 4
.global eti_8001C090
eti_8001C090:
    .4byte fn_802E3B2C
    .4byte 0x00000358
    .4byte etb_8000CF74
.size eti_8001C090, 12

.text
.balign 4
.global fn_802E3B2C

fn_802E3B2C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 23, 0x3c(1)
    mr 24, 3
    lis 3, lbl_8046EA10@ha
    lwz 0, 0x90(24)
    addi 31, 3, lbl_8046EA10@l
    clrlwi 0, 0, 27
    stw 0, 0x238(24)
    lwz 0, 0x90(24)
    extrwi 0, 0, 5, 5
    stw 0, 0x240(24)
    lwz 0, 0x90(24)
    extrwi 0, 0, 1, 24
    stw 0, 0x244(24)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    stw 3, 0x23c(24)
    li 3, 0x0
    li 0, 0xff
    stw 3, 0x2c8(24)
    stw 3, 0x2d8(24)
    stw 3, 0x2cc(24)
    stw 3, 0x2dc(24)
    stw 3, 0x2d0(24)
    stw 3, 0x2e0(24)
    stw 3, 0x2d4(24)
    stw 3, 0x2e4(24)
    stw 3, 0x2e8(24)
    stw 3, 0x2ec(24)
    stb 0, 0x2f4(24)
    bl GetRoomConfigRecord
    lwz 4, 0x240(24)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x408201B0 # bne .L_802E3D74
    .4byte 0xC3E2E23C # lfs f31, lbl_805411DC@sda21(r0)
    mr 27, 24
    mr 28, 24
    addi 25, 31, 0x0
    addi 23, 31, 0x60
    li 29, 0x0
    li 26, 0x0
L_802E3BE4:
    lwz 4, 0x238(24)
    li 3, 0x0
    lfs 2, 0xc(24)
    li 0, 0x1
    slwi 4, 4, 4
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    add 5, 4, 26
    addi 4, 27, 0x258
    lfsx 0, 25, 5
    li 5, 0x10a
    li 6, 0x0
    li 7, 0x0
    fadds 0, 2, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x258(27)
    lwz 11, 0x238(24)
    lfs 2, 0x10(24)
    slwi 11, 11, 4
    add 11, 11, 26
    lfsx 0, 23, 11
    fadds 0, 2, 0
    stfs 0, 0x25c(27)
    stfs 31, 0x260(27)
    stw 3, 0x298(28)
    stw 3, 0x2a8(28)
    stw 0, 0x288(28)
    lwz 3, 0x4(24)
    bl fn_8013CC50
    addi 29, 29, 0x1
    stw 3, 0x2c8(28)
    cmpwi 29, 0x4
    addi 26, 26, 0x4
    addi 27, 27, 0xc
    addi 28, 28, 0x4
    .4byte 0x4180FF70 # blt .L_802E3BE4
    lwz 0, 0x238(24)
    cmpwi 0, 0x5
    .4byte 0x418200CC # beq .L_802E3D4C
    li 25, 0x0
    mr 29, 24
    mr 30, 25
    mr 28, 24
    mr 27, 25
    mr 26, 24
    addi 23, 31, 0x180
L_802E3CA0:
    lwz 0, 0x238(24)
    slwi 0, 0, 3
    add 0, 0, 30
    lhzx 0, 23, 0
    sth 0, 0x2b8(29)
    lwz 3, 0x238(24)
    slwi 0, 3, 3
    add 0, 0, 30
    lhzx 5, 23, 0
    cmplwi 5, 0x0
    .4byte 0x41820064 # beq .L_802E3D2C
    slwi 0, 3, 4
    addi 4, 31, 0x120
    add 0, 0, 27
    addi 3, 31, 0xc0
    lfsx 2, 4, 0
    addi 4, 1, 0x20
    lfs 3, 0x25c(28)
    li 6, 0x1
    lfs 1, 0x258(28)
    li 7, 0x1
    lfsx 0, 3, 0
    fadds 2, 3, 2
    lfs 3, 0x260(28)
    li 8, 0x0
    fadds 0, 1, 0
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    stfs 2, 0x24(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x20(1)
    stfs 3, 0x28(1)
    lwz 3, 0x4(24)
    bl fn_8013CC50
    stw 3, 0x2d8(26)
L_802E3D2C:
    addi 25, 25, 0x1
    addi 29, 29, 0x2
    cmpwi 25, 0x4
    addi 28, 28, 0xc
    addi 27, 27, 0x4
    addi 26, 26, 0x4
    addi 30, 30, 0x2
    .4byte 0x4180FF58 # blt .L_802E3CA0
L_802E3D4C:
    li 0, 0x0
    stw 0, 0x230(24)
    stw 0, 0x234(24)
    lfs 0, 0xc(24)
    stfs 0, 0x24c(24)
    lfs 0, 0x10(24)
    stfs 0, 0x250(24)
    lfs 0, 0x14(24)
    stfs 0, 0x254(24)
    .4byte 0x48000024 # b .L_802E3D94
L_802E3D74:
    lfs 0, 0xc(24)
    li 0, 0x5
    stfs 0, 0x24c(24)
    lfs 0, 0x10(24)
    stfs 0, 0x250(24)
    lfs 0, 0x14(24)
    stfs 0, 0x254(24)
    stw 0, 0x230(24)
L_802E3D94:
    lwz 0, 0x238(24)
    cmpwi 0, 0x5
    .4byte 0x408200AC # bne .L_802E3E48
    .4byte 0xC062E22C # lfs f3, lbl_805411CC@sda21(r0)
    addi 4, 1, 0x14
    lfs 2, 0x10(24)
    li 5, 0xc6
    .4byte 0xC022E230 # lfs f1, lbl_805411D0@sda21(r0)
    li 6, 0x0
    lfs 0, 0xc(24)
    fadds 2, 3, 2
    lfs 3, 0x14(24)
    li 7, 0x0
    fadds 0, 1, 0
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    stfs 2, 0x18(1)
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x14(1)
    li 10, 0x1
    stfs 3, 0x1c(1)
    lwz 3, 0x4(24)
    bl fn_8013CC50
    stw 3, 0x2e8(24)
    addi 4, 1, 0x8
    .4byte 0xC062E22C # lfs f3, lbl_805411CC@sda21(r0)
    li 5, 0xc7
    lfs 2, 0x10(24)
    li 6, 0x0
    .4byte 0xC022E230 # lfs f1, lbl_805411D0@sda21(r0)
    li 7, 0x0
    lfs 0, 0xc(24)
    fadds 2, 3, 2
    lfs 3, 0x14(24)
    li 8, 0x0
    fadds 0, 1, 0
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    stfs 2, 0xc(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x8(1)
    stfs 3, 0x10(1)
    lwz 3, 0x4(24)
    bl fn_8013CC50
    stw 3, 0x2ec(24)
L_802E3E48:
    li 0, 0x0
    stw 0, 0x248(24)
    lwz 0, 0x238(24)
    cmpwi 0, 0x5
    .4byte 0x41820010 # beq .L_802E3E68
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80457E54
L_802E3E68:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 23, 0x3c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

