# fn_803D6AE8 - BFIN: helper (0xF4)
.section extab, "a"
.balign 4
.global etb_8000FA94
etb_8000FA94:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000FA94, 8

.section extabindex, "a"
.balign 4
.global eti_8001F930
eti_8001F930:
    .4byte fn_803D6AE8
    .4byte 0x000000F4
    .4byte etb_8000FA94
.size eti_8001F930, 12

.text
.balign 4
.global fn_803D6AE8

fn_803D6AE8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 31, 3
    li 27, 0x0
    li 26, 0x0
    li 25, 0x0
    li 29, 0x0
    li 30, 0x1
L_803D6B10:
    addi 28, 25, 0x241
    mr 3, 25
    stbx 29, 31, 28
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_803D6B48
    mr 3, 25
    addi 27, 27, 0x1
    bl fn_802300EC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803D6B48
    stbx 30, 31, 28
    addi 26, 26, 0x1
L_803D6B48:
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFC0 # blt .L_803D6B10
    cmpw 26, 27
    .4byte 0x40820070 # bne .L_803D6BC8
    li 25, 0x0
L_803D6B60:
    addi 0, 25, 0x241
    lbzx 0, 31, 0
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803D6B78
    mr 3, 25
    bl fn_80230AD4
L_803D6B78:
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFE0 # blt .L_803D6B60
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_803D6BB0
    li 0, 0x1
    li 3, -0x1
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    stb 0, 0x7f6(4)
L_803D6BB0:
    .4byte 0x808D9310 # lwz r4, lbl_8053AED0@sda21(r0)
    li 0, 0x2
    lbz 3, 0xdc(4)
    ori 3, 3, 0x10
    stb 3, 0xdc(4)
    stw 0, 0x230(31)
L_803D6BC8:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

