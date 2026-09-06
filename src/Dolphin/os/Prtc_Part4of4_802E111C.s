# PRTC cluster, part 4/4 (Track A byte-match + overview -
# 0x800=2048B, the largest piece of this actor). Uses the confirmed
# effect spawn fn_8013CC50, plus unfamiliar fn_80084370/fn_804578F4,
# and calls fn_802DEBA0 (an already-landed function from the
# neighboring 802d6d70 block).
.section extab, "a"
.balign 4
.global etb_8000CEFC
etb_8000CEFC:
    .4byte 0x100A0000
    .4byte 0x000007E4
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000CEFC, 24

.section extabindex, "a"
.balign 4
.global eti_8001BFF4
eti_8001BFF4:
    .4byte fn_802E111C
    .4byte 0x00000800
    .4byte etb_8000CEFC
.size eti_8001BFF4, 12

.text
.balign 4
.global fn_802E111C

fn_802E111C:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    li 0, 0x1
    stw 31, 0xfc(1)
    mr 31, 3
    stw 30, 0xf8(1)
    lwz 3, 0x90(3)
    clrlwi 3, 3, 24
    stw 3, 0x250(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 16
    stw 3, 0x258(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 12
    stw 3, 0x254(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 8
    stw 3, 0x25c(31)
    stw 0, 0x254(31)
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802E118C
    lwz 0, 0x250(31)
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_802E118C
    li 0, 0x0
    stw 0, 0x254(31)
L_802E118C:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 5, 5
    .4byte 0x41820010 # beq .L_802E11A4
    li 0, 0x1
    stb 0, 0x260(31)
    .4byte 0x4800000C # b .L_802E11AC
L_802E11A4:
    li 0, 0x0
    stb 0, 0x260(31)
L_802E11AC:
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    stfs 0, 0x244(31)
    stfs 0, 0x248(31)
    stfs 0, 0x24c(31)
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 20, 20
    .4byte 0x41820014 # beq .L_802E11D8
    lfs 1, 0x244(31)
    .4byte 0xC002E210 # lfs f0, lbl_805411B0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x244(31)
L_802E11D8:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x41820014 # beq .L_802E11F4
    lfs 1, 0x244(31)
    .4byte 0xC002E210 # lfs f0, lbl_805411B0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x244(31)
L_802E11F4:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 22, 22
    .4byte 0x41820014 # beq .L_802E1210
    lfs 1, 0x248(31)
    .4byte 0xC002E214 # lfs f0, lbl_805411B4@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x248(31)
L_802E1210:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820014 # beq .L_802E122C
    lfs 1, 0x248(31)
    .4byte 0xC002E214 # lfs f0, lbl_805411B4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x248(31)
L_802E122C:
    li 3, 0x0
    stw 3, 0x234(31)
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x40820698 # bne .L_802E18DC
    lwz 0, 0x250(31)
    cmplwi 0, 0xa
    .4byte 0x41810680 # bgt .L_802E18D0
    lis 3, jumptable_804A9B40@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A9B40@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 3, 0x10(31)
    addi 4, 1, 0xe0
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
    stfs 3, 0xe4(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0xe0(1)
    stfs 0, 0xe8(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0xd4
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
    stfs 0, 0xdc(1)
    stfs 4, 0xd8(1)
    stfs 2, 0xd4(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0xc8
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
    stfs 0, 0xd0(1)
    stfs 4, 0xcc(1)
    stfs 2, 0xc8(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
    .4byte 0x48000568 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0xbc
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
    stfs 3, 0xc0(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0xbc(1)
    stfs 0, 0xc4(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0xb0
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
    stfs 0, 0xb8(1)
    stfs 4, 0xb4(1)
    stfs 2, 0xb0(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0xa4
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
    stfs 0, 0xac(1)
    stfs 4, 0xa8(1)
    stfs 2, 0xa4(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
    .4byte 0x48000468 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x98
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
    stfs 3, 0x9c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x98(1)
    stfs 0, 0xa0(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000410 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x8c
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
    stfs 3, 0x90(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x8c(1)
    stfs 0, 0x94(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x480003B8 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x80
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
    stfs 3, 0x84(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x80(1)
    stfs 0, 0x88(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000360 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x74
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
    stfs 3, 0x78(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x74(1)
    stfs 0, 0x7c(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000308 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x68
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
    stfs 3, 0x6c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x68(1)
    stfs 0, 0x70(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x480002B0 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x5c
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
    stfs 3, 0x60(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x5c(1)
    li 10, 0x1
    stfs 0, 0x64(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0x50
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
    stfs 0, 0x58(1)
    stfs 4, 0x54(1)
    stfs 2, 0x50(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    .4byte 0x48000204 # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x44
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
    stfs 3, 0x48(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x44(1)
    stfs 0, 0x4c(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x480001AC # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x38
    lfs 0, 0x248(31)
    li 5, 0x185
    lfs 2, 0xc(31)
    li 7, 0x0
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 8, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x3c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x38(1)
    stfs 0, 0x40(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0x2c
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0x186
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
    stfs 0, 0x34(1)
    stfs 4, 0x30(1)
    stfs 2, 0x2c(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0x20
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0x187
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
    stfs 0, 0x28(1)
    stfs 4, 0x24(1)
    stfs 2, 0x20(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
    .4byte 0x480000AC # b .L_802E18D0
    lfs 3, 0x10(31)
    addi 4, 1, 0x14
    lfs 0, 0x248(31)
    li 5, 0x88
    lfs 2, 0xc(31)
    li 6, -0x1
    lfs 1, 0x244(31)
    fadds 3, 3, 0
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 7, 0x0
    fadds 2, 2, 1
    .4byte 0xC022E20C # lfs f1, lbl_805411AC@sda21(r0)
    stfs 3, 0x18(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x14(1)
    li 10, 0x1
    stfs 0, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 1, 0x8
    .4byte 0xC002E208 # lfs f0, lbl_805411A8@sda21(r0)
    li 5, 0x89
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
    stfs 0, 0x10(1)
    stfs 4, 0xc(1)
    stfs 2, 0x8(1)
    lwz 3, 0x4(31)
    lwz 6, 0x254(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
L_802E18D0:
    li 0, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000008 # b .L_802E18E0
L_802E18DC:
    stw 3, 0x240(31)
L_802E18E0:
    li 3, 0x5c
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820014 # beq .L_802E1900
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_802E1900:
    stw 30, 0x230(31)
    lwz 0, 0x104(1)
    lwz 31, 0xfc(1)
    lwz 30, 0xf8(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

