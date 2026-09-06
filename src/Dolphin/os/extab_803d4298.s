# fn_803D4298 - helper (0x1EC)
.section extab, "a"
.balign 4
.global etb_8000F9F4
etb_8000F9F4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F9F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F870
eti_8001F870:
    .4byte fn_803D4298
    .4byte 0x000001EC
    .4byte etb_8000F9F4
.size eti_8001F870, 12

.text
.balign 4
.global fn_803D4298

fn_803D4298:
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
    .4byte 0x4182003C # beq .L_803D42FC
    lbz 3, 0x2170(31)
    cmplwi 3, 0x0
    .4byte 0x418201A4 # beq .L_803D4470
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
    .4byte 0x48000178 # b .L_803D4470
L_803D42FC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_803D434C
    lbz 3, 0x2170(31)
    cmplwi 3, 0x1
    .4byte 0x40800154 # bge .L_803D4470
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
    .4byte 0x48000128 # b .L_803D4470
L_803D434C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820110 # beq .L_803D4470
    li 4, 0x0
    stb 4, 0x2175(31)
    lbz 0, 0x2170(31)
    stb 0, 0x2171(31)
    lbz 0, 0x2170(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803D439C
    li 0, 0x5
    li 4, 0xb
    stb 0, 0x216c(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000D0 # b .L_803D4468
L_803D439C:
    li 0, 0x1
    lis 3, lbl_80529DEC@ha
    stb 0, 0x1b4(31)
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x24d(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_803D4440
    lwz 3, 0x18(31)
    sth 4, 0x22(3)
    lwz 3, 0x1c(31)
    sth 4, 0x22(3)
    lwz 3, 0x20(31)
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x22(3)
    lbz 0, 0x2176(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803D43EC
    lwz 3, 0x4c(31)
    sth 4, 0x22(3)
L_803D43EC:
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
    .4byte 0x41820014 # beq .L_803D442C
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310BC
    li 0, 0x0
    stb 0, 0x2173(31)
L_803D442C:
    li 3, 0x19
    li 0, 0x4
    stb 3, 0x216d(31)
    stb 0, 0x216c(31)
    .4byte 0x4800001C # b .L_803D4458
L_803D4440:
    stb 4, 0x2170(31)
    li 3, 0x82
    li 0, 0x3
    stw 3, 0x54(31)
    stb 4, 0x2177(31)
    stb 0, 0x216d(31)
L_803D4458:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
L_803D4468:
    li 0, 0x1
    sth 0, 0x82(31)
L_803D4470:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

