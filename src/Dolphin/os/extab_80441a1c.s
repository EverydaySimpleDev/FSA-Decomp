# 901KB-gap non-actor manager block: 3 function(s), 2,380 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011194
etb_80011194:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80011194, 8

.global etb_8001119C
etb_8001119C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001119C, 8

.global etb_800111A4
etb_800111A4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800111A4, 8

.section extabindex, "a"
.balign 4
.global eti_80021070
eti_80021070:
    .4byte fn_80441A1C
    .4byte 0x000007E4
    .4byte etb_80011194
.size eti_80021070, 12

.global eti_8002107C
eti_8002107C:
    .4byte fn_80442200
    .4byte 0x00000054
    .4byte etb_8001119C
.size eti_8002107C, 12

.global eti_80021088
eti_80021088:
    .4byte fn_80442254
    .4byte 0x00000114
    .4byte etb_800111A4
.size eti_80021088, 12

.text
.balign 4
.global fn_80441A1C
.global fn_80442200
.global fn_80442254

fn_80441A1C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 29, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x14(3)
    lbz 4, 0x83(4)
    slwi 0, 3, 1
    sraw 0, 4, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_80441ABC
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A258
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_80441B2C
    lwz 4, 0x8(29)
    lis 3, lbl_8050DB0C@ha
    addi 5, 3, lbl_8050DB0C@l
    lha 0, 0x26(4)
    lha 3, 0x94(5)
    cmpw 0, 3
    .4byte 0x40810008 # ble .L_80441A88
    sth 3, 0x26(4)
L_80441A88:
    lis 3, lbl_8050DB0C@ha
    lwz 4, 0xc(29)
    addi 3, 3, lbl_8050DB0C@l
    lha 0, 0x94(5)
    lha 3, 0x92(3)
    lha 5, 0x26(4)
    add 0, 3, 0
    cmpw 5, 0
    .4byte 0x40810008 # ble .L_80441AB0
    sth 0, 0x26(4)
L_80441AB0:
    li 0, 0xb
    stw 0, 0x18(29)
    .4byte 0x48000074 # b .L_80441B2C
L_80441ABC:
    cmplwi 0, 0x2
    .4byte 0x4082006C # bne .L_80441B2C
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80441B2C
    lwz 4, 0x8(29)
    lis 3, lbl_8050DB0C@ha
    addi 5, 3, lbl_8050DB0C@l
    lha 0, 0x26(4)
    lha 3, 0x94(5)
    cmpw 0, 3
    .4byte 0x40810008 # ble .L_80441AFC
    sth 3, 0x26(4)
L_80441AFC:
    lis 3, lbl_8050DB0C@ha
    lwz 4, 0xc(29)
    addi 3, 3, lbl_8050DB0C@l
    lha 0, 0x94(5)
    lha 3, 0x92(3)
    lha 5, 0x26(4)
    add 0, 3, 0
    cmpw 5, 0
    .4byte 0x40810008 # ble .L_80441B24
    sth 0, 0x26(4)
L_80441B24:
    li 0, 0xb
    stw 0, 0x18(29)
L_80441B2C:
    lwz 0, 0x18(29)
    cmplwi 0, 0xd
    .4byte 0x418106B4 # bgt .L_804421E8
    lis 3, jumptable_804B19FC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B19FC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x14(29)
    lbz 4, 0x83(4)
    slwi 0, 3, 1
    sraw 0, 4, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_80441B88
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsField0xdcLessThan3
    clrlwi. 0, 3, 24
    .4byte 0x41820664 # beq .L_804421E8
L_80441B88:
    lwz 5, 0x1c(29)
    lis 3, lbl_8050DB0C@ha
    addi 4, 3, lbl_8050DB0C@l
    addi 0, 5, 0x1
    stw 0, 0x1c(29)
    lwz 6, 0x8(29)
    lha 3, 0x8c(4)
    lha 5, 0x26(6)
    addi 0, 3, 0x2
    cmpw 5, 0
    .4byte 0x40800094 # bge .L_80441C44
    addi 0, 5, 0x1
    lis 5, 0x4330
    sth 0, 0x26(6)
    .4byte 0xC8420DB0 # lfd f2, lbl_80543D50@sda21(r0)
    lwz 7, 0x8(29)
    lha 3, 0x8c(4)
    lha 4, 0x26(7)
    addi 8, 3, 0x2
    lbz 0, 0x28(7)
    mullw 6, 4, 4
    lwz 3, 0x4(7)
    stw 5, 0x8(1)
    lwz 12, 0x0(3)
    stw 5, 0x10(1)
    .4byte 0xC8220DB8 # lfd f1, lbl_80543D58@sda21(r0)
    mullw 4, 8, 8
    xoris 6, 6, 0x8000
    stw 6, 0xc(1)
    lwz 12, 0x24(12)
    lfd 0, 0x8(1)
    stw 0, 0x1c(1)
    xoris 0, 4, 0x8000
    fsubs 3, 0, 2
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    stw 5, 0x18(1)
    fsubs 2, 0, 2
    lfd 0, 0x18(1)
    fdivs 2, 3, 2
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
L_80441C44:
    lwz 0, 0x1c(29)
    cmpwi 0, 0x78
    .4byte 0x4180059C # blt .L_804421E8
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x1c(29)
    stw 0, 0x18(29)
    .4byte 0x48000588 # b .L_804421E8
    lwz 4, 0x1c(29)
    lis 3, lbl_8050DB0C@ha
    addi 6, 3, lbl_8050DB0C@l
    addi 0, 4, 0x1
    stw 0, 0x1c(29)
    lwz 3, 0xc(29)
    lha 4, 0x8c(6)
    lha 5, 0x26(3)
    addi 30, 4, 0x2
    cmpw 5, 30
    .4byte 0x40800080 # bge .L_80441D0C
    addi 0, 5, 0x1
    lis 5, 0x4330
    sth 0, 0x26(3)
    mullw 0, 30, 30
    .4byte 0xC8820DB0 # lfd f4, lbl_80543D50@sda21(r0)
    lwz 3, 0xc(29)
    lha 6, 0x90(6)
    lha 4, 0x26(3)
    xoris 0, 0, 0x8000
    mullw 4, 4, 4
    stw 0, 0x14(1)
    xoris 6, 6, 0x8000
    .4byte 0xC0A20DA8 # lfs f5, lbl_80543D48@sda21(r0)
    stw 5, 0x10(1)
    .4byte 0xC0020DA4 # lfs f0, lbl_80543D44@sda21(r0)
    xoris 0, 4, 0x8000
    stw 5, 0x18(1)
    lfd 1, 0x10(1)
    stw 0, 0x1c(1)
    fsubs 2, 1, 4
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    lfd 3, 0x18(1)
    stw 6, 0x24(1)
    fsubs 3, 3, 4
    stw 5, 0x20(1)
    fdivs 2, 3, 2
    lfd 3, 0x20(1)
    fsubs 3, 3, 4
    fadds 3, 5, 3
    fmadds 2, 3, 2, 0
    bl fn_80402E08
L_80441D0C:
    lwz 3, 0xc(29)
    lha 0, 0x26(3)
    cmpw 0, 30
    .4byte 0x418004D0 # blt .L_804421E8
    li 0, 0x3
    stw 0, 0x18(29)
    .4byte 0x480004C4 # b .L_804421E8
    lwz 4, 0x1c(29)
    lis 3, lbl_8050DB0C@ha
    addi 6, 3, lbl_8050DB0C@l
    addi 0, 4, 0x1
    stw 0, 0x1c(29)
    lwz 3, 0xc(29)
    lha 4, 0x8c(6)
    lha 0, 0x8e(6)
    lha 5, 0x26(3)
    add 31, 4, 0
    addi 31, 31, 0x2
    cmpw 5, 31
    .4byte 0x4080007C # bge .L_80441DD4
    addi 0, 5, 0x1
    lis 5, 0x4330
    sth 0, 0x26(3)
    .4byte 0xC8620DB0 # lfd f3, lbl_80543D50@sda21(r0)
    lwz 3, 0xc(29)
    lha 0, 0x8e(6)
    lha 4, 0x26(3)
    mullw 0, 0, 0
    lha 6, 0x90(6)
    subf 4, 4, 31
    stw 5, 0x18(1)
    xoris 6, 6, 0x8000
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    xoris 0, 0, 0x8000
    stw 5, 0x10(1)
    mullw 4, 4, 4
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    stw 6, 0x24(1)
    xoris 0, 4, 0x8000
    fsubs 0, 0, 3
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    stw 5, 0x20(1)
    fsubs 2, 2, 3
    fdivs 0, 2, 0
    lfd 2, 0x20(1)
    fsubs 2, 2, 3
    fmuls 2, 2, 0
    bl fn_80402E08
L_80441DD4:
    lwz 3, 0xc(29)
    lha 0, 0x26(3)
    cmpw 0, 31
    .4byte 0x41800408 # blt .L_804421E8
    li 0, 0x4
    stw 0, 0x18(29)
    .4byte 0x480003FC # b .L_804421E8
    lwz 3, 0x1c(29)
    addi 0, 3, 0x1
    stw 0, 0x1c(29)
    lwz 0, 0x1c(29)
    cmpwi 0, 0xb4
    .4byte 0x418003E4 # blt .L_804421E8
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x1c(29)
    stw 0, 0x18(29)
    .4byte 0x480003D0 # b .L_804421E8
    lwz 3, 0x1c(29)
    addi 0, 3, 0x1
    stw 0, 0x1c(29)
    lwz 0, 0x1c(29)
    cmpwi 0, 0xb4
    .4byte 0x418003B8 # blt .L_804421E8
    lwz 3, 0xc(29)
    lha 0, 0x26(3)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_80441E4C
    li 0, 0xa
    sth 0, 0x26(3)
L_80441E4C:
    li 0, 0xd
    stw 0, 0x18(29)
    .4byte 0x48000394 # b .L_804421E8
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1300
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80441E94
    lwz 3, 0xc(29)
    lha 0, 0x26(3)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_80441E88
    li 0, 0xa
    sth 0, 0x26(3)
L_80441E88:
    li 0, 0xd
    stw 0, 0x18(29)
    .4byte 0x48000358 # b .L_804421E8
L_80441E94:
    li 31, 0x0
    li 28, 0x0
    li 27, 0x0
    li 30, 0x0
L_80441EA4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    sraw 0, 0, 30
    clrlwi. 0, 0, 30
    .4byte 0x41820068 # beq .L_80441F1C
    cmplwi 0, 0x1
    addi 31, 31, 0x1
    .4byte 0x40820024 # bne .L_80441EE4
    mr 3, 27
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsField0xdcLessThan3
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80441EE4
    addi 28, 28, 0x1
L_80441EE4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    sraw 0, 0, 30
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820024 # bne .L_80441F1C
    mr 3, 27
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsField0xe0LessThan3
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80441F1C
    addi 28, 28, 0x1
L_80441F1C:
    addi 27, 27, 0x1
    addi 30, 30, 0x2
    cmpwi 27, 0x4
    .4byte 0x4180FF7C # blt .L_80441EA4
    cmpw 31, 28
    .4byte 0x408202B8 # bne .L_804421E8
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x1c(29)
    stw 0, 0x18(29)
    .4byte 0x480002A4 # b .L_804421E8
    lwz 4, 0x8(29)
    lis 3, lbl_8050DB0C@ha
    addi 31, 3, lbl_8050DB0C@l
    lha 6, 0x26(4)
    lha 5, 0x92(31)
    lha 3, 0x94(31)
    extsh. 0, 6
    add 30, 5, 3
    .4byte 0x408100A0 # ble .L_80442008
    lwz 3, 0xc(29)
    lha 0, 0x26(3)
    cmpw 6, 0
    .4byte 0x41800090 # blt .L_80442008
    subi 0, 6, 0x1
    lis 5, 0x4330
    sth 0, 0x26(4)
    .4byte 0xC8620DB0 # lfd f3, lbl_80543D50@sda21(r0)
    lwz 3, 0x8(29)
    lha 0, 0x94(31)
    lha 6, 0x26(3)
    mullw 4, 0, 0
    lbz 0, 0x28(3)
    lwz 3, 0x4(3)
    stw 5, 0x20(1)
    lwz 12, 0x0(3)
    stw 5, 0x18(1)
    mullw 6, 6, 6
    xoris 4, 4, 0x8000
    stw 4, 0x1c(1)
    .4byte 0xC8220DB8 # lfd f1, lbl_80543D58@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    xoris 0, 6, 0x8000
    fsubs 2, 0, 3
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    lfd 0, 0x20(1)
    stw 5, 0x10(1)
    fsubs 3, 0, 3
    lfd 0, 0x10(1)
    fdivs 2, 3, 2
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_80442008:
    lwz 3, 0xc(29)
    lha 4, 0x26(3)
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_80442020
    subi 0, 4, 0x1
    sth 0, 0x26(3)
L_80442020:
    lwz 3, 0xc(29)
    lha 7, 0x94(31)
    lha 4, 0x26(3)
    cmpw 4, 7
    .4byte 0x40810078 # ble .L_804420A8
    subf 4, 4, 30
    lis 5, 0x4330
    lha 0, 0x92(31)
    mullw 4, 4, 4
    lis 6, lbl_8050DB0C@ha
    stw 5, 0x18(1)
    .4byte 0xC8620DB0 # lfd f3, lbl_80543D50@sda21(r0)
    addi 6, 6, lbl_8050DB0C@l
    stw 5, 0x10(1)
    mullw 0, 0, 0
    xoris 4, 4, 0x8000
    stw 4, 0x1c(1)
    lha 6, 0x90(6)
    lfd 0, 0x18(1)
    xoris 4, 6, 0x8000
    xoris 0, 0, 0x8000
    fsubs 2, 0, 3
    stw 0, 0x14(1)
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    lfd 0, 0x10(1)
    stw 4, 0x24(1)
    fsubs 0, 0, 3
    stw 5, 0x20(1)
    fdivs 0, 2, 0
    lfd 2, 0x20(1)
    fsubs 2, 2, 3
    fmuls 2, 2, 0
    bl fn_80402E08
    .4byte 0x48000090 # b .L_80442134
L_804420A8:
    extsh. 0, 4
    .4byte 0x4081007C # ble .L_80442128
    mullw 4, 4, 4
    lis 5, 0x4330
    stw 5, 0x18(1)
    lis 6, lbl_8050DB0C@ha
    .4byte 0xC8820DB0 # lfd f4, lbl_80543D50@sda21(r0)
    stw 5, 0x10(1)
    mullw 0, 7, 7
    xoris 4, 4, 0x8000
    stw 4, 0x1c(1)
    addi 4, 6, lbl_8050DB0C@l
    .4byte 0xC0A20DA8 # lfs f5, lbl_80543D48@sda21(r0)
    lfd 0, 0x18(1)
    xoris 0, 0, 0x8000
    fsubs 3, 0, 4
    stw 0, 0x14(1)
    lha 4, 0x90(4)
    lfd 0, 0x10(1)
    xoris 4, 4, 0x8000
    stw 5, 0x20(1)
    fsubs 2, 0, 4
    .4byte 0xC0020DA4 # lfs f0, lbl_80543D44@sda21(r0)
    stw 4, 0x24(1)
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    fdivs 2, 3, 2
    lfd 3, 0x20(1)
    fsubs 3, 3, 4
    fadds 3, 5, 3
    fmadds 2, 3, 2, 0
    bl fn_80402E08
    .4byte 0x48000010 # b .L_80442134
L_80442128:
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    .4byte 0xC0420DA4 # lfs f2, lbl_80543D44@sda21(r0)
    bl fn_80402E08
L_80442134:
    lwz 3, 0x8(29)
    lha 0, 0x26(3)
    cmpwi 0, 0x0
    .4byte 0x418100A8 # bgt .L_804421E8
    lwz 3, 0xc(29)
    lha 0, 0x26(3)
    cmpwi 0, 0x0
    .4byte 0x41810098 # bgt .L_804421E8
    lwz 3, 0x10(29)
    .4byte 0x48000094 # b .L_804421EC
    lwz 4, 0xc(29)
    lha 3, 0x26(4)
    extsh. 0, 3
    .4byte 0x40810054 # ble .L_804421BC
    subi 3, 3, 0x1
    lis 0, 0x4330
    sth 3, 0x26(4)
    .4byte 0xC8620DB0 # lfd f3, lbl_80543D50@sda21(r0)
    lwz 3, 0xc(29)
    stw 0, 0x20(1)
    lha 0, 0x26(3)
    .4byte 0xC0020DAC # lfs f0, lbl_80543D4C@sda21(r0)
    subfic 4, 0, 0xa
    .4byte 0xC0820DA8 # lfs f4, lbl_80543D48@sda21(r0)
    subfic 0, 0, 0xa
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    mullw 0, 4, 0
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 3
    fdivs 0, 2, 0
    fmuls 2, 4, 0
    bl fn_80402E08
L_804421BC:
    lwz 3, 0xc(29)
    lha 0, 0x26(3)
    cmpwi 0, 0x0
    .4byte 0x41810020 # bgt .L_804421E8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458F9C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    li 3, 0x1
    .4byte 0x48000008 # b .L_804421EC
L_804421E8:
    li 3, 0x16
L_804421EC:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80442200:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 0, 0x18(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80442240
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_80442240:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80442254:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    li 4, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x8(3)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    li 0, 0x0
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC0420DA4 # lfs f2, lbl_80543D44@sda21(r0)
    lwz 3, 0xc(29)
    bl fn_80402E08
    lwz 5, 0xc(29)
    li 7, 0x0
    lis 3, 0x7774
    subi 4, 31, 0x1
    sth 7, 0x22(5)
    li 0, 0x1
    addi 6, 3, 0x3031
    li 5, 0x54
    stw 30, 0x10(29)
    stw 4, 0x14(29)
    stw 0, 0x18(29)
    stw 7, 0x1c(29)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x14(29)
    lbz 4, 0x83(4)
    slwi 0, 5, 1
    sraw 0, 4, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80442330
    addi 5, 5, 0x1
    li 4, 0x3b
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x48000020 # b .L_8044234C
L_80442330:
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_8044234C
    addi 5, 5, 0x1
    li 4, 0x3a
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
L_8044234C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

