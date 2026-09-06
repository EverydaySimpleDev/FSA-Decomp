# fn_8037F580 - actor@lbl_804AF070: multi-entry-point state-behavior function (0x1FE0)
# NOVEL PATTERN for this gap: this is simultaneously (a) a mode-dispatch
# entry point - checks an incoming mode/state byte, and if <= 9, jumps via
# jumptable_804AF07C to one of 10 internal blocks - AND (b) each of those
# same 10 internal block addresses is ALSO stored directly in this actor's
# vtable (slots vt+0xc through vt+0x30), so a plain virtual call can jump
# straight to one variant without going through the dispatch check. Track
# A: byte-match verified, structural overview per the large/complex-function
# exception - full semantic decomposition of all 10 branches was not
# attempted given the scale; revisit if this actor needs deeper work later.
.section extab, "a"
.balign 4
.global etb_8000ECD8
etb_8000ECD8:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000ECD8, 8

.section extabindex, "a"
.balign 4
.global eti_8001EA90
eti_8001EA90:
    .4byte fn_8037F580
    .4byte 0x00001FE0
    .4byte etb_8000ECD8
.size eti_8001EA90, 12

.text
.balign 4
.global fn_8037F580

fn_8037F580:
    stwu 1, -0x1d0(1)
    mflr 0
    stw 0, 0x1d4(1)
    stfd 31, 0x1c0(1)
    psq_st 31, 0x1c8(1), 0, 0
    stfd 30, 0x1b0(1)
    psq_st 30, 0x1b8(1), 0, 0
    stw 31, 0x1ac(1)
    stw 30, 0x1a8(1)
    stw 29, 0x1a4(1)
    clrlwi 0, 3, 24
    fmr 30, 1
    cmplwi 0, 0x9
    .4byte 0xC3E20128 # lfs f31, lbl_805430C8@sda21(r0)
    mr 29, 4
    mr 30, 5
    mr 31, 6
    .4byte 0x41811F6C # bgt .L_80381530
    lis 3, jumptable_804AF07C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF07C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0x140
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x141(1)
    li 3, 0x46
    addi 0, 4, 0x1
    stw 5, 0x148(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x13c
    lwz 0, 0x0(31)
    stw 4, 0x14c(1)
    stbx 3, 30, 0
    lfd 0, 0x148(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x13d(1)
    li 3, 0x6f
    addi 0, 4, 0x1
    stw 5, 0x150(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x138
    lwz 0, 0x0(31)
    stw 4, 0x154(1)
    stbx 3, 30, 0
    lfd 0, 0x150(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x139(1)
    li 3, 0x72
    addi 0, 4, 0x1
    stw 5, 0x158(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x134
    lwz 0, 0x0(31)
    stw 4, 0x15c(1)
    stbx 3, 30, 0
    lfd 0, 0x158(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x135(1)
    li 3, 0x63
    addi 0, 4, 0x1
    stw 5, 0x160(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x130
    lwz 0, 0x0(31)
    stw 4, 0x164(1)
    stbx 3, 30, 0
    lfd 0, 0x160(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x131(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x168(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x12c
    lwz 0, 0x0(31)
    stw 4, 0x16c(1)
    stbx 3, 30, 0
    lfd 0, 0x168(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x12d(1)
    li 3, -0x60
    addi 0, 4, 0x1
    stw 5, 0x170(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x128
    lwz 0, 0x0(31)
    stw 4, 0x174(1)
    stbx 3, 30, 0
    lfd 0, 0x170(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x129(1)
    li 3, 0x47
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x124
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x125(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x120
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x121(1)
    li 3, 0x6d
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x11c
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11d(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41821B64 # beq .L_80381530
    lwz 0, 0x0(31)
    li 3, 0x73
    addi 5, 1, 0x118
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x119(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48001AFC # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0x114
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x115(1)
    li 3, 0x43
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x110
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x111(1)
    li 3, 0x75
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x10c
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x10d(1)
    li 3, 0x63
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x108
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x109(1)
    li 3, 0x63
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x104
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x105(1)
    li 3, 0x6f
    addi 0, 4, 0x1
    stw 5, 0x170(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x100
    lwz 0, 0x0(31)
    stw 4, 0x174(1)
    stbx 3, 30, 0
    lfd 0, 0x170(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x101(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x168(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x16c(1)
    lfd 0, 0x168(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4182189C # beq .L_80381530
    lwz 0, 0x0(31)
    li 3, 0x73
    addi 5, 1, 0xfc
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xfd(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48001834 # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0xf8
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xf9(1)
    li 3, 0x62
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xf4
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xf5(1)
    li 3, 0x61
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xf0
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xf1(1)
    li 3, 0x64
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xec
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xed(1)
    li 3, 0x64
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xe8
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xe9(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x170(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x174(1)
    lfd 0, 0x170(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4082006C # bne .L_8037FF64
    lwz 0, 0x0(31)
    li 3, 0x79
    addi 5, 1, 0xe4
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xe5(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480015D0 # b .L_80381530
L_8037FF64:
    lwz 0, 0x0(31)
    li 3, 0x69
    addi 5, 1, 0xe0
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xe1(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xdc
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xdd(1)
    li 3, 0x73
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xd8
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xd9(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x180(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x184(1)
    lfd 0, 0x180(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480014A0 # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0xd4
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xd5(1)
    li 3, 0x74
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xd0
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xd1(1)
    li 3, 0x69
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xcc
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xcd(1)
    li 3, 0x6d
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xc8
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xc9(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xc4
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xc5(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x170(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x174(1)
    lfd 0, 0x170(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x418212A4 # beq .L_80381530
    lwz 0, 0x0(31)
    li 3, 0x73
    addi 5, 1, 0xc0
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xc1(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4800123C # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0xbc
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xbd(1)
    li 3, 0x73
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xb8
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xb9(1)
    li 3, 0x79
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xb4
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xb5(1)
    li 3, 0x73
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xb0
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xb1(1)
    li 3, 0x74
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xac
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xad(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x170(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xa8
    lwz 0, 0x0(31)
    stw 4, 0x174(1)
    stbx 3, 30, 0
    lfd 0, 0x170(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xa9(1)
    li 3, 0x6d
    addi 0, 4, 0x1
    stw 5, 0x168(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xa4
    lwz 0, 0x0(31)
    stw 4, 0x16c(1)
    stbx 3, 30, 0
    lfd 0, 0x168(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xa5(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x160(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x164(1)
    lfd 0, 0x160(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820F78 # beq .L_80381530
    lwz 0, 0x0(31)
    li 3, 0x73
    addi 5, 1, 0xa0
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xa1(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000F10 # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0x9c
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x9d(1)
    li 3, 0x74
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x98
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x99(1)
    li 3, 0x68
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x94
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x95(1)
    li 3, 0x69
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x90
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x91(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x8c
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x8d(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x170(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x174(1)
    lfd 0, 0x170(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4082006C # bne .L_80380888
    lwz 0, 0x0(31)
    li 3, 0x66
    addi 5, 1, 0x88
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x89(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000CAC # b .L_80381530
L_80380888:
    lwz 0, 0x0(31)
    li 3, 0x76
    addi 5, 1, 0x84
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x85(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x80
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x81(1)
    li 3, 0x73
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x7c
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x7d(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x180(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x184(1)
    lfd 0, 0x180(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000B7C # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0x78
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x79(1)
    li 3, 0x6d
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x74
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x75(1)
    li 3, 0x6f
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x70
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x71(1)
    li 3, 0x6c
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x6c
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x6d(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x68
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x69(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x170(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x174(1)
    lfd 0, 0x170(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820980 # beq .L_80381530
    lwz 0, 0x0(31)
    li 3, 0x73
    addi 5, 1, 0x64
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x65(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000918 # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0x60
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x61(1)
    li 3, 0x72
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x5c
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x5d(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x58
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x59(1)
    li 3, 0x74
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x54
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x55(1)
    li 3, 0x75
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x50
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x51(1)
    li 3, 0x72
    addi 0, 4, 0x1
    stw 5, 0x170(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x4c
    lwz 0, 0x0(31)
    stw 4, 0x174(1)
    stbx 3, 30, 0
    lfd 0, 0x170(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x4d(1)
    li 3, 0x6e
    addi 0, 4, 0x1
    stw 5, 0x168(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x48
    lwz 0, 0x0(31)
    stw 4, 0x16c(1)
    stbx 3, 30, 0
    lfd 0, 0x168(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x49(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x160(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x164(1)
    lfd 0, 0x160(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820654 # beq .L_80381530
    lwz 0, 0x0(31)
    li 3, 0x73
    addi 5, 1, 0x44
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x45(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x190(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x194(1)
    lfd 0, 0x190(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480005EC # b .L_80381530
    lwz 0, 0x0(31)
    li 3, -0x60
    addi 5, 1, 0x40
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x41(1)
    li 3, 0x46
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x3c
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x3d(1)
    li 3, 0x6f
    addi 0, 4, 0x1
    stw 5, 0x188(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x38
    lwz 0, 0x0(31)
    stw 4, 0x18c(1)
    stbx 3, 30, 0
    lfd 0, 0x188(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x39(1)
    li 3, 0x72
    addi 0, 4, 0x1
    stw 5, 0x180(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x34
    lwz 0, 0x0(31)
    stw 4, 0x184(1)
    stbx 3, 30, 0
    lfd 0, 0x180(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x35(1)
    li 3, 0x63
    addi 0, 4, 0x1
    stw 5, 0x178(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x30
    lwz 0, 0x0(31)
    stw 4, 0x17c(1)
    stbx 3, 30, 0
    lfd 0, 0x178(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x31(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x170(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x2c
    lwz 0, 0x0(31)
    stw 4, 0x174(1)
    stbx 3, 30, 0
    lfd 0, 0x170(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x2d(1)
    li 3, -0x60
    addi 0, 4, 0x1
    stw 5, 0x168(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x28
    lwz 0, 0x0(31)
    stw 4, 0x16c(1)
    stbx 3, 30, 0
    lfd 0, 0x168(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x29(1)
    li 3, 0x46
    addi 0, 4, 0x1
    stw 5, 0x160(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x24
    lwz 0, 0x0(31)
    stw 4, 0x164(1)
    stbx 3, 30, 0
    lfd 0, 0x160(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x25(1)
    li 3, 0x61
    addi 0, 4, 0x1
    stw 5, 0x158(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x20
    lwz 0, 0x0(31)
    stw 4, 0x15c(1)
    stbx 3, 30, 0
    lfd 0, 0x158(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x21(1)
    li 3, 0x69
    addi 0, 4, 0x1
    stw 5, 0x150(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x1c
    lwz 0, 0x0(31)
    stw 4, 0x154(1)
    stbx 3, 30, 0
    lfd 0, 0x150(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x1d(1)
    li 3, 0x72
    addi 0, 4, 0x1
    stw 5, 0x148(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x18
    lwz 0, 0x0(31)
    stw 4, 0x14c(1)
    stbx 3, 30, 0
    lfd 0, 0x148(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x19(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    cmpwi 29, 0x1
    xoris 4, 4, 0x8000
    stw 0, 0x198(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x19c(1)
    lfd 0, 0x198(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4082006C # bne .L_80381404
    lwz 0, 0x0(31)
    li 3, 0x79
    addi 5, 1, 0x14
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x15(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x198(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x19c(1)
    lfd 0, 0x198(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000130 # b .L_80381530
L_80381404:
    lwz 0, 0x0(31)
    li 3, 0x69
    addi 5, 1, 0x10
    stbx 3, 30, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0x11(1)
    li 3, 0x65
    addi 0, 4, 0x1
    stw 5, 0x198(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0xc
    lwz 0, 0x0(31)
    stw 4, 0x19c(1)
    stbx 3, 30, 0
    lfd 0, 0x198(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(31)
    lis 5, 0x4330
    lbz 6, 0xd(1)
    li 3, 0x73
    addi 0, 4, 0x1
    stw 5, 0x190(1)
    xoris 4, 6, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x0(31)
    addi 5, 1, 0x8
    lwz 0, 0x0(31)
    stw 4, 0x194(1)
    stbx 3, 30, 0
    lfd 0, 0x190(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    fsubs 0, 0, 1
    lwz 0, 0x0(31)
    lwz 3, 0x154(3)
    lbzx 4, 30, 0
    lwz 12, 0x0(3)
    fmadds 31, 30, 0, 31
    extsb 4, 4
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x9(1)
    lis 0, 0x4330
    lwz 3, 0x0(31)
    xoris 4, 4, 0x8000
    stw 0, 0x188(1)
    addi 0, 3, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 4, 0x18c(1)
    lfd 0, 0x188(1)
    stw 0, 0x0(31)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
L_80381530:
    fmr 1, 31
    psq_l 31, 0x1c8(1), 0, 0
    lfd 31, 0x1c0(1)
    psq_l 30, 0x1b8(1), 0, 0
    lfd 30, 0x1b0(1)
    lwz 31, 0x1ac(1)
    lwz 30, 0x1a8(1)
    lwz 0, 0x1d4(1)
    lwz 29, 0x1a4(1)
    mtlr 0
    addi 1, 1, 0x1d0
    blr

