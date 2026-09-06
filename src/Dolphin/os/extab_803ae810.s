# fn_803AE810 - helper (0x468)
.section extab, "a"
.balign 4
.global etb_8000F464
etb_8000F464:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000F464, 8

.section extabindex, "a"
.balign 4
.global eti_8001F1B0
eti_8001F1B0:
    .4byte fn_803AE810
    .4byte 0x00000468
    .4byte etb_8000F464
.size eti_8001F1B0, 12

.text
.balign 4
.global fn_803AE810

fn_803AE810:
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
    .4byte 0x40810020 # ble .L_803AE86C
L_803AE850:
    lwz 5, 0x160(6)
    cmpwi 5, 0x0
    .4byte 0x4182000C # beq .L_803AE864
    li 8, 0x1
    .4byte 0x4800000C # b .L_803AE86C
L_803AE864:
    addi 6, 6, 0x4
    .4byte 0x4200FFE8 # bdnz .L_803AE850
L_803AE86C:
    clrlwi. 5, 8, 24
    .4byte 0x4182022C # beq .L_803AEA9C
    cmpwi 7, 0x0
    li 5, 0x0
    li 6, 0x0
    .4byte 0x408100F4 # ble .L_803AE974
    cmpwi 7, 0x8
    subi 8, 7, 0x8
    .4byte 0x40810098 # ble .L_803AE924
    addi 7, 8, 0x7
    addi 9, 1, 0x8
    srwi 7, 7, 3
    addi 10, 1, 0x18
    mtctr 7
    cmpwi 8, 0x0
    .4byte 0x4081007C # ble .L_803AE924
L_803AE8AC:
    li 8, 0x0
    addi 6, 6, 0x8
    stw 8, 0x0(9)
    lwz 7, 0x160(11)
    stw 7, 0x0(10)
    stw 8, 0x4(9)
    lwz 7, 0x164(11)
    stw 7, 0x4(10)
    stw 8, 0x8(9)
    lwz 7, 0x168(11)
    stw 7, 0x8(10)
    stw 8, 0xc(9)
    lwz 7, 0x16c(11)
    stw 7, 0xc(10)
    stw 8, 0x10(9)
    lwz 7, 0x170(11)
    stw 7, 0x10(10)
    stw 8, 0x14(9)
    lwz 7, 0x174(11)
    stw 7, 0x14(10)
    stw 8, 0x18(9)
    lwz 7, 0x178(11)
    stw 7, 0x18(10)
    stw 8, 0x1c(9)
    addi 9, 9, 0x20
    lwz 7, 0x17c(11)
    addi 11, 11, 0x20
    stw 7, 0x1c(10)
    addi 10, 10, 0x20
    .4byte 0x4200FF8C # bdnz .L_803AE8AC
L_803AE924:
    lis 7, lbl_80529DEC@ha
    slwi 10, 6, 2
    addi 9, 1, 0x8
    addi 11, 1, 0x18
    addi 7, 7, lbl_80529DEC@l
    li 8, 0x0
    add 9, 9, 10
    add 11, 11, 10
    add 10, 7, 10
    .4byte 0x48000020 # b .L_803AE968
L_803AE94C:
    lwz 7, 0x160(10)
    addi 10, 10, 0x4
    stw 8, 0x0(9)
    addi 9, 9, 0x4
    addi 6, 6, 0x1
    stw 7, 0x0(11)
    addi 11, 11, 0x4
L_803AE968:
    lwz 7, 0x454(31)
    cmpw 6, 7
    .4byte 0x4180FFDC # blt .L_803AE94C
L_803AE974:
    lis 7, lbl_804763C0@ha
    lis 6, lbl_804763D0@ha
    addi 8, 7, lbl_804763C0@l
    addi 30, 1, 0x8
    addi 7, 6, lbl_804763D0@l
    addi 29, 1, 0x18
L_803AE98C:
    lwz 6, 0x454(31)
    mr 9, 30
    mr 10, 29
    li 27, -0x1
    mtctr 6
    cmpwi 6, 0x0
    .4byte 0x4081002C # ble .L_803AE9D0
L_803AE9A8:
    lwz 6, 0x0(9)
    cmpwi 6, 0x0
    .4byte 0x40820014 # bne .L_803AE9C4
    lwz 6, 0x0(10)
    cmpw 27, 6
    .4byte 0x40800008 # bge .L_803AE9C4
    mr 27, 6
L_803AE9C4:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    .4byte 0x4200FFDC # bdnz .L_803AE9A8
L_803AE9D0:
    mr 9, 30
    mr 10, 29
    mr 11, 31
    slwi 28, 5, 2
    li 26, 0x0
    li 25, 0x0
    .4byte 0x398203E8 # li r12, lbl_80543388@sda21
    .4byte 0x48000094 # b .L_803AEA80
L_803AE9F0:
    lwz 6, 0x0(9)
    cmpwi 6, 0x0
    .4byte 0x40820078 # bne .L_803AEA70
    lwz 6, 0x0(10)
    cmpw 27, 6
    .4byte 0x4082006C # bne .L_803AEA70
    cmpwi 6, 0x0
    .4byte 0x40820010 # bne .L_803AEA1C
    li 6, 0x0
    stw 6, 0x330(11)
    .4byte 0x4800004C # b .L_803AEA64
L_803AEA1C:
    lwz 6, 0x450(31)
    cmpwi 6, 0x1
    .4byte 0x4182002C # beq .L_803AEA50
    .4byte 0x40800010 # bge .L_803AEA38
    cmpwi 6, 0x0
    .4byte 0x40800014 # bge .L_803AEA44
    .4byte 0x48000030 # b .L_803AEA64
L_803AEA38:
    cmpwi 6, 0x3
    .4byte 0x40800028 # bge .L_803AEA64
    .4byte 0x4800001C # b .L_803AEA5C
L_803AEA44:
    lwzx 6, 8, 28
    stw 6, 0x330(11)
    .4byte 0x48000018 # b .L_803AEA64
L_803AEA50:
    lwzx 6, 7, 28
    stw 6, 0x330(11)
    .4byte 0x4800000C # b .L_803AEA64
L_803AEA5C:
    lwzx 6, 12, 28
    stw 6, 0x330(11)
L_803AEA64:
    li 6, 0x1
    addi 26, 26, 0x1
    stw 6, 0x0(9)
L_803AEA70:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 11, 11, 0x4
    addi 25, 25, 0x1
L_803AEA80:
    lwz 6, 0x454(31)
    cmpw 25, 6
    .4byte 0x4180FF68 # blt .L_803AE9F0
    add 5, 5, 26
    cmpw 5, 6
    .4byte 0x40800030 # bge .L_803AEAC4
    .4byte 0x4BFFFEF4 # b .L_803AE98C
L_803AEA9C:
    mr 7, 31
    li 8, 0x0
    li 6, 0x0
    .4byte 0x48000010 # b .L_803AEAB8
L_803AEAAC:
    stw 6, 0x330(7)
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AEAB8:
    lwz 5, 0x454(31)
    cmpw 8, 5
    .4byte 0x4180FFEC # blt .L_803AEAAC
L_803AEAC4:
    mr 7, 31
    li 8, 0x0
    .4byte 0x4800003C # b .L_803AEB08
L_803AEAD0:
    lwz 6, 0x360(7)
    lwz 5, 0x330(7)
    cmpw 6, 5
    .4byte 0x4080000C # bge .L_803AEAE8
    addi 5, 6, 0x2
    stw 5, 0x360(7)
L_803AEAE8:
    lwz 5, 0x360(7)
    lwz 6, 0x330(7)
    cmpw 5, 6
    .4byte 0x4180000C # blt .L_803AEB00
    stw 6, 0x360(7)
    addi 3, 3, 0x1
L_803AEB00:
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AEB08:
    lwz 5, 0x454(31)
    cmpw 8, 5
    .4byte 0x4180FFC0 # blt .L_803AEAD0
    cmpw 3, 5
    .4byte 0x4180011C # blt .L_803AEC34
    mr 5, 31
    li 7, 0x0
    .4byte 0x4800005C # b .L_803AEB80
L_803AEB28:
    lwz 6, 0x330(5)
    cmpw 0, 6
    .4byte 0x40800020 # bge .L_803AEB50
    li 3, 0x0
    mr 0, 6
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 7, 31, 3
    .4byte 0x4800002C # b .L_803AEB78
L_803AEB50:
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_803AEB78
    cmpw 0, 6
    .4byte 0x4082001C # bne .L_803AEB78
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x1
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 7, 31, 3
L_803AEB78:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
L_803AEB80:
    lwz 3, 0x454(31)
    cmpw 7, 3
    .4byte 0x4180FFA0 # blt .L_803AEB28
    mr 5, 31
    li 6, 0x0
    li 3, 0x3e
    .4byte 0x4800003C # b .L_803AEBD4
L_803AEB9C:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AEBCC
    addi 0, 4, 0x4ac
    lbzx 0, 31, 0
    cmpw 6, 0
    .4byte 0x40820018 # bne .L_803AEBCC
    stw 3, 0x3c0(5)
    lbz 0, 0x4c8(31)
    cmpw 0, 4
    .4byte 0x40810008 # ble .L_803AEBCC
    addi 4, 4, 0x1
L_803AEBCC:
    addi 5, 5, 0x4
    addi 6, 6, 0x1
L_803AEBD4:
    lwz 0, 0x454(31)
    cmpw 6, 0
    .4byte 0x4180FFC0 # blt .L_803AEB9C
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AEC10
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xf
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_803AEC20
L_803AEC10:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2d
    li 5, -0x1
    bl fn_80458880
L_803AEC20:
    li 3, 0x0
    li 0, 0x11
    stw 3, 0x438(31)
    stb 0, 0x4c1(31)
    .4byte 0x48000034 # b .L_803AEC64
L_803AEC34:
    lwz 0, 0x438(31)
    cmpw 3, 0
    .4byte 0x41820018 # beq .L_803AEC54
    stw 3, 0x438(31)
    li 4, 0x10
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AEC54:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xe
    li 5, -0x1
    bl fn_80458880
L_803AEC64:
    lmw 25, 0x34(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

