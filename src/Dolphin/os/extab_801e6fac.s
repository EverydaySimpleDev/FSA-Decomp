.section extab, "a"
.balign 4
.global etb_80008B24
etb_80008B24:
    .4byte 0x194A0000
    .4byte 0x00000000
.size etb_80008B24, 8

.global etb_80008B2C
etb_80008B2C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008B2C, 8

.global etb_80008B34
etb_80008B34:
    .4byte 0x414A0000
    .4byte 0x00000000
.size etb_80008B34, 8

.section extabindex, "a"
.balign 4
.global eti_800160CC
eti_800160CC:
    .4byte fn_801E6FAC
    .4byte 0x00000280
    .4byte etb_80008B24
.size eti_800160CC, 12

.global eti_800160D8
eti_800160D8:
    .4byte fn_801E722C
    .4byte 0x00000060
    .4byte etb_80008B2C
.size eti_800160D8, 12

.global eti_800160E4
eti_800160E4:
    .4byte fn_801E728C
    .4byte 0x000004B0
    .4byte etb_80008B34
.size eti_800160E4, 12

.text
.balign 4
.global fn_801E6FAC
.global fn_801E722C
.global fn_801E728C

fn_801E6FAC:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stfd 27, 0x20(1)
    psq_st 27, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 31, 3
    li 29, -0x1
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x408200D0 # bne .L_801E70CC
    lwz 0, 0x2ac(31)
    cmpwi 0, -0x1
    .4byte 0x408200C4 # bne .L_801E70CC
    lfs 31, 0x60(31)
    lfs 30, 0x64(31)
    lfs 29, 0x68(31)
    lfs 28, 0x6c(31)
    lwz 3, 0x98(31)
    bl fn_80210B34
    fmr 27, 1
    lwz 3, 0x98(31)
    bl fn_80210AF8
    .4byte 0xC082C6B0 # lfs f4, lbl_8053F650@sda21(r0)
    addi 4, 1, 0x8
    fsubs 0, 27, 4
    fsubs 3, 1, 4
    fadds 2, 27, 4
    stfs 0, 0x60(31)
    fadds 0, 1, 4
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 0, 0x6c(31)
    lha 3, 0x2b0(31)
    bl fn_801E9C00
    lfs 1, 0x60(31)
    mr 3, 31
    lfs 0, 0x8(1)
    fadds 0, 1, 0
    stfs 0, 0x60(31)
    lfs 1, 0x64(31)
    lfs 0, 0xc(1)
    fadds 0, 1, 0
    stfs 0, 0x64(31)
    lfs 1, 0x68(31)
    lfs 0, 0x8(1)
    fadds 0, 1, 0
    stfs 0, 0x68(31)
    lfs 1, 0x6c(31)
    lfs 0, 0xc(1)
    fadds 0, 1, 0
    stfs 0, 0x6c(31)
    bl fn_801E9B58
    mr. 29, 3
    .4byte 0x41800010 # blt .L_801E70BC
    mr 3, 31
    li 4, 0x1
    bl fn_801E728C
L_801E70BC:
    stfs 31, 0x60(31)
    stfs 30, 0x64(31)
    stfs 29, 0x68(31)
    stfs 28, 0x6c(31)
L_801E70CC:
    lfs 1, 0x68(31)
    lfs 0, 0x60(31)
    .4byte 0xC042C624 # lfs f2, lbl_8053F5C4@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810104 # ble .L_801E71E4
    lfs 1, 0x6c(31)
    lfs 0, 0x64(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100F0 # ble .L_801E71E4
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(31)
    mr 4, 31
    .4byte 0xC022C628 # lfs f1, lbl_8053F5C8@sda21(r0)
    bl fn_801F82CC
    mr. 30, 3
    .4byte 0x418000D4 # blt .L_801E71E4
    lwz 0, 0x198(31)
    cmpw 30, 0
    .4byte 0x418200C8 # beq .L_801E71E4
    cmpw 30, 29
    .4byte 0x418200C0 # beq .L_801E71E4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x418200AC # beq .L_801E71E4
    lwz 4, 0x1a0(30)
    subis 0, 4, 0x4649
    cmplwi 0, 0x5245
    .4byte 0x4082002C # bne .L_801E7174
    bl fn_802BA9F8
    cmpwi 3, 0x1
    .4byte 0x40820020 # bne .L_801E7174
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_801E71DC
    mr 3, 31
    li 4, 0x2
    bl fn_801E728C
    .4byte 0x4800006C # b .L_801E71DC
L_801E7174:
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x5357
    cmplwi 0, 0x424d
    .4byte 0x4082001C # bne .L_801E719C
    lwz 3, 0x4(31)
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB538
    .4byte 0x48000044 # b .L_801E71DC
L_801E719C:
    lwz 4, 0x198(30)
    addi 3, 31, 0x1dc
    bl fn_801EAC54
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_801E71DC
    lis 3, 0x4649
    lwz 4, 0x1a0(30)
    addi 0, 3, 0x5245
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801E71C8
    .4byte 0x48000018 # b .L_801E71DC
L_801E71C8:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2e
    li 5, 0x0
    bl fn_801F0E34
L_801E71DC:
    li 0, 0x1
    stb 0, 0x164(30)
L_801E71E4:
    li 3, 0x0
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    psq_l 27, 0x28(1), 0, 0
    lfd 27, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x74(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801E722C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801E7254
    .4byte 0x4080002C # bge .L_801E7278
    .4byte 0x48000028 # b .L_801E7278
L_801E7254:
    bl fn_80210A6C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801E7278
    lwz 0, 0x230(31)
    mr 3, 31
    li 4, 0x1
    oris 0, 0, 0x1
    stw 0, 0x230(31)
    bl fn_801E728C
L_801E7278:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E728C:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stfd 28, 0x70(1)
    psq_st 28, 0x78(1), 0, 0
    stfd 27, 0x60(1)
    psq_st 27, 0x68(1), 0, 0
    stmw 24, 0x40(1)
    mr 26, 4
    mr 25, 3
    cmpwi 26, 0x2
    .4byte 0x41820424 # beq .L_801E76F4
    .4byte 0x40800420 # bge .L_801E76F4
    cmpwi 26, 0x1
    .4byte 0x40800008 # bge .L_801E72E4
    .4byte 0x48000414 # b .L_801E76F4
L_801E72E4:
    lwz 3, 0x230(25)
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x4182003C # beq .L_801E7328
    rlwinm. 0, 3, 0, 15, 15
    .4byte 0x40820034 # bne .L_801E7328
    bl SpatialRegistry_GetBase
    lis 4, 0x4942
    lwz 5, 0x4(25)
    lwz 7, 0x90(25)
    addi 4, 4, 0x424d
    lwz 8, 0x16c(25)
    addi 6, 25, 0xc
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x0
    stb 0, 0x11c(25)
    .4byte 0x480003D0 # b .L_801E76F4
L_801E7328:
    lfs 31, 0x60(25)
    mr 3, 25
    lfs 30, 0x64(25)
    addi 4, 25, 0x60
    lfs 29, 0x68(25)
    lfs 28, 0x6c(25)
    bl fn_80210A30
    lfs 0, 0x60(25)
    mr 3, 25
    .4byte 0xC022C62C # lfs f1, lbl_8053F5CC@sda21(r0)
    li 4, 0x4
    li 5, -0x1
    li 6, 0x16
    fmuls 0, 0, 1
    stfs 0, 0x60(25)
    lfs 0, 0x64(25)
    fmuls 0, 0, 1
    stfs 0, 0x64(25)
    lfs 0, 0x68(25)
    fmuls 0, 0, 1
    stfs 0, 0x68(25)
    lfs 0, 0x6c(25)
    fmuls 0, 0, 1
    stfs 0, 0x6c(25)
    bl fn_801F2B7C
    mr 3, 25
    addi 4, 1, 0x14
    bl fn_801F3128
    lfs 0, 0x18(1)
    li 27, 0x0
    .4byte 0xC362C630 # lfs f27, lbl_8053F5D0@sda21(r0)
    fsubs 0, 0, 27
    stfs 0, 0x20(1)
L_801E73AC:
    lfs 0, 0x14(1)
    li 28, 0x0
    fsubs 0, 0, 27
    stfs 0, 0x1c(1)
L_801E73BC:
    lwz 4, 0x4(25)
    addi 3, 1, 0x1c
    bl fn_80226998
    bl fn_801EE3C0
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_801E7410
    lfs 2, 0x1c(1)
    lfs 1, 0x20(1)
    .4byte 0xC002C624 # lfs f0, lbl_8053F5C4@sda21(r0)
    stfs 2, 0x30(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x4(25)
    addi 4, 4, 0x5a45
    addi 6, 1, 0x30
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_801E7410:
    lfs 0, 0x1c(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x3
    fadds 0, 0, 27
    stfs 0, 0x1c(1)
    .4byte 0x4180FF98 # blt .L_801E73BC
    lfs 0, 0x20(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x3
    fadds 0, 0, 27
    stfs 0, 0x20(1)
    .4byte 0x4180FF70 # blt .L_801E73AC
    stfs 31, 0x60(25)
    stfs 30, 0x64(25)
    stfs 29, 0x68(25)
    stfs 28, 0x6c(25)
    bl GetRoomConfigRecord
    lwz 4, 0x4(25)
    li 5, 0x0
    .4byte 0xC022C634 # lfs f1, lbl_8053F5D4@sda21(r0)
    .4byte 0xC042C624 # lfs f2, lbl_8053F5C4@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022C638 # lfs f1, lbl_8053F5D8@sda21(r0)
    li 5, 0x59
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022C638 # lfs f1, lbl_8053F5D8@sda21(r0)
    li 5, 0x5a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022C638 # lfs f1, lbl_8053F5D8@sda21(r0)
    li 5, 0x5b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022C63C # lfs f1, lbl_8053F5DC@sda21(r0)
    li 5, 0x5c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x230(25)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820170 # beq .L_801E7690
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022C63C # lfs f1, lbl_8053F5DC@sda21(r0)
    li 5, 0x262
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 3, lbl_80469C40@ha
    li 29, 0x0
    addi 27, 3, lbl_80469C40@l
    lis 31, 0x5255
L_801E755C:
    lwz 30, 0x4(27)
    li 28, 0x0
    .4byte 0x48000110 # b .L_801E7674
L_801E7568:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(25)
    addi 4, 31, 0x5059
    lwz 7, 0x0(27)
    addi 6, 25, 0xc
    bl fn_801F8544
    mr. 24, 3
    .4byte 0x418000EC # blt .L_801E7670
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200D8 # beq .L_801E7670
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC0A2C63C # lfs f5, lbl_8053F5DC@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062C638 # lfs f3, lbl_8053F5D8@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC082C640 # lfs f4, lbl_8053F5E0@sda21(r0)
    .4byte 0xC002C644 # lfs f0, lbl_8053F5E4@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 1, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x2c(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fmsubs 1, 3, 1, 5
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fmuls 1, 4, 1
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    stfs 1, 0x28(1)
    fsubs 1, 2, 5
    fmsubs 1, 3, 1, 5
    fmuls 1, 4, 1
    stfs 1, 0x24(1)
    psq_l 1, 0x24(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801E7670:
    addi 28, 28, 0x1
L_801E7674:
    cmpw 28, 30
    .4byte 0x4180FEF0 # blt .L_801E7568
    addi 29, 29, 0x1
    addi 27, 27, 0x8
    cmpwi 29, 0x4
    .4byte 0x4180FED4 # blt .L_801E755C
    .4byte 0x4800002C # b .L_801E76B8
L_801E7690:
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022C63C # lfs f1, lbl_8053F5DC@sda21(r0)
    li 5, 0x261
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801E76B8:
    lwz 24, 0x2b4(25)
    cmpwi 24, 0x0
    .4byte 0x41820018 # beq .L_801E76D8
    bl GetRoomConfigRecord
    mr 4, 24
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801E76D8:
    lis 4, 0x3
    mr 3, 25
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 25
    bl fn_801F3668
L_801E76F4:
    li 0, 0x0
    stw 0, 0x24c(25)
    stw 26, 0x248(25)
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    psq_l 28, 0x78(1), 0, 0
    lfd 28, 0x70(1)
    psq_l 27, 0x68(1), 0, 0
    lfd 27, 0x60(1)
    lmw 24, 0x40(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

