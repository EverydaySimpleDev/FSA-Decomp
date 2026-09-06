# fn_8044C1CC (dtor) + fn_8044C260 (real ctor, direct vtable-install) - a
# SEVENTEENTH sibling of the "weapon/joint-attachment resolver" family
# (vtable lbl_804B1D20, short variant). Reuses the shared lbl_804AF86C
# component; needs -mgekko (uses psq_l/psq_st).
.section extab, "a"
.balign 4
.global etb_800114CC
etb_800114CC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800114CC, 8

.global etb_800114D4
etb_800114D4:
    .4byte 0x184A0000
    .4byte 0x00000048
    .4byte 0x00000018
    .4byte 0x00000080
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_800114D4, 40

.section extabindex, "a"
.balign 4
.global eti_8002143C
eti_8002143C:
    .4byte fn_8044C1CC
    .4byte 0x00000094
    .4byte etb_800114CC
.size eti_8002143C, 12

.global eti_80021448
eti_80021448:
    .4byte fn_8044C260
    .4byte 0x0000036C
    .4byte etb_800114D4
.size eti_80021448, 12

.text
.balign 4
.global fn_8044C1CC
.global fn_8044C260

fn_8044C1CC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820064 # beq .L_8044C248
    lis 3, lbl_804B1D20@ha
    mr 30, 27
    addi 0, 3, lbl_804B1D20@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
L_8044C200:
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044C220
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044C220:
    addi 29, 29, 0x1
    stwu 31, 0x4(30)
    cmpwi 29, 0x2
    .4byte 0x4180FFD4 # blt .L_8044C200
    li 3, 0x0
    extsh. 0, 28
    .4byte 0x906D9378 # stw r3, lbl_8053AF38@sda21(r0)
    .4byte 0x4081000C # ble .L_8044C248
    mr 3, 27
    bl dtor_80084580
L_8044C248:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044C260:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lis 4, lbl_804B1D20@ha
    mr 31, 3
    addi 0, 4, lbl_804B1D20@l
    li 3, 0x118
    stw 0, 0x0(31)
    .4byte 0x93ED9378 # stw r31, lbl_8053AF38@sda21(r0)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_8044C2A8
    bl fn_8009C4EC
L_8044C2A8:
    stw 30, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 30, 3, lbl_80529DEC@l
    lis 5, 0x110
    lis 3, lbl_80490FA0@ha
    lwz 6, 0x10(30)
    addi 4, 3, lbl_80490FA0@l
    lwz 3, 0x4(31)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_8044C2E0
    bl fn_8009C4EC
L_8044C2E0:
    stw 29, 0x8(31)
    lis 3, lbl_80490FB0@ha
    addi 4, 3, lbl_80490FB0@l
    lis 5, 0x110
    lwz 3, 0x8(31)
    lwz 6, 0x10(30)
    bl fn_8009C69C
    lwz 3, 0x8(31)
    lis 4, 0x5470
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
    lwz 3, 0x8(31)
    lis 4, 0x5470
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
    lwz 3, 0x8(31)
    lis 4, 0x5470
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x14a
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x5470
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x14a
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x5470
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 3, 0x5470
    .4byte 0xC0020E2C # lfs f0, lbl_80543DCC@sda21(r0)
    addi 6, 3, 0x3032
    li 5, 0x0
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 3, 0x5470
    .4byte 0xC0020E2C # lfs f0, lbl_80543DCC@sda21(r0)
    addi 6, 3, 0x3031
    li 5, 0x0
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x5470
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x8(31)
    li 5, 0x0
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(31)
    lis 4, 0x5470
    li 5, 0x0
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0020E30 # lfs f0, lbl_80543DD0@sda21(r0)
    lwz 12, 0x0(3)
    fmuls 31, 0, 31
    lfs 1, 0x28(30)
    lfs 0, 0x20(30)
    lwz 12, 0x18(12)
    fmr 2, 31
    fsubs 1, 1, 0
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x5470
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(31)
    lis 4, 0x5470
    li 5, 0x0
    lwz 12, 0x0(3)
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 2, 31
    lfs 1, 0x28(30)
    lfs 0, 0x20(30)
    lwz 12, 0x18(12)
    fsubs 1, 1, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lis 3, 0x6c6b
    stw 0, 0xc(1)
    addi 6, 3, 0x3031
    li 5, 0x5062
    stw 0, 0x14(1)
    lwz 3, 0x8(31)
    stw 0, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 0, 0x0
    .4byte 0xC0020E28 # lfs f0, lbl_80543DC8@sda21(r0)
    stb 0, 0x18(31)
    mr 3, 31
    stfs 0, 0x14(31)
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

