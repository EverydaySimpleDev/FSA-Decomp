# fn_803D4DB0 - helper (0x2E0)
.section extab, "a"
.balign 4
.global etb_8000FA14
etb_8000FA14:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000FA14, 8

.section extabindex, "a"
.balign 4
.global eti_8001F8A0
eti_8001F8A0:
    .4byte fn_803D4DB0
    .4byte 0x000002E0
    .4byte etb_8000FA14
.size eti_8001F8A0, 12

.text
.balign 4
.global fn_803D4DB0

fn_803D4DB0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 3, 0x54(3)
    lwz 0, 0x50(31)
    cmplw 3, 0
    .4byte 0x418202A4 # beq .L_803D5078
    cmplwi 3, 0x0
    .4byte 0x4182029C # beq .L_803D5078
    lbz 0, 0x2174(31)
    cmplwi 0, 0x0
    .4byte 0x40820280 # bne .L_803D5068
    stw 3, 0x50(31)
    lwz 4, 0x50(31)
    cmplwi 4, 0x6b
    .4byte 0x4182002C # beq .L_803D4E24
    subi 0, 4, 0x6c
    cmplwi 0, 0x2
    .4byte 0x40810020 # ble .L_803D4E24
    subi 0, 4, 0x70
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_803D4E24
    cmplwi 4, 0x77
    .4byte 0x4182000C # beq .L_803D4E24
    cmplwi 4, 0x7c
    .4byte 0x40820058 # bne .L_803D4E78
L_803D4E24:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    li 5, 0x0
    li 6, 0x0
    bl fn_80431A9C
    li 5, 0x0
    li 4, 0x2
    stb 5, 0x2173(31)
    stb 4, 0x2174(31)
    lbz 0, 0x216f(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803D4E64
    lwz 3, 0x1c(31)
    sth 5, 0x22(3)
    lwz 3, 0x20(31)
    sth 5, 0x22(3)
    stb 4, 0x216f(31)
L_803D4E64:
    lwz 3, 0x10(31)
    bl fn_8009F0D0
    .4byte 0x38820558 # li r4, lbl_805434F8@sda21
    bl strcpy
    .4byte 0x48000178 # b .L_803D4FEC
L_803D4E78:
    lwz 3, 0x4(31)
    lis 4, 0x6573
    addi 6, 4, 0x3031
    li 5, 0x5479
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 0, 3
    lwz 3, 0x4(31)
    lis 4, 0x6e6f
    li 5, 0x54
    lwz 12, 0x0(3)
    mr 30, 0
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x50(31)
    mr 7, 3
    mr 6, 30
    addi 3, 31, 0x88
    li 5, 0x0
    bl fn_80382B48
    lwz 0, 0x50(31)
    cmplwi 0, 0x6f
    .4byte 0x4182003C # beq .L_803D4F24
    cmplwi 0, 0x72
    .4byte 0x41820034 # beq .L_803D4F24
    cmplwi 0, 0x76
    .4byte 0x4182002C # beq .L_803D4F24
    cmplwi 0, 0x7b
    .4byte 0x41820024 # beq .L_803D4F24
    cmplwi 0, 0x7d
    .4byte 0x4182001C # beq .L_803D4F24
    cmplwi 0, 0x82
    .4byte 0x41820014 # beq .L_803D4F24
    cmplwi 0, 0x86
    .4byte 0x4182000C # beq .L_803D4F24
    cmplwi 0, 0x87
    .4byte 0x40820094 # bne .L_803D4FB4
L_803D4F24:
    addi 3, 1, 0x14
    addi 4, 1, 0xc
    addi 5, 1, 0x10
    addi 6, 1, 0x8
    addi 7, 31, 0x2170
    bl fn_8037EB0C
    lbz 0, 0x216f(31)
    cmplwi 0, 0x3
    .4byte 0x41820020 # beq .L_803D4F64
    lwz 3, 0x1c(31)
    li 4, 0x0
    li 0, 0x1
    sth 4, 0x22(3)
    lwz 3, 0x20(31)
    sth 4, 0x22(3)
    stb 0, 0x216f(31)
L_803D4F64:
    li 5, 0x0
    .4byte 0x48000028 # b .L_803D4F90
L_803D4F6C:
    cmplwi 3, 0x81
    .4byte 0x4082001C # bne .L_803D4F8C
    lbz 0, 0x1(4)
    cmplwi 0, 0x40
    .4byte 0x40820010 # bne .L_803D4F8C
    li 0, 0x0
    stb 0, 0x0(4)
    .4byte 0x48000018 # b .L_803D4FA0
L_803D4F8C:
    addi 5, 5, 0x1
L_803D4F90:
    add 4, 30, 5
    lbz 3, 0x0(4)
    extsb. 0, 3
    .4byte 0x4082FFD0 # bne .L_803D4F6C
L_803D4FA0:
    lwz 3, 0x10(31)
    bl fn_8009F0D0
    addi 4, 31, 0x88
    bl strcpy
    .4byte 0x4800003C # b .L_803D4FEC
L_803D4FB4:
    lbz 0, 0x216f(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_803D4FDC
    lwz 3, 0x1c(31)
    li 4, 0x0
    li 0, 0x2
    sth 4, 0x22(3)
    lwz 3, 0x20(31)
    sth 4, 0x22(3)
    stb 0, 0x216f(31)
L_803D4FDC:
    lwz 3, 0x10(31)
    bl fn_8009F0D0
    addi 4, 31, 0x88
    bl strcpy
L_803D4FEC:
    lbz 0, 0x2177(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_803D501C
    li 0, 0x0
    sth 0, 0x84(31)
    lwz 3, 0xc(31)
    bl fn_8009F0D0
    addi 4, 31, 0x88
    bl strcpy
    li 0, 0x0
    stb 0, 0x216c(31)
    .4byte 0x4800001C # b .L_803D5034
L_803D501C:
    lwz 4, 0x50(31)
    li 3, 0x0
    li 0, 0x1
    stw 4, 0x54(31)
    sth 3, 0x86(31)
    stb 0, 0x216c(31)
L_803D5034:
    lwz 3, 0xc(31)
    li 4, 0xff
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    li 4, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000014 # b .L_803D5078
L_803D5068:
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803D5078
    li 0, 0x3
    stb 0, 0x2174(31)
L_803D5078:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

