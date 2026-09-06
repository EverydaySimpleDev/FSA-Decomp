# fn_803997B8 - component B: vtable-slot function (0xb98)
.section extab, "a"
.balign 4
.global etb_8000F1B4
etb_8000F1B4:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000F1B4, 8

.section extabindex, "a"
.balign 4
.global eti_8001EEE0
eti_8001EEE0:
    .4byte fn_803997B8
    .4byte 0x00000B98
    .4byte etb_8000F1B4
.size eti_8001EEE0, 12

.text
.balign 4
.global fn_803997B8

fn_803997B8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 30, 3
    mr 31, 4
    lwz 3, 0x38(3)
    mr 29, 5
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 0, 3, 0x8000
    lis 3, 0x4330
    stw 0, 0x2c(1)
    lis 4, 0x2
    addi 0, 4, 0x25
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 3, 0x28(1)
    cmpw 31, 0
    lfs 0, 0x48(30)
    lfd 1, 0x28(1)
    fsubs 1, 1, 2
    fdivs 31, 0, 1
    .4byte 0x418208D8 # beq .L_8039A100
    .4byte 0x408000F4 # bge .L_80399920
    lis 3, 0x1
    addi 0, 3, 0x13
    cmpw 31, 0
    .4byte 0x41820590 # beq .L_80399DCC
    .4byte 0x40800070 # bge .L_803998B0
    addi 0, 3, 0xb
    cmpw 31, 0
    .4byte 0x40800034 # bge .L_80399880
    cmpw 31, 3
    .4byte 0x40800010 # bge .L_80399864
    cmpwi 31, 0x0
    .4byte 0x41820198 # beq .L_803999F4
    .4byte 0x48000AC8 # b .L_8039A328
L_80399864:
    addi 0, 3, 0x7
    cmpw 31, 0
    .4byte 0x408001D8 # bge .L_80399A44
    addi 0, 3, 0x4
    cmpw 31, 0
    .4byte 0x408002A4 # bge .L_80399B1C
    .4byte 0x480001C8 # b .L_80399A44
L_80399880:
    addi 0, 3, 0x10
    cmpw 31, 0
    .4byte 0x41820388 # beq .L_80399C10
    .4byte 0x40800014 # bge .L_803998A0
    addi 0, 3, 0xd
    cmpw 31, 0
    .4byte 0x40800A90 # bge .L_8039A328
    .4byte 0x48000358 # b .L_80399BF4
L_803998A0:
    addi 0, 3, 0x12
    cmpw 31, 0
    .4byte 0x40800490 # bge .L_80399D38
    .4byte 0x480003F8 # b .L_80399CA4
L_803998B0:
    addi 0, 4, 0x11
    cmpw 31, 0
    .4byte 0x40800038 # bge .L_803998F0
    addi 0, 4, 0x9
    cmpw 31, 0
    .4byte 0x4080001C # bge .L_803998E0
    addi 0, 4, 0x4
    cmpw 31, 0
    .4byte 0x40800818 # bge .L_8039A0E8
    cmpw 31, 4
    .4byte 0x40800588 # bge .L_80399E60
    .4byte 0x48000A4C # b .L_8039A328
L_803998E0:
    addi 0, 4, 0xd
    cmpw 31, 0
    .4byte 0x40800800 # bge .L_8039A0E8
    .4byte 0x480006A8 # b .L_80399F94
L_803998F0:
    addi 0, 4, 0x19
    cmpw 31, 0
    .4byte 0x40800018 # bge .L_80399910
    addi 0, 4, 0x15
    cmpw 31, 0
    .4byte 0x418207EC # beq .L_8039A0F0
    .4byte 0x408007E0 # bge .L_8039A0E8
    .4byte 0x48000554 # b .L_80399E60
L_80399910:
    addi 0, 4, 0x1d
    cmpw 31, 0
    .4byte 0x408007D0 # bge .L_8039A0E8
    .4byte 0x48000678 # b .L_80399F94
L_80399920:
    addi 0, 4, 0x33
    cmpw 31, 0
    .4byte 0x41820870 # beq .L_8039A198
    .4byte 0x40800058 # bge .L_80399984
    addi 0, 4, 0x2e
    cmpw 31, 0
    .4byte 0x41820838 # beq .L_8039A170
    .4byte 0x40800028 # bge .L_80399964
    addi 0, 4, 0x2c
    cmpw 31, 0
    .4byte 0x41820818 # beq .L_8039A160
    .4byte 0x4080081C # bge .L_8039A168
    addi 0, 4, 0x29
    cmpw 31, 0
    .4byte 0x418207E8 # beq .L_8039A140
    .4byte 0x408007FC # bge .L_8039A158
    .4byte 0x480007D8 # b .L_8039A138
L_80399964:
    addi 0, 4, 0x31
    cmpw 31, 0
    .4byte 0x4182081C # beq .L_8039A188
    .4byte 0x40800820 # bge .L_8039A190
    addi 0, 4, 0x30
    cmpw 31, 0
    .4byte 0x40800804 # bge .L_8039A180
    .4byte 0x480007F8 # b .L_8039A178
L_80399984:
    lis 3, 0x3
    addi 0, 3, 0x4
    cmpw 31, 0
    .4byte 0x41820884 # beq .L_8039A214
    .4byte 0x40800030 # bge .L_803999C4
    addi 0, 3, 0x1
    cmpw 31, 0
    .4byte 0x41820824 # beq .L_8039A1C4
    .4byte 0x40800010 # bge .L_803999B4
    cmpw 31, 3
    .4byte 0x408007F4 # bge .L_8039A1A0
    .4byte 0x48000978 # b .L_8039A328
L_803999B4:
    addi 0, 3, 0x3
    cmpw 31, 0
    .4byte 0x40800834 # bge .L_8039A1F0
    .4byte 0x4800080C # b .L_8039A1CC
L_803999C4:
    addi 0, 3, 0x7
    cmpw 31, 0
    .4byte 0x418208E4 # beq .L_8039A2B0
    .4byte 0x40800014 # bge .L_803999E4
    addi 0, 3, 0x6
    cmpw 31, 0
    .4byte 0x40800888 # bge .L_8039A264
    .4byte 0x48000858 # b .L_8039A238
L_803999E4:
    addi 0, 3, 0x9
    cmpw 31, 0
    .4byte 0x4080093C # bge .L_8039A328
    .4byte 0x4800090C # b .L_8039A2FC
L_803999F4:
    lbz 4, 0x281(30)
    lbz 0, 0x22c(30)
    add 3, 30, 4
    lbz 3, 0x202(3)
    extsb 0, 0
    extsb 3, 3
    cmpw 3, 0
    .4byte 0x4182002C # beq .L_80399A3C
    addi 0, 4, 0x1
    li 4, 0x0
    stb 0, 0x281(30)
    lbz 0, 0x281(30)
    lbz 5, 0x22c(30)
    add 3, 30, 0
    stb 5, 0x202(3)
    lbz 0, 0x281(30)
    add 3, 30, 0
    stb 4, 0x257(3)
L_80399A3C:
    li 3, 0x1
    .4byte 0x480008EC # b .L_8039A32C
L_80399A44:
    lbz 3, 0x201(30)
    addi 5, 1, 0x24
    lbz 0, 0x1fd(30)
    li 4, 0x20
    slwi 3, 3, 2
    add 3, 30, 3
    slwi 0, 0, 2
    lfs 0, 0x4c(3)
    add 3, 30, 0
    stfs 0, 0x1a8(3)
    lbz 0, 0x1fd(30)
    lbz 6, 0x201(30)
    add 3, 30, 0
    stb 6, 0x1f1(3)
    lbz 3, 0x1fd(30)
    addi 0, 3, 0x1
    stb 0, 0x1fd(30)
    lwz 3, 0x38(30)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x25(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    li 3, 0x1
    xoris 5, 5, 0x8000
    stw 4, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8220250 # lfd f1, lbl_805431F0@sda21(r0)
    stw 5, 0x2c(1)
    add 4, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    .4byte 0xC0820280 # lfs f4, lbl_80543220@sda21(r0)
    fsubs 2, 0, 1
    lfs 1, 0x4c(4)
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 31, 2
    fmadds 1, 4, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x2
    stb 0, 0x22d(5)
    .4byte 0x48000814 # b .L_8039A32C
L_80399B1C:
    lbz 3, 0x201(30)
    addi 5, 1, 0x20
    lbz 0, 0x1fd(30)
    li 4, 0x20
    slwi 3, 3, 2
    add 3, 30, 3
    slwi 0, 0, 2
    lfs 0, 0x4c(3)
    add 3, 30, 0
    stfs 0, 0x1a8(3)
    lbz 0, 0x1fd(30)
    lbz 6, 0x201(30)
    add 3, 30, 0
    stb 6, 0x1f1(3)
    lbz 3, 0x1fd(30)
    addi 0, 3, 0x1
    stb 0, 0x1fd(30)
    lwz 3, 0x38(30)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x21(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    li 3, 0x1
    xoris 5, 5, 0x8000
    stw 4, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8220250 # lfd f1, lbl_805431F0@sda21(r0)
    stw 5, 0x2c(1)
    add 4, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    .4byte 0xC0820280 # lfs f4, lbl_80543220@sda21(r0)
    fsubs 2, 0, 1
    lfs 1, 0x4c(4)
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 31, 2
    fmadds 1, 4, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    .4byte 0x4800073C # b .L_8039A32C
L_80399BF4:
    lbz 0, 0x201(30)
    li 3, 0x1
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    .4byte 0x48000720 # b .L_8039A32C
L_80399C10:
    lwz 3, 0x38(30)
    addi 5, 1, 0x1c
    li 4, 0xa7
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x1d(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    li 3, 0x1
    xoris 5, 5, 0x8000
    stw 4, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 5, 0x2c(1)
    add 4, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    lfs 1, 0x4c(4)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    .4byte 0x4800068C # b .L_8039A32C
L_80399CA4:
    lwz 3, 0x38(30)
    addi 5, 1, 0x18
    li 4, 0xa8
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x19(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    li 3, 0x1
    xoris 5, 5, 0x8000
    stw 4, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 5, 0x2c(1)
    add 4, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    lfs 1, 0x4c(4)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    .4byte 0x480005F8 # b .L_8039A32C
L_80399D38:
    lwz 3, 0x38(30)
    addi 5, 1, 0x14
    li 4, 0xa6
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x15(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    li 3, 0x1
    xoris 5, 5, 0x8000
    stw 4, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 5, 0x2c(1)
    add 4, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    lfs 1, 0x4c(4)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    .4byte 0x48000564 # b .L_8039A32C
L_80399DCC:
    lwz 3, 0x38(30)
    addi 5, 1, 0x10
    li 4, 0xa5
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x11(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    li 3, 0x1
    xoris 5, 5, 0x8000
    stw 4, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 5, 0x2c(1)
    add 4, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    lfs 1, 0x4c(4)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    .4byte 0x480004D0 # b .L_8039A32C
L_80399E60:
    lbz 3, 0x201(30)
    cmpwi 3, 0x20
    .4byte 0x4080001C # bge .L_80399E84
    li 0, 0x1
    lwz 4, 0x3c(30)
    slw 3, 0, 3
    or 0, 4, 3
    stw 0, 0x3c(30)
    .4byte 0x48000024 # b .L_80399EA4
L_80399E84:
    cmpwi 3, 0x40
    .4byte 0x4080001C # bge .L_80399EA4
    subi 0, 3, 0x20
    li 3, 0x1
    lwz 4, 0x40(30)
    slw 3, 3, 0
    or 0, 4, 3
    stw 0, 0x40(30)
L_80399EA4:
    lbz 3, 0x201(30)
    addi 5, 1, 0xc
    lbz 0, 0x282(30)
    li 4, 0x20
    slwi 3, 3, 2
    add 3, 30, 3
    slwi 0, 0, 2
    lfs 0, 0x4c(3)
    add 3, 30, 0
    stfs 0, 0x19c(3)
    lbz 0, 0x282(30)
    lbz 6, 0x201(30)
    add 3, 30, 0
    stb 6, 0x1ee(3)
    lbz 3, 0x201(30)
    lbz 0, 0x282(30)
    add 3, 30, 3
    lbz 6, 0x22d(3)
    add 3, 30, 0
    stb 6, 0x1fe(3)
    lwz 3, 0x38(30)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0xd(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    li 3, 0x1
    xoris 5, 5, 0x8000
    stw 4, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8220250 # lfd f1, lbl_805431F0@sda21(r0)
    stw 5, 0x2c(1)
    add 4, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    .4byte 0xC082026C # lfs f4, lbl_8054320C@sda21(r0)
    fsubs 2, 0, 1
    lfs 1, 0x4c(4)
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 31, 2
    fmadds 1, 4, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    lbz 4, 0x282(30)
    addi 0, 4, 0x1
    stb 0, 0x282(30)
    .4byte 0x4800039C # b .L_8039A32C
L_80399F94:
    lbz 3, 0x201(30)
    cmpwi 3, 0x20
    .4byte 0x40800020 # bge .L_80399FBC
    li 0, 0x1
    lwz 4, 0x3c(30)
    slw 3, 0, 3
    nor 0, 3, 3
    and 0, 4, 0
    stw 0, 0x3c(30)
    .4byte 0x48000024 # b .L_80399FDC
L_80399FBC:
    cmpwi 3, 0x40
    .4byte 0x4080001C # bge .L_80399FDC
    li 0, 0x1
    lwz 4, 0x40(30)
    slw 3, 0, 3
    nor 0, 3, 3
    and 0, 4, 0
    stw 0, 0x40(30)
L_80399FDC:
    lbz 3, 0x201(30)
    addi 5, 1, 0x8
    lbz 0, 0x282(30)
    li 4, 0x20
    slwi 3, 3, 2
    add 3, 30, 3
    slwi 0, 0, 2
    lfs 0, 0x4c(3)
    add 3, 30, 0
    stfs 0, 0x19c(3)
    lbz 0, 0x282(30)
    lbz 6, 0x201(30)
    add 3, 30, 0
    stb 6, 0x1ee(3)
    lbz 3, 0x201(30)
    lbz 0, 0x282(30)
    add 3, 30, 3
    lbz 6, 0x22d(3)
    add 3, 30, 0
    stb 6, 0x1fe(3)
    lwz 3, 0x38(30)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x9(1)
    lis 5, 0x4330
    lis 4, lbl_8050DB0C@ha
    lbz 0, 0x201(30)
    xoris 3, 3, 0x8000
    stw 5, 0x30(1)
    addi 6, 4, lbl_8050DB0C@l
    slwi 0, 0, 2
    stw 3, 0x34(1)
    add 4, 30, 0
    .4byte 0xC8820250 # lfd f4, lbl_805431F0@sda21(r0)
    li 3, 0x1
    lfd 0, 0x30(1)
    lha 0, 0x2ee(6)
    fsubs 0, 0, 4
    lfs 2, 0x44(30)
    xoris 0, 0, 0x8000
    stw 5, 0x28(1)
    lfs 1, 0x4c(4)
    stw 0, 0x2c(1)
    fmuls 2, 2, 0
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    lfd 3, 0x28(1)
    fsubs 3, 3, 4
    fmuls 2, 31, 2
    fmadds 1, 3, 2, 1
    stfs 1, 0x4c(4)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 4, 30, 0
    lfs 1, 0xf4(4)
    fadds 0, 1, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(30)
    add 5, 30, 0
    lbz 4, 0x22d(5)
    addi 0, 4, 0x1
    stb 0, 0x22d(5)
    lbz 4, 0x282(30)
    addi 0, 4, 0x1
    stb 0, 0x282(30)
    .4byte 0x48000248 # b .L_8039A32C
L_8039A0E8:
    li 3, 0x1
    .4byte 0x48000240 # b .L_8039A32C
L_8039A0F0:
    addic. 0, 29, 0x4
    .4byte 0x4182000C # beq .L_8039A100
    li 3, 0x1
    .4byte 0x48000230 # b .L_8039A32C
L_8039A100:
    lbz 0, 0x1e8(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8039A120
    lbz 0, 0x281(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x256(3)
    .4byte 0x48000014 # b .L_8039A130
L_8039A120:
    lbz 0, 0x281(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x257(3)
L_8039A130:
    li 3, 0x1
    .4byte 0x480001F8 # b .L_8039A32C
L_8039A138:
    li 3, 0x1
    .4byte 0x480001F0 # b .L_8039A32C
L_8039A140:
    lwz 4, 0x1d8(30)
    mr 3, 30
    lwz 5, 0x1dc(30)
    bl fn_8039934C
    li 3, 0x1
    .4byte 0x480001D8 # b .L_8039A32C
L_8039A158:
    li 3, 0x1
    .4byte 0x480001D0 # b .L_8039A32C
L_8039A160:
    li 3, 0x1
    .4byte 0x480001C8 # b .L_8039A32C
L_8039A168:
    li 3, 0x1
    .4byte 0x480001C0 # b .L_8039A32C
L_8039A170:
    li 3, 0x1
    .4byte 0x480001B8 # b .L_8039A32C
L_8039A178:
    li 3, 0x1
    .4byte 0x480001B0 # b .L_8039A32C
L_8039A180:
    li 3, 0x1
    .4byte 0x480001A8 # b .L_8039A32C
L_8039A188:
    li 3, 0x1
    .4byte 0x480001A0 # b .L_8039A32C
L_8039A190:
    li 3, 0x1
    .4byte 0x48000198 # b .L_8039A32C
L_8039A198:
    li 3, 0x1
    .4byte 0x48000190 # b .L_8039A32C
L_8039A1A0:
    lha 4, 0x1ea(30)
    mr 3, 30
    bl fn_80398A34
    lbz 4, 0x0(29)
    mr 3, 30
    lha 5, 0x1ea(30)
    bl fn_80398700
    li 3, 0x1
    .4byte 0x4800016C # b .L_8039A32C
L_8039A1C4:
    li 3, 0x1
    .4byte 0x48000164 # b .L_8039A32C
L_8039A1CC:
    lha 4, 0x1ec(30)
    mr 3, 30
    bl fn_80398A34
    lbz 4, 0x0(29)
    mr 3, 30
    lha 5, 0x1ec(30)
    bl fn_80398700
    li 3, 0x1
    .4byte 0x48000140 # b .L_8039A32C
L_8039A1F0:
    lwz 4, 0x1e0(30)
    mr 3, 30
    bl fn_80398A34
    lbz 4, 0x0(29)
    mr 3, 30
    lwz 5, 0x1e0(30)
    bl fn_80398700
    li 3, 0x1
    .4byte 0x4800011C # b .L_8039A32C
L_8039A214:
    lwz 4, 0x1e4(30)
    mr 3, 30
    bl fn_80398A34
    lbz 4, 0x0(29)
    mr 3, 30
    lwz 5, 0x1e4(30)
    bl fn_80398700
    li 3, 0x1
    .4byte 0x480000F8 # b .L_8039A32C
L_8039A238:
    lis 4, lbl_8050EC80@ha
    mr 3, 30
    addi 4, 4, lbl_8050EC80@l
    lwz 0, 0x10(4)
    mulli 0, 0, 0xc8
    add 5, 4, 0
    lbz 4, 0x79(5)
    lbz 5, 0x78(5)
    bl fn_80398EF4
    li 3, 0x1
    .4byte 0x480000CC # b .L_8039A32C
L_8039A264:
    lis 4, lbl_8050EC80@ha
    mr 3, 30
    addi 31, 4, lbl_8050EC80@l
    lwz 0, 0x10(31)
    mulli 0, 0, 0xc8
    add 4, 31, 0
    lhz 4, 0x34(4)
    bl fn_80398A34
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mr 3, 30
    mulli 5, 4, 0xc8
    li 4, 0x4
    add 5, 0, 5
    lhz 5, 0x34(5)
    bl fn_80398700
    li 3, 0x1
    .4byte 0x48000080 # b .L_8039A32C
L_8039A2B0:
    lis 4, lbl_8050EC80@ha
    mr 3, 30
    addi 31, 4, lbl_8050EC80@l
    lwz 0, 0x10(31)
    mulli 0, 0, 0xc8
    add 4, 31, 0
    lhz 4, 0x36(4)
    bl fn_80398A34
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mr 3, 30
    mulli 5, 4, 0xc8
    li 4, 0x4
    add 5, 0, 5
    lhz 5, 0x36(5)
    bl fn_80398700
    li 3, 0x1
    .4byte 0x48000034 # b .L_8039A32C
L_8039A2FC:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    mr 3, 30
    lwz 4, 0x10c(4)
    bl fn_80398A34
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    mr 3, 30
    li 4, 0x6
    lwz 5, 0x10c(5)
    bl fn_80398700
    li 3, 0x1
    .4byte 0x48000008 # b .L_8039A32C
L_8039A328:
    li 3, 0x0
L_8039A32C:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

