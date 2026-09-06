# fn_802ECAD8 - SDSM: update() (0x234)
# Computes a facing-away offset from the global camera position
# (lbl_8053AB10->0x24, negated) into this->0x244/0x248/0x24c, syncs an
# effect via fn_8013CB44, then counts down this->0x240; reuses
# fn_80136798, fn_80230534, fn_8023077C, GetRoomConfigRecord/fn_802D9FF4 (per-room
# config family), and spawns effects via fn_8013CC50 x4.
.section extab, "a"
.balign 4
.global etb_8000D1D4
etb_8000D1D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D1D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C3F0
eti_8001C3F0:
    .4byte fn_802ECAD8
    .4byte 0x00000234
    .4byte etb_8000D1D4
.size eti_8001C3F0, 12

.text
.balign 4
.global fn_802ECAD8

fn_802ECAD8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002E458 # lfs f0, lbl_805413F8@sda21(r0)
    li 6, 0x1
    stw 0, 0x24(1)
    li 7, 0x1
    stw 31, 0x1c(1)
    mr 31, 3
    addi 4, 31, 0x244
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(5)
    li 5, 0x1
    lfs 1, 0x10(3)
    fneg 1, 1
    stfs 1, 0x244(31)
    lfs 1, 0x20(3)
    fneg 1, 1
    stfs 1, 0x248(31)
    stfs 0, 0x24c(31)
    lwz 3, 0x234(31)
    bl fn_8013CB44
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x41820048 # beq .L_802ECB7C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408201B0 # bne .L_802ECCF8
    li 3, 0x0
    bl fn_80230534
    lwz 31, 0x90(31)
    bl GetRoomConfigRecord
    extrwi 4, 31, 4, 20
    extrwi 5, 31, 4, 16
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xd
    li 5, 0x0
    bl fn_80136798
    .4byte 0x48000180 # b .L_802ECCF8
L_802ECB7C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x41820028 # beq .L_802ECBB0
    lis 3, 0x5
    addi 4, 1, 0xc
    addi 0, 3, 0x79
    stw 0, 0xc(1)
    lwz 3, 0x230(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802ECBB0:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820140 # bne .L_802ECCF8
    bl GetRoomConfigRecord
    lbz 0, 0xc9(3)
    cmplwi 0, 0x0
    .4byte 0x41820130 # beq .L_802ECCF8
    li 4, 0x1
    li 0, 0x0
    stw 4, 0x250(31)
    lwz 5, 0x234(31)
    lwz 3, 0xf4(5)
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 4, 0x24(5)
    stw 0, 0x234(31)
    lwz 3, 0x23c(31)
    clrlwi. 0, 3, 31
    .4byte 0x41820034 # beq .L_802ECC2C
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3e9
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x480000A0 # b .L_802ECCC8
L_802ECC2C:
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x41820034 # beq .L_802ECC64
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3e8
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000068 # b .L_802ECCC8
L_802ECC64:
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x41820034 # beq .L_802ECC9C
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3e7
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000030 # b .L_802ECCC8
L_802ECC9C:
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3ea
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
L_802ECCC8:
    li 0, 0x64
    stw 0, 0x240(31)
    bl fn_8023077C
    lis 3, 0x4
    addi 4, 1, 0x8
    addi 0, 3, 0xb9
    stw 0, 0x8(1)
    lwz 3, 0x230(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802ECCF8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

