# fn_803AFCF0 - helper (0x468)
.section extab, "a"
.balign 4
.global etb_8000F49C
etb_8000F49C:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000F49C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F204
eti_8001F204:
    .4byte fn_803AFCF0
    .4byte 0x00000468
    .4byte etb_8000F49C
.size eti_8001F204, 12

.text
.balign 4
.global fn_803AFCF0

fn_803AFCF0:
    stwu 1, -0x50(1)
    mflr 0
    li 4, 0x0
    li 8, 0x0
    stw 0, 0x54(1)
    li 0, 0x0
    stmw 25, 0x34(1)
    mr 31, 3
    lis 3, lbl_80529DEC@ha
    addi 11, 3, lbl_80529DEC@l
    li 3, 0x0
    mr 6, 11
    lwz 7, 0x454(31)
    mtctr 7
    cmpwi 7, 0x0
    .4byte 0x40810020 # ble .L_803AFD4C
L_803AFD30:
    lwz 5, 0x190(6)
    cmpwi 5, 0x0
    .4byte 0x4182000C # beq .L_803AFD44
    li 8, 0x1
    .4byte 0x4800000C # b .L_803AFD4C
L_803AFD44:
    addi 6, 6, 0x4
    .4byte 0x4200FFE8 # bdnz .L_803AFD30
L_803AFD4C:
    clrlwi. 5, 8, 24
    .4byte 0x4182022C # beq .L_803AFF7C
    cmpwi 7, 0x0
    li 5, 0x0
    li 6, 0x0
    .4byte 0x408100F4 # ble .L_803AFE54
    cmpwi 7, 0x8
    subi 8, 7, 0x8
    .4byte 0x40810098 # ble .L_803AFE04
    addi 7, 8, 0x7
    addi 9, 1, 0x8
    srwi 7, 7, 3
    addi 10, 1, 0x18
    mtctr 7
    cmpwi 8, 0x0
    .4byte 0x4081007C # ble .L_803AFE04
L_803AFD8C:
    li 8, 0x0
    addi 6, 6, 0x8
    stw 8, 0x0(9)
    lwz 7, 0x190(11)
    stw 7, 0x0(10)
    stw 8, 0x4(9)
    lwz 7, 0x194(11)
    stw 7, 0x4(10)
    stw 8, 0x8(9)
    lwz 7, 0x198(11)
    stw 7, 0x8(10)
    stw 8, 0xc(9)
    lwz 7, 0x19c(11)
    stw 7, 0xc(10)
    stw 8, 0x10(9)
    lwz 7, 0x1a0(11)
    stw 7, 0x10(10)
    stw 8, 0x14(9)
    lwz 7, 0x1a4(11)
    stw 7, 0x14(10)
    stw 8, 0x18(9)
    lwz 7, 0x1a8(11)
    stw 7, 0x18(10)
    stw 8, 0x1c(9)
    addi 9, 9, 0x20
    lwz 7, 0x1ac(11)
    addi 11, 11, 0x20
    stw 7, 0x1c(10)
    addi 10, 10, 0x20
    .4byte 0x4200FF8C # bdnz .L_803AFD8C
L_803AFE04:
    lis 7, lbl_80529DEC@ha
    slwi 10, 6, 2
    addi 9, 1, 0x8
    addi 11, 1, 0x18
    addi 7, 7, lbl_80529DEC@l
    li 8, 0x0
    add 9, 9, 10
    add 11, 11, 10
    add 10, 7, 10
    .4byte 0x48000020 # b .L_803AFE48
L_803AFE2C:
    lwz 7, 0x190(10)
    addi 10, 10, 0x4
    stw 8, 0x0(9)
    addi 9, 9, 0x4
    addi 6, 6, 0x1
    stw 7, 0x0(11)
    addi 11, 11, 0x4
L_803AFE48:
    lwz 7, 0x454(31)
    cmpw 6, 7
    .4byte 0x4180FFDC # blt .L_803AFE2C
L_803AFE54:
    lis 7, lbl_80476388@ha
    lis 6, lbl_80476398@ha
    addi 8, 7, lbl_80476388@l
    addi 30, 1, 0x8
    addi 7, 6, lbl_80476398@l
    addi 29, 1, 0x18
L_803AFE6C:
    lwz 6, 0x454(31)
    mr 9, 30
    mr 10, 29
    li 27, -0x1
    mtctr 6
    cmpwi 6, 0x0
    .4byte 0x4081002C # ble .L_803AFEB0
L_803AFE88:
    lwz 6, 0x0(9)
    cmpwi 6, 0x0
    .4byte 0x40820014 # bne .L_803AFEA4
    lwz 6, 0x0(10)
    cmpw 27, 6
    .4byte 0x40800008 # bge .L_803AFEA4
    mr 27, 6
L_803AFEA4:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    .4byte 0x4200FFDC # bdnz .L_803AFE88
L_803AFEB0:
    mr 9, 30
    mr 10, 29
    mr 11, 31
    slwi 28, 5, 2
    li 26, 0x0
    li 25, 0x0
    .4byte 0x398203D8 # li r12, lbl_80543378@sda21
    .4byte 0x48000094 # b .L_803AFF60
L_803AFED0:
    lwz 6, 0x0(9)
    cmpwi 6, 0x0
    .4byte 0x40820078 # bne .L_803AFF50
    lwz 6, 0x0(10)
    cmpw 27, 6
    .4byte 0x4082006C # bne .L_803AFF50
    cmpwi 6, 0x0
    .4byte 0x40820010 # bne .L_803AFEFC
    li 6, 0x0
    stw 6, 0x330(11)
    .4byte 0x4800004C # b .L_803AFF44
L_803AFEFC:
    lwz 6, 0x450(31)
    cmpwi 6, 0x1
    .4byte 0x4182002C # beq .L_803AFF30
    .4byte 0x40800010 # bge .L_803AFF18
    cmpwi 6, 0x0
    .4byte 0x40800014 # bge .L_803AFF24
    .4byte 0x48000030 # b .L_803AFF44
L_803AFF18:
    cmpwi 6, 0x3
    .4byte 0x40800028 # bge .L_803AFF44
    .4byte 0x4800001C # b .L_803AFF3C
L_803AFF24:
    lwzx 6, 8, 28
    stw 6, 0x330(11)
    .4byte 0x48000018 # b .L_803AFF44
L_803AFF30:
    lwzx 6, 7, 28
    stw 6, 0x330(11)
    .4byte 0x4800000C # b .L_803AFF44
L_803AFF3C:
    lwzx 6, 12, 28
    stw 6, 0x330(11)
L_803AFF44:
    li 6, 0x1
    addi 26, 26, 0x1
    stw 6, 0x0(9)
L_803AFF50:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 11, 11, 0x4
    addi 25, 25, 0x1
L_803AFF60:
    lwz 6, 0x454(31)
    cmpw 25, 6
    .4byte 0x4180FF68 # blt .L_803AFED0
    add 5, 5, 26
    cmpw 5, 6
    .4byte 0x40800030 # bge .L_803AFFA4
    .4byte 0x4BFFFEF4 # b .L_803AFE6C
L_803AFF7C:
    mr 7, 31
    li 8, 0x0
    li 6, 0x0
    .4byte 0x48000010 # b .L_803AFF98
L_803AFF8C:
    stw 6, 0x330(7)
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AFF98:
    lwz 5, 0x454(31)
    cmpw 8, 5
    .4byte 0x4180FFEC # blt .L_803AFF8C
L_803AFFA4:
    mr 7, 31
    li 8, 0x0
    .4byte 0x4800003C # b .L_803AFFE8
L_803AFFB0:
    lwz 6, 0x340(7)
    lwz 5, 0x330(7)
    cmpw 6, 5
    .4byte 0x4080000C # bge .L_803AFFC8
    addi 5, 6, 0x2
    stw 5, 0x340(7)
L_803AFFC8:
    lwz 5, 0x340(7)
    lwz 6, 0x330(7)
    cmpw 5, 6
    .4byte 0x4180000C # blt .L_803AFFE0
    stw 6, 0x340(7)
    addi 3, 3, 0x1
L_803AFFE0:
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AFFE8:
    lwz 5, 0x454(31)
    cmpw 8, 5
    .4byte 0x4180FFC0 # blt .L_803AFFB0
    cmpw 3, 5
    .4byte 0x4180011C # blt .L_803B0114
    mr 5, 31
    li 7, 0x0
    .4byte 0x4800005C # b .L_803B0060
L_803B0008:
    lwz 6, 0x330(5)
    cmpw 0, 6
    .4byte 0x40800020 # bge .L_803B0030
    li 3, 0x0
    mr 0, 6
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 7, 31, 3
    .4byte 0x4800002C # b .L_803B0058
L_803B0030:
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_803B0058
    cmpw 0, 6
    .4byte 0x4082001C # bne .L_803B0058
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x1
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 7, 31, 3
L_803B0058:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
L_803B0060:
    lwz 3, 0x454(31)
    cmpw 7, 3
    .4byte 0x4180FFA0 # blt .L_803B0008
    mr 5, 31
    li 6, 0x0
    li 3, 0x3e
    .4byte 0x4800003C # b .L_803B00B4
L_803B007C:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803B00AC
    addi 0, 4, 0x4ac
    lbzx 0, 31, 0
    cmpw 6, 0
    .4byte 0x40820018 # bne .L_803B00AC
    stw 3, 0x3c0(5)
    lbz 0, 0x4c8(31)
    cmpw 0, 4
    .4byte 0x40810008 # ble .L_803B00AC
    addi 4, 4, 0x1
L_803B00AC:
    addi 5, 5, 0x4
    addi 6, 6, 0x1
L_803B00B4:
    lwz 0, 0x454(31)
    cmpw 6, 0
    .4byte 0x4180FFC0 # blt .L_803B007C
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803B00F0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xf
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_803B0100
L_803B00F0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2d
    li 5, -0x1
    bl fn_80458880
L_803B0100:
    li 3, 0x0
    li 0, 0xa
    stw 3, 0x438(31)
    stb 0, 0x4c1(31)
    .4byte 0x48000034 # b .L_803B0144
L_803B0114:
    lwz 0, 0x438(31)
    cmpw 3, 0
    .4byte 0x41820018 # beq .L_803B0134
    stw 3, 0x438(31)
    li 4, 0x10
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803B0134:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xe
    li 5, -0x1
    bl fn_80458880
L_803B0144:
    lmw 25, 0x34(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

