# fn_802F25C0 - TFL2: main per-frame update() (0x10CC, largest piece)
# Effect-heavy state machine: spawns via fn_8013CC50 (x14), notifies via
# fn_801F0E34 (x5), queries per-room config via GetRoomConfigRecord (x8), and reads/
# writes the terrain grid via fn_802F9908/fn_802F9974 (x1+x6). Also reuses
# fn_801F2718, fn_8022F478/8022F514, fn_80234F68, fn_80239914,
# fn_8023A89C/8023A97C, fn_8023AF14, fn_802D79E8, fn_802D9C4C. Track A:
# byte-match verified, structural overview per the large/complex-function
# exception.
.section extab, "a"
.balign 4
.global etb_8000D314
etb_8000D314:
    .4byte 0x414A0000
    .4byte 0x00000000
.size etb_8000D314, 8

.section extabindex, "a"
.balign 4
.global eti_8001C5A0
eti_8001C5A0:
    .4byte fn_802F25C0
    .4byte 0x000010CC
    .4byte etb_8000D314
.size eti_8001C5A0, 12

.text
.balign 4
.global fn_802F25C0

fn_802F25C0:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stfd 29, 0x100(1)
    psq_st 29, 0x108(1), 0, 0
    stfd 28, 0xf0(1)
    psq_st 28, 0xf8(1), 0, 0
    stfd 27, 0xe0(1)
    psq_st 27, 0xe8(1), 0, 0
    stmw 24, 0xc0(1)
    mr 31, 3
    lis 3, lbl_8046F788@ha
    lwz 0, 0x234(31)
    addi 30, 3, lbl_8046F788@l
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    cmpwi 0, 0x3
    psq_st 1, 0x7c(1), 0, 0
    stfs 0, 0x84(1)
    .4byte 0x41820068 # beq .L_802F2684
    .4byte 0x40800010 # bge .L_802F2630
    cmpwi 0, 0x2
    .4byte 0x40800038 # bge .L_802F2660
    .4byte 0x48000014 # b .L_802F2640
L_802F2630:
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_802F2640
    .4byte 0x40800008 # bge .L_802F2640
    .4byte 0x4800006C # b .L_802F26A8
L_802F2640:
    lfs 0, 0xc(31)
    .4byte 0xC022E4B4 # lfs f1, lbl_80541454@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    .4byte 0x4800012C # b .L_802F2788
L_802F2660:
    lfs 2, 0xc(31)
    .4byte 0xC022E4C4 # lfs f1, lbl_80541464@sda21(r0)
    .4byte 0xC002E4CC # lfs f0, lbl_8054146C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000108 # b .L_802F2788
L_802F2684:
    lfs 2, 0xc(31)
    .4byte 0xC022E4B4 # lfs f1, lbl_80541454@sda21(r0)
    .4byte 0xC002E4CC # lfs f0, lbl_8054146C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480000E4 # b .L_802F2788
L_802F26A8:
    .4byte 0xC002E4D0 # lfs f0, lbl_80541470@sda21(r0)
    addi 3, 1, 0x88
    .4byte 0xC022E4C4 # lfs f1, lbl_80541464@sda21(r0)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    lwz 4, 0x80(31)
    lwz 0, 0x84(31)
    stw 4, 0x88(1)
    stw 0, 0x8c(1)
    lwz 4, 0x88(31)
    lwz 0, 0x8c(31)
    stw 4, 0x90(1)
    stw 0, 0x94(1)
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    lfs 0, 0x88(1)
    lfs 2, 0x8c(1)
    lfs 1, 0x90(1)
    fadds 3, 0, 4
    lfs 0, 0x94(1)
    fadds 2, 2, 5
    fadds 1, 1, 4
    stfs 4, 0x8(1)
    fadds 0, 0, 5
    stfs 5, 0xc(1)
    stfs 3, 0x88(1)
    stfs 2, 0x8c(1)
    stfs 1, 0x90(1)
    stfs 0, 0x94(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    psq_l 0, 0x7c(1), 0, 0
    lfs 1, 0x84(1)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002E4C4 # lfs f0, lbl_80541464@sda21(r0)
    stfs 1, 0x14(31)
    .4byte 0xC062E4D4 # lfs f3, lbl_80541474@sda21(r0)
    lfs 1, 0x10(31)
    .4byte 0xC042E4D8 # lfs f2, lbl_80541478@sda21(r0)
    fadds 4, 1, 0
    .4byte 0xC022E4DC # lfs f1, lbl_8054147C@sda21(r0)
    .4byte 0xC002E4E0 # lfs f0, lbl_80541480@sda21(r0)
    stfs 4, 0x10(31)
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_802F2788:
    lfs 6, 0x10(31)
    addi 3, 1, 0x88
    lfs 2, 0xc(31)
    li 5, 0x0
    .4byte 0xC022E4E4 # lfs f1, lbl_80541484@sda21(r0)
    stfs 2, 0x8(1)
    stfs 6, 0xc(1)
    lfs 0, 0x60(31)
    stfs 0, 0x88(1)
    fadds 4, 0, 2
    lfs 0, 0x64(31)
    stfs 0, 0x8c(1)
    fadds 3, 0, 6
    lfs 0, 0x68(31)
    stfs 0, 0x90(1)
    fadds 2, 0, 2
    lfs 5, 0x6c(31)
    fadds 0, 5, 6
    stfs 5, 0x94(1)
    stfs 4, 0x88(1)
    stfs 3, 0x8c(1)
    stfs 2, 0x90(1)
    stfs 0, 0x94(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    mr. 28, 3
    .4byte 0x4180002C # blt .L_802F281C
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802F281C
    mr 3, 28
    bl fn_8022F478
    clrlwi 0, 3, 24
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802F281C
    li 28, -0x1
L_802F281C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_802F2844
    cmpwi 28, 0x0
    .4byte 0x41800018 # blt .L_802F2844
    mr 3, 28
    bl fn_80234F68
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_802F2844
    li 28, -0x1
L_802F2844:
    lis 4, 0x5342
    mr 3, 31
    addi 4, 4, 0x414c
    bl fn_801F2718
    lwz 4, 0x4(31)
    mr 26, 3
    addi 3, 1, 0x88
    addi 5, 1, 0x8
    bl fn_8023A89C
    li 25, 0x0
    li 24, 0x0
L_802F2870:
    lwz 5, 0x4(31)
    mr 3, 24
    addi 4, 1, 0x88
    addi 6, 1, 0x8
    bl fn_8023A97C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802F2890
    addi 25, 25, 0x1
L_802F2890:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FFD8 # blt .L_802F2870
    psq_l 1, 0x7c(1), 0, 0
    lfs 0, 0x84(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x41810D94 # bgt .L_802F3648
    lis 3, jumptable_804AA67C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AA67C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 30, 0xc(31)
    lfs 31, 0x10(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802F28F0
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802F28F4
L_802F28F0:
    addi 4, 3, 0xdc
L_802F28F4:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0x98(1)
    lwz 3, 0x8(4)
    lfs 0, 0x98(1)
    stw 0, 0x9c(1)
    fsubs 1, 30, 0
    lwz 0, 0xc(4)
    lfs 0, 0x9c(1)
    stw 3, 0xa0(1)
    fctiwz 1, 1
    fsubs 0, 31, 0
    stw 0, 0xa4(1)
    stfd 1, 0xa8(1)
    fctiwz 0, 0
    lwz 6, 0xac(1)
    stfd 0, 0xb0(1)
    cmpwi 6, 0x0
    lwz 5, 0xb4(1)
    .4byte 0x4080000C # bge .L_802F294C
    li 6, 0x0
    .4byte 0x48000010 # b .L_802F2958
L_802F294C:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802F2958
    li 6, 0x1ff
L_802F2958:
    cmpwi 5, 0x0
    .4byte 0x4080000C # bge .L_802F2968
    li 5, 0x0
    .4byte 0x48000010 # b .L_802F2974
L_802F2968:
    cmpwi 5, 0x200
    .4byte 0x41800008 # blt .L_802F2974
    li 5, 0x1ff
L_802F2974:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 0, 6, 0, 23, 23
    rlwimi 0, 5, 1, 22, 22
    lwz 4, 0x4(31)
    rlwimi 0, 5, 0, 24, 27
    lwz 3, 0x20(3)
    mr 5, 0
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    sth 3, 0x250(31)
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000CAC # b .L_802F3650
    lwz 0, 0x234(31)
    cmpwi 0, 0x6
    .4byte 0x4182001C # beq .L_802F29CC
    .4byte 0x40800C9C # bge .L_802F3650
    cmpwi 0, 0x4
    .4byte 0x408002AC # bge .L_802F2C68
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802F29CC
    .4byte 0x48000C88 # b .L_802F3650
L_802F29CC:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820C6C # beq .L_802F3650
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_802F29F8
    cmpwi 26, 0x0
    .4byte 0x41800C5C # blt .L_802F3650
L_802F29F8:
    .4byte 0xC042E4B4 # lfs f2, lbl_80541454@sda21(r0)
    addi 4, 1, 0x64
    lfs 0, 0x10(31)
    li 5, 0x381
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    stfs 0, 0x6c(1)
    li 7, 0x0
    stfs 2, 0x64(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x68(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042E4B4 # lfs f2, lbl_80541454@sda21(r0)
    addi 4, 1, 0x58
    lfs 0, 0x10(31)
    li 5, 0x382
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    stfs 0, 0x60(1)
    li 7, 0x0
    stfs 2, 0x58(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x5c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042E4B4 # lfs f2, lbl_80541454@sda21(r0)
    addi 4, 1, 0x4c
    lfs 0, 0x10(31)
    li 5, 0x383
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    stfs 0, 0x54(1)
    li 7, 0x0
    stfs 2, 0x4c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x50(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042E4B4 # lfs f2, lbl_80541454@sda21(r0)
    addi 4, 1, 0x40
    lfs 0, 0x10(31)
    li 5, 0x384
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    stfs 0, 0x48(1)
    li 7, 0x0
    stfs 2, 0x40(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x44(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802F2B44
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802F2B48
L_802F2B44:
    addi 4, 3, 0xdc
L_802F2B48:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 26, 30, 0x0
    stw 3, 0x98(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0x9c(1)
    lwz 0, 0xc(4)
    stw 3, 0xa0(1)
    lfs 29, 0x9c(1)
    stw 0, 0xa4(1)
    .4byte 0xC3C2E4E8 # lfs f30, lbl_80541488@sda21(r0)
    lfs 31, 0x98(1)
    .4byte 0x480000B4 # b .L_802F2C34
L_802F2B84:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    li 24, 0x0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 28, 0xb4(1)
    .4byte 0x4800007C # b .L_802F2C18
L_802F2BA0:
    fsubs 0, 27, 29
    cmpwi 28, 0x0
    mr 0, 28
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 6, 0xb4(1)
    .4byte 0x4080000C # bge .L_802F2BC4
    li 0, 0x0
    .4byte 0x48000010 # b .L_802F2BD0
L_802F2BC4:
    cmpwi 28, 0x200
    .4byte 0x41800008 # blt .L_802F2BD0
    li 0, 0x1ff
L_802F2BD0:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_802F2BE0
    li 6, 0x0
    .4byte 0x48000010 # b .L_802F2BEC
L_802F2BE0:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802F2BEC
    li 6, 0x1ff
L_802F2BEC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 6, 1, 22, 22
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    rlwimi 5, 6, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    li 6, 0x6
    bl fn_802F9974
    fadds 27, 27, 30
    addi 24, 24, 0x1
L_802F2C18:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 24, 0
    .4byte 0x4180FF78 # blt .L_802F2BA0
    fadds 28, 28, 30
    addi 29, 29, 0x1
L_802F2C34:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 26, 0
    cmpw 29, 0
    .4byte 0x4180FF40 # blt .L_802F2B84
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x1b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480009EC # b .L_802F3650
L_802F2C68:
    cmpwi 25, 0x4
    .4byte 0x408209E4 # bne .L_802F3650
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802F2CBC
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802F2CC0
L_802F2CBC:
    addi 4, 3, 0xdc
L_802F2CC0:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 26, 30, 0x0
    stw 3, 0x98(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0x9c(1)
    lwz 0, 0xc(4)
    stw 3, 0xa0(1)
    lfs 29, 0x9c(1)
    stw 0, 0xa4(1)
    .4byte 0xC3C2E4E8 # lfs f30, lbl_80541488@sda21(r0)
    lfs 31, 0x98(1)
    .4byte 0x480000B4 # b .L_802F2DAC
L_802F2CFC:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    li 24, 0x0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 28, 0xb4(1)
    .4byte 0x4800007C # b .L_802F2D90
L_802F2D18:
    fsubs 0, 27, 29
    cmpwi 28, 0x0
    mr 0, 28
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 6, 0xb4(1)
    .4byte 0x4080000C # bge .L_802F2D3C
    li 0, 0x0
    .4byte 0x48000010 # b .L_802F2D48
L_802F2D3C:
    cmpwi 28, 0x200
    .4byte 0x41800008 # blt .L_802F2D48
    li 0, 0x1ff
L_802F2D48:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_802F2D58
    li 6, 0x0
    .4byte 0x48000010 # b .L_802F2D64
L_802F2D58:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802F2D64
    li 6, 0x1ff
L_802F2D64:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 6, 1, 22, 22
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    rlwimi 5, 6, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    li 6, 0x7c
    bl fn_802F9974
    fadds 27, 27, 30
    addi 24, 24, 0x1
L_802F2D90:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 24, 0
    .4byte 0x4180FF78 # blt .L_802F2D18
    fadds 28, 28, 30
    addi 29, 29, 0x1
L_802F2DAC:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 26, 0
    cmpw 29, 0
    .4byte 0x4180FF40 # blt .L_802F2CFC
    .4byte 0xC002E4EC # lfs f0, lbl_8054148C@sda21(r0)
    lis 4, 0x3
    li 0, 0x6
    mr 3, 31
    stfs 0, 0x24c(31)
    addi 4, 4, 0x1b
    li 5, 0x0
    stw 0, 0x230(31)
    bl fn_801F0E34
    .4byte 0x4800086C # b .L_802F3650
    lfs 2, 0x248(31)
    .4byte 0xC022E4F0 # lfs f1, lbl_80541490@sda21(r0)
    .4byte 0xC002E4F4 # lfs f0, lbl_80541494@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x248(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820848 # bne .L_802F3650
    .4byte 0xC002E4F8 # lfs f0, lbl_80541498@sda21(r0)
    stfs 0, 0x248(31)
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802F2E30
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802F2E34
L_802F2E30:
    addi 4, 3, 0xdc
L_802F2E34:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 26, 30, 0x0
    stw 3, 0x98(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0x9c(1)
    lwz 0, 0xc(4)
    stw 3, 0xa0(1)
    lfs 29, 0x9c(1)
    stw 0, 0xa4(1)
    .4byte 0xC3C2E4E8 # lfs f30, lbl_80541488@sda21(r0)
    lfs 31, 0x98(1)
    .4byte 0x480000B4 # b .L_802F2F20
L_802F2E70:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    li 24, 0x0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 28, 0xb4(1)
    .4byte 0x4800007C # b .L_802F2F04
L_802F2E8C:
    fsubs 0, 27, 29
    cmpwi 28, 0x0
    mr 0, 28
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 7, 0xb4(1)
    .4byte 0x4080000C # bge .L_802F2EB0
    li 0, 0x0
    .4byte 0x48000010 # b .L_802F2EBC
L_802F2EB0:
    cmpwi 28, 0x200
    .4byte 0x41800008 # blt .L_802F2EBC
    li 0, 0x1ff
L_802F2EBC:
    cmpwi 7, 0x0
    .4byte 0x4080000C # bge .L_802F2ECC
    li 7, 0x0
    .4byte 0x48000010 # b .L_802F2ED8
L_802F2ECC:
    cmpwi 7, 0x200
    .4byte 0x41800008 # blt .L_802F2ED8
    li 7, 0x1ff
L_802F2ED8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 7, 1, 22, 22
    lhz 6, 0x252(31)
    lwz 3, 0x20(3)
    rlwimi 5, 7, 0, 24, 27
    lwz 4, 0x4(31)
    rlwimi 5, 0, 28, 28, 31
    bl fn_802F9974
    fadds 27, 27, 30
    addi 24, 24, 0x1
L_802F2F04:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 24, 0
    .4byte 0x4180FF78 # blt .L_802F2E8C
    fadds 28, 28, 30
    addi 29, 29, 0x1
L_802F2F20:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 26, 0
    cmpw 29, 0
    .4byte 0x4180FF40 # blt .L_802F2E70
    li 0, 0x28
    stw 0, 0x244(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802F2F54
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000700 # b .L_802F3650
L_802F2F54:
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480006F4 # b .L_802F3650
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_802F2F9C
    cmpwi 28, 0x0
    .4byte 0x4080002C # bge .L_802F2F9C
    cmpwi 26, 0x0
    .4byte 0x40800024 # bge .L_802F2F9C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1c
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x480006B8 # b .L_802F3650
L_802F2F9C:
    cmpwi 0, 0x0
    .4byte 0x418206B0 # beq .L_802F3650
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820698 # bne .L_802F3650
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4182068C # beq .L_802F3650
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082066C # bne .L_802F3650
    li 0, 0x1
    stw 0, 0x244(31)
    .4byte 0x48000660 # b .L_802F3650
    lfs 2, 0x248(31)
    .4byte 0xC022E4FC # lfs f1, lbl_8054149C@sda21(r0)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x248(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800640 # bge .L_802F3650
    stfs 0, 0x248(31)
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802F3034
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802F3038
L_802F3034:
    addi 4, 3, 0xdc
L_802F3038:
    lwz 3, 0x0(4)
    addi 29, 30, 0x38
    lwz 0, 0x4(4)
    addi 26, 30, 0x1c
    stw 3, 0x98(1)
    addi 27, 30, 0x0
    lwz 3, 0x8(4)
    li 30, 0x0
    stw 0, 0x9c(1)
    lwz 0, 0xc(4)
    stw 3, 0xa0(1)
    lfs 29, 0x9c(1)
    stw 0, 0xa4(1)
    .4byte 0xC3C2E4E8 # lfs f30, lbl_80541488@sda21(r0)
    lfs 31, 0x98(1)
    .4byte 0x480000E0 # b .L_802F3154
L_802F3078:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    mr 25, 29
    li 28, 0x0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 24, 0xb4(1)
    .4byte 0x480000A0 # b .L_802F3134
L_802F3098:
    fsubs 0, 27, 29
    cmpwi 24, 0x0
    mr 0, 24
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 4, 0xb4(1)
    .4byte 0x4080000C # bge .L_802F30BC
    li 0, 0x0
    .4byte 0x48000010 # b .L_802F30C8
L_802F30BC:
    cmpwi 24, 0x200
    .4byte 0x41800008 # blt .L_802F30C8
    li 0, 0x1ff
L_802F30C8:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_802F30D8
    li 4, 0x0
    .4byte 0x48000010 # b .L_802F30E4
L_802F30D8:
    cmpwi 4, 0x200
    .4byte 0x41800008 # blt .L_802F30E4
    li 4, 0x1ff
L_802F30E4:
    cmpwi 3, 0x1
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 4, 1, 22, 22
    rlwimi 5, 4, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    .4byte 0x4182001C # beq .L_802F3114
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 6, 0x250(31)
    lwz 3, 0x20(3)
    lwz 4, 0x4(31)
    bl fn_802F9974
    .4byte 0x48000018 # b .L_802F3128
L_802F3114:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    lhz 6, 0x0(25)
    bl fn_802F9974
L_802F3128:
    fadds 27, 27, 30
    addi 25, 25, 0x2
    addi 28, 28, 0x1
L_802F3134:
    lwz 3, 0x234(31)
    slwi 0, 3, 2
    lwzx 0, 26, 0
    cmpw 28, 0
    .4byte 0x4180FF54 # blt .L_802F3098
    fadds 28, 28, 30
    addi 29, 29, 0x8
    addi 30, 30, 0x1
L_802F3154:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 30, 0
    .4byte 0x4180FF14 # blt .L_802F3078
    li 0, 0x2
    .4byte 0xC062E4B4 # lfs f3, lbl_80541454@sda21(r0)
    stw 0, 0x230(31)
    addi 4, 1, 0x34
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    li 5, 0x381
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 2, 0xc(31)
    li 7, 0x0
    fadds 4, 3, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    fadds 2, 3, 2
    stfs 0, 0x3c(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x34(1)
    li 10, 0x1
    stfs 4, 0x38(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042E4B4 # lfs f2, lbl_80541454@sda21(r0)
    addi 4, 1, 0x28
    lfs 0, 0x10(31)
    li 5, 0x382
    lfs 1, 0xc(31)
    li 6, 0x1
    fadds 3, 2, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    stfs 0, 0x30(1)
    li 7, 0x0
    stfs 2, 0x28(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x2c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042E4B4 # lfs f2, lbl_80541454@sda21(r0)
    addi 4, 1, 0x1c
    lfs 0, 0x10(31)
    li 5, 0x383
    lfs 1, 0xc(31)
    li 6, 0x1
    fadds 3, 2, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    stfs 0, 0x24(1)
    li 7, 0x0
    stfs 2, 0x1c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x20(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042E4B4 # lfs f2, lbl_80541454@sda21(r0)
    addi 4, 1, 0x10
    lfs 0, 0x10(31)
    li 5, 0x384
    lfs 1, 0xc(31)
    li 6, 0x1
    fadds 3, 2, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    stfs 0, 0x18(1)
    li 7, 0x0
    stfs 2, 0x10(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x14(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0x480003B0 # b .L_802F3650
    lfs 2, 0x248(31)
    lfs 0, 0x24c(31)
    .4byte 0xC822E500 # lfd f1, lbl_805414A0@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002E508 # lfs f0, lbl_805414A8@sda21(r0)
    stfs 2, 0x248(31)
    lfs 2, 0x24c(31)
    fsub 1, 2, 1
    frsp 1, 1
    stfs 1, 0x24c(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_802F32F0
    stfs 0, 0x248(31)
    li 3, 0x4
    li 0, 0x7
    stw 3, 0x244(31)
    stw 0, 0x230(31)
L_802F32F0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x40820350 # bne .L_802F3650
    li 0, 0x1
    stb 0, 0x7f5(3)
    .4byte 0x48000344 # b .L_802F3650
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x40820308 # bne .L_802F3620
    lfs 2, 0x248(31)
    lfs 0, 0x24c(31)
    .4byte 0xC822E510 # lfd f1, lbl_805414B0@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002E518 # lfs f0, lbl_805414B8@sda21(r0)
    stfs 2, 0x248(31)
    lfs 2, 0x24c(31)
    fadd 1, 2, 1
    frsp 1, 1
    stfs 1, 0x24c(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408202D8 # bne .L_802F3628
    stfs 0, 0x248(31)
    li 0, 0x8
    stw 0, 0x230(31)
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x1
    .4byte 0xC022E51C # lfs f1, lbl_805414BC@sda21(r0)
    .4byte 0xC042E4A0 # lfs f2, lbl_80541440@sda21(r0)
    bl fn_802D79E8
    .4byte 0xC022E4C8 # lfs f1, lbl_80541468@sda21(r0)
    addi 4, 1, 0x70
    lfs 0, 0xc(31)
    li 5, 0x263
    .4byte 0xC062E4C4 # lfs f3, lbl_80541464@sda21(r0)
    li 6, 0x0
    fadds 2, 1, 0
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    fadds 2, 3, 2
    li 10, 0x1
    stfs 2, 0x70(1)
    lfs 2, 0x10(31)
    fadds 2, 3, 2
    stfs 0, 0x78(1)
    stfs 2, 0x74(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 0, 0x234(31)
    cmpwi 0, 0x4
    .4byte 0x40820114 # bne .L_802F34E8
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    mr 27, 3
    lwz 3, 0x4(31)
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    addi 4, 1, 0x70
    li 5, 0x82
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    li 5, 0x83
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    li 5, 0x84
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lbz 0, 0x0(27)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x41820014 # beq .L_802F347C
    cmpwi 0, 0x73
    .4byte 0x4182000C # beq .L_802F347C
    cmpwi 0, 0x79
    .4byte 0x40820030 # bne .L_802F34A8
L_802F347C:
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    li 5, 0x80
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_802F34D0
L_802F34A8:
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022E4A4 # lfs f1, lbl_80541444@sda21(r0)
    li 5, 0x81
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802F34D0:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000130 # b .L_802F3614
L_802F34E8:
    .4byte 0xC022E4C8 # lfs f1, lbl_80541468@sda21(r0)
    lfs 0, 0xc(31)
    lwz 26, 0x4(31)
    fadds 28, 1, 0
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802F350C
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802F3510
L_802F350C:
    addi 4, 3, 0xdc
L_802F3510:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 28, 30, 0x0
    stw 3, 0x98(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0x9c(1)
    lwz 0, 0xc(4)
    stw 3, 0xa0(1)
    lfs 29, 0x9c(1)
    stw 0, 0xa4(1)
    .4byte 0xC3E2E4E8 # lfs f31, lbl_80541488@sda21(r0)
    lfs 30, 0x98(1)
    .4byte 0x480000B8 # b .L_802F3600
L_802F354C:
    fsubs 0, 28, 30
    lfs 27, 0x10(31)
    li 25, 0x0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 24, 0xb4(1)
    .4byte 0x48000080 # b .L_802F35E4
L_802F3568:
    fsubs 0, 27, 29
    cmpwi 24, 0x0
    mr 6, 24
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 7, 0xb4(1)
    .4byte 0x4080000C # bge .L_802F358C
    li 6, 0x0
    .4byte 0x48000010 # b .L_802F3598
L_802F358C:
    cmpwi 24, 0x200
    .4byte 0x41800008 # blt .L_802F3598
    li 6, 0x1ff
L_802F3598:
    cmpwi 7, 0x0
    .4byte 0x4080000C # bge .L_802F35A8
    li 7, 0x0
    .4byte 0x48000010 # b .L_802F35B4
L_802F35A8:
    cmpwi 7, 0x200
    .4byte 0x41800008 # blt .L_802F35B4
    li 7, 0x1ff
L_802F35B4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    lwz 0, 0x240(31)
    rlwimi 5, 7, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 7, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    lwz 4, 0x4(31)
    clrlwi 6, 0, 16
    bl fn_802F9974
    fadds 27, 27, 31
    addi 25, 25, 0x1
L_802F35E4:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 25, 0
    .4byte 0x4180FF74 # blt .L_802F3568
    fadds 28, 28, 31
    addi 29, 29, 0x1
L_802F3600:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 28, 0
    cmpw 29, 0
    .4byte 0x4180FF3C # blt .L_802F354C
L_802F3614:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800000C # b .L_802F3628
L_802F3620:
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_802F3628:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802F3650
    li 0, 0x1
    stb 0, 0x7f5(3)
    .4byte 0x4800000C # b .L_802F3650
L_802F3648:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802F3650:
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    psq_l 29, 0x108(1), 0, 0
    lfd 29, 0x100(1)
    psq_l 28, 0xf8(1), 0, 0
    lfd 28, 0xf0(1)
    psq_l 27, 0xe8(1), 0, 0
    lfd 27, 0xe0(1)
    lmw 24, 0xc0(1)
    lwz 0, 0x134(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

