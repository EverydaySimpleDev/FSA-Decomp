# fn_803D4068 - helper (0x230)
.section extab, "a"
.balign 4
.global etb_8000F9EC
etb_8000F9EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F9EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F864
eti_8001F864:
    .4byte fn_803D4068
    .4byte 0x00000230
    .4byte etb_8000F9EC
.size eti_8001F864, 12

.text
.balign 4
.global fn_803D4068

fn_803D4068:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    li 5, -0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_803D40CC
    lbz 3, 0x2170(31)
    cmplwi 3, 0x0
    .4byte 0x418201E8 # beq .L_803D4284
    subi 3, 3, 0x1
    li 0, 0x1
    stb 3, 0x2170(31)
    li 4, 0x26
    li 5, -0x1
    lbz 3, 0x2170(31)
    stb 3, 0x2171(31)
    sth 0, 0x82(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480001BC # b .L_803D4284
L_803D40CC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_803D411C
    lbz 3, 0x2170(31)
    cmplwi 3, 0x1
    .4byte 0x40800198 # bge .L_803D4284
    addi 3, 3, 0x1
    li 0, 0x1
    stb 3, 0x2170(31)
    li 4, 0x26
    li 5, -0x1
    lbz 3, 0x2170(31)
    stb 3, 0x2171(31)
    sth 0, 0x82(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800016C # b .L_803D4284
L_803D411C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820154 # beq .L_803D4284
    lwz 3, 0x18(31)
    li 4, 0x0
    sth 4, 0x22(3)
    lwz 3, 0x1c(31)
    sth 4, 0x22(3)
    lwz 3, 0x20(31)
    sth 4, 0x22(3)
    lwz 3, 0x14(31)
    sth 4, 0x26(3)
    lwz 3, 0x2c(31)
    sth 4, 0x24(3)
    lwz 3, 0x2c(31)
    sth 4, 0x26(3)
    lwz 3, 0x30(31)
    sth 4, 0x24(3)
    lwz 3, 0x30(31)
    sth 4, 0x26(3)
    lwz 3, 0x34(31)
    sth 4, 0x24(3)
    lwz 3, 0x34(31)
    sth 4, 0x26(3)
    lwz 3, 0x38(31)
    sth 4, 0x24(3)
    lwz 3, 0x38(31)
    sth 4, 0x26(3)
    lwz 3, 0x3c(31)
    sth 4, 0x24(3)
    lwz 3, 0x3c(31)
    sth 4, 0x26(3)
    lwz 3, 0x40(31)
    sth 4, 0x24(3)
    lwz 3, 0x40(31)
    sth 4, 0x26(3)
    lwz 3, 0x44(31)
    sth 4, 0x24(3)
    lwz 3, 0x44(31)
    sth 4, 0x26(3)
    lwz 3, 0x48(31)
    sth 4, 0x24(3)
    lwz 3, 0x48(31)
    sth 4, 0x26(3)
    lwz 3, 0x24(31)
    sth 4, 0x22(3)
    lbz 0, 0x2176(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803D41F4
    lwz 3, 0x4c(31)
    sth 4, 0x22(3)
L_803D41F4:
    lwz 3, 0x28(31)
    li 4, 0x0
    li 0, 0x2
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    sth 4, 0x84(31)
    stb 0, 0x216f(31)
    lbz 0, 0x2170(31)
    stb 0, 0x2171(31)
    lbz 0, 0x2174(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803D4234
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310BC
    li 0, 0x0
    stb 0, 0x2173(31)
L_803D4234:
    lbz 0, 0x2170(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803D425C
    li 0, 0x1a
    li 4, 0xb
    stb 0, 0x216d(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800001C # b .L_803D4274
L_803D425C:
    li 0, 0x19
    li 4, 0xc
    stb 0, 0x216d(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803D4274:
    li 3, 0x4
    li 0, 0x1
    stb 3, 0x216c(31)
    sth 0, 0x82(31)
L_803D4284:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

