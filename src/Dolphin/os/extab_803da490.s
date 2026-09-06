# 901KB-gap non-actor manager block: 2 function(s), 1,000 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000FB64
etb_8000FB64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000FB64, 8

.global etb_8000FB6C
etb_8000FB6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FB6C, 8

.section extabindex, "a"
.balign 4
.global eti_8001FA08
eti_8001FA08:
    .4byte fn_803DA490
    .4byte 0x00000224
    .4byte etb_8000FB64
.size eti_8001FA08, 12

.global eti_8001FA14
eti_8001FA14:
    .4byte fn_803DA6B4
    .4byte 0x000001C4
    .4byte etb_8000FB6C
.size eti_8001FA14, 12

.text
.balign 4
.global fn_803DA490
.global fn_803DA6B4

fn_803DA490:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80528268@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80528268@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA4E0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_803DA4E0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA518
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_803DA518:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA550
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_803DA550:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA588
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_803DA588:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA5C0
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_803DA5C0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA5F8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_803DA5F8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA630
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_803DA630:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA668
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_803DA668:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DA6A0
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_803DA6A0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803DA6B4:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC0020610 # lfs f0, lbl_805435B0@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stfs 0, 0x18(3)
    lbz 0, 0x20(3)
    cmplwi 0, 0x0
    .4byte 0x41820178 # beq .L_803DA850
    lha 3, 0x1c(31)
    addi 0, 3, 0x1
    sth 0, 0x1c(31)
    lha 3, 0x1c(31)
    cmpwi 3, 0x1a
    .4byte 0x41810054 # bgt .L_803DA744
    cmpwi 3, 0xd
    subi 0, 3, 0xd
    .4byte 0x40800008 # bge .L_803DA704
    subfic 0, 3, 0xd
L_803DA704:
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8420628 # lfd f2, lbl_805435C8@sda21(r0)
    .4byte 0xC0620618 # lfs f3, lbl_805435B8@sda21(r0)
    .4byte 0xC002061C # lfs f0, lbl_805435BC@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0820614 # lfs f4, lbl_805435B4@sda21(r0)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 0, 1, 0
    fadds 0, 4, 0
    stfs 0, 0x18(31)
    .4byte 0x48000020 # b .L_803DA760
L_803DA744:
    .4byte 0xC0020620 # lfs f0, lbl_805435C0@sda21(r0)
    stfs 0, 0x18(31)
    lha 0, 0x1c(31)
    cmpwi 0, 0x2e
    .4byte 0x4180000C # blt .L_803DA760
    li 0, 0x0
    sth 0, 0x1c(31)
L_803DA760:
    lbz 0, 0x21(31)
    cmplwi 0, 0x1
    .4byte 0x418200DC # beq .L_803DA844
    lwz 3, 0xc(31)
    lis 4, lbl_804774A0@ha
    clrlslwi 0, 0, 24, 2
    lfs 1, 0x14(31)
    addi 4, 4, lbl_804774A0@l
    lwz 12, 0x0(3)
    lfsx 0, 4, 0
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x10(31)
    mtctr 12
    bctrl
    lbz 4, 0x1e(31)
    lis 0, 0x4330
    lwz 3, 0x8(31)
    stw 4, 0xc(1)
    lwz 12, 0x0(3)
    stw 0, 0x8(1)
    .4byte 0xC8420630 # lfd f2, lbl_805435D0@sda21(r0)
    lfd 1, 0x8(1)
    lfs 0, 0x18(31)
    fsubs 1, 1, 2
    lwz 12, 0x24(12)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    lbz 4, 0x1f(31)
    lis 0, 0x4330
    lwz 3, 0xc(31)
    stw 4, 0x1c(1)
    lwz 12, 0x0(3)
    stw 0, 0x18(1)
    .4byte 0xC8420630 # lfd f2, lbl_805435D0@sda21(r0)
    lfd 1, 0x18(1)
    lfs 0, 0x18(31)
    fsubs 1, 1, 2
    lwz 12, 0x24(12)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220610 # lfs f1, lbl_805435B0@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_803DA844:
    li 0, 0x0
    stb 0, 0x20(31)
    .4byte 0x48000018 # b .L_803DA864
L_803DA850:
    lha 0, 0x1c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_803DA864
    li 0, 0x0
    sth 0, 0x1c(31)
L_803DA864:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_803DA490

