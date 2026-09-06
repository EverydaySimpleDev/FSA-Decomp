# A THIRTEENTH sibling of the "weapon/joint-attachment resolver" family
# (vtable lbl_804B1C58, dtor fn_804484C8, real ctor fn_804485C4). Diffed
# against extab_80447618.s's 5-function group and confirmed INSTRUCTION-
# IDENTICAL (down to the branch structure) except for per-sibling private
# data-table symbols (lbl_804906A8 vs lbl_80490410, etc.) - the same class
# implementation as that group, just a separate instance/private-data set.
# See extab_80447618.s for the behavioral description.
.section extab, "a"
.balign 4
.global etb_80011384
etb_80011384:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80011384, 8

.global etb_8001138C
etb_8001138C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001138C, 8

.global etb_80011394
etb_80011394:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80011394, 8

.global etb_8001139C
etb_8001139C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8001139C, 8

.global etb_800113A4
etb_800113A4:
    .4byte 0x20080000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_800113A4, 24

.section extabindex, "a"
.balign 4
.global eti_800212C8
eti_800212C8:
    .4byte fn_80447FAC
    .4byte 0x00000340
    .4byte etb_80011384
.size eti_800212C8, 12

.global eti_800212D4
eti_800212D4:
    .4byte fn_804482EC
    .4byte 0x00000048
    .4byte etb_8001138C
.size eti_800212D4, 12

.global eti_800212E0
eti_800212E0:
    .4byte fn_80448334
    .4byte 0x00000194
    .4byte etb_80011394
.size eti_800212E0, 12

.global eti_800212EC
eti_800212EC:
    .4byte fn_804484C8
    .4byte 0x000000FC
    .4byte etb_8001139C
.size eti_800212EC, 12

.global eti_800212F8
eti_800212F8:
    .4byte fn_804485C4
    .4byte 0x00000158
    .4byte etb_800113A4
.size eti_800212F8, 12

.text
.balign 4
.global fn_80447FAC
.global fn_804482EC
.global fn_80448334
.global fn_804484C8
.global fn_804485C4

fn_80447FAC:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804906A8@ha
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 28, 3
    addi 30, 4, lbl_804906A8@l
    li 29, 0x0
    mr 31, 28
L_80447FD0:
    cmpwi 29, 0x2
    .4byte 0x40800038 # bge .L_8044800C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x8(31)
    .4byte 0xC0220E00 # lfs f1, lbl_80543DA0@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x18(31)
    .4byte 0xC0220E00 # lfs f1, lbl_80543DA0@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000034 # b .L_8044803C
L_8044800C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x8(31)
    .4byte 0xC0220E00 # lfs f1, lbl_80543DA0@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x18(31)
    .4byte 0xC0220E00 # lfs f1, lbl_80543DA0@sda21(r0)
    bl fn_80402E08
L_8044803C:
    li 0, 0x1
    lbz 3, 0x2c(28)
    slw 0, 0, 29
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820078 # beq .L_804480C8
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_80448138
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x68(30)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(30)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000074 # b .L_80448138
L_804480C8:
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_80448138
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x68(30)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(30)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80448138:
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820160 # beq .L_804482BC
    addi 4, 29, 0x28
    lbzx 0, 28, 4
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_80448178
    li 0, 0x63
    stbx 0, 28, 4
L_80448178:
    lis 3, 0x6666
    lbzx 7, 28, 4
    addi 0, 3, 0x6667
    lis 3, lbl_804B1C30@ha
    mulhw 0, 0, 7
    lis 5, 0x5449
    addi 4, 3, lbl_804B1C30@l
    addi 3, 5, 0x4d47
    srawi 5, 0, 2
    srwi 6, 5, 31
    srawi 0, 0, 2
    add 6, 5, 6
    srwi 5, 0, 31
    mulli 6, 6, 0xa
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    subf 26, 6, 7
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(28)
    mr 27, 0
    lwz 5, 0x48(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lwz 5, 0x50(30)
    lwz 12, 0x0(3)
    lwz 6, 0x54(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1C30@ha
    lis 5, 0x5449
    slwi 0, 26, 2
    addi 4, 3, lbl_804B1C30@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(28)
    lwz 5, 0x58(30)
    lwz 12, 0x0(3)
    lwz 6, 0x5c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lwz 5, 0x60(30)
    lwz 12, 0x0(3)
    lwz 6, 0x64(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_804482BC:
    addi 29, 29, 0x1
    addi 30, 30, 0x70
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FD04 # blt .L_80447FD0
    li 0, 0x0
    stb 0, 0x2c(28)
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804482EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220E00 # lfs f1, lbl_80543DA0@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80448334:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_804906A8@ha
    lis 4, lbl_804B1C30@ha
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    addi 29, 5, lbl_804906A8@l
    mr 26, 3
    addi 31, 4, lbl_804B1C30@l
    li 27, 0x0
    lis 30, 0x5449
L_80448360:
    li 0, 0x1
    lbz 4, 0x2c(26)
    slw 0, 0, 27
    addi 3, 30, 0x4d47
    clrlwi 0, 0, 24
    andc 0, 4, 0
    stb 0, 0x2c(26)
    lwz 4, 0x0(31)
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(26)
    mr 28, 0
    lwz 5, 0x48(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4c(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x50(29)
    lwz 12, 0x0(3)
    lwz 6, 0x54(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x58(29)
    lwz 12, 0x0(3)
    lwz 6, 0x5c(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x60(29)
    lwz 12, 0x0(3)
    lwz 6, 0x64(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x30(29)
    lwz 12, 0x0(3)
    lwz 6, 0x34(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x68(29)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(29)
    lwz 3, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    li 0, 0x0
    cmpwi 27, 0x4
    stb 0, 0xb0(3)
    addi 29, 29, 0x70
    .4byte 0x4180FEB0 # blt .L_80448360
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804484C8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200B4 # beq .L_804485A0
    lis 3, lbl_804B1C58@ha
    addi 0, 3, lbl_804B1C58@l
    stw 0, 0x0(28)
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044851C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044851C:
    li 0, 0x0
    mr 31, 28
    stw 0, 0x4(28)
    li 30, 0x0
L_8044852C:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044854C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044854C:
    li 0, 0x0
    stw 0, 0x8(31)
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80448574
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80448574:
    addi 30, 30, 0x1
    li 3, 0x0
    cmpwi 30, 0x4
    stw 3, 0x18(31)
    addi 31, 31, 0x4
    .4byte 0x4180FFA4 # blt .L_8044852C
    extsh. 0, 29
    .4byte 0x906D9350 # stw r3, lbl_8053AF10@sda21(r0)
    .4byte 0x4081000C # ble .L_804485A0
    mr 3, 28
    bl dtor_80084580
L_804485A0:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804485C4:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804B1C58@ha
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B1C58@l
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9350 # stw r31, lbl_8053AF10@sda21(r0)
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_80448608
    bl fn_8009C4EC
L_80448608:
    lis 3, lbl_80529DEC@ha
    stw 28, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_80490930@ha
    lwz 6, 0x10(5)
    addi 4, 3, lbl_80490930@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    lis 3, lbl_804906A8@ha
    mr 30, 31
    addi 29, 3, lbl_804906A8@l
    li 28, 0x0
L_8044863C:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80448658
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80448658:
    stw 3, 0x8(30)
    lwz 5, 0x30(29)
    lwz 3, 0x4(31)
    lwz 6, 0x34(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804486A0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804486A0:
    stw 3, 0x18(30)
    lwz 5, 0x68(29)
    lwz 3, 0x4(31)
    lwz 6, 0x6c(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x18(30)
    bl fn_80402F04
    addi 28, 28, 0x1
    addi 29, 29, 0x70
    cmpwi 28, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FF60 # blt .L_8044863C
    li 0, 0x0
    mr 3, 31
    stb 0, 0x28(31)
    stb 0, 0x29(31)
    stb 0, 0x2a(31)
    stb 0, 0x2b(31)
    stb 0, 0x2c(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

