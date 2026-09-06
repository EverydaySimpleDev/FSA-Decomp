# fn_80420574 - actor@lbl_804B13D4: constructor (0xEC4)
# Allocates 19 sub-objects (operator new x19). Contiguous right after the
# destructor and ends exactly at the next confirmed static-init boundary -
# strong contiguity evidence for ctor attribution even though it didn't
# show a directly-greppable vtable-install instruction.
.section extab, "a"
.balign 4
.global etb_80010584
etb_80010584:
    .4byte 0x700A0000
    .4byte 0x000000F0
    .4byte 0x00000038
    .4byte 0x00000164
    .4byte 0x00000040
    .4byte 0x0000017C
    .4byte 0x00000048
    .4byte 0x000001C0
    .4byte 0x00000050
    .4byte 0x000001EC
    .4byte 0x00000058
    .4byte 0x00000228
    .4byte 0x00000060
    .4byte 0x00000000
    .4byte 0x8A800012
    .4byte dtor_80084580
    .4byte 0x8A800012
    .4byte dtor_80084580
    .4byte 0x8A800012
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800012
    .4byte dtor_80084580
.size etb_80010584, 104

.section extabindex, "a"
.balign 4
.global eti_80020404
eti_80020404:
    .4byte fn_80420574
    .4byte 0x00000EC4
    .4byte etb_80010584
.size eti_80020404, 12

.text
.balign 4
.global fn_80420574

fn_80420574:
    stwu 1, -0x60(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    lis 5, lbl_804B1390@ha
    stw 0, 0x64(1)
    li 0, -0x1
    addi 4, 4, lbl_80529DEC@l
    stmw 18, 0x28(1)
    addi 27, 5, lbl_804B1390@l
    mr 31, 3
    lis 5, lbl_8048D320@ha
    addi 3, 27, 0x44
    addi 28, 5, lbl_8048D320@l
    stw 3, 0x0(31)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    lwz 0, 0x118(4)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_804205CC
    lwz 0, 0x11c(4)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_804205DC
L_804205CC:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x10e(3)
    ori 0, 0, 0x1
    stb 0, 0x10e(3)
L_804205DC:
    lwz 0, 0x118(4)
    cmpwi 0, 0x6
    .4byte 0x40820024 # bne .L_80420608
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_80420608
    li 0, 0x1
    stb 0, 0x291(31)
    .4byte 0x4800000C # b .L_80420610
L_80420608:
    li 0, 0x1
    stb 0, 0x291(31)
L_80420610:
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x292(31)
    stb 3, 0x28f(31)
    stb 3, 0x290(31)
    stb 3, 0x293(31)
    stb 3, 0x294(31)
    stb 3, 0x295(31)
    stb 3, 0x296(31)
    stb 3, 0x297(31)
    stb 0, 0x218(31)
    stb 3, 0x298(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x41800020 # blt .L_8042066C
    li 3, 0x10
    bl fn_80084370
    mr. 18, 3
    .4byte 0x41820008 # beq .L_80420664
    bl fn_80441778
L_80420664:
    stw 18, 0x50(31)
    .4byte 0x4800000C # b .L_80420674
L_8042066C:
    li 0, 0x0
    stw 0, 0x50(31)
L_80420674:
    li 3, 0xd4
    bl fn_80084370
    mr. 18, 3
    .4byte 0x41820058 # beq .L_804206D8
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 5, 0x4(5)
    stw 4, 0x10(1)
    fmr 2, 1
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0x18(1)
    xoris 4, 5, 0x8000
    .4byte 0xC8820A58 # lfd f4, lbl_805439F8@sda21(r0)
    stw 4, 0x14(1)
    .4byte 0xC0A20A98 # lfs f5, lbl_80543A38@sda21(r0)
    stw 0, 0x1c(1)
    lfd 3, 0x10(1)
    lfd 0, 0x18(1)
    fsubs 3, 3, 4
    .4byte 0xC0C20A9C # lfs f6, lbl_80543A3C@sda21(r0)
    fsubs 4, 0, 4
    bl fn_800937B0
L_804206D8:
    stw 18, 0x4c(31)
    li 3, 0x118
    bl fn_80084370
    mr. 18, 3
    .4byte 0x41820008 # beq .L_804206F0
    bl fn_8009C4EC
L_804206F0:
    stw 18, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 19, 3, lbl_80529DEC@l
    addi 4, 28, 0xe4c
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x4c(19)
    bl fn_8009C69C
    lis 3, lbl_80529DEC@ha
    mr 20, 31
    addi 18, 3, lbl_80529DEC@l
    li 21, 0x0
L_80420720:
    li 3, 0x118
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820008 # beq .L_80420734
    bl fn_8009C4EC
L_80420734:
    stw 22, 0x8(20)
    addi 4, 28, 0xe5c
    lis 5, 0x110
    lwz 3, 0x8(20)
    lwz 6, 0x4c(19)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820008 # beq .L_80420760
    bl fn_8009C4EC
L_80420760:
    stw 22, 0x2c(20)
    addi 4, 28, 0xe6c
    lis 5, 0x110
    lwz 3, 0x2c(20)
    lwz 6, 0x20(18)
    bl fn_8009C69C
    addi 21, 21, 0x1
    addi 20, 20, 0x4
    cmpwi 21, 0x4
    .4byte 0x4180FF9C # blt .L_80420720
    li 3, 0x118
    bl fn_80084370
    mr. 18, 3
    .4byte 0x41820008 # beq .L_8042079C
    bl fn_8009C4EC
L_8042079C:
    stw 18, 0x18(31)
    addi 4, 28, 0xe7c
    lis 5, 0x110
    lwz 3, 0x18(31)
    lwz 6, 0x4c(19)
    bl fn_8009C69C
    lwz 3, 0x4(31)
    lis 5, 0x6c69
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x4(31)
    addi 5, 4, 0x7032
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x4(31)
    addi 5, 4, 0x7033
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x4(31)
    addi 5, 4, 0x7034
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x388(28)
    stb 0, 0xb0(3)
    lwz 6, 0x38c(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x388
    lwz 5, 0x8(3)
    stb 0, 0x24c(31)
    lwz 6, 0xc(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x338(28)
    stb 0, 0x24d(31)
    lwz 6, 0x33c(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x360(28)
    stb 0, 0x24e(31)
    lwz 6, 0x364(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x248(28)
    stb 0, 0x24f(31)
    lwz 6, 0x24c(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x2a8(28)
    stb 0, 0x25e(31)
    lwz 6, 0x2ac(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 18, 28, 0x308
    addi 19, 28, 0x320
    li 21, 0x0
    stb 0, 0x25f(31)
L_8042094C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    add 20, 31, 21
    lwz 5, 0x0(19)
    stb 0, 0x258(20)
    lwz 6, 0x4(19)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 21, 21, 0x1
    cmpwi 21, 0x3
    addi 19, 19, 0x8
    stb 0, 0x25b(20)
    addi 18, 18, 0x8
    .4byte 0x4180FFA4 # blt .L_8042094C
    lwz 3, 0x4(31)
    lwz 5, 0x8f8(28)
    lwz 12, 0x0(3)
    lwz 6, 0x8fc(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x8f8
    lwz 5, 0x8(3)
    stb 0, 0x260(31)
    lwz 6, 0xc(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x8f8
    lwz 5, 0x10(3)
    stb 0, 0x261(31)
    lwz 6, 0x14(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x8f8
    lwz 5, 0x18(3)
    stb 0, 0x262(31)
    lwz 6, 0x1c(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x8f8
    lwz 5, 0x20(3)
    stb 0, 0x263(31)
    lwz 6, 0x24(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x8f8
    lwz 5, 0x28(3)
    stb 0, 0x264(31)
    lwz 6, 0x2c(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xb40(28)
    stb 0, 0x265(31)
    lwz 6, 0xb44(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xb20(28)
    stb 0, 0x266(31)
    lwz 6, 0xb24(28)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x148(28)
    stb 0, 0x267(31)
    lwz 6, 0x14c(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x188(28)
    stb 0, 0x250(31)
    lwz 6, 0x18c(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x1c8(28)
    stb 0, 0x251(31)
    lwz 6, 0x1cc(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x208(28)
    stb 0, 0x252(31)
    lwz 6, 0x20c(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6e69
    lis 3, 0x5068
    stb 0, 0x253(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x7031
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6e69
    lis 3, 0x5068
    stb 0, 0x26a(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x7031
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x398(28)
    stb 0, 0x26b(31)
    lwz 6, 0x39c(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x398
    lwz 5, 0x8(3)
    stb 0, 0x26c(31)
    lwz 6, 0xc(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x398
    lwz 5, 0x10(3)
    stb 0, 0x26d(31)
    lwz 6, 0x14(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 28, 0x398
    lwz 5, 0x18(3)
    stb 0, 0x26e(31)
    lwz 6, 0x1c(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xae0(28)
    stb 0, 0x26f(31)
    lwz 6, 0xae4(28)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xb00(28)
    stb 0, 0x268(31)
    lwz 6, 0xb04(28)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 18, 28, 0xab0
    li 19, 0x0
    stb 0, 0x269(31)
L_80420CB4:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x27b
    lbz 3, 0xb2(3)
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x6
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_80420CB4
    lwz 3, 0x4(31)
    lwz 5, 0x338(28)
    lwz 12, 0x0(3)
    lwz 6, 0x33c(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0xc
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0xc(1)
    lwz 5, 0x338(28)
    stb 0, 0x248(31)
    lwz 6, 0x33c(28)
    lbz 0, 0xd(1)
    stb 0, 0x249(31)
    lbz 0, 0xe(1)
    stb 0, 0x24a(31)
    lbz 0, 0xf(1)
    stb 0, 0x24b(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x8
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x8(1)
    li 3, 0x2c
    stb 0, 0x244(31)
    lbz 0, 0x9(1)
    stb 0, 0x245(31)
    lbz 0, 0xa(1)
    stb 0, 0x246(31)
    lbz 0, 0xb(1)
    stb 0, 0x247(31)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420DB0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420DB0:
    stw 3, 0x54(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3133
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x54(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420E00
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420E00:
    stw 3, 0x58(31)
    lis 5, 0x6e69
    lis 4, 0x5068
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7031
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x58(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420E50
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420E50:
    stw 3, 0x5c(31)
    lis 5, 0x6969
    lis 4, 0x5068
    lwz 3, 0x4(31)
    addi 6, 5, 0x6233
    addi 5, 4, 0x3170
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x5c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420EA0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420EA0:
    stw 3, 0x6c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x6c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420EF0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420EF0:
    stw 3, 0x70(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x70(31)
    bl fn_80402F04
    addi 30, 28, 0xae0
    mr 29, 31
    mr 19, 30
    addi 20, 28, 0xb20
    addi 21, 28, 0xb40
    addi 22, 28, 0xb60
    addi 23, 28, 0xb80
    addi 24, 28, 0xbc0
    addi 25, 28, 0xbe0
    addi 26, 28, 0xc00
    li 18, 0x0
L_80420F50:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420F6C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420F6C:
    stw 3, 0x74(29)
    lwz 5, 0x0(19)
    lwz 3, 0x18(31)
    lwz 6, 0x4(19)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x74(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420FB4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420FB4:
    stw 3, 0x84(29)
    lwz 5, 0x0(20)
    lwz 3, 0x18(31)
    lwz 6, 0x4(20)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x84(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80420FFC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80420FFC:
    stw 3, 0x94(29)
    lwz 5, 0x0(21)
    lwz 3, 0x4(31)
    lwz 6, 0x4(21)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x94(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80421044
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80421044:
    stw 3, 0xa4(29)
    lwz 5, 0x0(22)
    lwz 3, 0x4(31)
    lwz 6, 0x4(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xa4(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8042108C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8042108C:
    stw 3, 0xb4(29)
    lwz 5, 0x0(23)
    lwz 3, 0x4(31)
    lwz 6, 0x4(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xb4(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804210D4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804210D4:
    stw 3, 0xc4(29)
    lwz 5, 0x0(24)
    lwz 3, 0x4(31)
    lwz 6, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc4(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8042111C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8042111C:
    stw 3, 0xd4(29)
    lwz 5, 0x0(25)
    lwz 3, 0x4(31)
    lwz 6, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xd4(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80421164
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80421164:
    stw 3, 0xe4(29)
    lwz 5, 0x0(26)
    lwz 3, 0x4(31)
    lwz 6, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xe4(29)
    bl fn_80402F04
    addi 18, 18, 0x1
    addi 19, 19, 0x8
    cmpwi 18, 0x4
    addi 20, 20, 0x8
    addi 21, 21, 0x8
    addi 22, 22, 0x8
    addi 23, 23, 0x8
    addi 24, 24, 0x8
    addi 25, 25, 0x8
    addi 26, 26, 0x8
    addi 29, 29, 0x4
    .4byte 0x4180FD94 # blt .L_80420F50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_8042128C
    addi 20, 28, 0x148
    addi 21, 28, 0x188
    li 22, 0x0
    lis 18, 0x5449
L_804211E0:
    li 23, 0x0
    addi 19, 27, 0x0
L_804211E8:
    lwz 4, 0x0(19)
    addi 3, 18, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(31)
    mr 24, 0
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 19, 19, 0x4
    cmpwi 23, 0x3
    .4byte 0x4180FF78 # blt .L_804211E8
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x8
    addi 20, 20, 0x8
    .4byte 0x4180FF5C # blt .L_804211E0
    .4byte 0x480000BC # b .L_80421344
L_8042128C:
    addi 20, 28, 0xb00
    li 21, 0x0
    lis 18, 0x5449
L_80421298:
    addi 19, 27, 0x34
    li 22, 0x1
    addi 19, 19, 0x4
L_804212A4:
    lwz 4, 0x0(19)
    addi 3, 18, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x18(31)
    mr 23, 0
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 19, 19, 0x4
    cmpwi 22, 0x4
    .4byte 0x4180FF78 # blt .L_804212A4
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x4
    addi 30, 30, 0x8
    .4byte 0x4180FF58 # blt .L_80421298
L_80421344:
    lbz 0, 0x291(31)
    cmplwi 0, 0x0
    .4byte 0x418200D4 # beq .L_80421420
    mr 22, 31
    li 23, 0x0
    lis 18, 0x5449
L_8042135C:
    addi 20, 28, 0xc20
    addi 21, 28, 0xca0
    li 24, 0x0
L_80421368:
    li 25, 0x0
    addi 19, 27, 0x0
L_80421370:
    lwz 4, 0x0(19)
    addi 3, 18, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x8(22)
    mr 26, 0
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(22)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 19, 19, 0x4
    cmpwi 25, 0x3
    .4byte 0x4180FF78 # blt .L_80421370
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x8
    addi 20, 20, 0x8
    .4byte 0x4180FF5C # blt .L_80421368
    addi 23, 23, 0x1
    addi 22, 22, 0x4
    cmpwi 23, 0x4
    .4byte 0x4180FF40 # blt .L_8042135C
L_80421420:
    mr 3, 31
    lmw 18, 0x28(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

