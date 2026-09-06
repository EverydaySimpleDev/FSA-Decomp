# fn_804337B0 (dtor) + fn_8043395C (real ctor, sets this->vtable directly) -
# a SIBLING of the "weapon/joint-attachment resolver" class landed in
# extab_80431c38.s (vtable lbl_804B1668, own field layout - NOT identical
# offsets, e.g. slots at this+0x4/0x8 (2-elem loop), this+0x10/0x14/0x18/0x1c
# (4-elem loop), this+0x28/0x2c/0x30 (3-elem loop), this+0x34/0xc/0x3c...).
# Reuses the SAME shared lbl_804AF86C component class as its sibling. Not
# traced field-by-field to the same depth (out of scope) - landed on the
# strength of the real, directly-observed vtable-install instruction plus
# the dtor/ctor virtual-release-count cross-check.
.section extab, "a"
.balign 4
.global etb_80010C94
etb_80010C94:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80010C94, 8

.global etb_80010C9C
etb_80010C9C:
    .4byte 0x208A0000
    .4byte 0x00000090
    .4byte 0x00000020
    .4byte 0x00000410
    .4byte 0x00000028
    .4byte 0x000006DC
    .4byte 0x00000030
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_80010C9C, 56

.section extabindex, "a"
.balign 4
.global eti_80020CE0
eti_80020CE0:
    .4byte fn_804337B0
    .4byte 0x000001AC
    .4byte etb_80010C94
.size eti_80020CE0, 12

.global eti_80020CEC
eti_80020CEC:
    .4byte fn_8043395C
    .4byte 0x000007F0
    .4byte etb_80010C9C
.size eti_80020CEC, 12

.text
.balign 4
.global fn_804337B0
.global fn_8043395C

fn_804337B0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x4182017C # beq .L_80433944
    lis 3, lbl_804B1668@ha
    mr 28, 30
    addi 0, 3, lbl_804B1668@l
    li 27, 0x0
    stw 0, 0x0(30)
L_804337E0:
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80433800
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80433800:
    li 0, 0x0
    stw 0, 0x4(28)
    lwz 3, 0x10(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80433828
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80433828:
    addi 27, 27, 0x1
    li 29, 0x0
    cmpwi 27, 0x2
    stw 29, 0x10(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFA4 # blt .L_804337E0
    li 27, 0x0
    mr 28, 30
L_80433848:
    lwz 3, 0x18(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80433868
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80433868:
    addi 27, 27, 0x1
    stw 29, 0x18(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_80433848
    mr 28, 30
    li 27, 0x0
    li 29, 0x0
L_80433888:
    lwz 3, 0x28(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804338A8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804338A8:
    addi 27, 27, 0x1
    stw 29, 0x28(28)
    cmpwi 27, 0x3
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_80433888
    lwz 3, 0x34(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804338DC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804338DC:
    li 0, 0x0
    stw 0, 0x34(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80433904
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80433904:
    li 0, 0x0
    stw 0, 0xc(30)
    lwz 3, 0x3c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043392C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043392C:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x3c(30)
    .4byte 0x4081000C # ble .L_80433944
    mr 3, 30
    bl dtor_80084580
L_80433944:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8043395C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lis 4, lbl_804B1668@ha
    mr 31, 3
    addi 0, 4, lbl_804B1668@l
    lis 3, fn_8003B2CC@ha
    addi 4, 3, fn_8003B2CC@l
    stw 0, 0x0(31)
    lis 3, lbl_8048F438@ha
    li 5, 0x0
    addi 30, 3, lbl_8048F438@l
    li 6, 0xc
    addi 3, 31, 0x40
    li 7, 0x2
    bl __construct_array
    lis 4, fn_8003B2CC@ha
    addi 3, 31, 0x58
    addi 4, 4, fn_8003B2CC@l
    li 5, 0x0
    li 6, 0xc
    li 7, 0x2
    bl __construct_array
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_804339EC
    bl fn_8009C4EC
L_804339EC:
    stw 29, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 29, 3, lbl_80529DEC@l
    addi 4, 30, 0xf8
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x20(29)
    bl fn_8009C69C
    lwz 4, 0x20(29)
    addi 3, 30, 0x10c
    bl fn_800832A0
    bl fn_800A4994
    stw 3, 0x10(31)
    lwz 3, 0x4(31)
    lwz 4, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80433A54
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433A54:
    stw 3, 0x18(31)
    lis 3, 0x7370
    addi 6, 3, 0x3031
    li 5, 0x50
    lwz 3, 0x4(31)
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
    .4byte 0x41820010 # beq .L_80433AA0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433AA0:
    stw 3, 0x1c(31)
    lis 3, 0x7370
    addi 6, 3, 0x3032
    li 5, 0x50
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
    .4byte 0x41820010 # beq .L_80433AEC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433AEC:
    stw 3, 0x20(31)
    lis 3, 0x7370
    addi 6, 3, 0x3033
    li 5, 0x50
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
    .4byte 0x41820010 # beq .L_80433B38
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433B38:
    stw 3, 0x24(31)
    lis 3, 0x7370
    addi 6, 3, 0x3034
    li 5, 0x50
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
    .4byte 0x41820010 # beq .L_80433B84
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433B84:
    stw 3, 0x34(31)
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
    lwz 3, 0x34(31)
    bl fn_80402F04
    lwz 5, 0x34(31)
    lis 4, 0x7461
    lis 3, 0x4e
    li 0, 0x0
    lwz 7, 0x4(5)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    stb 0, 0xb0(7)
    lwz 7, 0x20(31)
    lwz 3, 0x4(31)
    lwz 4, 0x4(7)
    lwz 12, 0x0(3)
    lfs 1, 0x28(4)
    lfs 0, 0x20(4)
    lwz 12, 0x3c(12)
    fsubs 30, 1, 0
    lfs 31, 0x10(7)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 4, 0x7461
    lis 3, 0x4e
    .4byte 0xC0020C18 # lfs f0, lbl_80543BB8@sda21(r0)
    fadds 1, 31, 1
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    fnmsubs 0, 30, 0, 1
    stfs 0, 0x40(31)
    lwz 7, 0x20(31)
    lwz 3, 0x4(31)
    lwz 4, 0x4(7)
    lwz 12, 0x0(3)
    lfs 1, 0x2c(4)
    lfs 0, 0x24(4)
    lwz 12, 0x3c(12)
    fsubs 31, 1, 0
    lfs 30, 0x14(7)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x7461
    lis 3, 0x4e
    .4byte 0xC0220C18 # lfs f1, lbl_80543BB8@sda21(r0)
    fadds 2, 30, 0
    .4byte 0xC0020C08 # lfs f0, lbl_80543BA8@sda21(r0)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    fnmsubs 1, 31, 1, 2
    stfs 1, 0x44(31)
    stfs 0, 0x48(31)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    fsubs 0, 1, 0
    stfs 0, 0x70(31)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 0, 1, 0
    stfs 0, 0x78(31)
    lwz 3, 0x4(31)
    lwz 4, 0x18(31)
    lwz 12, 0x0(3)
    lfs 30, 0x8(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x7461
    lis 3, 0x4e
    fadds 0, 30, 0
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    stfs 0, 0x58(31)
    lwz 3, 0x4(31)
    lwz 4, 0x18(31)
    lwz 12, 0x0(3)
    lfs 30, 0xc(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    li 3, 0x118
    .4byte 0xC0020C08 # lfs f0, lbl_80543BA8@sda21(r0)
    fadds 1, 30, 1
    stfs 1, 0x5c(31)
    stfs 0, 0x60(31)
    lwz 4, 0x18(31)
    lwz 4, 0x4(4)
    lfs 1, 0x28(4)
    lfs 0, 0x20(4)
    fsubs 0, 1, 0
    stfs 0, 0x80(31)
    lwz 4, 0x18(31)
    lwz 4, 0x4(4)
    lfs 1, 0x2c(4)
    lfs 0, 0x24(4)
    fsubs 0, 1, 0
    stfs 0, 0x88(31)
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_80433D6C
    bl fn_8009C4EC
L_80433D6C:
    stw 28, 0x8(31)
    addi 4, 30, 0x120
    lis 5, 0x110
    lwz 3, 0x8(31)
    lwz 6, 0x20(29)
    bl fn_8009C69C
    lwz 4, 0x20(29)
    addi 3, 30, 0x138
    bl fn_800832A0
    bl fn_800A4994
    stw 3, 0x14(31)
    lwz 3, 0x8(31)
    lwz 4, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80433DCC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433DCC:
    stw 3, 0x28(31)
    lis 3, 0x7370
    addi 6, 3, 0x3031
    li 5, 0x50
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_80433E18
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433E18:
    stw 3, 0x2c(31)
    lis 3, 0x7370
    addi 6, 3, 0x3033
    li 5, 0x50
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_80433E64
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80433E64:
    stw 3, 0x30(31)
    lis 3, 0x7370
    addi 6, 3, 0x3034
    li 5, 0x50
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x30(31)
    bl fn_80402F04
    lwz 8, 0x2c(31)
    lis 5, 0x7461
    lwz 3, 0x8(31)
    lis 4, 0x4e
    lwz 7, 0x4(8)
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lfs 1, 0x28(7)
    lfs 0, 0x20(7)
    lwz 12, 0x3c(12)
    fsubs 31, 1, 0
    lfs 30, 0x10(8)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 4, 0x7461
    lis 3, 0x4e
    .4byte 0xC0020C18 # lfs f0, lbl_80543BB8@sda21(r0)
    fadds 1, 30, 1
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    fnmsubs 0, 31, 0, 1
    stfs 0, 0x4c(31)
    lwz 7, 0x2c(31)
    lwz 3, 0x8(31)
    lwz 4, 0x4(7)
    lwz 12, 0x0(3)
    lfs 1, 0x2c(4)
    lfs 0, 0x24(4)
    lwz 12, 0x3c(12)
    fsubs 31, 1, 0
    lfs 30, 0x14(7)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x7461
    lis 3, 0x4e
    .4byte 0xC0220C18 # lfs f1, lbl_80543BB8@sda21(r0)
    fadds 2, 30, 0
    .4byte 0xC0020C08 # lfs f0, lbl_80543BA8@sda21(r0)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    fnmsubs 1, 31, 1, 2
    stfs 1, 0x50(31)
    stfs 0, 0x54(31)
    lwz 3, 0x2c(31)
    lwz 3, 0x4(3)
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    fsubs 0, 1, 0
    stfs 0, 0x74(31)
    lwz 3, 0x2c(31)
    lwz 3, 0x4(3)
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 0, 1, 0
    stfs 0, 0x7c(31)
    lwz 3, 0x8(31)
    lwz 4, 0x28(31)
    lwz 12, 0x0(3)
    lfs 30, 0x8(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x7461
    lis 3, 0x4e
    fadds 0, 30, 0
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    stfs 0, 0x64(31)
    lwz 3, 0x8(31)
    lwz 4, 0x28(31)
    lwz 12, 0x0(3)
    lfs 30, 0xc(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    li 3, 0x118
    .4byte 0xC0020C08 # lfs f0, lbl_80543BA8@sda21(r0)
    fadds 1, 30, 1
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 4, 0x28(31)
    lwz 4, 0x4(4)
    lfs 1, 0x28(4)
    lfs 0, 0x20(4)
    fsubs 0, 1, 0
    stfs 0, 0x84(31)
    lwz 4, 0x28(31)
    lwz 4, 0x4(4)
    lfs 1, 0x2c(4)
    lfs 0, 0x24(4)
    fsubs 0, 1, 0
    stfs 0, 0x8c(31)
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_80434038
    bl fn_8009C4EC
L_80434038:
    stw 28, 0xc(31)
    addi 4, 30, 0x150
    lis 5, 0x110
    lwz 3, 0xc(31)
    lwz 6, 0x20(29)
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043406C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8043406C:
    stw 3, 0x3c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0xc(31)
    addi 6, 5, 0x3030
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x3c(31)
    bl fn_80402F04
    li 4, 0x0
    lis 3, 0x1
    stw 4, 0x90(31)
    subi 0, 3, 0x1
    addi 29, 30, 0x0
    li 30, 0x0
    stw 4, 0x94(31)
    sth 4, 0x9e(31)
    stb 4, 0xa2(31)
    stb 4, 0xa3(31)
    sth 4, 0x9c(31)
    sth 0, 0xa0(31)
    stb 4, 0xa4(31)
    stb 4, 0xa5(31)
    stw 4, 0x98(31)
    stb 4, 0xac(31)
L_804340E0:
    lwz 3, 0xc(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0xa6
    lbz 3, 0xb2(3)
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x6
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_804340E0
    mr 3, 31
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x44(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

