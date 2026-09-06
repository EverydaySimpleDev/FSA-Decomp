# fn_80381560 - actor@lbl_804AF070: multi-entry-point state-behavior function (0x15E8)
# Same novel shape as fn_8037F580: a mode-dispatch entry using
# jumptable_804AF0A4 into internal blocks that are ALSO independently
# referenced by this actor's vtable (slots vt+0x34 through vt+0x54). Track
# A: byte-match verified, structural overview per the large/complex-function
# exception.
.section extab, "a"
.balign 4
.global etb_8000ECE0
etb_8000ECE0:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000ECE0, 8

.section extabindex, "a"
.balign 4
.global eti_8001EA9C
eti_8001EA9C:
    .4byte fn_80381560
    .4byte 0x000015E8
    .4byte etb_8000ECE0
.size eti_8001EA9C, 12

.text
.balign 4
.global fn_80381560

fn_80381560:
    stwu 1, -0x1d0(1)
    mflr 0
    stw 0, 0x1d4(1)
    stfd 31, 0x1c0(1)
    psq_st 31, 0x1c8(1), 0, 0
    stfd 30, 0x1b0(1)
    psq_st 30, 0x1b8(1), 0, 0
    stw 31, 0x1ac(1)
    clrlwi 0, 3, 24
    fmr 30, 1
    cmplwi 0, 0x9
    .4byte 0xC3E20128 # lfs f31, lbl_805430C8@sda21(r0)
    mr 31, 4
    .4byte 0x4181158C # bgt .L_80382B20
    lis 3, jumptable_804AF0A4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF0A4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x140
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x141(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x13c
    xoris 6, 4, 0x8000
    stw 0, 0x148(1)
    lwz 3, 0x154(3)
    li 4, 0x46
    stw 6, 0x14c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x148(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x13d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x138
    xoris 6, 4, 0x8000
    stw 0, 0x150(1)
    lwz 3, 0x154(3)
    li 4, 0x6f
    stw 6, 0x154(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x150(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x139(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x134
    xoris 6, 4, 0x8000
    stw 0, 0x158(1)
    lwz 3, 0x154(3)
    li 4, 0x72
    stw 6, 0x15c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x158(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x135(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x130
    xoris 6, 4, 0x8000
    stw 0, 0x160(1)
    lwz 3, 0x154(3)
    li 4, 0x63
    stw 6, 0x164(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x160(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x131(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x12c
    xoris 6, 4, 0x8000
    stw 0, 0x168(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x16c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x168(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x12d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x128
    xoris 6, 4, 0x8000
    stw 0, 0x170(1)
    lwz 3, 0x154(3)
    li 4, 0xa0
    stw 6, 0x174(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x170(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x129(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x124
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x47
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x125(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x120
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x121(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x11c
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x6d
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x11d(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x418212C4 # beq .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x118
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x119(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4800127C # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x114
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x115(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x110
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x43
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x111(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x10c
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x75
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x10d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x108
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x63
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x109(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x104
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x63
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x105(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x100
    xoris 6, 4, 0x8000
    stw 0, 0x170(1)
    lwz 3, 0x154(3)
    li 4, 0x6f
    stw 6, 0x174(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x170(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x101(1)
    lis 0, 0x4330
    stw 0, 0x168(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x16c(1)
    lfd 0, 0x168(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x418210DC # beq .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xfc
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0xfd(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48001094 # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xf8
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xf9(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xf4
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x62
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xf5(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xf0
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x61
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xf1(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xec
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x64
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xed(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xe8
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x64
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0xe9(1)
    lis 0, 0x4330
    stw 0, 0x170(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x174(1)
    lfd 0, 0x170(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4082004C # bne .L_80381C34
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xe4
    li 4, 0x79
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0xe5(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000EF0 # b .L_80382B20
L_80381C34:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xe0
    li 4, 0x69
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xe1(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xdc
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xdd(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xd8
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0xd9(1)
    lis 0, 0x4330
    stw 0, 0x180(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x184(1)
    lfd 0, 0x180(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000E20 # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xd4
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xd5(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xd0
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x74
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xd1(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xcc
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x69
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xcd(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xc8
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x6d
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xc9(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xc4
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0xc5(1)
    lis 0, 0x4330
    stw 0, 0x170(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x174(1)
    lfd 0, 0x170(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820CC4 # beq .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xc0
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0xc1(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000C7C # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xbc
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xbd(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xb8
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xb9(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xb4
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x79
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xb5(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xb0
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xb1(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xac
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x74
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xad(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xa8
    xoris 6, 4, 0x8000
    stw 0, 0x170(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x174(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x170(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xa9(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xa4
    xoris 6, 4, 0x8000
    stw 0, 0x168(1)
    lwz 3, 0x154(3)
    li 4, 0x6d
    stw 6, 0x16c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x168(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0xa5(1)
    lis 0, 0x4330
    stw 0, 0x160(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x164(1)
    lfd 0, 0x160(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820A98 # beq .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xa0
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0xa1(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000A50 # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x9c
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x9d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x98
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x74
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x99(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x94
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x68
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x95(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x90
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x69
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x91(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x8c
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x8d(1)
    lis 0, 0x4330
    stw 0, 0x170(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x174(1)
    lfd 0, 0x170(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4082004C # bne .L_80382278
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x88
    li 4, 0x66
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x89(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480008AC # b .L_80382B20
L_80382278:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x84
    li 4, 0x76
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x85(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x80
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x81(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x7c
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x7d(1)
    lis 0, 0x4330
    stw 0, 0x180(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x184(1)
    lfd 0, 0x180(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480007DC # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x78
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x79(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x74
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x6d
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x75(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x70
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x6f
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x71(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x6c
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x6c
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x6d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x68
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x69(1)
    lis 0, 0x4330
    stw 0, 0x170(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x174(1)
    lfd 0, 0x170(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820680 # beq .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x64
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x65(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000638 # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x60
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x61(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x5c
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x72
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x5d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x58
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x59(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x54
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x74
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x55(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x50
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x75
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x51(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x4c
    xoris 6, 4, 0x8000
    stw 0, 0x170(1)
    lwz 3, 0x154(3)
    li 4, 0x72
    stw 6, 0x174(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x170(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x4d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x48
    xoris 6, 4, 0x8000
    stw 0, 0x168(1)
    lwz 3, 0x154(3)
    li 4, 0x6e
    stw 6, 0x16c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x168(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x49(1)
    lis 0, 0x4330
    stw 0, 0x160(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x164(1)
    lfd 0, 0x160(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820454 # beq .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x44
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x45(1)
    lis 0, 0x4330
    stw 0, 0x190(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x194(1)
    lfd 0, 0x190(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4800040C # b .L_80382B20
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x40
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x41(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x3c
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x46
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x3d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x38
    xoris 6, 4, 0x8000
    stw 0, 0x188(1)
    lwz 3, 0x154(3)
    li 4, 0x6f
    stw 6, 0x18c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x188(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x39(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x34
    xoris 6, 4, 0x8000
    stw 0, 0x180(1)
    lwz 3, 0x154(3)
    li 4, 0x72
    stw 6, 0x184(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x180(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x35(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x30
    xoris 6, 4, 0x8000
    stw 0, 0x178(1)
    lwz 3, 0x154(3)
    li 4, 0x63
    stw 6, 0x17c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x178(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x31(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x2c
    xoris 6, 4, 0x8000
    stw 0, 0x170(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x174(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x170(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x2d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x28
    xoris 6, 4, 0x8000
    stw 0, 0x168(1)
    lwz 3, 0x154(3)
    li 4, 0xa0
    stw 6, 0x16c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x168(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x29(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x24
    xoris 6, 4, 0x8000
    stw 0, 0x160(1)
    lwz 3, 0x154(3)
    li 4, 0x46
    stw 6, 0x164(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x160(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x25(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x20
    xoris 6, 4, 0x8000
    stw 0, 0x158(1)
    lwz 3, 0x154(3)
    li 4, 0x61
    stw 6, 0x15c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x158(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x21(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x1c
    xoris 6, 4, 0x8000
    stw 0, 0x150(1)
    lwz 3, 0x154(3)
    li 4, 0x69
    stw 6, 0x154(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x150(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x1d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x18
    xoris 6, 4, 0x8000
    stw 0, 0x148(1)
    lwz 3, 0x154(3)
    li 4, 0x72
    stw 6, 0x14c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x148(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x19(1)
    lis 0, 0x4330
    stw 0, 0x198(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x19c(1)
    lfd 0, 0x198(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4082004C # bne .L_80382A54
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x14
    li 4, 0x79
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x15(1)
    lis 0, 0x4330
    stw 0, 0x198(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x19c(1)
    lfd 0, 0x198(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480000D0 # b .L_80382B20
L_80382A54:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x10
    li 4, 0x69
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xc
    xoris 6, 4, 0x8000
    stw 0, 0x198(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0x19c(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x198(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xd(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x8
    xoris 6, 4, 0x8000
    stw 0, 0x190(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0x194(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x190(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x9(1)
    lis 0, 0x4330
    stw 0, 0x188(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x18c(1)
    lfd 0, 0x188(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
L_80382B20:
    fmr 1, 31
    psq_l 31, 0x1c8(1), 0, 0
    lfd 31, 0x1c0(1)
    psq_l 30, 0x1b8(1), 0, 0
    lfd 30, 0x1b0(1)
    lwz 0, 0x1d4(1)
    lwz 31, 0x1ac(1)
    mtlr 0
    addi 1, 1, 0x1d0
    blr

