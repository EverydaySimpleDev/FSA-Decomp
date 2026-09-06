# fn_803B6768 - helper (0x59c)
.section extab, "a"
.balign 4
.global etb_8000F504
etb_8000F504:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_8000F504, 8

.section extabindex, "a"
.balign 4
.global eti_8001F2A0
eti_8001F2A0:
    .4byte fn_803B6768
    .4byte 0x0000059C
    .4byte etb_8000F504
.size eti_8001F2A0, 12

.text
.balign 4
.global fn_803B6768

fn_803B6768:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    li 4, 0x1
    mr 27, 3
    slw 0, 4, 0
    lbz 3, 0x82(5)
    clrlwi 0, 0, 24
    li 6, 0x0
    and. 0, 3, 0
    .4byte 0x41820008 # beq .L_803B67B4
    li 6, 0x1
L_803B67B4:
    li 0, 0x1
    lbz 3, 0x82(5)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820008 # beq .L_803B67D0
    addi 6, 6, 0x1
L_803B67D0:
    li 0, 0x2
    lbz 3, 0x82(5)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820008 # beq .L_803B67EC
    addi 6, 6, 0x1
L_803B67EC:
    li 0, 0x3
    lbz 3, 0x82(5)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820008 # beq .L_803B6808
    addi 6, 6, 0x1
L_803B6808:
    cmpwi 6, 0x3
    .4byte 0x4182002C # beq .L_803B6838
    .4byte 0x40800044 # bge .L_803B6854
    cmpwi 6, 0x2
    .4byte 0x40800008 # bge .L_803B6820
    .4byte 0x48000038 # b .L_803B6854
L_803B6820:
    li 0, 0x2
    mr 3, 27
    stw 0, 0x450(27)
    stw 0, 0x454(27)
    bl fn_803B38E8
    .4byte 0x48000038 # b .L_803B686C
L_803B6838:
    li 3, 0x1
    li 0, 0x3
    stw 3, 0x450(27)
    mr 3, 27
    stw 0, 0x454(27)
    bl fn_803B42C0
    .4byte 0x4800001C # b .L_803B686C
L_803B6854:
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x450(27)
    mr 3, 27
    stw 0, 0x454(27)
    bl fn_803B5378
L_803B686C:
    lwz 3, 0x70(27)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x70(27)
    lfs 2, 0x3f4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x8c(27)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x8c(27)
    lfs 2, 0x3f8(27)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x94(27)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x94(27)
    lfs 2, 0x400(27)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x90(27)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x90(27)
    lfs 2, 0x3fc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x4c2(27)
    li 3, -0x1
    li 0, 0xff
    mr 31, 27
    stw 4, 0x440(27)
    mr 30, 27
    mr 29, 27
    li 28, 0x0
    stw 5, 0x444(27)
    stw 5, 0x448(27)
    stw 5, 0x44c(27)
    stw 5, 0x43c(27)
    stw 5, 0x438(27)
    sth 5, 0x458(27)
    sth 5, 0x45a(27)
    sth 3, 0x45c(27)
    sth 3, 0x45e(27)
    stb 5, 0x4db(27)
    stb 5, 0x4dc(27)
    stb 0, 0x4dd(27)
L_803B6954:
    li 5, 0x0
    li 0, 0x1
    stw 5, 0x320(31)
    slw 0, 0, 28
    add 6, 27, 28
    li 4, 0x3e
    stw 5, 0x350(31)
    li 3, 0xff
    clrlwi 0, 0, 24
    stw 5, 0x340(31)
    stw 5, 0x350(31)
    stw 5, 0x360(31)
    stw 5, 0x370(31)
    stw 5, 0x380(31)
    stw 5, 0x390(31)
    stw 5, 0x3a0(31)
    stw 5, 0x3b0(31)
    stb 5, 0x4ac(6)
    stw 4, 0x3c0(31)
    stw 5, 0x3d0(31)
    stw 5, 0x3e0(31)
    stb 5, 0x4b0(6)
    stb 3, 0x4b4(6)
    stb 3, 0x4b8(6)
    stb 3, 0x4bc(6)
    sth 5, 0x460(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x418200E4 # beq .L_803B6AAC
    lwz 3, 0x158(31)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 4, 0x4(4)
    fsubs 30, 1, 0
    lhz 26, 0x4(4)
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x168(27)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    xoris 3, 26, 0x8000
    lis 0, 0x4330
    .4byte 0xC0020448 # lfs f0, lbl_805433E8@sda21(r0)
    fadds 1, 1, 31
    stw 3, 0x14(1)
    .4byte 0xC042042C # lfs f2, lbl_805433CC@sda21(r0)
    stw 0, 0x10(1)
    fmadds 3, 30, 0, 1
    .4byte 0xC8220440 # lfd f1, lbl_805433E0@sda21(r0)
    lfd 0, 0x10(1)
    fmuls 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x2f0(29)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lwz 26, 0x158(31)
    lwz 4, 0x4(3)
    lwz 3, 0x168(27)
    lhz 25, 0x6(4)
    bl fn_80095FB4
    lfs 1, 0x2c(26)
    xoris 4, 25, 0x8000
    lfs 0, 0x24(26)
    lis 0, 0x4330
    lfs 2, 0x4(3)
    fsubs 1, 1, 0
    lfs 0, 0x3f0(27)
    .4byte 0xC0A2045C # lfs f5, lbl_805433FC@sda21(r0)
    .4byte 0xC0820460 # lfs f4, lbl_80543400@sda21(r0)
    fadds 1, 2, 1
    stw 4, 0x1c(1)
    .4byte 0xC0620430 # lfs f3, lbl_805433D0@sda21(r0)
    stw 0, 0x18(1)
    fadds 6, 0, 1
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    lfd 1, 0x18(1)
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    fsubs 5, 6, 5
    fsubs 1, 1, 2
    fsubs 2, 5, 4
    fmuls 2, 3, 2
    fdivs 1, 2, 1
    stfs 1, 0x2f4(29)
    stfs 0, 0x2f8(29)
L_803B6AAC:
    addi 28, 28, 0x1
    addi 30, 30, 0x2
    cmpwi 28, 0x4
    addi 29, 29, 0xc
    addi 31, 31, 0x4
    .4byte 0x4180FE94 # blt .L_803B6954
    li 5, 0x0
    lis 3, lbl_80529DEC@ha
    stb 5, 0x4c3(27)
    li 4, 0xff
    li 0, 0x4b0
    addi 3, 3, lbl_80529DEC@l
    stb 5, 0x4c4(27)
    stb 5, 0x4c5(27)
    stb 5, 0x4c6(27)
    stb 4, 0x4c8(27)
    stb 5, 0x4c7(27)
    stw 0, 0x434(27)
    lwz 5, 0x118(3)
    cmpwi 5, 0x0
    .4byte 0x40820010 # bne .L_803B6B0C
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200F8 # beq .L_803B6C00
L_803B6B0C:
    cmpwi 5, 0x1
    .4byte 0x40820018 # bne .L_803B6B28
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x418200DC # beq .L_803B6C00
L_803B6B28:
    cmpwi 5, 0x2
    .4byte 0x40820018 # bne .L_803B6B44
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x418200C0 # beq .L_803B6C00
L_803B6B44:
    cmpwi 5, 0x3
    .4byte 0x40820018 # bne .L_803B6B60
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x418200A4 # beq .L_803B6C00
L_803B6B60:
    cmpwi 5, 0x4
    .4byte 0x40820018 # bne .L_803B6B7C
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x41820088 # beq .L_803B6C00
L_803B6B7C:
    cmpwi 5, 0x5
    .4byte 0x40820018 # bne .L_803B6B98
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x4182006C # beq .L_803B6C00
L_803B6B98:
    cmpwi 5, 0x6
    .4byte 0x40820018 # bne .L_803B6BB4
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x41820050 # beq .L_803B6C00
L_803B6BB4:
    cmpwi 5, 0x7
    .4byte 0x40820018 # bne .L_803B6BD0
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_803B6C00
L_803B6BD0:
    cmpwi 5, 0xa
    .4byte 0x40820018 # bne .L_803B6BEC
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_803B6C00
L_803B6BEC:
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lbz 0, 0x237(4)
    cmplwi 0, 0x8
    .4byte 0x40820010 # bne .L_803B6C0C
L_803B6C00:
    li 0, 0x5
    stb 0, 0x4c0(27)
    .4byte 0x4800000C # b .L_803B6C14
L_803B6C0C:
    li 0, 0x2
    stb 0, 0x4c0(27)
L_803B6C14:
    li 4, 0x1
    li 0, 0x80
    stb 4, 0x4c1(27)
    stw 0, 0x440(27)
    lwz 0, 0x118(3)
    cmpwi 0, 0x7
    .4byte 0x40820028 # bne .L_803B6C54
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_803B6C54
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    .4byte 0x48000044 # b .L_803B6C94
L_803B6C54:
    lbz 0, 0x4c0(27)
    cmplwi 0, 0x5
    .4byte 0x40820020 # bne .L_803B6C7C
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x2f
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x4800001C # b .L_803B6C94
L_803B6C7C:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x5
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
L_803B6C94:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 0, 0x0
    li 3, 0xff
    lwz 4, 0x20(4)
    stb 0, 0x235c(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235d(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235e(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235f(4)
    bl fn_80128C58
    li 0, -0x100
    addi 3, 1, 0x8
    stw 0, 0x8(1)
    bl fn_8013A884
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

