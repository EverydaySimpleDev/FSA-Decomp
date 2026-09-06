.section extab, "a"
.balign 4
.global etb_80007F54
etb_80007F54:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007F54, 8

.global etb_80007F5C
etb_80007F5C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007F5C, 8

.global etb_80007F64
etb_80007F64:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007F64, 8

.global etb_80007F6C
etb_80007F6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007F6C, 8

.global etb_80007F74
etb_80007F74:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007F74, 8

.global etb_80007F7C
etb_80007F7C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007F7C, 8

.global etb_80007F84
etb_80007F84:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007F84, 8

.global etb_80007F8C
etb_80007F8C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007F8C, 8

.global etb_80007F94
etb_80007F94:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_80007F94, 8

.section extabindex, "a"
.balign 4
.global eti_8001507C
eti_8001507C:
    .4byte fn_801BF9EC
    .4byte 0x00000064
    .4byte etb_80007F54
.size eti_8001507C, 12

.global eti_80015088
eti_80015088:
    .4byte fn_801BFA50
    .4byte 0x00000080
    .4byte etb_80007F5C
.size eti_80015088, 12

.global eti_80015094
eti_80015094:
    .4byte fn_801BFAD0
    .4byte 0x0000017C
    .4byte etb_80007F64
.size eti_80015094, 12

.global eti_800150A0
eti_800150A0:
    .4byte fn_801BFC4C
    .4byte 0x0000006C
    .4byte etb_80007F6C
.size eti_800150A0, 12

.global eti_800150AC
eti_800150AC:
    .4byte fn_801BFCB8
    .4byte 0x00000050
    .4byte etb_80007F74
.size eti_800150AC, 12

.global eti_800150B8
eti_800150B8:
    .4byte fn_801BFD08
    .4byte 0x000001FC
    .4byte etb_80007F7C
.size eti_800150B8, 12

.global eti_800150C4
eti_800150C4:
    .4byte fn_801BFF04
    .4byte 0x00000534
    .4byte etb_80007F84
.size eti_800150C4, 12

.global eti_800150D0
eti_800150D0:
    .4byte fn_801C0438
    .4byte 0x000001FC
    .4byte etb_80007F8C
.size eti_800150D0, 12

.global eti_800150DC
eti_800150DC:
    .4byte fn_801C0634
    .4byte 0x00000348
    .4byte etb_80007F94
.size eti_800150DC, 12

.text
.balign 4
.global fn_801BF9EC
.global fn_801BFA50
.global fn_801BFAD0
.global fn_801BFC4C
.global fn_801BFCB8
.global fn_801BFD08
.global fn_801BFF04
.global fn_801C0438
.global fn_801C0634

fn_801BF9EC:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820038 # bne .L_801BFA3C
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    .4byte 0xC042BD94 # lfs f2, lbl_8053ED34@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810020 # ble .L_801BFA3C
    lfs 1, 0x6c(3)
    lfs 0, 0x64(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081000C # ble .L_801BFA3C
    bl fn_801F2FAC
    mr 4, 3
L_801BFA3C:
    lwz 0, 0x14(1)
    mr 3, 4
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BFA50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    li 3, 0x0
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820044 # bne .L_801BFAB8
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801BFAB0
    lfs 1, 0x14(30)
    .4byte 0xC002BD98 # lfs f0, lbl_8053ED38@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_801BFAB0
    mr 3, 30
    bl fn_801CEA60
    .4byte 0x4800000C # b .L_801BFAB8
L_801BFAB0:
    mr 3, 30
    bl fn_801CE9F8
L_801BFAB8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BFAD0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    mr 29, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820038 # bne .L_801BFB2C
    lfs 1, 0x78(29)
    lfs 0, 0x70(29)
    .4byte 0xC042BD94 # lfs f2, lbl_8053ED34@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4182001C # beq .L_801BFB2C
    lfs 1, 0x7c(29)
    lfs 0, 0x74(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801BFB34
L_801BFB2C:
    li 3, 0x0
    .4byte 0x48000100 # b .L_801BFC30
L_801BFB34:
    li 0, -0x1
    stfs 2, 0x48(1)
    addi 4, 1, 0x38
    li 30, 0x0
    stw 0, 0x8(1)
    stfs 2, 0x4c(1)
    stfs 2, 0x50(1)
    bl fn_801F317C
    lwz 4, 0x4(29)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AC74
    mr. 31, 3
    .4byte 0x4180001C # blt .L_801BFB84
    addi 4, 1, 0xc
    addi 5, 1, 0x54
    addi 6, 1, 0x8
    bl fn_801CC538
    mr 30, 3
    .4byte 0x48000028 # b .L_801BFBA8
L_801BFB84:
    lwz 4, 0x4(29)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AD54
    mr. 31, 3
    .4byte 0x41800010 # blt .L_801BFBA8
    addi 4, 1, 0x8
    addi 5, 1, 0x48
    bl fn_801CC640
L_801BFBA8:
    cmpwi 31, 0x0
    li 3, 0x0
    .4byte 0x41800080 # blt .L_801BFC30
    lfs 0, 0x14(29)
    clrlwi. 0, 30, 24
    psq_l 1, 0xc(29), 0, 0
    stfs 0, 0x1c(1)
    psq_l 3, 0x48(1), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    psq_l 0, 0x50(1), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x14(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
    lfs 0, 0x1c(1)
    psq_st 3, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 3, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    .4byte 0x4182001C # beq .L_801BFC14
    lfs 2, 0x54(1)
    lfs 1, 0x58(1)
    lfs 0, 0x5c(1)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
L_801BFC14:
    mr 3, 29
    mr 8, 31
    addi 5, 1, 0x2c
    li 4, 0x4
    li 6, 0x0
    li 7, 0x0
    bl fn_801F37AC
L_801BFC30:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801BFC4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lfs 0, 0xc(3)
    stfs 0, 0x2b8(3)
    lfs 0, 0x10(3)
    stfs 0, 0x2bc(3)
    lwz 3, 0x2a8(3)
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_801BFC94
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x2c0(31)
    lfs 0, 0x4(3)
    stfs 0, 0x2c4(31)
    .4byte 0x48000014 # b .L_801BFCA4
L_801BFC94:
    lfs 0, 0x24(31)
    stfs 0, 0x2c0(31)
    lfs 0, 0x28(31)
    stfs 0, 0x2c4(31)
L_801BFCA4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BFCB8:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002BD90 # lfs f0, lbl_8053ED30@sda21(r0)
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_801BFCF0
    .4byte 0x40800010 # bge .L_801BFCE4
    cmpwi 0, 0x1
    .4byte 0x40800010 # bge .L_801BFCEC
    .4byte 0x48000010 # b .L_801BFCF0
L_801BFCE4:
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_801BFCF0
L_801BFCEC:
    .4byte 0xC002BD9C # lfs f0, lbl_8053ED3C@sda21(r0)
L_801BFCF0:
    stfs 0, 0x2a0(3)
    bl fn_801CE4BC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BFD08:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x4
    .4byte 0x4182010C # beq .L_801BFE48
    .4byte 0x40800010 # bge .L_801BFD50
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_801BFD58
    .4byte 0x4800013C # b .L_801BFE88
L_801BFD50:
    cmpwi 0, 0x6
    .4byte 0x40800134 # bge .L_801BFE88
L_801BFD58:
    lis 4, lbl_80539D40@ha
    mr 3, 31
    addi 5, 4, lbl_80539D40@l
    addi 4, 31, 0x2b8
    lfs 1, 0x0(5)
    addi 5, 1, 0x8
    bl fn_801D01A0
    lfs 0, 0x8(1)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x5
    .4byte 0x408200FC # bne .L_801BFE88
    lwz 4, 0x24c(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    lis 3, lbl_80539D44@ha
    subfic 0, 4, 0x14
    .4byte 0xC842BDB0 # lfd f2, lbl_8053ED50@sda21(r0)
    xoris 0, 0, 0x8000
    lfs 0, lbl_80539D44@l(3)
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 3, 1, 2
    fcmpo cr0, 3, 0
    .4byte 0x40800010 # bge .L_801BFDD0
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    stfs 0, 0x2c8(31)
    .4byte 0x48000020 # b .L_801BFDEC
L_801BFDD0:
    .4byte 0xC022BD90 # lfs f1, lbl_8053ED30@sda21(r0)
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    fdivs 2, 1, 3
    lfs 1, 0x2c8(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x2c8(31)
L_801BFDEC:
    lis 3, lbl_80539D44@ha
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 3, 0
    .4byte 0x40800010 # bge .L_801BFE08
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    stfs 0, 0x2cc(31)
    .4byte 0x48000020 # b .L_801BFE24
L_801BFE08:
    .4byte 0xC022BD90 # lfs f1, lbl_8053ED30@sda21(r0)
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    fdivs 2, 1, 3
    lfs 1, 0x2cc(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x2cc(31)
L_801BFE24:
    lfs 1, 0x3c(31)
    lfs 0, 0x2c8(31)
    fadds 0, 1, 0
    stfs 0, 0x3c(31)
    lfs 1, 0x40(31)
    lfs 0, 0x2cc(31)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x48000044 # b .L_801BFE88
L_801BFE48:
    lha 0, 0x2b2(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lfs 0, 0x254(31)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 1, 0x254(31)
    lfs 0, 0xc(1)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
L_801BFE88:
    lwz 0, 0x248(31)
    cmpwi 0, 0x6
    .4byte 0x4182003C # beq .L_801BFECC
    .4byte 0x4080005C # bge .L_801BFEF0
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_801BFEA4
    .4byte 0x48000050 # b .L_801BFEF0
L_801BFEA4:
    lfs 2, 0x14(31)
    .4byte 0xC022BDA0 # lfs f1, lbl_8053ED40@sda21(r0)
    .4byte 0xC002BDA4 # lfs f0, lbl_8053ED44@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x14(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_801BFEF0
    stfs 0, 0x14(31)
    .4byte 0x48000028 # b .L_801BFEF0
L_801BFECC:
    lfs 2, 0x14(31)
    .4byte 0xC022BDA8 # lfs f1, lbl_8053ED48@sda21(r0)
    .4byte 0xC002BD90 # lfs f0, lbl_8053ED30@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x14(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801BFEF0
    stfs 0, 0x14(31)
L_801BFEF0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BFF04:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x248(3)
    cmplwi 0, 0x6
    .4byte 0x418104F4 # bgt .L_801C041C
    lis 4, jumptable_804A42D4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A42D4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 4, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 4, 0
    .4byte 0x418004CC # blt .L_801C041C
    lbz 5, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    addi 4, 31, 0xc
    .4byte 0xC822BDC0 # lfd f1, lbl_8053ED60@sda21(r0)
    stw 5, 0x14(1)
    .4byte 0xC042BD98 # lfs f2, lbl_8053ED38@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    stw 3, 0x2a8(31)
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x41800490 # blt .L_801C041C
    mr 3, 31
    li 4, 0x1
    bl fn_801C0438
    .4byte 0x48000480 # b .L_801C041C
    lfs 1, 0x14(31)
    .4byte 0xC002BDA4 # lfs f0, lbl_8053ED44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082046C # bne .L_801C041C
    stfs 0, 0x14(31)
    li 3, 0x21
    bl fn_801CD664
    addi 3, 3, 0x30
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC822BDB0 # lfd f1, lbl_8053ED50@sda21(r0)
    li 3, 0x101
    stw 4, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x2ac(31)
    bl fn_801CD664
    addi 0, 3, 0x200
    li 3, 0x2
    sth 0, 0x2b0(31)
    bl fn_801CD664
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_801C0014
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801C0020
L_801C0014:
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_801C0020:
    mr 3, 31
    li 4, 0x2
    bl fn_801C0438
    .4byte 0x480003F0 # b .L_801C041C
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x41800104 # blt .L_801C013C
    mr 3, 0
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082008C # bne .L_801C00D4
    lwz 4, 0x2a8(31)
    mr 3, 31
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_801C00D4
    lbz 5, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    mr 3, 31
    .4byte 0xC822BDC0 # lfd f1, lbl_8053ED60@sda21(r0)
    addi 4, 31, 0xc
    stw 5, 0x14(1)
    .4byte 0xC042BD98 # lfs f2, lbl_8053ED38@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    mr. 30, 3
    .4byte 0x41800030 # blt .L_801C00C4
    lwz 4, 0x2a8(31)
    cmpw 30, 4
    .4byte 0x41820024 # beq .L_801C00C4
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801C00C4
    stw 30, 0x2a8(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801C0438
    .4byte 0x4800035C # b .L_801C041C
L_801C00C4:
    mr 3, 31
    li 4, 0x6
    bl fn_801C0438
    .4byte 0x4800034C # b .L_801C041C
L_801C00D4:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800050 # blt .L_801C0130
    lwz 3, 0x2a8(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_801C0130
    lwz 4, 0x2a8(31)
    mr 3, 31
    addi 5, 31, 0xc
    bl fn_801D0DA0
    .4byte 0xC042BD98 # lfs f2, lbl_8053ED38@sda21(r0)
    lfs 0, 0x2ac(31)
    fadds 0, 2, 0
    fmuls 0, 0, 0
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_801C0130
    mr 3, 31
    li 4, 0x3
    bl fn_801C0438
    .4byte 0x480002F0 # b .L_801C041C
L_801C0130:
    mr 3, 31
    bl fn_801C0634
    .4byte 0x480002E4 # b .L_801C041C
L_801C013C:
    lbz 5, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    addi 4, 31, 0xc
    .4byte 0xC822BDC0 # lfd f1, lbl_8053ED60@sda21(r0)
    stw 5, 0x14(1)
    .4byte 0xC042BD98 # lfs f2, lbl_8053ED38@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    stw 3, 0x2a8(31)
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801C0188
    mr 3, 31
    li 4, 0x2
    bl fn_801C0438
    .4byte 0x48000298 # b .L_801C041C
L_801C0188:
    mr 3, 31
    bl fn_801C0634
    .4byte 0x4800028C # b .L_801C041C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf
    .4byte 0x41800280 # blt .L_801C041C
    lwz 4, 0x2a8(31)
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_801C0224
    lbz 5, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    mr 3, 31
    .4byte 0xC822BDC0 # lfd f1, lbl_8053ED60@sda21(r0)
    addi 4, 31, 0xc
    stw 5, 0x14(1)
    .4byte 0xC042BD98 # lfs f2, lbl_8053ED38@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    mr. 30, 3
    .4byte 0x41800030 # blt .L_801C0214
    lwz 4, 0x2a8(31)
    cmpw 30, 4
    .4byte 0x41820024 # beq .L_801C0214
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801C0214
    stw 30, 0x2a8(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801C0438
    .4byte 0x4800020C # b .L_801C041C
L_801C0214:
    mr 3, 31
    li 4, 0x6
    bl fn_801C0438
    .4byte 0x480001FC # b .L_801C041C
L_801C0224:
    mr 3, 31
    li 4, 0x4
    bl fn_801C0438
    .4byte 0x480001EC # b .L_801C041C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x32
    .4byte 0x418001E0 # blt .L_801C041C
    lwz 4, 0x2a8(31)
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_801C02C4
    lbz 5, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    mr 3, 31
    .4byte 0xC822BDC0 # lfd f1, lbl_8053ED60@sda21(r0)
    addi 4, 31, 0xc
    stw 5, 0x14(1)
    .4byte 0xC042BD98 # lfs f2, lbl_8053ED38@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    mr. 30, 3
    .4byte 0x41800030 # blt .L_801C02B4
    lwz 4, 0x2a8(31)
    cmpw 30, 4
    .4byte 0x41820024 # beq .L_801C02B4
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801C02B4
    stw 30, 0x2a8(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801C0438
    .4byte 0x4800016C # b .L_801C041C
L_801C02B4:
    mr 3, 31
    li 4, 0x6
    bl fn_801C0438
    .4byte 0x4800015C # b .L_801C041C
L_801C02C4:
    mr 3, 31
    li 4, 0x5
    bl fn_801C0438
    .4byte 0x4800014C # b .L_801C041C
    lwz 4, 0x2a8(31)
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_801C0358
    lbz 5, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    mr 3, 31
    .4byte 0xC822BDC0 # lfd f1, lbl_8053ED60@sda21(r0)
    addi 4, 31, 0xc
    stw 5, 0x14(1)
    .4byte 0xC042BD98 # lfs f2, lbl_8053ED38@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    mr. 30, 3
    .4byte 0x41800030 # blt .L_801C0348
    lwz 4, 0x2a8(31)
    cmpw 30, 4
    .4byte 0x41820024 # beq .L_801C0348
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801C0348
    stw 30, 0x2a8(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801C0438
    .4byte 0x480000D8 # b .L_801C041C
L_801C0348:
    mr 3, 31
    li 4, 0x6
    bl fn_801C0438
    .4byte 0x480000C8 # b .L_801C041C
L_801C0358:
    mr 3, 31
    bl fn_801C0634
    lwz 0, 0x24c(31)
    cmpwi 0, 0x14
    .4byte 0x418000B4 # blt .L_801C041C
    mr 3, 31
    li 4, 0x2
    bl fn_801C0438
    .4byte 0x480000A4 # b .L_801C041C
    lfs 1, 0x14(31)
    .4byte 0xC002BD90 # lfs f0, lbl_8053ED30@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820090 # bne .L_801C041C
    stfs 0, 0x14(31)
    li 30, 0x0
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_801C03F0
    lfs 1, 0x10(31)
    addi 3, 1, 0x8
    lfs 0, 0x14(31)
    .4byte 0xC042BDB8 # lfs f2, lbl_8053ED58@sda21(r0)
    fsubs 1, 1, 0
    lwz 4, 0x4(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x40820008 # bne .L_801C03F0
    li 30, 0x1
L_801C03F0:
    clrlwi. 0, 30, 24
    .4byte 0x4182001C # beq .L_801C0410
    li 0, -0x1
    mr 3, 31
    stw 0, 0x2a8(31)
    li 4, 0x1
    bl fn_801C0438
    .4byte 0x48000010 # b .L_801C041C
L_801C0410:
    mr 3, 31
    li 4, 0x0
    bl fn_801C0438
L_801C041C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801C0438:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmplwi 31, 0x6
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x418101B8 # bgt .L_801C0610
    lis 3, jumptable_804A42F0@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A42F0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, 0x37
    bl fn_801CD664
    addi 3, 3, 0x6
    li 0, -0x1
    stw 3, 0x250(30)
    addi 3, 30, 0x270
    li 4, 0x0
    li 5, 0x0
    stw 0, 0x2a8(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000170 # b .L_801C0610
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x2
    bl fn_801D22A0
    lwz 0, 0x248(30)
    cmpwi 0, 0x6
    .4byte 0x41820154 # beq .L_801C0610
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xaa
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800013C # b .L_801C0610
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820018 # beq .L_801C04F8
    li 3, 0x1a5
    bl fn_801CD664
    addi 0, 3, 0xb4
    stw 0, 0x250(30)
    .4byte 0x48000014 # b .L_801C0508
L_801C04F8:
    li 3, 0xb5
    bl fn_801CD664
    addi 0, 3, 0x78
    stw 0, 0x250(30)
L_801C0508:
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x2
    bl fn_801D22A0
    lfs 0, 0xc(30)
    stfs 0, 0x2b8(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2bc(30)
    lwz 3, 0x2a8(30)
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_801C054C
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x2c0(30)
    lfs 0, 0x4(3)
    stfs 0, 0x2c4(30)
    .4byte 0x480000C8 # b .L_801C0610
L_801C054C:
    lfs 0, 0x24(30)
    stfs 0, 0x2c0(30)
    lfs 0, 0x28(30)
    stfs 0, 0x2c4(30)
    .4byte 0x480000B4 # b .L_801C0610
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x2
    bl fn_801D22A0
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    stfs 0, 0x258(30)
    stfs 0, 0x254(30)
    .4byte 0x48000094 # b .L_801C0610
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x2
    bl fn_801D22A0
    .4byte 0xC002BDC8 # lfs f0, lbl_8053ED68@sda21(r0)
    mr 3, 30
    stfs 0, 0x258(30)
    lwz 4, 0x2a8(30)
    bl fn_801D0280
    sth 3, 0x2b2(30)
    .4byte 0x48000068 # b .L_801C0610
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x2
    bl fn_801D22A0
    lfs 0, 0xc(30)
    stfs 0, 0x2b8(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2bc(30)
    lwz 3, 0x2a8(30)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x2c0(30)
    lfs 0, 0x4(3)
    stfs 0, 0x2c4(30)
    lfs 0, 0x3c(30)
    stfs 0, 0x2c8(30)
    lfs 0, 0x40(30)
    stfs 0, 0x2cc(30)
    .4byte 0x4800001C # b .L_801C0610
    li 0, -0x1
    addi 3, 30, 0x270
    stw 0, 0x2a8(30)
    li 4, 0x1
    li 5, 0x2
    bl fn_801D22A0
L_801C0610:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C0634:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    mr 31, 3
    lis 3, lbl_80539D44@ha
    lfs 1, 0x2bc(31)
    lfs 0, 0x2c4(31)
    lfs 3, 0x2b8(31)
    fsubs 30, 1, 0
    lfs 0, 0x2c0(31)
    stfs 1, 0x24(1)
    fsubs 31, 3, 0
    .4byte 0xC022BDCC # lfs f1, lbl_8053ED6C@sda21(r0)
    fmuls 2, 30, 30
    lfs 0, lbl_80539D44@l(3)
    stfs 3, 0x20(1)
    fmadds 4, 31, 31, 2
    fmuls 0, 1, 0
    stfs 31, 0x20(1)
    stfs 30, 0x24(1)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801C06E8
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801C06C0
    .4byte 0x48000024 # b .L_801C06E0
L_801C06C0:
    frsqrte 3, 4
    .4byte 0xC042BDD0 # lfs f2, lbl_8053ED70@sda21(r0)
    .4byte 0xC002BDD4 # lfs f0, lbl_8053ED74@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801C06E0:
    fmuls 31, 31, 4
    fmuls 30, 30, 4
L_801C06E8:
    lfs 0, 0x2ac(31)
    lwz 3, 0x2a8(31)
    fmuls 31, 31, 0
    cmpwi 3, 0x0
    fmuls 30, 30, 0
    .4byte 0x41800014 # blt .L_801C0710
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 29, 0x4(3)
    .4byte 0x4800000C # b .L_801C0718
L_801C0710:
    lfs 1, 0x24(31)
    lfs 29, 0x28(31)
L_801C0718:
    .4byte 0xC042BD90 # lfs f2, lbl_8053ED30@sda21(r0)
    addi 3, 31, 0x2c0
    .4byte 0xC062BD94 # lfs f3, lbl_8053ED34@sda21(r0)
    bl fn_801CD8E4
    fmr 1, 29
    .4byte 0xC042BD90 # lfs f2, lbl_8053ED30@sda21(r0)
    .4byte 0xC062BD94 # lfs f3, lbl_8053ED34@sda21(r0)
    addi 3, 31, 0x2c4
    bl fn_801CD8E4
    lfs 2, 0x2c0(31)
    addi 3, 31, 0x2b8
    lfs 0, 0x2c4(31)
    fadds 1, 2, 31
    stfs 2, 0x18(1)
    fadds 29, 0, 30
    .4byte 0xC042BDD8 # lfs f2, lbl_8053ED78@sda21(r0)
    stfs 0, 0x1c(1)
    .4byte 0xC062BD94 # lfs f3, lbl_8053ED34@sda21(r0)
    stfs 1, 0x18(1)
    stfs 29, 0x1c(1)
    bl fn_801CD8E4
    fmr 1, 29
    .4byte 0xC042BDD8 # lfs f2, lbl_8053ED78@sda21(r0)
    .4byte 0xC062BD94 # lfs f3, lbl_8053ED34@sda21(r0)
    addi 3, 31, 0x2bc
    bl fn_801CD8E4
    lfs 3, 0x2b8(31)
    lfs 2, 0x2bc(31)
    lfs 1, 0x2c0(31)
    lfs 0, 0x2c4(31)
    lwz 4, 0x2a8(31)
    fsubs 1, 3, 1
    stfs 3, 0x10(1)
    fsubs 31, 2, 0
    cmpwi 4, 0x0
    stfs 2, 0x14(1)
    stfs 1, 0x10(1)
    stfs 31, 0x14(1)
    .4byte 0x41800028 # blt .L_801C07D8
    mr 3, 31
    addi 5, 31, 0xc
    bl fn_801D0DA0
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810048 # ble .L_801C0810
    frsqrte 0, 1
    fmuls 1, 0, 1
    .4byte 0x4800003C # b .L_801C0810
L_801C07D8:
    lfs 3, 0x24(31)
    lfs 0, 0xc(31)
    lfs 2, 0x28(31)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801C0810
    frsqrte 0, 1
    fmuls 1, 0, 1
L_801C0810:
    .4byte 0xC002BDDC # lfs f0, lbl_8053ED7C@sda21(r0)
    lha 5, 0x2b0(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810064 # ble .L_801C0880
    .4byte 0xC002BD90 # lfs f0, lbl_8053ED30@sda21(r0)
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    fdivs 3, 0, 1
    .4byte 0xC842BDB0 # lfd f2, lbl_8053ED50@sda21(r0)
    stw 0, 0x28(1)
    lfs 0, 0x2ac(31)
    lfd 1, 0x28(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    extsh 0, 3
    cmpw 0, 5
    .4byte 0x4081000C # ble .L_801C0870
    mr 3, 5
    .4byte 0x48000010 # b .L_801C087C
L_801C0870:
    cmpwi 0, 0x100
    .4byte 0x40800008 # bge .L_801C087C
    li 3, 0x100
L_801C087C:
    mr 5, 3
L_801C0880:
    lwz 0, 0x248(31)
    cmpwi 0, 0x5
    .4byte 0x4082005C # bne .L_801C08E4
    lwz 4, 0x24c(31)
    lis 3, 0x4330
    extsh 0, 5
    stw 3, 0x30(1)
    subfic 4, 4, 0x14
    .4byte 0xC862BDB0 # lfd f3, lbl_8053ED50@sda21(r0)
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 4, 0x34(1)
    .4byte 0xC082BDD8 # lfs f4, lbl_8053ED78@sda21(r0)
    lfd 0, 0x30(1)
    stw 0, 0x2c(1)
    fsubs 2, 0, 3
    .4byte 0xC022BD90 # lfs f1, lbl_8053ED30@sda21(r0)
    stw 3, 0x28(1)
    lfd 0, 0x28(1)
    fnmsubs 1, 4, 2, 1
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 5, 0x3c(1)
L_801C08E4:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182000C # beq .L_801C08F8
    neg 0, 5
    extsh 5, 0
L_801C08F8:
    neg 0, 5
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 0, 30, 18, 28
    lfs 1, 0x2c0(31)
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x2c4(31)
    lfsx 6, 3, 0
    add 3, 3, 0
    lfs 5, 0x4(3)
    fmuls 3, 31, 6
    lfs 4, 0x10(1)
    fmuls 0, 31, 5
    stfs 1, 0x8(1)
    fmsubs 3, 4, 5, 3
    stfs 2, 0xc(1)
    fmadds 0, 4, 6, 0
    fadds 1, 1, 3
    fadds 0, 2, 0
    stfs 1, 0x2b8(31)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x2bc(31)
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lwz 0, 0x84(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

