# fn_803D521C - helper (0x338)
.section extab, "a"
.balign 4
.global etb_8000FA24
etb_8000FA24:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000FA24, 8

.section extabindex, "a"
.balign 4
.global eti_8001F8B8
eti_8001F8B8:
    .4byte fn_803D521C
    .4byte 0x00000338
    .4byte etb_8000FA24
.size eti_8001F8B8, 12

.text
.balign 4
.global fn_803D521C

fn_803D521C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lbz 0, 0x216f(31)
    cmplwi 0, 0x3
    .4byte 0x40820258 # bne .L_803D54A8
    lha 3, 0x82(31)
    .4byte 0xC3E20520 # lfs f31, lbl_805434C0@sda21(r0)
    extsh. 0, 3
    .4byte 0x40810078 # ble .L_803D52D8
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803D5274
    li 0, 0x1e
    sth 0, 0x80(31)
L_803D5274:
    lha 4, 0x82(31)
    cmpwi 4, 0x5
    subfic 0, 4, 0xa
    .4byte 0x40800008 # bge .L_803D5288
    mr 0, 4
L_803D5288:
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x8(1)
    cmpwi 4, 0xa
    .4byte 0xC8420540 # lfd f2, lbl_805434E0@sda21(r0)
    .4byte 0xC062055C # lfs f3, lbl_805434FC@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0020560 # lfs f0, lbl_80543500@sda21(r0)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 31, 1, 0
    .4byte 0x40800014 # bge .L_803D52D0
    lha 3, 0x82(31)
    addi 0, 3, 0x1
    sth 0, 0x82(31)
    .4byte 0x4800000C # b .L_803D52D8
L_803D52D0:
    li 0, 0x0
    sth 0, 0x82(31)
L_803D52D8:
    lha 3, 0x80(31)
    addi 0, 3, 0x1
    sth 0, 0x80(31)
    lha 0, 0x80(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_803D52F8
    li 0, 0x0
    sth 0, 0x80(31)
L_803D52F8:
    lha 3, 0x80(31)
    cmpwi 3, 0x1e
    .4byte 0x40800050 # bge .L_803D5350
    mullw 5, 3, 3
    lis 4, 0x4330
    lwz 3, 0x28(31)
    stw 4, 0x8(1)
    lbz 0, 0x28(3)
    .4byte 0xC8620540 # lfd f3, lbl_805434E0@sda21(r0)
    xoris 3, 5, 0x8000
    .4byte 0xC0020564 # lfs f0, lbl_80543504@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC8220578 # lfd f1, lbl_80543518@sda21(r0)
    lfd 2, 0x8(1)
    stw 0, 0x14(1)
    fsubs 2, 2, 3
    stw 4, 0x10(1)
    fdivs 2, 2, 0
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 30, 2, 0
    .4byte 0x48000058 # b .L_803D53A4
L_803D5350:
    subi 0, 3, 0x1e
    lis 4, 0x4330
    mullw 5, 0, 0
    lwz 3, 0x28(31)
    stw 4, 0x10(1)
    lbz 0, 0x28(3)
    .4byte 0xC8620540 # lfd f3, lbl_805434E0@sda21(r0)
    .4byte 0xC0420564 # lfs f2, lbl_80543504@sda21(r0)
    xoris 3, 5, 0x8000
    stw 0, 0xc(1)
    .4byte 0xC082052C # lfs f4, lbl_805434CC@sda21(r0)
    stw 3, 0x14(1)
    .4byte 0xC8220578 # lfd f1, lbl_80543518@sda21(r0)
    lfd 0, 0x10(1)
    stw 4, 0x8(1)
    fsubs 3, 0, 3
    lfd 0, 0x8(1)
    fdivs 2, 3, 2
    fsubs 2, 4, 2
    fsubs 0, 0, 1
    fmuls 30, 2, 0
L_803D53A4:
    lwz 3, 0x28(31)
    fctiwz 0, 30
    lwz 3, 0x4(3)
    stfd 0, 0x10(1)
    lwz 12, 0x0(3)
    lwz 4, 0x14(1)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 30
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lbz 0, 0x2171(31)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_803D5448
    fmr 2, 31
    lwz 3, 0x28(31)
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    bl fn_80402E08
    fmr 2, 31
    lwz 3, 0x1c(31)
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    lwz 3, 0x20(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0x48000044 # b .L_803D5488
L_803D5448:
    lwz 4, 0x20(31)
    fmr 2, 31
    lwz 3, 0x1c(31)
    lfs 1, 0x8(4)
    lfs 0, 0x8(3)
    lwz 3, 0x28(31)
    fsubs 1, 1, 0
    bl fn_80402E08
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    lwz 3, 0x1c(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 31
    lwz 3, 0x20(31)
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    bl fn_80402E08
L_803D5488:
    .4byte 0xC0020520 # lfs f0, lbl_805434C0@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x40820018 # bne .L_803D54A8
    lbz 0, 0x2171(31)
    lbz 3, 0x2170(31)
    cmplw 0, 3
    .4byte 0x41820008 # beq .L_803D54A8
    stb 3, 0x2171(31)
L_803D54A8:
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lbz 0, 0x2174(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803D551C
    lwz 3, 0x8(31)
    lbz 4, 0x2173(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    li 4, 0x0
    .4byte 0xC0220568 # lfs f1, lbl_80543508@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC062056C # lfs f3, lbl_8054350C@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0820570 # lfs f4, lbl_80543510@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804316EC
L_803D551C:
    lbz 0, 0x2176(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803D5530
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
L_803D5530:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 0, 0x44(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

