# fn_8039FB6C - component C: vtable-slot function (0x2e8)
.section extab, "a"
.balign 4
.global etb_8000F20C
etb_8000F20C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000F20C, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF64
eti_8001EF64:
    .4byte fn_8039FB6C
    .4byte 0x000002E8
    .4byte etb_8000F20C
.size eti_8001EF64, 12

.text
.balign 4
.global fn_8039FB6C

fn_8039FB6C:
    stwu 1, -0x20(1)
    mflr 0
    li 8, 0x0
    li 7, 0x1
    stw 0, 0x24(1)
    li 0, -0x1
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lis 3, 0x8889
    lwz 9, 0x2d8(29)
    subi 6, 3, 0x7777
    stb 8, 0x3ad(9)
    stb 8, 0x3ac(9)
    stb 8, 0x3ab(9)
    lwz 3, 0x2c0(29)
    stb 8, 0x0(3)
    lwz 3, 0x2c4(29)
    stb 8, 0x0(3)
    stw 8, 0x2cc(29)
    stw 8, 0x2d0(29)
    stb 8, 0x2d4(29)
    stb 8, 0x2d5(29)
    lwz 3, 0x2d8(29)
    stb 8, 0x3b2(3)
    lwz 3, 0x2d8(29)
    stb 8, 0x3b3(3)
    lwz 3, 0x2d8(29)
    stb 8, 0x3b4(3)
    lwz 3, 0x2d8(29)
    stw 0, 0x154(3)
    stb 7, 0x2d6(29)
    lwz 0, 0x2bc(29)
    stw 0, 0x70(29)
    lwz 8, 0x2d8(29)
    lwz 3, 0x17c(8)
    lwz 4, 0x178(8)
    lha 5, 0x192(8)
    lha 0, 0x190(8)
    sth 0, 0x222(29)
    sth 5, 0x224(29)
    stw 4, 0x218(29)
    stw 3, 0x21c(29)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 9, 0x44(3)
    mulhw 0, 6, 9
    add 0, 0, 9
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 4, 0, 3
    mulhw 0, 6, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 8, 0, 4
    .4byte 0x40820008 # bne .L_8039FC64
    mr 8, 7
L_8039FC64:
    lis 4, 0x91a3
    lis 3, fn_80077E68@ha
    subi 0, 4, 0x4c3b
    li 5, 0x0
    mulhw 6, 0, 9
    addi 0, 3, fn_80077E68@l
    addi 3, 29, 0x38
    mr 4, 31
    add 6, 6, 9
    srawi 6, 6, 11
    srwi 7, 6, 31
    add 6, 6, 7
    stw 6, 0x210(29)
    stw 8, 0x214(29)
    lwz 6, 0x8(29)
    stw 6, 0x40(29)
    stw 31, 0x44(29)
    stw 5, 0x48(29)
    stw 0, 0x5c(29)
    lwz 12, 0x38(29)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    addi 3, 29, 0x38
    mr 4, 30
    lwz 12, 0x38(29)
    mr 5, 31
    lwz 12, 0x38(12)
    mtctr 12
    bctrl
    addi 3, 29, 0x38
    mr 4, 30
    lwz 12, 0x38(29)
    mr 5, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    addi 3, 29, 0x38
    li 4, 0x0
    bl fn_8007891C
    lwz 6, 0x2d8(29)
    li 4, 0x0
    lwz 0, 0x15c(6)
    add 5, 29, 0
    lbz 3, 0x23a(5)
    lbz 0, 0x23b(5)
    extsb 3, 3
    extsb 0, 0
    subf 0, 3, 0
    stw 0, 0x164(6)
    lwz 3, 0x2d8(29)
    stw 4, 0x170(3)
    lwz 5, 0x2d8(29)
    lwz 0, 0x15c(5)
    add 3, 29, 0
    lbz 0, 0x28f(3)
    extsb. 0, 0
    .4byte 0x41820008 # beq .L_8039FD50
    stb 4, 0x19e(5)
L_8039FD50:
    lwz 4, 0x2d8(29)
    lbz 0, 0x1aa(4)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_8039FDC8
    lwz 3, 0x68(4)
    li 0, 0xff
    stb 0, 0x8(3)
    lwz 3, 0x6c(4)
    stb 0, 0x8(3)
    lwz 3, 0x70(4)
    stb 0, 0x8(3)
    lwz 3, 0x74(4)
    stb 0, 0x8(3)
    lwz 3, 0x78(4)
    stb 0, 0x8(3)
    lwz 3, 0x7c(4)
    stb 0, 0x8(3)
    lwz 3, 0x80(4)
    stb 0, 0x8(3)
    lwz 3, 0x84(4)
    stb 0, 0x8(3)
    lwz 3, 0x88(4)
    stb 0, 0x8(3)
    lwz 3, 0x8c(4)
    stb 0, 0x8(3)
    lwz 3, 0x90(4)
    stb 0, 0x8(3)
    lwz 3, 0x94(4)
    stb 0, 0x8(3)
    .4byte 0x48000074 # b .L_8039FE38
L_8039FDC8:
    lwz 3, 0x2d0(29)
    li 5, -0x1
    lwz 4, 0x2c0(29)
    addi 0, 3, 0x1
    stw 0, 0x2d0(29)
    stbx 5, 4, 3
    lwz 3, 0x2d0(29)
    lwz 4, 0x2c0(29)
    addi 0, 3, 0x1
    stw 0, 0x2d0(29)
    stbx 5, 4, 3
    lwz 3, 0x2d8(29)
    lwz 0, 0x164(3)
    cmpwi 0, 0x3
    .4byte 0x40800038 # bge .L_8039FE38
    lwz 3, 0x2d0(29)
    lwz 4, 0x2c0(29)
    addi 0, 3, 0x1
    stw 0, 0x2d0(29)
    stbx 5, 4, 3
    lwz 4, 0x2d8(29)
    lwz 3, 0x2d0(29)
    lwz 5, 0x164(4)
    lwz 4, 0x2c0(29)
    addi 0, 3, 0x1
    addi 5, 5, 0xc0
    stw 0, 0x2d0(29)
    stbx 5, 4, 3
L_8039FE38:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

