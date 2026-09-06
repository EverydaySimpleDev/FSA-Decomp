# MAJOR: found via re-scanning an EARLIER portion of this 901KB gap
# (0x803A3260-0x803A8378) once the "attachment resolver" family's shape
# was well understood. fn_803A56C4 (dtor) + fn_803A59E0 (real ctor, direct
# vtable-install) is ANOTHER, much earlier member of the family (vtable
# lbl_804AF820, 10 uses of the shared fn_80084370(0x2c)+lbl_804AF86C
# sub-object idiom - more than most later siblings). Also references
# lbl_804AF7D8 as a plain DATA TABLE (6 words, loaded via lwz not
# installed as a vtable - confirmed NOT a vtable despite superficially
# vtable-shaped DOL bytes) alongside lock-style calls (fn_8008382C/
# fn_80084BAC) - not traced further, out of scope.
.section extab, "a"
.balign 4
.global etb_8000F26C
etb_8000F26C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000F26C, 8

.global etb_8000F274
etb_8000F274:
    .4byte 0x300A0000
    .4byte 0x0000006C
    .4byte 0x00000058
    .4byte 0x00000168
    .4byte 0x00000060
    .4byte 0x00000180
    .4byte 0x00000068
    .4byte 0x000001B0
    .4byte 0x00000070
    .4byte 0x000001E0
    .4byte 0x00000078
    .4byte 0x00000210
    .4byte 0x00000080
    .4byte 0x00000240
    .4byte 0x00000088
    .4byte 0x00000270
    .4byte 0x00000090
    .4byte 0x000002A0
    .4byte 0x00000098
    .4byte 0x00000420
    .4byte 0x000000A0
    .4byte 0x00000000
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
.size etb_8000F274, 168

.section extabindex, "a"
.balign 4
.global eti_8001EFF4
eti_8001EFF4:
    .4byte fn_803A56C4
    .4byte 0x0000031C
    .4byte etb_8000F26C
.size eti_8001EFF4, 12

.global eti_8001F000
eti_8001F000:
    .4byte fn_803A59E0
    .4byte 0x000004E0
    .4byte etb_8000F274
.size eti_8001F000, 12

.text
.balign 4
.global fn_803A56C4
.global fn_803A59E0

fn_803A56C4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x418202EC # beq .L_803A59C8
    lis 4, lbl_804AF820@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804AF820@l
    stw 0, 0x0(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    li 28, 0x0
    mr 29, 30
L_803A5704:
    lwz 3, 0xa8(29)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_803A5728
    .4byte 0x41820018 # beq .L_803A5728
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_803A5728:
    addi 28, 28, 0x1
    addi 29, 29, 0x1c
    cmpwi 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803A5704
    lha 0, 0x6c(30)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_803A5754
    lwz 3, 0x48(30)
    bl fn_80427D94
    li 0, 0x0
    sth 0, 0x6c(30)
L_803A5754:
    mr 28, 30
    li 27, 0x0
    li 29, 0x0
L_803A5760:
    lwz 0, 0x28(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803A5780
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x28(28)
    bl fn_800EC240
    stw 29, 0x28(28)
L_803A5780:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x3
    .4byte 0x4180FFD4 # blt .L_803A5760
    mr 28, 30
    li 27, 0x0
    li 29, 0x0
L_803A579C:
    lwz 0, 0x34(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803A57BC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x34(28)
    bl fn_800EC240
    stw 29, 0x34(28)
L_803A57BC:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFD4 # blt .L_803A579C
    lwz 0, 0x44(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803A57F0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x44(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x44(30)
L_803A57F0:
    bl fn_8013C824
    lwz 3, 0xc(3)
    bl fn_800EC188
    lwz 3, 0x100(30)
    bl fn_8008383C
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A5824
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A5824:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x24(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A584C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A584C:
    li 0, 0x0
    stw 0, 0x24(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A5874
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A5874:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0x48(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A589C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A589C:
    li 0, 0x0
    stw 0, 0x48(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A58C4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A58C4:
    li 0, 0x0
    stw 0, 0xc(30)
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A58EC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A58EC:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A5914
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A5914:
    li 0, 0x0
    stw 0, 0x14(30)
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A593C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A593C:
    li 0, 0x0
    stw 0, 0x18(30)
    lwz 3, 0x1c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A5964
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A5964:
    li 0, 0x0
    stw 0, 0x1c(30)
    lwz 3, 0x20(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A598C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803A598C:
    li 0, 0x0
    lis 3, lbl_80529DEC@ha
    stw 0, 0x20(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x24(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D91C8 # stw r3, lbl_8053AD88@sda21(r0)
    .4byte 0x4081000C # ble .L_803A59C8
    mr 3, 30
    bl dtor_80084580
L_803A59C8:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803A59E0:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_804AF820@ha
    li 5, 0x0
    stw 0, 0x54(1)
    addi 0, 4, lbl_804AF820@l
    li 6, 0x1c
    li 7, 0x4
    stmw 26, 0x38(1)
    mr 31, 3
    lis 3, fn_8016FDE0@ha
    addi 4, 3, fn_8016FDE0@l
    lis 3, lbl_80475F58@ha
    addi 29, 3, lbl_80475F58@l
    addi 3, 31, 0x90
    stw 0, 0x0(31)
    bl __construct_array
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    .4byte 0x93ED91C8 # stw r31, lbl_8053AD88@sda21(r0)
    li 3, 0x118
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_803A5A4C
    bl fn_8009C4EC
L_803A5A4C:
    stw 26, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 30, 3, lbl_80529DEC@l
    addi 4, 29, 0x164
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x24(30)
    bl fn_8009C69C
    lwz 4, 0x24(30)
    addi 3, 29, 0x170
    bl fn_800832A0
    bl fn_800A4994
    stw 3, 0x24(31)
    lwz 3, 0x4(31)
    lwz 4, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d61
    addi 6, 4, 0x726b
    li 5, 0x5063
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7472
    stb 0, 0xb0(3)
    lis 4, 0x7072
    addi 6, 5, 0x7431
    lwz 3, 0x4(31)
    addi 5, 4, 0x7373
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x7472
    lis 3, 0x7072
    stb 0, 0x14e(31)
    addi 6, 4, 0x7432
    addi 5, 3, 0x7373
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 29, 0x17c
    stb 0, 0x14f(31)
    bl fn_80403204
    mr 0, 3
    li 3, 0x168
    mr 27, 0
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803A5B48
    mr 4, 27
    bl fn_80097800
L_803A5B48:
    stw 26, 0x8(31)
    li 3, 0x1c
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_803A5B60
    bl fn_80428030
L_803A5B60:
    lis 3, 0x5449
    stw 26, 0x48(31)
    addi 3, 3, 0x4d47
    addi 4, 29, 0x190
    bl fn_80403244
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803A5B90
    mr 4, 27
    bl fn_80097800
L_803A5B90:
    lis 3, 0x5449
    stw 26, 0xc(31)
    addi 3, 3, 0x4d47
    addi 4, 29, 0x1a8
    bl fn_80403244
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803A5BC0
    mr 4, 27
    bl fn_80097800
L_803A5BC0:
    lis 3, 0x5449
    stw 26, 0x10(31)
    addi 3, 3, 0x4d47
    addi 4, 29, 0x1c0
    bl fn_80403244
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803A5BF0
    mr 4, 27
    bl fn_80097800
L_803A5BF0:
    lis 3, 0x5449
    stw 26, 0x14(31)
    addi 3, 3, 0x4d47
    addi 4, 29, 0x1d4
    bl fn_80403244
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803A5C20
    mr 4, 27
    bl fn_80097800
L_803A5C20:
    lis 3, 0x5449
    stw 26, 0x18(31)
    addi 3, 3, 0x4d47
    addi 4, 29, 0x1e8
    bl fn_80403244
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803A5C50
    mr 4, 27
    bl fn_80097800
L_803A5C50:
    lis 3, 0x5449
    stw 26, 0x1c(31)
    addi 3, 3, 0x4d47
    addi 4, 29, 0x1fc
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803A5C80
    mr 4, 27
    bl fn_80097800
L_803A5C80:
    li 8, 0x0
    li 7, 0x8
    li 6, 0x18
    li 3, 0x28
    li 0, 0xff
    stb 8, 0x20(1)
    addi 4, 1, 0x2c
    addi 5, 1, 0x24
    stb 8, 0x21(1)
    stb 8, 0x22(1)
    stb 8, 0x23(1)
    stb 7, 0x28(1)
    lwz 7, 0x20(1)
    stw 26, 0x20(31)
    stb 6, 0x29(1)
    stb 3, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stw 7, 0x24(1)
    stw 0, 0x2c(1)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x249(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_803A5D04
    li 0, 0x0
    sth 0, 0x68(31)
    .4byte 0x4800000C # b .L_803A5D0C
L_803A5D04:
    li 0, 0xff
    sth 0, 0x68(31)
L_803A5D0C:
    li 0, 0x0
    lis 3, 0x8
    stb 0, 0x150(31)
    li 5, 0x0
    .4byte 0x836D8CEC # lwz r27, lbl_8053A8AC@sda21(r0)
    mr 4, 27
    bl fn_80084BAC
    stw 3, 0x100(31)
    lwz 3, 0x100(31)
    bl fn_8008382C
    lis 3, lbl_804AF7D8@ha
    mr 29, 31
    addi 28, 3, lbl_804AF7D8@l
    li 26, 0x0
L_803A5D44:
    addi 0, 29, 0x104
    addi 4, 29, 0x11c
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 29, 0x134
    li 6, 0x0
    stw 4, 0xc(1)
    li 8, 0x0
    lis 9, 0x1024
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x24(30)
    lwz 4, 0x0(28)
    lwz 5, 0x4(28)
    lwz 7, 0x8(28)
    lwz 10, 0x100(31)
    bl fn_8016A3BC
    lwz 3, 0x11c(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_803A5DA0
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    stfs 0, 0x8(3)
L_803A5DA0:
    lwz 3, 0x134(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_803A5DB4
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    stfs 0, 0x8(3)
L_803A5DB4:
    addi 26, 26, 0x1
    addi 28, 28, 0xc
    cmpwi 26, 0x6
    addi 29, 29, 0x4
    .4byte 0x4180FF80 # blt .L_803A5D44
    lwz 3, 0x100(31)
    bl fn_80084D84
    mr 3, 27
    bl fn_8008382C
    li 26, 0x0
    mr 28, 31
L_803A5DE0:
    li 3, 0x5c
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820014 # beq .L_803A5E00
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_803A5E00:
    addi 26, 26, 0x1
    stw 27, 0xa8(28)
    cmpwi 26, 0x4
    addi 28, 28, 0x1c
    .4byte 0x4180FFD0 # blt .L_803A5DE0
    li 6, 0x0
    lis 3, lbl_80529DEC@ha
    stb 6, 0x14c(31)
    li 5, 0x3c
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    li 0, 0x1
    addi 4, 3, lbl_80529DEC@l
    mr 3, 31
    stfs 0, 0x50(31)
    stfs 0, 0x4c(31)
    sth 6, 0x6e(31)
    sth 6, 0x72(31)
    sth 6, 0x7a(31)
    sth 6, 0x7e(31)
    stb 6, 0x14d(31)
    sth 6, 0x74(31)
    sth 6, 0x76(31)
    sth 6, 0x78(31)
    stw 6, 0x58(31)
    stw 6, 0x60(31)
    stw 6, 0x64(31)
    sth 6, 0x6c(31)
    stw 6, 0x5c(31)
    sth 6, 0x7c(31)
    sth 6, 0x80(31)
    sth 5, 0x82(31)
    stw 6, 0x28(31)
    stw 6, 0x2c(31)
    stw 6, 0x30(31)
    stw 6, 0x34(31)
    stw 6, 0x38(31)
    stw 6, 0x3c(31)
    stw 6, 0x40(31)
    stw 6, 0x44(31)
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(5)
    stb 0, 0x2364(5)
    stb 6, 0x250(4)
    lmw 26, 0x38(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

