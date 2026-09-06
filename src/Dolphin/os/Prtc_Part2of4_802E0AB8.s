# PRTC cluster, part 2/4 (Track A byte-match + overview - 1452B).
# draw()/update()-related - uses the confirmed effect spawn
# fn_8013CC50 and fn_801F0E34.
.section extab, "a"
.balign 4
.global etb_8000CEEC
etb_8000CEEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CEEC, 8

.section extabindex, "a"
.balign 4
.global eti_8001BFDC
eti_8001BFDC:
    .4byte fn_802E0AB8
    .4byte 0x000005AC
    .4byte etb_8000CEEC
.size eti_8001BFDC, 12

.text
.balign 4
.global fn_802E0AB8

fn_802E0AB8:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stw 31, 0xbc(1)
    mr 31, 3
    lwz 0, 0x250(3)
    cmpwi 0, 0x1
    .4byte 0x41810014 # bgt .L_802E0AE8
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0x33
    bl fn_801F0E34
L_802E0AE8:
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x41820518 # beq .L_802E1008
    .4byte 0x4080055C # bge .L_802E1050
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802E0B04
    .4byte 0x48000550 # b .L_802E1050
L_802E0B04:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820534 # beq .L_802E1050
    lwz 0, 0x250(31)
    cmplwi 0, 0x8
    .4byte 0x418104D4 # bgt .L_802E0FFC
    lis 3, jumptable_804A9B1C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A9B1C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 3, 0x10(31)
    addi 4, 1, 0xa8
    lfs 0, 0x248(31)
    li 5, 0x188
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0xac(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0xa8(1)
    stfs 0, 0xb0(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0x9c
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0x189
    lfs 4, 0x10(31)
    li 7, 0x0
    lfs 1, 0x248(31)
    li 8, 0x0
    lfs 3, 0xc(31)
    li 9, 0x0
    lfs 2, 0x244(31)
    fadds 4, 4, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    li 10, 0x1
    fadds 2, 3, 2
    stfs 0, 0xa4(1)
    stfs 4, 0xa0(1)
    stfs 2, 0x9c(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0x90
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0x18a
    lfs 4, 0x10(31)
    li 7, 0x0
    lfs 1, 0x248(31)
    li 8, 0x0
    lfs 3, 0xc(31)
    li 9, 0x0
    lfs 2, 0x244(31)
    fadds 4, 4, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    li 10, 0x1
    fadds 2, 3, 2
    stfs 0, 0x98(1)
    stfs 4, 0x94(1)
    stfs 2, 0x90(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
    .4byte 0x480003BC # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0x84
    lfs 0, 0x248(31)
    li 5, 0x18b
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x88(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x84(1)
    stfs 0, 0x8c(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0x78
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0x18c
    lfs 4, 0x10(31)
    li 7, 0x0
    lfs 1, 0x248(31)
    li 8, 0x0
    lfs 3, 0xc(31)
    li 9, 0x0
    lfs 2, 0x244(31)
    fadds 4, 4, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    li 10, 0x1
    fadds 2, 3, 2
    stfs 0, 0x80(1)
    stfs 4, 0x7c(1)
    stfs 2, 0x78(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0x6c
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0x18d
    lfs 4, 0x10(31)
    li 7, 0x0
    lfs 1, 0x248(31)
    li 8, 0x0
    lfs 3, 0xc(31)
    li 9, 0x0
    lfs 2, 0x244(31)
    fadds 4, 4, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    li 10, 0x1
    fadds 2, 3, 2
    stfs 0, 0x74(1)
    stfs 4, 0x70(1)
    stfs 2, 0x6c(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
    .4byte 0x480002BC # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0x60
    lfs 0, 0x248(31)
    li 5, 0x552
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x64(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x60(1)
    stfs 0, 0x68(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000264 # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0x54
    lfs 0, 0x248(31)
    li 5, 0x17e
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x58(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x54(1)
    stfs 0, 0x5c(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x4800020C # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0x48
    lfs 0, 0x248(31)
    li 5, 0x17f
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x4c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x48(1)
    stfs 0, 0x50(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x480001B4 # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0x3c
    lfs 0, 0x248(31)
    li 5, 0x180
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x40(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x3c(1)
    stfs 0, 0x44(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x4800015C # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0x30
    lfs 0, 0x248(31)
    li 5, 0x6e
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x34(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x30(1)
    stfs 0, 0x38(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000104 # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0x24
    lfs 0, 0x248(31)
    li 5, 0xa9
    lfs 2, 0xc(31)
    li 6, -0x1
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 7, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x28(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x24(1)
    li 10, 0x1
    stfs 0, 0x2c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0x18
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0xaa
    lfs 4, 0x10(31)
    li 7, 0x0
    lfs 1, 0x248(31)
    li 8, 0x0
    lfs 3, 0xc(31)
    li 9, 0x0
    lfs 2, 0x244(31)
    fadds 4, 4, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    li 10, 0x1
    fadds 2, 3, 2
    stfs 0, 0x20(1)
    stfs 4, 0x1c(1)
    stfs 2, 0x18(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    .4byte 0x48000058 # b .L_802E0FFC
    lfs 3, 0x10(31)
    addi 4, 1, 0xc
    lfs 0, 0x248(31)
    li 5, 0x6f
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x10(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0xc(1)
    stfs 0, 0x14(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
L_802E0FFC:
    li 0, 0x1
    stw 0, 0x240(31)
    .4byte 0x4800004C # b .L_802E1050
L_802E1008:
    lwz 0, 0x250(31)
    cmpwi 0, 0x7
    .4byte 0x41820040 # beq .L_802E1050
    .4byte 0x40800010 # bge .L_802E1024
    cmpwi 0, 0x6
    .4byte 0x40800010 # bge .L_802E102C
    .4byte 0x48000030 # b .L_802E1050
L_802E1024:
    cmpwi 0, 0x9
    .4byte 0x40800028 # bge .L_802E1050
L_802E102C:
    lis 3, 0x3
    addi 4, 1, 0x8
    addi 0, 3, 0x74
    stw 0, 0x8(1)
    lwz 3, 0x230(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802E1050:
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

