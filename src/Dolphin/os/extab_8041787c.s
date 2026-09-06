# fn_8041787C - actor@lbl_804B1378: constructor (0x1070)
# Allocates 28 sub-objects (operator new x28), string formatting (strcpy
# x4 + fn_80095FB4 x4) - part of the same text/string-formatting family.
.section extab, "a"
.balign 4
.global etb_800104BC
etb_800104BC:
    .4byte 0x308A0000
    .4byte 0x00000058
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001A
    .4byte dtor_80084580
.size etb_800104BC, 24

.section extabindex, "a"
.balign 4
.global eti_800202F0
eti_800202F0:
    .4byte fn_8041787C
    .4byte 0x00001070
    .4byte etb_800104BC
.size eti_800202F0, 12

.text
.balign 4
.global fn_8041787C

fn_8041787C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stmw 26, 0x8(1)
    lis 4, lbl_804B1378@ha
    mr 31, 3
    addi 0, 4, lbl_804B1378@l
    lis 3, lbl_8048CD50@ha
    stw 0, 0x0(31)
    li 0, 0x0
    addi 30, 3, lbl_8048CD50@l
    li 3, 0x118
    .4byte 0x93ED9240 # stw r31, lbl_8053AE00@sda21(r0)
    stb 0, 0xe4(31)
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_804178D4
    bl fn_8009C4EC
L_804178D4:
    stw 26, 0x24(31)
    lis 3, lbl_80529DEC@ha
    addi 6, 3, lbl_80529DEC@l
    addi 4, 30, 0x590
    lwz 3, 0x24(31)
    lis 5, 0x110
    lwz 6, 0x34(6)
    bl fn_8009C69C
    lwz 3, 0x24(31)
    lis 4, 0x6f6d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    lis 4, 0x6f6d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    lis 4, 0x736e
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    lis 4, 0x736e
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    lis 4, 0x6f6d
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x100
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(31)
    lis 4, 0x6f6d
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x100
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    addi 29, 30, 0x0
    addi 28, 30, 0x58
    li 26, 0x0
L_80417A60:
    lwz 3, 0x24(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    add 27, 31, 26
    lwz 5, 0x0(28)
    stb 0, 0x123(27)
    lwz 6, 0x4(28)
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 26, 26, 0x1
    cmpwi 26, 0xb
    addi 28, 28, 0x8
    stb 0, 0x12e(27)
    addi 29, 29, 0x8
    .4byte 0x4180FFA4 # blt .L_80417A60
    li 26, 0x0
    addi 28, 30, 0xb0
L_80417AC8:
    lwz 3, 0x24(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x139
    lbz 3, 0xb2(3)
    addi 26, 26, 0x1
    addi 28, 28, 0x8
    cmpwi 26, 0x9
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_80417AC8
    li 26, 0x0
    addi 28, 30, 0xf8
L_80417B08:
    lwz 3, 0x24(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x142
    lbz 3, 0xb2(3)
    addi 26, 26, 0x1
    addi 28, 28, 0x8
    cmpwi 26, 0x6
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_80417B08
    li 26, 0x0
    addi 28, 30, 0x128
L_80417B48:
    lwz 3, 0x24(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x148
    lbz 3, 0xb2(3)
    addi 26, 26, 0x1
    addi 28, 28, 0x8
    cmpwi 26, 0xa
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_80417B48
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417B9C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417B9C:
    stw 3, 0x28(31)
    lis 5, 0x626b
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417BEC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417BEC:
    stw 3, 0x2c(31)
    lis 5, 0x626b
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x2c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417C3C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417C3C:
    stw 3, 0x30(31)
    lis 3, 0x7362
    addi 6, 3, 0x3039
    li 5, 0x5062
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x30(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417C88
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417C88:
    stw 3, 0x34(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417CD8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417CD8:
    stw 3, 0x38(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417D28
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417D28:
    stw 3, 0x3c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x3c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417D78
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417D78:
    stw 3, 0x6c(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6273
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
    .4byte 0x41820010 # beq .L_80417DC8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417DC8:
    stw 3, 0x40(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x40(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417E18
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417E18:
    stw 3, 0x70(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x70(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417E68
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417E68:
    stw 3, 0x44(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417EB8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417EB8:
    stw 3, 0x74(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x74(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417F08
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417F08:
    stw 3, 0x48(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3039
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x48(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417F58
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417F58:
    stw 3, 0x78(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x78(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417FA8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417FA8:
    stw 3, 0x4c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3130
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x4c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80417FF8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80417FF8:
    stw 3, 0x7c(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x7c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80418048
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418048:
    stw 3, 0x50(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3131
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80418098
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418098:
    stw 3, 0x80(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x80(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804180E8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804180E8:
    stw 3, 0x54(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3132
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
    .4byte 0x41820010 # beq .L_80418138
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418138:
    stw 3, 0x84(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x84(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80418188
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418188:
    stw 3, 0x58(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3133
    addi 5, 4, 0x6461
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
    .4byte 0x41820010 # beq .L_804181D8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804181D8:
    stw 3, 0x88(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x88(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80418228
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418228:
    stw 3, 0x5c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3134
    addi 5, 4, 0x6461
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
    .4byte 0x41820010 # beq .L_80418278
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418278:
    stw 3, 0x8c(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3039
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804182C8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804182C8:
    stw 3, 0x60(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3135
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x60(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80418318
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418318:
    stw 3, 0x90(31)
    lis 5, 0x7162
    lis 4, 0x50
    lwz 3, 0x24(31)
    addi 6, 5, 0x3130
    addi 5, 4, 0x6273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x90(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80418368
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80418368:
    stw 3, 0x9c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x24(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x9c(31)
    bl fn_80402F04
    mr 28, 31
    addi 29, 30, 0x4e8
    li 26, 0x0
L_804183A8:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804183C4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804183C4:
    stw 3, 0xa4(28)
    lwz 5, 0x0(29)
    lwz 3, 0x24(31)
    lwz 6, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xa4(28)
    bl fn_80402F04
    lwz 3, 0xa4(28)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    addi 29, 29, 0x8
    cmpwi 26, 0xf
    addi 28, 28, 0x4
    .4byte 0x4180FF8C # blt .L_804183A8
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x5a8
    lwz 0, 0x8(5)
    stw 0, 0xa0(31)
    bl fn_804030C4
    mr 0, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    mr 4, 0
    bl fn_80440D78
    lis 3, 0x5449
    addi 4, 30, 0x5bc
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    li 0, 0x3
    lwz 5, 0x498(30)
    sth 0, 0x106(31)
    lwz 6, 0x49c(30)
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 4, 30, 0x498
    stb 0, 0xb0(3)
    lwz 5, 0x8(4)
    lwz 3, 0x24(31)
    lwz 6, 0xc(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 28, 30, 0x498
    stb 0, 0xb0(3)
    li 26, 0x0
L_804184C4:
    mr 3, 26
    bl fn_803B9120
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_80418518
    lwz 3, 0x24(31)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    addi 0, 26, 0x2
    stb 4, 0xb0(3)
    li 3, 0x1
    slw 0, 3, 0
    lhz 3, 0x106(31)
    clrlwi 0, 0, 16
    or 0, 3, 0
    sth 0, 0x106(31)
    .4byte 0x48000028 # b .L_8041853C
L_80418518:
    lwz 3, 0x24(31)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_8041853C:
    addi 26, 26, 0x1
    addi 28, 28, 0x8
    cmpwi 26, 0x8
    .4byte 0x4180FF7C # blt .L_804184C4
    li 5, 0x0
    li 0, 0x5
    sth 5, 0x104(31)
    li 6, 0x0
    li 4, 0x1
    mtctr 0
L_80418564:
    add 3, 31, 6
    slw 0, 4, 6
    stb 5, 0x10b(3)
    clrlwi 0, 0, 16
    stb 5, 0x117(3)
    lhz 3, 0x106(31)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_804185A8
    lha 3, 0x104(31)
    addi 0, 3, 0x117
    stbx 6, 31, 0
    lha 3, 0x104(31)
    addi 0, 3, 0x10b
    stbx 6, 31, 0
    lha 3, 0x104(31)
    addi 0, 3, 0x1
    sth 0, 0x104(31)
L_804185A8:
    addi 6, 6, 0x1
    add 3, 31, 6
    stb 5, 0x10b(3)
    slw 0, 4, 6
    clrlwi 0, 0, 16
    stb 5, 0x117(3)
    lhz 3, 0x106(31)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_804185F0
    lha 3, 0x104(31)
    addi 0, 3, 0x117
    stbx 6, 31, 0
    lha 3, 0x104(31)
    addi 0, 3, 0x10b
    stbx 6, 31, 0
    lha 3, 0x104(31)
    addi 0, 3, 0x1
    sth 0, 0x104(31)
L_804185F0:
    addi 6, 6, 0x1
    .4byte 0x4200FF70 # bdnz .L_80418564
    li 0, 0x9c
    lis 3, 0x7461
    stb 0, 0x108(31)
    lis 4, 0x4e
    addi 6, 3, 0x3035
    lwz 3, 0x24(31)
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x7572
    lis 3, 0x50
    stfs 0, 0x4(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6f63
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, lbl_80529DEC@ha
    addi 5, 3, lbl_80529DEC@l
    stfs 0, 0x8(31)
    lbz 0, 0x252(5)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_804186BC
    lwz 4, 0x128(5)
    lis 3, 0x6666
    lwz 5, 0x12c(5)
    addi 0, 3, 0x6667
    slwi 3, 4, 2
    add 5, 5, 3
    mulhw 0, 0, 5
    srawi 3, 0, 1
    srwi 4, 3, 31
    srawi 0, 0, 1
    add 3, 3, 4
    mulli 4, 3, 0x5
    srwi 3, 0, 31
    add 0, 0, 3
    subf 3, 4, 5
    stw 3, 0x10(31)
    stw 0, 0xc(31)
    .4byte 0x48000014 # b .L_804186CC
L_804186BC:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x10(31)
    stw 0, 0xc(31)
L_804186CC:
    li 4, 0x0
    li 0, -0x1
    stw 4, 0x14(31)
    stw 4, 0x18(31)
    stw 0, 0x1c(31)
    stw 4, 0x20(31)
    lwz 0, 0xc(31)
    lwz 3, 0x10(31)
    mulli 0, 0, 0x5
    add 29, 3, 0
    cmpwi 29, 0xa
    .4byte 0x41800088 # blt .L_80418780
    li 3, 0x1e
    li 0, 0x1
    stw 3, 0x14(31)
    addi 3, 31, 0xe4
    li 4, 0x109
    li 5, 0x0
    stw 0, 0x18(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(31)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 31, 0xe4
    bl strcpy
    lwz 3, 0x24(31)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 31, 0xe4
    bl strcpy
    .4byte 0x48000140 # b .L_804188BC
L_80418780:
    lwz 0, 0x14(31)
    cmpwi 0, 0x1e
    .4byte 0x40810008 # ble .L_80418790
    stw 4, 0x14(31)
L_80418790:
    li 0, 0x1
    lhz 3, 0x106(31)
    slw 0, 0, 29
    clrlwi 0, 0, 16
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_804187CC
    slwi 0, 29, 2
    addi 3, 30, 0x560
    lwzx 4, 3, 0
    addi 3, 31, 0xe4
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800000C # b .L_804187D4
L_804187CC:
    li 0, 0x0
    stb 0, 0xe4(31)
L_804187D4:
    lwz 3, 0x24(31)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 31, 0xe4
    bl strcpy
    lwz 3, 0x24(31)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 31, 0xe4
    bl strcpy
    lwz 3, 0x24(31)
    slwi 0, 29, 3
    addi 27, 30, 0x448
    lwz 12, 0x0(3)
    add 27, 27, 0
    lwz 5, 0x0(27)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(27)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lwz 3, 0x24(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x24(31)
    lis 4, 0x4e
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_804188BC:
    li 0, 0x6
    mr 3, 31
    stw 0, 0xe0(31)
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lmw 26, 0x8(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

