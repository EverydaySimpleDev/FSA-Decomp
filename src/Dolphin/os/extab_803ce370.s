# fn_803CE370 - helper (0x140) + GetRegistryField_0x1a8_OrDefault3 bundled (0x1C) - both referenced by the PTMF table
.section extab, "a"
.balign 4
.global etb_8000F8E4
etb_8000F8E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F8E4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F720
eti_8001F720:
    .4byte fn_803CE370
    .4byte 0x00000140
    .4byte etb_8000F8E4
.size eti_8001F720, 12

.text
.balign 4
.global fn_803CE370

fn_803CE370:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xb0(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803CE398
    subi 0, 3, 0x1
    stw 0, 0xb0(31)
L_803CE398:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1300
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_803CE3BC
    lwz 0, 0xb0(31)
    cmpwi 0, 0x0
    .4byte 0x408200E4 # bne .L_803CE49C
L_803CE3BC:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xb0(31)
    li 4, 0x117
    stw 0, 0x80(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803CE3E4
    li 4, 0x116
L_803CE3E4:
    stw 4, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803CE434
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803CE43C
L_803CE434:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803CE43C:
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 5, 0x20(31)
    lfs 1, 0x0(3)
    lfs 2, 0x8(5)
    .4byte 0xC00204F8 # lfs f0, lbl_80543498@sda21(r0)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_803CE47C
    li 4, 0x0
    li 0, 0x1
    sth 4, 0x20(5)
    lwz 3, 0x20(31)
    sth 4, 0x26(3)
    stb 0, 0x117(31)
L_803CE47C:
    lbz 3, 0x110(31)
    li 0, 0x1
    li 4, 0xb
    li 5, -0x1
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803CE49C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

