# fn_803DF2B4 - actor@lbl_804B04F8: PTMF-dispatched method (0x370)
# Same shared-subsystem calls (fn_80402B10/fn_80402940) as fn_803DEC44.
.section extab, "a"
.balign 4
.global etb_8000FBE4
etb_8000FBE4:
    .4byte 0x588A0000
    .4byte 0x00000000
.size etb_8000FBE4, 8

.section extabindex, "a"
.balign 4
.global eti_8001FAB0
eti_8001FAB0:
    .4byte fn_803DF2B4
    .4byte 0x00000370
    .4byte etb_8000FBE4
.size eti_8001FAB0, 12

.text
.balign 4
.global fn_803DF2B4

fn_803DF2B4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 21, 0x24(1)
    mr 24, 3
    lis 4, lbl_804774C8@ha
    lha 3, 0x9c(3)
    mr 29, 24
    addi 31, 4, lbl_804774C8@l
    li 28, 0x0
    addi 0, 3, 0x1
    li 27, 0x0
    sth 0, 0x9c(24)
    li 26, 0x0
    li 25, 0x0
    li 30, 0x0
L_803DF304:
    lha 0, 0x9c(24)
    cmpw 0, 30
    .4byte 0x40810174 # ble .L_803DF480
    lwz 3, 0x34(29)
    li 4, 0x14
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402B10
    mr 0, 3
    lwz 3, 0x44(29)
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    mr 28, 0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    li 4, 0x14
    li 5, 0x0
    bl fn_80402B10
    lha 0, 0x9c(24)
    subf 0, 30, 0
    cmpwi 0, 0x14
    .4byte 0x40810008 # ble .L_803DF35C
    li 0, 0x14
L_803DF35C:
    mullw 0, 0, 0
    lis 23, 0x4330
    stw 23, 0x8(1)
    cmpwi 25, 0x1
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020678 # lfs f0, lbl_80543618@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
    .4byte 0x41820088 # beq .L_803DF410
    .4byte 0x408000F4 # bge .L_803DF480
    cmpwi 25, 0x0
    .4byte 0x40800008 # bge .L_803DF39C
    .4byte 0x480000E8 # b .L_803DF480
L_803DF39C:
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    addi 21, 31, 0x1c0
    li 22, 0x0
L_803DF3A8:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0xdb
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 23, 0x8(1)
    lwz 12, 0x24(12)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x11
    .4byte 0x4180FFA0 # blt .L_803DF3A8
    .4byte 0x48000074 # b .L_803DF480
L_803DF410:
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    addi 21, 31, 0x248
    li 22, 0x0
L_803DF41C:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0xec
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 23, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x14
    .4byte 0x4180FFA0 # blt .L_803DF41C
L_803DF480:
    addi 25, 25, 0x1
    addi 29, 29, 0x4
    cmpwi 25, 0x2
    addi 30, 30, 0x3
    .4byte 0x4180FE74 # blt .L_803DF304
    lha 0, 0x9c(24)
    cmpwi 0, 0xf
    .4byte 0x408100CC # ble .L_803DF568
    lwz 3, 0x30(24)
    li 4, 0xf
    .4byte 0xC022067C # lfs f1, lbl_8054361C@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402940
    lha 4, 0x9c(24)
    mr 27, 3
    subi 0, 4, 0xf
    cmpwi 0, 0xf
    .4byte 0x40810008 # ble .L_803DF4D0
    li 0, 0xf
L_803DF4D0:
    mullw 0, 0, 0
    lis 25, 0x4330
    stw 25, 0x10(1)
    addi 21, 31, 0x190
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    li 22, 0x0
    xoris 0, 0, 0x8000
    .4byte 0xC0020684 # lfs f0, lbl_80543624@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
L_803DF504:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0xd5
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 25, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x6
    .4byte 0x4180FFA0 # blt .L_803DF504
L_803DF568:
    lha 0, 0x9c(24)
    cmpwi 0, 0x14
    .4byte 0x40810064 # ble .L_803DF5D4
    lwz 3, 0x5c(24)
    li 4, 0x19
    .4byte 0xC022068C # lfs f1, lbl_8054362C@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402940
    lha 4, 0x9c(24)
    mr 26, 3
    subi 0, 4, 0x14
    cmpwi 0, 0x19
    .4byte 0x40810008 # ble .L_803DF5A4
    li 0, 0x19
L_803DF5A4:
    mullw 4, 0, 0
    lis 0, 0x4330
    stw 0, 0x10(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020690 # lfs f0, lbl_80543630@sda21(r0)
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    xoris 0, 4, 0x8000
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 1, 1, 0
    bl fn_80440E0C
L_803DF5D4:
    clrlwi. 0, 28, 24
    .4byte 0x41820028 # beq .L_803DF600
    clrlwi. 0, 27, 24
    .4byte 0x41820020 # beq .L_803DF600
    clrlwi. 0, 26, 24
    .4byte 0x41820018 # beq .L_803DF600
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x8c(24)
    stw 0, 0x84(24)
    stw 0, 0x90(24)
L_803DF600:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 21, 0x24(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

