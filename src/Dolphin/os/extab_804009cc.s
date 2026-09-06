# fn_804009CC - actor@lbl_804B0F50: constructor (0x1D4)
.section extab, "a"
.balign 4
.global etb_80010094
etb_80010094:
    .4byte 0x100A0000
    .4byte 0x00000134
    .4byte 0x00000018
    .4byte 0x0000014C
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_80010094, 40

.section extabindex, "a"
.balign 4
.global eti_8001FE40
eti_8001FE40:
    .4byte fn_804009CC
    .4byte 0x000001D4
    .4byte etb_80010094
.size eti_8001FE40, 12

.text
.balign 4
.global fn_804009CC

fn_804009CC:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    lis 5, lbl_804B0F50@ha
    stw 0, 0x14(1)
    addi 0, 5, lbl_804B0F50@l
    addi 4, 4, lbl_80529DEC@l
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    stw 0, 0x0(3)
    lbz 0, 0x223(4)
    .4byte 0x93ED8F30 # stw r31, lbl_8053AAF0@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80400A1C
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x7a(31)
    stb 0, 0x223(4)
    .4byte 0x4800000C # b .L_80400A24
L_80400A1C:
    li 0, 0x0
    stb 0, 0x7a(31)
L_80400A24:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x224(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80400A54
    lbz 0, 0x225(3)
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_80400A4C
    li 0, 0x1
    stb 0, 0x7a(31)
L_80400A4C:
    li 0, 0x0
    stb 0, 0x224(3)
L_80400A54:
    li 3, 0x400
    bl fn_8009AE50
    bl OSGetResetCode
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80400A74
    lbz 0, 0x7a(31)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_80400AAC
L_80400A74:
    bl fn_8004D388
    cmplwi 3, 0x0
    .4byte 0x40820020 # bne .L_80400A9C
    li 3, 0x0
    bl OSSetProgressiveMode
    lis 4, lbl_8048C17C@ha
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    addi 4, 4, lbl_8048C17C@l
    bl fn_80092FD0
    .4byte 0x48000014 # b .L_80400AAC
L_80400A9C:
    lis 4, lbl_8048C17C@ha
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    addi 4, 4, lbl_8048C17C@l
    bl fn_80092FD0
L_80400AAC:
    li 4, 0x0
    .4byte 0xC0020838 # lfs f0, lbl_805437D8@sda21(r0)
    stb 4, 0x60(31)
    li 0, 0x30
    li 3, 0x8
    sth 4, 0x6e(31)
    stfs 0, 0x64(31)
    stb 4, 0x76(31)
    sth 4, 0x70(31)
    sth 4, 0x72(31)
    stfs 0, 0x68(31)
    sth 0, 0x74(31)
    stb 4, 0x79(31)
    stb 4, 0x78(31)
    stw 4, 0x4(31)
    stw 4, 0x8(31)
    stw 4, 0x10(31)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_80400B00
    bl fn_802B1EFC
L_80400B00:
    stw 30, 0xc(31)
    li 3, 0x8
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_80400B18
    bl fn_804429B4
L_80400B18:
    stw 30, 0x14(31)
    li 0, 0x0
    stw 0, 0x18(31)
    stw 0, 0x1c(31)
    stw 0, 0x20(31)
    stw 0, 0x24(31)
    stw 0, 0x28(31)
    stw 0, 0x2c(31)
    stw 0, 0x30(31)
    lwz 3, 0xc(31)
    bl fn_802B1EB0
    lis 3, lbl_80529DEC@ha
    lis 6, lbl_80479C34@ha
    addi 5, 3, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    addi 3, 6, lbl_80479C34@l
    bl fn_80401E10
    stw 3, 0x44(31)
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DE8
    lis 3, fn_80139994@ha
    li 4, 0x0
    addi 0, 3, fn_80139994@l
    .4byte 0x988D8D91 # stb r4, lbl_8053A951@sda21(r0)
    mr 3, 31
    .4byte 0x900D8D7C # stw r0, lbl_8053A93C@sda21(r0)
    .4byte 0x908D8D80 # stw r4, lbl_8053A940@sda21(r0)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

