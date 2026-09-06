# fn_80454CD8 (dtor) + fn_80454DEC (real ctor, direct vtable-install) - a
# NINETEENTH sibling of the "weapon/joint-attachment resolver" family
# (vtable lbl_804B1DA8). Reuses the shared lbl_804AF86C component; needs
# -mgekko (uses psq_l/psq_st).
.section extab, "a"
.balign 4
.global etb_80011594
etb_80011594:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80011594, 8

.global etb_8001159C
etb_8001159C:
    .4byte 0x288A0000
    .4byte 0x00000048
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001B
    .4byte dtor_80084580
.size etb_8001159C, 24

.section extabindex, "a"
.balign 4
.global eti_80021520
eti_80021520:
    .4byte fn_80454CD8
    .4byte 0x00000114
    .4byte etb_80011594
.size eti_80021520, 12

.global eti_8002152C
eti_8002152C:
    .4byte fn_80454DEC
    .4byte 0x000005FC
    .4byte etb_8001159C
.size eti_8002152C, 12

.text
.balign 4
.global fn_80454CD8
.global fn_80454DEC

fn_80454CD8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x418200E4 # beq .L_80454DD4
    lis 3, lbl_804B1DA8@ha
    addi 0, 3, lbl_804B1DA8@l
    stw 0, 0x0(27)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    lwz 3, 0x4(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80454D28
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80454D28:
    li 0, 0x0
    stw 0, 0x4(27)
    lwz 3, 0x8(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80454D50
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80454D50:
    li 0, 0x0
    stw 0, 0x8(27)
    lwz 3, 0xc(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80454D78
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80454D78:
    li 31, 0x0
    mr 30, 27
    stw 31, 0xc(27)
    li 29, 0x0
L_80454D88:
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80454DA8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80454DA8:
    addi 29, 29, 0x1
    stw 31, 0x10(30)
    cmpwi 29, 0x3
    addi 30, 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80454D88
    li 3, 0x0
    extsh. 0, 28
    .4byte 0x906D9388 # stw r3, lbl_8053AF48@sda21(r0)
    .4byte 0x4081000C # ble .L_80454DD4
    mr 3, 27
    bl dtor_80084580
L_80454DD4:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80454DEC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    lis 4, lbl_804B1DA8@ha
    mr 29, 3
    addi 0, 4, lbl_804B1DA8@l
    li 3, 0x118
    stw 0, 0x0(29)
    .4byte 0x93AD9388 # stw r29, lbl_8053AF48@sda21(r0)
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_80454E34
    bl fn_8009C4EC
L_80454E34:
    lis 3, lbl_80529DEC@ha
    stw 27, 0x4(29)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_8049149C@ha
    lwz 6, 0x4c(5)
    addi 4, 3, lbl_8049149C@l
    lwz 3, 0x4(29)
    lis 5, 0x110
    bl fn_8009C69C
    lwz 3, 0x4(29)
    lis 5, 0x6e63
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6b65
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x6e63
    lis 3, 0x50
    stfs 0, 0x24(29)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6b65
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x6e63
    lis 3, 0x50
    stfs 0, 0x30(29)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6b65
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x6e63
    lis 3, 0x50
    stfs 0, 0x3c(29)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6b65
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, lbl_80491470@ha
    addi 4, 3, lbl_80491470@l
    stfs 0, 0x48(29)
    lwz 5, 0x0(4)
    lwz 3, 0x4(29)
    lwz 6, 0x4(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 4, lbl_80491470@ha
    lwz 3, 0x4(29)
    lfs 0, 0x24(29)
    lwz 12, 0x0(3)
    lwzu 5, lbl_80491470@l(4)
    fsubs 31, 1, 0
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x8(3)
    lis 4, lbl_80491470@ha
    lwz 3, 0x4(29)
    addi 30, 4, lbl_80491470@l
    lfs 0, 0x3c(29)
    lwz 12, 0x0(3)
    fsubs 30, 0, 1
    lwz 5, 0x8(30)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(30)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 5, 0x8(30)
    fsubs 0, 0, 31
    lwz 6, 0xc(30)
    stfs 0, 0x28(29)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 5, 0x8(30)
    stfs 0, 0x34(29)
    lwz 6, 0xc(30)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x8(3)
    lwz 5, 0x8(30)
    fadds 0, 30, 0
    lwz 6, 0xc(30)
    stfs 0, 0x40(29)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, lbl_80491470@ha
    addi 30, 3, lbl_80491470@l
    stfs 0, 0x4c(29)
    lwz 5, 0x10(30)
    lwz 3, 0x4(29)
    lwz 6, 0x14(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 5, 0x10(30)
    fsubs 0, 0, 31
    lwz 6, 0x14(30)
    stfs 0, 0x2c(29)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 5, 0x10(30)
    stfs 0, 0x38(29)
    lwz 6, 0x14(30)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x8(3)
    lwz 5, 0x10(30)
    fadds 0, 30, 0
    lwz 6, 0x14(30)
    stfs 0, 0x44(29)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    li 3, 0x2c
    stfs 0, 0x50(29)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804550F8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804550F8:
    stw 3, 0x8(29)
    lis 3, 0x6c61
    addi 6, 3, 0x636b
    li 5, 0x5062
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(29)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80455144
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80455144:
    stw 3, 0xc(29)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(29)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(29)
    bl fn_80402F04
    lis 3, lbl_80491470@ha
    mr 30, 29
    addi 31, 3, lbl_80491470@l
    li 27, 0x0
    mr 28, 31
L_8045518C:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804551A8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804551A8:
    stw 3, 0x10(30)
    lwz 5, 0x0(28)
    lwz 3, 0x4(29)
    lwz 6, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x10(30)
    bl fn_80402F04
    addi 27, 27, 0x1
    addi 28, 28, 0x8
    cmpwi 27, 0x3
    addi 30, 30, 0x4
    .4byte 0x4180FFA8 # blt .L_8045518C
    li 3, 0x0
    li 0, 0x2
    sth 3, 0x1c(29)
    li 4, 0x0
    sth 0, 0x1e(29)
    sth 3, 0x20(29)
    lwz 3, 0x8(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    li 0, 0x0
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC0420EA0 # lfs f2, lbl_80543E40@sda21(r0)
    lwz 3, 0xc(29)
    bl fn_80402E08
    lwz 3, 0xc(29)
    li 0, 0x0
    li 30, 0x0
    sth 0, 0x22(3)
L_80455244:
    lha 0, 0x1c(29)
    cmpw 30, 0
    .4byte 0x408200B0 # bne .L_804552FC
    li 4, 0xff
    li 3, 0xed
    li 0, 0xa0
    stb 4, 0x20(1)
    lwz 5, 0x0(31)
    stb 3, 0x21(1)
    lwz 6, 0x4(31)
    stb 0, 0x22(1)
    stb 4, 0x23(1)
    lwz 0, 0x20(1)
    stw 0, 0x24(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 4, 0x27
    li 3, 0x10
    stb 4, 0x18(1)
    lwz 5, 0x0(31)
    stb 3, 0x19(1)
    lwz 6, 0x4(31)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 0, 0x1c(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_804553A0
L_804552FC:
    li 5, 0xa7
    li 4, 0x4c
    li 3, 0x2a
    li 0, 0xff
    stb 5, 0x10(1)
    lwz 5, 0x0(31)
    stb 4, 0x11(1)
    lwz 6, 0x4(31)
    stb 3, 0x12(1)
    stb 0, 0x13(1)
    lwz 0, 0x10(1)
    stw 0, 0x14(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(31)
    stb 0, 0x8(1)
    lwz 6, 0x4(31)
    stb 0, 0x9(1)
    stb 0, 0xa(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
L_804553A0:
    addi 30, 30, 0x1
    addi 31, 31, 0x8
    cmpwi 30, 0x3
    .4byte 0x4180FE98 # blt .L_80455244
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x55(29)
    mr 3, 29
    stb 0, 0x54(29)
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

