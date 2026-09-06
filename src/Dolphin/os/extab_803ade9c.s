# fn_803ADE9C - helper (0x46c) - reads 2 more nearby small-integer data tables (804AF910/948)
.section extab, "a"
.balign 4
.global etb_8000F44C
etb_8000F44C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000F44C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F18C
eti_8001F18C:
    .4byte fn_803ADE9C
    .4byte 0x0000046C
    .4byte etb_8000F44C
.size eti_8001F18C, 12

.text
.balign 4
.global fn_803ADE9C

fn_803ADE9C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 30, 3
    li 31, 0x0
    lwz 3, 0x440(3)
    subi 0, 3, 0x1
    stw 0, 0x440(30)
    lwz 0, 0x440(30)
    cmpwi 0, 0x78
    .4byte 0x408201D8 # bne .L_803AE0A0
    li 3, 0xff
    li 0, 0x0
    stb 3, 0x4c8(30)
    li 3, 0x0
    stw 0, 0x448(30)
    stb 0, 0x4c3(30)
    stb 0, 0x4c5(30)
    lwz 4, 0x454(30)
    cmpwi 4, 0x0
    .4byte 0x408100E0 # ble .L_803ADFD0
    cmpwi 4, 0x8
    subi 5, 4, 0x8
    .4byte 0x40810094 # ble .L_803ADF90
    addi 0, 5, 0x7
    lis 4, lbl_80529DEC@ha
    srwi 0, 0, 3
    addi 6, 1, 0xc
    addi 4, 4, lbl_80529DEC@l
    mtctr 0
    cmpwi 5, 0x0
    .4byte 0x40810074 # ble .L_803ADF90
L_803ADF20:
    lwz 0, 0x170(4)
    addi 3, 3, 0x8
    mulli 0, 0, 0x64
    stw 0, 0x0(6)
    lwz 0, 0x174(4)
    mulli 0, 0, 0x64
    stw 0, 0x4(6)
    lwz 0, 0x178(4)
    mulli 0, 0, 0x64
    stw 0, 0x8(6)
    lwz 0, 0x17c(4)
    mulli 0, 0, 0x64
    stw 0, 0xc(6)
    lwz 0, 0x180(4)
    mulli 0, 0, 0x64
    stw 0, 0x10(6)
    lwz 0, 0x184(4)
    mulli 0, 0, 0x64
    stw 0, 0x14(6)
    lwz 0, 0x188(4)
    mulli 0, 0, 0x64
    stw 0, 0x18(6)
    lwz 0, 0x18c(4)
    addi 4, 4, 0x20
    mulli 0, 0, 0x64
    stw 0, 0x1c(6)
    addi 6, 6, 0x20
    .4byte 0x4200FF94 # bdnz .L_803ADF20
L_803ADF90:
    lis 4, lbl_80529DEC@ha
    slwi 6, 3, 2
    addi 0, 4, lbl_80529DEC@l
    addi 5, 1, 0xc
    add 4, 0, 6
    add 5, 5, 6
    .4byte 0x4800001C # b .L_803ADFC4
L_803ADFAC:
    lwz 0, 0x170(4)
    addi 4, 4, 0x4
    addi 3, 3, 0x1
    mulli 0, 0, 0x64
    stw 0, 0x0(5)
    addi 5, 5, 0x4
L_803ADFC4:
    lwz 0, 0x454(30)
    cmpw 3, 0
    .4byte 0x4180FFE0 # blt .L_803ADFAC
L_803ADFD0:
    mr 28, 30
    addi 29, 1, 0xc
    li 27, 0x0
    .4byte 0x48000084 # b .L_803AE060
L_803ADFE0:
    lwz 3, 0x380(28)
    lwz 0, 0x0(29)
    cmpw 3, 0
    .4byte 0x40800060 # bge .L_803AE04C
    addi 0, 3, 0x64
    stw 0, 0x380(28)
    lbz 3, 0x4c8(30)
    cmplwi 3, 0xff
    .4byte 0x40820010 # bne .L_803AE010
    li 0, 0x0
    stb 0, 0x4c8(30)
    .4byte 0x4800000C # b .L_803AE018
L_803AE010:
    addi 0, 3, 0x1
    stb 0, 0x4c8(30)
L_803AE018:
    lbz 4, 0x4c8(30)
    lis 3, 0x1
    addi 0, 3, 0x4
    addi 3, 4, 0x4ac
    addi 4, 1, 0x8
    stbx 27, 30, 3
    stw 0, 0x8(1)
    lwz 3, 0x174(28)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x4800000C # b .L_803AE054
L_803AE04C:
    stw 0, 0x380(28)
    addi 31, 31, 0x1
L_803AE054:
    addi 29, 29, 0x4
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_803AE060:
    lwz 0, 0x454(30)
    cmpw 27, 0
    .4byte 0x4180FF78 # blt .L_803ADFE0
    cmpw 31, 0
    .4byte 0x4180001C # blt .L_803AE08C
    lwz 3, 0x438(30)
    li 0, 0x1
    addi 3, 3, 0x1
    stw 3, 0x438(30)
    stw 0, 0x440(30)
    .4byte 0x48000140 # b .L_803AE1C8
L_803AE08C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x22
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800012C # b .L_803AE1C8
L_803AE0A0:
    cmpwi 0, 0x0
    .4byte 0x40820124 # bne .L_803AE1C8
    mr 4, 30
    li 5, 0x0
    li 3, 0x3e
    .4byte 0x48000010 # b .L_803AE0C4
L_803AE0B8:
    stw 3, 0x3c0(4)
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_803AE0C4:
    lwz 0, 0x454(30)
    cmpw 5, 0
    .4byte 0x4180FFEC # blt .L_803AE0B8
    lwz 0, 0x438(30)
    cmpwi 0, 0x0
    .4byte 0x418200D8 # beq .L_803AE1B0
    li 0, 0xff
    li 3, 0x0
    stb 0, 0x4c8(30)
    li 0, 0x96
    li 27, 0x0
    li 28, 0x0
    stw 3, 0x438(30)
    stw 0, 0x440(30)
    .4byte 0x48000020 # b .L_803AE11C
L_803AE100:
    mr 3, 28
    bl fn_80403414
    bl fn_80403070
    cmpwi 3, 0x0
    .4byte 0x40810008 # ble .L_803AE118
    li 27, 0x1
L_803AE118:
    addi 28, 28, 0x1
L_803AE11C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 28, 3
    .4byte 0x4180FFD8 # blt .L_803AE100
    clrlwi. 0, 27, 24
    .4byte 0x41820010 # beq .L_803AE140
    li 0, 0x14
    stb 0, 0x4c1(30)
    .4byte 0x48000024 # b .L_803AE160
L_803AE140:
    lwz 0, 0x450(30)
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_803AE158
    li 0, 0x16
    stb 0, 0x4c1(30)
    .4byte 0x4800000C # b .L_803AE160
L_803AE158:
    li 0, 0x1c
    stb 0, 0x4c1(30)
L_803AE160:
    lwz 0, 0x454(30)
    mr 3, 30
    li 4, 0x1
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_803AE194
L_803AE178:
    lwz 0, 0x380(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_803AE18C
    li 4, 0x0
    .4byte 0x4800000C # b .L_803AE194
L_803AE18C:
    addi 3, 3, 0x4
    .4byte 0x4200FFE8 # bdnz .L_803AE178
L_803AE194:
    clrlwi. 0, 4, 24
    .4byte 0x41820030 # beq .L_803AE1C8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800001C # b .L_803AE1C8
L_803AE1B0:
    li 0, 0x96
    li 4, 0x2d
    stw 0, 0x440(30)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AE1C8:
    lbz 0, 0x4c8(30)
    cmplwi 0, 0xff
    .4byte 0x41820124 # beq .L_803AE2F4
    lwz 0, 0x448(30)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_803AE244
    lbz 3, 0x4c5(30)
    addi 0, 3, 0x1
    stb 0, 0x4c5(30)
    lbz 0, 0x4c5(30)
    cmplwi 0, 0xa
    .4byte 0x4181003C # bgt .L_803AE230
    li 5, 0x0
    li 4, 0xaf
    .4byte 0x4800001C # b .L_803AE21C
L_803AE204:
    addi 0, 5, 0x4ac
    addi 5, 5, 0x1
    lbzx 0, 30, 0
    slwi 3, 0, 2
    addi 0, 3, 0x3c0
    stwx 4, 30, 0
L_803AE21C:
    lbz 3, 0x4c8(30)
    addi 0, 3, 0x1
    cmpw 5, 0
    .4byte 0x4180FFDC # blt .L_803AE204
    .4byte 0x480000C8 # b .L_803AE2F4
L_803AE230:
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x448(30)
    stb 0, 0x4c5(30)
    .4byte 0x480000B4 # b .L_803AE2F4
L_803AE244:
    cmpwi 0, 0x1
    .4byte 0x408200AC # bne .L_803AE2F4
    lbz 4, 0x4c3(30)
    lis 3, lbl_804AF948@ha
    addi 3, 3, lbl_804AF948@l
    slwi 0, 4, 2
    lwzx 3, 3, 0
    cmpwi 3, -0x1
    .4byte 0x41820024 # beq .L_803AE288
    lbz 0, 0x4c5(30)
    cmpw 0, 3
    .4byte 0x4180000C # blt .L_803AE27C
    addi 0, 4, 0x1
    stb 0, 0x4c3(30)
L_803AE27C:
    lbz 3, 0x4c5(30)
    addi 0, 3, 0x1
    stb 0, 0x4c5(30)
L_803AE288:
    lis 3, lbl_804AF910@ha
    li 6, 0x0
    addi 5, 3, lbl_804AF910@l
    .4byte 0x4800002C # b .L_803AE2C0
L_803AE298:
    lbz 3, 0x4c3(30)
    addi 0, 6, 0x4ac
    lbzx 0, 30, 0
    addi 6, 6, 0x1
    slwi 3, 3, 2
    lwzx 4, 5, 3
    slwi 3, 0, 2
    addi 0, 3, 0x3c0
    addi 3, 4, 0xbd
    stwx 3, 30, 0
L_803AE2C0:
    lbz 3, 0x4c8(30)
    addi 0, 3, 0x1
    cmpw 6, 0
    .4byte 0x4180FFCC # blt .L_803AE298
    lbz 0, 0x4c3(30)
    lis 3, lbl_804AF948@ha
    addi 3, 3, lbl_804AF948@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmpwi 0, -0x1
    .4byte 0x4082000C # bne .L_803AE2F4
    li 0, 0x2
    stw 0, 0x448(30)
L_803AE2F4:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

