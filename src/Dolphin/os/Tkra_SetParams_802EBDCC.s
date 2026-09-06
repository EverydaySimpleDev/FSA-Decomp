# fn_802EBDCC - TKRA: setParams (0x1E4)
# Extracts bitfields from this->0x90 into this->0x234/0x238/0x244, clamping
# 0x244 to -1 if it would be >= 4.
.section extab, "a"
.balign 4
.global etb_8000D194
etb_8000D194:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D194, 8

.section extabindex, "a"
.balign 4
.global eti_8001C390
eti_8001C390:
    .4byte fn_802EBDCC
    .4byte 0x000001E4
    .4byte etb_8000D194
.size eti_8001C390, 12

.text
.balign 4
.global fn_802EBDCC

fn_802EBDCC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 20
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 16
    stw 0, 0x244(3)
    lwz 0, 0x244(3)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_802EBE1C
    li 0, -0x1
    stw 0, 0x244(31)
L_802EBE1C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1a
    .4byte 0x4180000C # blt .L_802EBE30
    cmpwi 0, 0x20
    .4byte 0x41800040 # blt .L_802EBE6C
L_802EBE30:
    cmpwi 0, 0x26
    .4byte 0x4180000C # blt .L_802EBE40
    cmpwi 0, 0x2a
    .4byte 0x41800030 # blt .L_802EBE6C
L_802EBE40:
    cmpwi 0, 0x3b
    .4byte 0x4180000C # blt .L_802EBE50
    cmpwi 0, 0x40
    .4byte 0x41800020 # blt .L_802EBE6C
L_802EBE50:
    cmpwi 0, 0x4b
    .4byte 0x40800018 # bge .L_802EBE6C
    cmpwi 0, 0x2e
    .4byte 0x40820018 # bne .L_802EBE74
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_802EBE74
L_802EBE6C:
    li 0, 0x0
    stw 0, 0x234(31)
L_802EBE74:
    psq_l 0, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC022E418 # lfs f1, lbl_805413B8@sda21(r0)
    psq_st 0, 0x25c(31), 0, 0
    .4byte 0xC002E414 # lfs f0, lbl_805413B4@sda21(r0)
    stfs 2, 0x264(31)
    lfs 2, 0xc(31)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802EBEE4
    .4byte 0xC022E420 # lfs f1, lbl_805413C0@sda21(r0)
    .4byte 0xC002E448 # lfs f0, lbl_805413E8@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022E428 # lfs f1, lbl_805413C8@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002E42C # lfs f0, lbl_805413CC@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000024 # b .L_802EBF04
L_802EBEE4:
    .4byte 0xC022E430 # lfs f1, lbl_805413D0@sda21(r0)
    .4byte 0xC002E41C # lfs f0, lbl_805413BC@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022E434 # lfs f1, lbl_805413D4@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002E42C # lfs f0, lbl_805413CC@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_802EBF04:
    lfs 1, 0x260(31)
    addi 3, 1, 0x8
    lfs 0, 0x25c(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    stw 3, 0x23c(31)
    bl GetRoomConfigRecord
    lwz 0, 0x23c(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D49A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802EBF4C
    li 0, 0x0
    stb 0, 0x11c(31)
L_802EBF4C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802EBF64
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000020 # b .L_802EBF80
L_802EBF64:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802EBF78
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_802EBF80
L_802EBF78:
    li 0, 0x2
    stw 0, 0x230(31)
L_802EBF80:
    li 0, -0x1
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    stw 0, 0x254(31)
    stw 0, 0x258(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

