# fn_8043711C (dtor) + fn_804372C4 (real ctor, direct vtable-install) - a
# THIRD sibling of the "weapon/joint-attachment resolver" class family
# (vtable lbl_804B16A8, see extab_80431c38.s/extab_804337b0.s for the first
# two siblings). Reuses the same shared lbl_804AF86C component class. Not
# field-mapped to the same depth as the first sibling - landed on the
# strength of the directly-observed vtable-install instruction.
.section extab, "a"
.balign 4
.global etb_80010D1C
etb_80010D1C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80010D1C, 8

.global etb_80010D24
etb_80010D24:
    .4byte 0x180A0000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_80010D24, 24

.section extabindex, "a"
.balign 4
.global eti_80020D64
eti_80020D64:
    .4byte fn_8043711C
    .4byte 0x000001A8
    .4byte etb_80010D1C
.size eti_80020D64, 12

.global eti_80020D70
eti_80020D70:
    .4byte fn_804372C4
    .4byte 0x000006EC
    .4byte etb_80010D24
.size eti_80020D70, 12

.text
.balign 4
.global fn_8043711C
.global fn_804372C4

fn_8043711C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820178 # beq .L_804372AC
    lis 3, lbl_804B16A8@ha
    addi 0, 3, lbl_804B16A8@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80437164
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80437164:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043718C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043718C:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804371B4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804371B4:
    li 0, 0x0
    stw 0, 0xc(30)
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804371DC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804371DC:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80437204
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80437204:
    li 0, 0x0
    stw 0, 0x14(30)
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043722C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043722C:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x18(30)
    li 27, 0x0
L_8043723C:
    lwz 3, 0x1c(28)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_80437264
    .4byte 0x41820018 # beq .L_80437260
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80437260:
    stw 29, 0x1c(28)
L_80437264:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x6
    .4byte 0x4180FFCC # blt .L_8043723C
    lwz 3, 0x34(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80437294
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80437294:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x34(30)
    .4byte 0x4081000C # ble .L_804372AC
    mr 3, 30
    bl dtor_80084580
L_804372AC:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804372C4:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_804B16A8@ha
    stw 0, 0x34(1)
    addi 0, 4, lbl_804B16A8@l
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, lbl_8048F598@ha
    stw 30, 0x28(1)
    addi 30, 3, lbl_8048F598@l
    li 3, 0x118
    stw 29, 0x24(1)
    stw 0, 0x0(31)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_80437308
    bl fn_8009C4EC
L_80437308:
    stw 29, 0x4(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_8043733C
    lis 4, lbl_80529DEC@ha
    lwz 3, 0x4(31)
    addi 5, 4, lbl_80529DEC@l
    addi 4, 30, 0x0
    lwz 6, 0x28(5)
    lis 5, 0x110
    bl fn_8009C69C
    .4byte 0x48000020 # b .L_80437358
L_8043733C:
    lis 4, lbl_80529DEC@ha
    lwz 3, 0x4(31)
    addi 5, 4, lbl_80529DEC@l
    addi 4, 30, 0xc
    lwz 6, 0x28(5)
    lis 5, 0x110
    bl fn_8009C69C
L_80437358:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80437374
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80437374:
    stw 3, 0x8(31)
    lis 5, 0x626b
    lis 4, 0x506f
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x7062
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804373C4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804373C4:
    stw 3, 0xc(31)
    lis 3, 0x6172
    addi 6, 3, 0x3031
    li 5, 0x50
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80437410
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80437410:
    stw 3, 0x10(31)
    lis 3, 0x6172
    addi 6, 3, 0x3032
    li 5, 0x50
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x10(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043745C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8043745C:
    stw 3, 0x14(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x14(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804374AC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804374AC:
    stw 3, 0x18(31)
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
    lwz 3, 0x18(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804374FC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804374FC:
    stw 3, 0x1c(31)
    lis 3, 0x6261
    addi 6, 3, 0x3031
    li 5, 0x5072
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x1c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80437548
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80437548:
    stw 3, 0x20(31)
    lis 3, 0x6261
    addi 6, 3, 0x3032
    li 5, 0x5072
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x20(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80437594
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80437594:
    stw 3, 0x24(31)
    lis 3, 0x6261
    addi 6, 3, 0x3033
    li 5, 0x5072
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x24(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804375E0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804375E0:
    stw 3, 0x28(31)
    lis 3, 0x6261
    addi 6, 3, 0x3034
    li 5, 0x5072
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(31)
    bl fn_80402F04
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80437630
    li 0, 0x0
    stw 0, 0x30(31)
    stw 0, 0x2c(31)
    .4byte 0x4800009C # b .L_804376C8
L_80437630:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043764C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8043764C:
    stw 3, 0x2c(31)
    lis 3, 0x6261
    addi 6, 3, 0x3035
    li 5, 0x5072
    lwz 3, 0x4(31)
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
    .4byte 0x41820010 # beq .L_80437698
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80437698:
    stw 3, 0x30(31)
    lis 3, 0x6261
    addi 6, 3, 0x3036
    li 5, 0x5072
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x30(31)
    bl fn_80402F04
L_804376C8:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804376E4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804376E4:
    stw 3, 0x34(31)
    lis 5, 0x6262
    lis 4, 0x5074
    lwz 3, 0x4(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6f70
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    bl fn_80402F04
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x1c
    lwz 0, 0x8(5)
    stw 0, 0x38(31)
    bl fn_804030C4
    mr 0, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    mr 4, 0
    bl fn_80440D78
    lis 3, 0x5449
    addi 4, 30, 0x30
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    lwz 3, 0x4(31)
    lis 4, 0x5461
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x5471
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x5461
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x5471
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_804378D8
    lwz 3, 0x4(31)
    lis 4, 0x5461
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3033
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x5471
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3033
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
L_804378D8:
    lwz 3, 0x4(31)
    lis 4, 0x6172
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009611C
    fctiwz 0, 1
    lis 3, 0x6172
    addi 6, 3, 0x3032
    li 5, 0x50
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    sth 0, 0x62(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009611C
    fctiwz 1, 1
    .4byte 0xC0020C38 # lfs f0, lbl_80543BD8@sda21(r0)
    li 0, 0x0
    mr 3, 31
    stfd 1, 0x10(1)
    lwz 4, 0x14(1)
    sth 4, 0x64(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    sth 0, 0x58(31)
    sth 0, 0x5a(31)
    sth 0, 0x5c(31)
    sth 0, 0x5e(31)
    sth 0, 0x60(31)
    sth 0, 0x66(31)
    stw 0, 0x54(31)
    stfs 0, 0x48(31)
    stb 0, 0x68(31)
    stfs 0, 0x4c(31)
    stb 0, 0x69(31)
    stfs 0, 0x50(31)
    stb 0, 0x6a(31)
    stb 0, 0x6b(31)
    stb 0, 0x6c(31)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

