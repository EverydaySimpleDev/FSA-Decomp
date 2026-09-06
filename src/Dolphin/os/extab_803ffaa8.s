# fn_803FFAA8 - actor@lbl_804B0F50: fused multi-entry-point vtable body
# (0xD1C, 4 slots). Calls OSSetProgressiveMode (x6, real SDK video-mode
# call) - consistent with the text/string-formatting family's occasional
# video-mode-configuration behavior seen elsewhere in this gap.
.section extab, "a"
.balign 4
.global etb_8000FFE4
etb_8000FFE4:
    .4byte 0x200A0000
    .4byte 0x00000088
    .4byte 0x00000058
    .4byte 0x000000B0
    .4byte 0x00000060
    .4byte 0x00000178
    .4byte 0x00000068
    .4byte 0x00000238
    .4byte 0x00000070
    .4byte 0x00000268
    .4byte 0x00000078
    .4byte 0x00000298
    .4byte 0x00000080
    .4byte 0x000002C8
    .4byte 0x00000088
    .4byte 0x000002F8
    .4byte 0x00000090
    .4byte 0x00000328
    .4byte 0x00000098
    .4byte 0x00000358
    .4byte 0x000000A0
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_8000FFE4, 168

.section extabindex, "a"
.balign 4
.global eti_8001FE28
eti_8001FE28:
    .4byte fn_803FFAA8
    .4byte 0x00000D1C
    .4byte etb_8000FFE4
.size eti_8001FE28, 12

.text
.balign 4
.global fn_803FFAA8

fn_803FFAA8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, lbl_80479AC0@ha
    stw 30, 0x28(1)
    addi 30, 3, lbl_80479AC0@l
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lbz 0, 0x79(31)
    cmplwi 0, 0x0
    .4byte 0x408200F0 # bne .L_803FFBC8
    lwz 3, 0x44(31)
    lbz 0, 0x4(3)
    cmplwi 0, 0x1
    .4byte 0x408200B8 # bne .L_803FFBA0
    lis 4, lbl_80529DEC@ha
    lwz 0, 0x14(3)
    addi 4, 4, lbl_80529DEC@l
    cmplwi 3, 0x0
    stw 0, 0x58(4)
    .4byte 0x41820018 # beq .L_803FFB18
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FFB18:
    bl fn_803007D0
    li 3, 0xec
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803FFB30
    bl fn_8030AC4C
L_803FFB30:
    stw 29, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    li 3, 0x4
    lwz 0, 0x4(31)
    stw 0, 0x5c(4)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803FFB58
    bl fn_8030905C
L_803FFB58:
    stw 29, 0x8(31)
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x8(31)
    stw 0, 0x60(3)
    lwz 3, 0x4(31)
    bl fn_8030AB38
    lwz 3, 0x8(31)
    bl fn_80308E90
    lis 4, lbl_80529DEC@ha
    addi 3, 30, 0x0
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0x34(31)
    li 0, 0x1
    stb 0, 0x79(31)
L_803FFBA0:
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x41820BF8 # beq .L_804007A4
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_802B1BE0
    .4byte 0x48000BE0 # b .L_804007A4
L_803FFBC8:
    cmplwi 0, 0x1
    .4byte 0x40820340 # bne .L_803FFF0C
    lwz 3, 0x34(31)
    lbz 0, 0x4(3)
    cmplwi 0, 0x1
    .4byte 0x40820308 # bne .L_803FFEE4
    lis 4, lbl_80529DEC@ha
    lwz 0, 0x14(3)
    addi 29, 4, lbl_80529DEC@l
    cmplwi 3, 0x0
    stw 0, 0x18(29)
    .4byte 0x41820018 # beq .L_803FFC0C
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FFC0C:
    li 3, 0x118
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_803FFC20
    bl fn_8009C4EC
L_803FFC20:
    stw 28, 0x18(31)
    addi 4, 30, 0x18
    li 5, 0x0
    lwz 3, 0x18(31)
    lwz 6, 0x18(29)
    bl fn_8009C69C
    li 7, 0x0
    li 3, 0xdc
    li 0, 0xff
    stb 3, 0x8(1)
    lis 4, 0x4c6f
    lis 3, 0x4e49
    stb 7, 0x9(1)
    addi 6, 4, 0x676f
    addi 5, 3, 0x4e5f
    stb 7, 0xa(1)
    stb 0, 0xb(1)
    lwz 3, 0x8(1)
    stb 7, 0x10(1)
    stb 7, 0x11(1)
    stb 7, 0x12(1)
    stb 7, 0x13(1)
    lwz 0, 0x10(1)
    stw 3, 0xc(1)
    stw 0, 0x14(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lis 3, 0x5449
    addi 4, 30, 0x2c
    addi 3, 3, 0x4d47
    bl fn_80403244
    mr 0, 3
    li 3, 0x168
    mr 29, 0
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803FFCE0
    mr 4, 29
    bl fn_80097800
L_803FFCE0:
    lis 3, 0x5449
    stw 28, 0x1c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x44
    bl fn_80403244
    mr 29, 3
    li 3, 0x168
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803FFD10
    mr 4, 29
    bl fn_80097800
L_803FFD10:
    lis 3, 0x5449
    stw 28, 0x20(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x5c
    bl fn_80403244
    mr 29, 3
    li 3, 0x168
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803FFD40
    mr 4, 29
    bl fn_80097800
L_803FFD40:
    lis 3, 0x5449
    stw 28, 0x24(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x70
    bl fn_80403244
    mr 29, 3
    li 3, 0x168
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803FFD70
    mr 4, 29
    bl fn_80097800
L_803FFD70:
    lis 3, 0x5449
    stw 28, 0x28(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x84
    bl fn_80403244
    mr 29, 3
    li 3, 0x168
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803FFDA0
    mr 4, 29
    bl fn_80097800
L_803FFDA0:
    lis 3, 0x5449
    stw 28, 0x2c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x84
    bl fn_80403244
    mr 29, 3
    li 3, 0x168
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803FFDD0
    mr 4, 29
    bl fn_80097800
L_803FFDD0:
    lis 3, 0x5449
    stw 28, 0x2c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x98
    bl fn_80403244
    mr 29, 3
    li 3, 0x168
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803FFE00
    mr 4, 29
    bl fn_80097800
L_803FFE00:
    lis 3, lbl_80529DEC@ha
    stw 28, 0x30(31)
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x21a(3)
    cmplwi 0, 0xa7
    .4byte 0x41820010 # beq .L_803FFE24
    lbz 0, 0x21b(3)
    cmplwi 0, 0xa5
    .4byte 0x40820010 # bne .L_803FFE30
L_803FFE24:
    lbz 0, 0x7a(31)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_803FFEB4
L_803FFE30:
    li 0, 0x0
    sth 0, 0x6c(31)
    bl fn_8004D388
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_803FFE90
    bl OSGetResetCode
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803FFE5C
    lbz 0, 0x7a(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803FFE70
L_803FFE5C:
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x238(3)
    .4byte 0x4800006C # b .L_803FFED8
L_803FFE70:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x238(3)
    cmplwi 0, 0xff
    .4byte 0x41820058 # beq .L_803FFED8
    li 0, 0x0
    stb 0, 0x238(3)
    .4byte 0x4800004C # b .L_803FFED8
L_803FFE90:
    lis 3, lbl_80529DEC@ha
    li 5, 0xff
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x1
    stb 5, 0x238(4)
    li 3, 0x0
    stb 0, 0x226(4)
    bl OSSetProgressiveMode
    .4byte 0x48000028 # b .L_803FFED8
L_803FFEB4:
    li 0, 0x4
    lis 3, lbl_80529DEC@ha
    sth 0, 0x6c(31)
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x1
    li 4, 0xff
    stb 4, 0x238(3)
    stb 0, 0x226(3)
    stb 0, 0x249(3)
L_803FFED8:
    li 0, 0x2
    stb 0, 0x79(31)
    .4byte 0x4800002C # b .L_803FFF0C
L_803FFEE4:
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x418208B4 # beq .L_804007A4
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_802B1BE0
    .4byte 0x4800089C # b .L_804007A4
L_803FFF0C:
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_803FFF30
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_802B1BE0
L_803FFF30:
    lwz 3, 0x14(31)
    bl fn_80442810
    lwz 3, 0x14(31)
    lbz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803FFF58
    lwz 3, 0x4(31)
    bl fn_8030A43C
    lwz 3, 0x8(31)
    bl fn_80304FB0
L_803FFF58:
    lwz 3, 0x14(31)
    lbz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x418200F8 # beq .L_8040005C
    lis 3, lbl_80529DEC@ha
    li 4, 0x0
    addi 29, 3, lbl_80529DEC@l
    lwz 3, 0xc(29)
    bl fn_804580DC
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_8040005C
    lwz 3, 0xc(29)
    li 4, 0x1
    bl fn_804580DC
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_8040005C
    lbz 0, 0x79(31)
    cmplwi 0, 0x2
    .4byte 0x408200BC # bne .L_8040005C
    addi 3, 30, 0xac
    crclr 6
    bl OSReport
    lis 4, lbl_80529DEC@ha
    addi 3, 30, 0xbc
    addi 29, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(29)
    bl fn_80401E10
    stw 3, 0x38(31)
    addi 3, 30, 0xd4
    li 4, 0x0
    lwz 5, 0x8(29)
    bl fn_80401E10
    stw 3, 0x3c(31)
    addi 3, 30, 0xec
    li 4, 0x0
    lwz 5, 0x8(29)
    bl fn_80401E10
    stw 3, 0x40(31)
    addi 3, 30, 0x108
    li 4, 0x0
    li 5, 0x0
    lwz 6, 0x8(29)
    bl fn_80401BA4
    stw 3, 0x48(31)
    addi 3, 30, 0x120
    li 4, 0x0
    li 5, 0x0
    lwz 6, 0x8(29)
    bl fn_80401BA4
    stw 3, 0x54(31)
    addi 3, 30, 0x13c
    li 4, 0x0
    li 5, 0x0
    lwz 6, 0x8(29)
    bl fn_80401BA4
    stw 3, 0x58(31)
    addi 3, 30, 0x158
    li 4, 0x0
    li 5, 0x0
    lwz 6, 0x8(29)
    bl fn_80401BA4
    stw 3, 0x5c(31)
    li 0, 0x3
    stb 0, 0x79(31)
L_8040005C:
    lwz 3, 0x14(31)
    lbz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x4182073C # beq .L_804007A4
    lis 3, lbl_80529DEC@ha
    addi 30, 3, lbl_80529DEC@l
    lbz 0, 0x238(30)
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_804000DC
    li 3, 0x0
    bl fn_80075400
    subis 0, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_804000D0
    lha 3, 0x74(31)
    addi 0, 3, 0x1
    sth 0, 0x74(31)
    lha 0, 0x74(31)
    cmpwi 0, 0x30
    .4byte 0x418000EC # blt .L_80400194
    lis 3, lbl_80529DEC@ha
    li 5, 0xff
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x1
    stb 5, 0x238(30)
    li 3, 0x0
    stb 0, 0x226(4)
    bl OSSetProgressiveMode
    .4byte 0x480000C8 # b .L_80400194
L_804000D0:
    li 0, 0x0
    sth 0, 0x74(31)
    .4byte 0x480000BC # b .L_80400194
L_804000DC:
    cmplwi 0, 0x0
    .4byte 0x408200B4 # bne .L_80400194
    li 3, 0x0
    bl fn_80075400
    subis 0, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8040010C
    li 3, 0x0
    li 0, 0x1
    sth 3, 0x74(31)
    stb 0, 0x238(30)
    .4byte 0x4800008C # b .L_80400194
L_8040010C:
    lha 3, 0x74(31)
    cmpwi 3, 0x0
    .4byte 0x40810058 # ble .L_8040016C
    subi 0, 3, 0x1
    sth 0, 0x74(31)
    lha 0, 0x74(31)
    cmpwi 0, 0x0
    .4byte 0x4181006C # bgt .L_80400194
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x41820024 # beq .L_80400158
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x200
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80400194
L_80400158:
    li 3, 0x2
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x72(31)
    .4byte 0x4800002C # b .L_80400194
L_8040016C:
    lis 3, lbl_80529DEC@ha
    li 5, 0xff
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x1
    stb 5, 0x238(30)
    li 3, 0x0
    stb 0, 0x226(4)
    bl OSSetProgressiveMode
    li 0, 0x0
    sth 0, 0x72(31)
L_80400194:
    lha 0, 0x6c(31)
    cmpwi 0, 0x2
    .4byte 0x418200B4 # beq .L_80400250
    .4byte 0x40800014 # bge .L_804001B4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_804001C0
    .4byte 0x40800048 # bge .L_804001F4
    .4byte 0x480000F8 # b .L_804002A8
L_804001B4:
    cmpwi 0, 0x4
    .4byte 0x408000F0 # bge .L_804002A8
    .4byte 0x480000C8 # b .L_80400284
L_804001C0:
    lfs 2, 0x64(31)
    .4byte 0xC0220888 # lfs f1, lbl_80543828@sda21(r0)
    .4byte 0xC0020854 # lfs f0, lbl_805437F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x64(31)
    lfs 1, 0x64(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408200C8 # bne .L_804002A8
    stfs 0, 0x64(31)
    li 0, 0x1
    sth 0, 0x6c(31)
    .4byte 0x480000B8 # b .L_804002A8
L_804001F4:
    lha 3, 0x6e(31)
    addi 0, 3, 0x1
    sth 0, 0x6e(31)
    lha 0, 0x6e(31)
    cmpwi 0, 0x3c
    .4byte 0x418000A0 # blt .L_804002A8
    lbz 0, 0x238(30)
    cmplwi 0, 0xff
    .4byte 0x4182001C # beq .L_80400230
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_80400230
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_80400230
    cmplwi 0, 0xb
    .4byte 0x40820018 # bne .L_80400244
L_80400230:
    li 3, 0x0
    li 0, 0x2
    sth 3, 0x6e(31)
    sth 0, 0x6c(31)
    .4byte 0x48000068 # b .L_804002A8
L_80400244:
    li 0, 0x3c
    sth 0, 0x6e(31)
    .4byte 0x4800005C # b .L_804002A8
L_80400250:
    lfs 2, 0x64(31)
    .4byte 0xC0220888 # lfs f1, lbl_80543828@sda21(r0)
    .4byte 0xC0020838 # lfs f0, lbl_805437D8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x64(31)
    lfs 1, 0x64(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820038 # bne .L_804002A8
    stfs 0, 0x64(31)
    li 0, 0x3
    sth 0, 0x6c(31)
    .4byte 0x48000028 # b .L_804002A8
L_80400284:
    .4byte 0xC0020838 # lfs f0, lbl_805437D8@sda21(r0)
    stfs 0, 0x64(31)
    lbz 0, 0x238(30)
    cmplwi 0, 0xff
    .4byte 0x4182000C # beq .L_804002A0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_804002A8
L_804002A0:
    li 0, 0x4
    sth 0, 0x6c(31)
L_804002A8:
    lbz 0, 0x79(31)
    cmplwi 0, 0x3
    .4byte 0x408201A0 # bne .L_80400450
    lwz 3, 0x38(31)
    lbz 0, 0x4(3)
    cmplwi 0, 0x1
    .4byte 0x40820190 # bne .L_80400450
    lwz 10, 0x3c(31)
    lbz 0, 0x4(10)
    cmplwi 0, 0x1
    .4byte 0x40820180 # bne .L_80400450
    lwz 9, 0x40(31)
    lbz 0, 0x4(9)
    cmplwi 0, 0x1
    .4byte 0x40820170 # bne .L_80400450
    lwz 8, 0x48(31)
    lbz 0, 0x4(8)
    cmplwi 0, 0x1
    .4byte 0x40820160 # bne .L_80400450
    lwz 7, 0x54(31)
    lbz 0, 0x4(7)
    cmplwi 0, 0x1
    .4byte 0x40820150 # bne .L_80400450
    lwz 6, 0x58(31)
    lbz 0, 0x4(6)
    cmplwi 0, 0x1
    .4byte 0x40820140 # bne .L_80400450
    lwz 5, 0x5c(31)
    lbz 0, 0x4(5)
    cmplwi 0, 0x1
    .4byte 0x40820130 # bne .L_80400450
    lis 4, lbl_80529DEC@ha
    lwz 0, 0x14(3)
    addi 4, 4, lbl_80529DEC@l
    cmplwi 3, 0x0
    stw 0, 0x14(4)
    lwz 0, 0x14(10)
    stw 0, 0x1c(4)
    lwz 0, 0x14(9)
    stw 0, 0x20(4)
    lwz 0, 0x14(8)
    stw 0, 0x24(4)
    lwz 0, 0x14(7)
    stw 0, 0x38(4)
    lwz 0, 0x14(6)
    stw 0, 0x40(4)
    lwz 0, 0x14(5)
    stw 0, 0x44(4)
    .4byte 0x41820018 # beq .L_80400380
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400380:
    lwz 3, 0x40(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804003A0
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804003A0:
    lwz 3, 0x3c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804003C0
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804003C0:
    lwz 3, 0x48(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804003E0
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804003E0:
    lwz 3, 0x54(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80400400
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400400:
    lwz 3, 0x58(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80400420
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400420:
    lwz 3, 0x5c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80400440
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400440:
    li 3, 0x4
    li 0, 0x1
    stb 3, 0x79(31)
    stb 0, 0x78(31)
L_80400450:
    lbz 0, 0x78(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80400474
    lis 3, lbl_8051C1A0@ha
    addi 3, 3, lbl_8051C1A0@l
    bl fn_803B9B3C
    li 0, 0x2
    stb 0, 0x78(31)
    .4byte 0x48000028 # b .L_80400498
L_80400474:
    cmplwi 0, 0x2
    .4byte 0x40820020 # bne .L_80400498
    lis 3, lbl_8051C1A0@ha
    addi 3, 3, lbl_8051C1A0@l
    bl fn_803B9A24
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80400498
    li 0, 0x3
    stb 0, 0x78(31)
L_80400498:
    lha 0, 0x6c(31)
    cmpwi 0, 0x4
    .4byte 0x41800018 # blt .L_804004B8
    lbz 0, 0x78(31)
    cmplwi 0, 0x3
    .4byte 0x4082000C # bne .L_804004B8
    li 0, 0x4
    stb 0, 0x78(31)
L_804004B8:
    lbz 0, 0x238(30)
    cmplwi 0, 0xb
    .4byte 0x418102E4 # bgt .L_804007A4
    lis 3, jumptable_804B0F5C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B0F5C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 2, 0x68(31)
    .4byte 0xC0220888 # lfs f1, lbl_80543828@sda21(r0)
    .4byte 0xC0020854 # lfs f0, lbl_805437F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x68(31)
    lfs 1, 0x68(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408202A8 # bne .L_804007A4
    stfs 0, 0x68(31)
    li 0, 0x3
    stb 0, 0x238(30)
    .4byte 0x48000298 # b .L_804007A4
    lha 4, 0x72(31)
    li 3, 0x0
    addi 0, 4, 0x1
    sth 0, 0x72(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_80400548
    lha 0, 0x72(31)
    cmpwi 0, 0x258
    .4byte 0x41800010 # blt .L_80400554
L_80400548:
    li 0, 0x4
    stb 0, 0x238(30)
    .4byte 0x48000068 # b .L_804005B8
L_80400554:
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80400588
    li 3, 0x1
    li 0, 0x1e
    stb 3, 0x76(31)
    sth 0, 0x70(31)
    .4byte 0x48000034 # b .L_804005B8
L_80400588:
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_804005B8
    li 3, 0x0
    li 0, 0x1e
    stb 3, 0x76(31)
    sth 0, 0x70(31)
L_804005B8:
    lha 3, 0x70(31)
    addi 0, 3, 0x1
    sth 0, 0x70(31)
    lha 0, 0x70(31)
    cmpwi 0, 0x3c
    .4byte 0x408101D8 # ble .L_804007A4
    li 0, 0x0
    sth 0, 0x70(31)
    .4byte 0x480001CC # b .L_804007A4
    lha 0, 0x6c(31)
    cmpwi 0, 0x2
    .4byte 0x408201C0 # bne .L_804007A4
    lfs 2, 0x68(31)
    .4byte 0xC0220888 # lfs f1, lbl_80543828@sda21(r0)
    .4byte 0xC0020838 # lfs f0, lbl_805437D8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x68(31)
    lfs 1, 0x68(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082019C # bne .L_804007A4
    stfs 0, 0x68(31)
    lbz 0, 0x76(31)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_80400658
    li 0, 0x0
    sth 0, 0x70(31)
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x40820018 # bne .L_80400644
    li 0, 0x6
    li 3, 0x1
    stb 0, 0x238(30)
    bl OSSetProgressiveMode
    .4byte 0x48000164 # b .L_804007A4
L_80400644:
    li 0, 0x5
    li 3, 0x1
    stb 0, 0x238(30)
    bl OSSetProgressiveMode
    .4byte 0x48000150 # b .L_804007A4
L_80400658:
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x40820024 # bne .L_80400684
    li 3, 0x9
    li 0, 0x0
    stb 3, 0x238(30)
    li 3, 0x0
    sth 0, 0x6e(31)
    sth 0, 0x6c(31)
    bl OSSetProgressiveMode
    .4byte 0x48000124 # b .L_804007A4
L_80400684:
    li 3, 0x9
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x6e(31)
    sth 0, 0x6c(31)
    .4byte 0x4800010C # b .L_804007A4
    li 0, 0x7
    stb 0, 0x238(30)
    .4byte 0x48000100 # b .L_804007A4
    li 0, 0x8
    stb 0, 0x238(30)
    .4byte 0x480000F4 # b .L_804007A4
    lha 5, 0x70(31)
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    addi 0, 5, 0x1
    sth 0, 0x70(31)
    lbz 0, 0x251(4)
    cmplwi 0, 0x5a
    .4byte 0x408100D4 # ble .L_804007A4
    lha 0, 0x70(31)
    cmpwi 0, 0x5a
    .4byte 0x418000C8 # blt .L_804007A4
    li 3, 0x9
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x6e(31)
    sth 0, 0x6c(31)
    stb 0, 0x251(4)
    .4byte 0x480000AC # b .L_804007A4
    lfs 2, 0x68(31)
    .4byte 0xC0220888 # lfs f1, lbl_80543828@sda21(r0)
    .4byte 0xC0020854 # lfs f0, lbl_805437F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x68(31)
    lfs 1, 0x68(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820088 # bne .L_804007A4
    stfs 0, 0x68(31)
    li 3, 0xa
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x70(31)
    .4byte 0x48000070 # b .L_804007A4
    lha 3, 0x70(31)
    addi 0, 3, 0x1
    sth 0, 0x70(31)
    lha 0, 0x70(31)
    cmpwi 0, 0x78
    .4byte 0x41800058 # blt .L_804007A4
    .4byte 0xC002088C # lfs f0, lbl_8054382C@sda21(r0)
    li 0, 0xb
    stfs 0, 0x68(31)
    stb 0, 0x238(30)
    .4byte 0x48000044 # b .L_804007A4
    lfs 2, 0x68(31)
    .4byte 0xC0220888 # lfs f1, lbl_80543828@sda21(r0)
    .4byte 0xC0020838 # lfs f0, lbl_805437D8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x68(31)
    lfs 1, 0x68(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_804007A4
    lis 3, lbl_80529DEC@ha
    stfs 0, 0x68(31)
    li 4, 0xff
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 4, 0x238(30)
    stb 0, 0x226(3)
L_804007A4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

