# fn_803BAEF4 - helper (0x1014) - calls back into fn_803B933C (an earlier piece in this SAME cluster) plus shared calendar/time utilities also used by unrelated adjacent code
.section extab, "a"
.balign 4
.global etb_8000F70C
etb_8000F70C:
    .4byte 0x58080000
    .4byte 0x00000000
.size etb_8000F70C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F45C
eti_8001F45C:
    .4byte fn_803BAEF4
    .4byte 0x00001014
    .4byte etb_8000F70C
.size eti_8001F45C, 12

.text
.balign 4
.global fn_803BAEF4

fn_803BAEF4:
    stwu 1, -0xb0(1)
    mflr 0
    lis 5, lbl_8051E2C0@ha
    stw 0, 0xb4(1)
    stmw 21, 0x84(1)
    addi 26, 5, lbl_8051E2C0@l
    mr 29, 6
    mr 21, 3
    addi 31, 26, 0x0
    mr 28, 4
    mr 4, 31
    addi 30, 26, 0x2000
    li 22, 0x0
    li 5, 0x2000
    li 6, 0x2000
    bl fn_80057EBC
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BAF40
    .4byte 0x48000FB8 # b .L_803BBEF4
L_803BAF40:
    addi 4, 31, 0xa
    li 0, 0x18
    mr 3, 4
    li 6, 0x0
    li 7, 0x0
    mtctr 0
L_803BAF58:
    lbz 5, 0x0(3)
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x1(3)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x2(3)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x3(3)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x4(3)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x5(3)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x6(3)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x7(3)
    add 6, 6, 0
    addi 3, 3, 0x8
    nor 0, 5, 5
    add 7, 7, 5
    add 6, 6, 0
    .4byte 0x4200FF7C # bdnz .L_803BAF58
    lwz 3, 0xc0(4)
    addi 5, 31, 0xd2
    lwz 4, 0xc4(4)
    li 0, 0x18
    xor 3, 7, 3
    mr 9, 5
    xor 4, 6, 4
    li 7, 0x0
    or 3, 4, 3
    li 8, 0x0
    cntlzw 3, 3
    extrwi 27, 3, 8, 19
    mtctr 0
L_803BB014:
    lbz 3, 0x0(9)
    nor 0, 3, 3
    add 8, 8, 3
    lbz 3, 0x1(9)
    add 7, 7, 0
    nor 0, 3, 3
    add 8, 8, 3
    lbz 3, 0x2(9)
    add 7, 7, 0
    nor 0, 3, 3
    add 8, 8, 3
    lbz 3, 0x3(9)
    add 7, 7, 0
    nor 0, 3, 3
    add 8, 8, 3
    lbz 3, 0x4(9)
    add 7, 7, 0
    nor 0, 3, 3
    add 8, 8, 3
    lbz 3, 0x5(9)
    add 7, 7, 0
    nor 0, 3, 3
    add 8, 8, 3
    lbz 3, 0x6(9)
    add 7, 7, 0
    nor 0, 3, 3
    add 8, 8, 3
    lbz 3, 0x7(9)
    add 7, 7, 0
    addi 9, 9, 0x8
    nor 0, 3, 3
    add 8, 8, 3
    add 7, 7, 0
    .4byte 0x4200FF7C # bdnz .L_803BB014
    lwz 3, 0xc0(5)
    addi 6, 31, 0x19a
    lwz 4, 0xc4(5)
    li 0, 0x18
    xor 3, 8, 3
    mr 8, 6
    xor 4, 7, 4
    li 7, 0x0
    or 3, 4, 3
    li 5, 0x0
    cntlzw 3, 3
    extrwi 25, 3, 8, 19
    mtctr 0
L_803BB0D0:
    lbz 3, 0x0(8)
    nor 0, 3, 3
    add 5, 5, 3
    lbz 3, 0x1(8)
    add 7, 7, 0
    nor 0, 3, 3
    add 5, 5, 3
    lbz 3, 0x2(8)
    add 7, 7, 0
    nor 0, 3, 3
    add 5, 5, 3
    lbz 3, 0x3(8)
    add 7, 7, 0
    nor 0, 3, 3
    add 5, 5, 3
    lbz 3, 0x4(8)
    add 7, 7, 0
    nor 0, 3, 3
    add 5, 5, 3
    lbz 3, 0x5(8)
    add 7, 7, 0
    nor 0, 3, 3
    add 5, 5, 3
    lbz 3, 0x6(8)
    add 7, 7, 0
    nor 0, 3, 3
    add 5, 5, 3
    lbz 3, 0x7(8)
    add 7, 7, 0
    addi 8, 8, 0x8
    nor 0, 3, 3
    add 5, 5, 3
    add 7, 7, 0
    .4byte 0x4200FF7C # bdnz .L_803BB0D0
    lwz 0, 0xc0(6)
    mr 3, 21
    lwz 6, 0xc4(6)
    mr 4, 30
    xor 0, 5, 0
    li 5, 0x2000
    xor 7, 7, 6
    li 6, 0x4000
    or 0, 7, 0
    cntlzw 0, 0
    extrwi 24, 0, 8, 19
    bl fn_80057EBC
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BB194
    .4byte 0x48000D64 # b .L_803BBEF4
L_803BB194:
    addi 3, 30, 0xa
    li 0, 0x18
    mr 4, 3
    li 6, 0x0
    li 7, 0x0
    mtctr 0
L_803BB1AC:
    lbz 5, 0x0(4)
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x1(4)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x2(4)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x3(4)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x4(4)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x5(4)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x6(4)
    add 6, 6, 0
    nor 0, 5, 5
    add 7, 7, 5
    lbz 5, 0x7(4)
    add 6, 6, 0
    addi 4, 4, 0x8
    nor 0, 5, 5
    add 7, 7, 5
    add 6, 6, 0
    .4byte 0x4200FF7C # bdnz .L_803BB1AC
    lwz 0, 0xc0(3)
    addi 5, 30, 0xd2
    lwz 4, 0xc4(3)
    li 3, 0x18
    xor 0, 7, 0
    mr 9, 5
    xor 4, 6, 4
    li 7, 0x0
    or 0, 4, 0
    li 8, 0x0
    cntlzw 0, 0
    extrwi 0, 0, 8, 19
    mtctr 3
L_803BB268:
    lbz 4, 0x0(9)
    nor 3, 4, 4
    add 8, 8, 4
    lbz 4, 0x1(9)
    add 7, 7, 3
    nor 3, 4, 4
    add 8, 8, 4
    lbz 4, 0x2(9)
    add 7, 7, 3
    nor 3, 4, 4
    add 8, 8, 4
    lbz 4, 0x3(9)
    add 7, 7, 3
    nor 3, 4, 4
    add 8, 8, 4
    lbz 4, 0x4(9)
    add 7, 7, 3
    nor 3, 4, 4
    add 8, 8, 4
    lbz 4, 0x5(9)
    add 7, 7, 3
    nor 3, 4, 4
    add 8, 8, 4
    lbz 4, 0x6(9)
    add 7, 7, 3
    nor 3, 4, 4
    add 8, 8, 4
    lbz 4, 0x7(9)
    add 7, 7, 3
    addi 9, 9, 0x8
    nor 3, 4, 4
    add 8, 8, 4
    add 7, 7, 3
    .4byte 0x4200FF7C # bdnz .L_803BB268
    lwz 4, 0xc0(5)
    addi 6, 30, 0x19a
    lwz 5, 0xc4(5)
    li 3, 0x18
    xor 4, 8, 4
    mr 8, 6
    xor 5, 7, 5
    li 7, 0x0
    or 4, 5, 4
    cntlzw 4, 4
    li 5, 0x0
    extrwi 23, 4, 8, 19
    mtctr 3
L_803BB324:
    lbz 4, 0x0(8)
    nor 3, 4, 4
    add 5, 5, 4
    lbz 4, 0x1(8)
    add 7, 7, 3
    nor 3, 4, 4
    add 5, 5, 4
    lbz 4, 0x2(8)
    add 7, 7, 3
    nor 3, 4, 4
    add 5, 5, 4
    lbz 4, 0x3(8)
    add 7, 7, 3
    nor 3, 4, 4
    add 5, 5, 4
    lbz 4, 0x4(8)
    add 7, 7, 3
    nor 3, 4, 4
    add 5, 5, 4
    lbz 4, 0x5(8)
    add 7, 7, 3
    nor 3, 4, 4
    add 5, 5, 4
    lbz 4, 0x6(8)
    add 7, 7, 3
    nor 3, 4, 4
    add 5, 5, 4
    lbz 4, 0x7(8)
    add 7, 7, 3
    addi 8, 8, 0x8
    nor 3, 4, 4
    add 5, 5, 4
    add 7, 7, 3
    .4byte 0x4200FF7C # bdnz .L_803BB324
    lwz 3, 0xc0(6)
    cmpwi 27, 0x0
    lwz 4, 0xc4(6)
    xor 3, 5, 3
    xor 4, 7, 4
    or 3, 4, 3
    cntlzw 3, 3
    extrwi 27, 3, 8, 19
    .4byte 0x40820160 # bne .L_803BB52C
    li 3, 0x14
    addi 5, 31, 0xa
    li 4, 0x0
    mtctr 3
L_803BB3E0:
    lbz 3, 0x0(5)
    add 4, 4, 3
    lbz 3, 0x1(5)
    add 4, 4, 3
    lbz 3, 0x2(5)
    add 4, 4, 3
    lbz 3, 0x3(5)
    add 4, 4, 3
    lbz 3, 0x4(5)
    add 4, 4, 3
    lbz 3, 0x5(5)
    add 4, 4, 3
    lbz 3, 0x6(5)
    add 4, 4, 3
    lbz 3, 0x7(5)
    add 4, 4, 3
    lbz 3, 0x8(5)
    add 4, 4, 3
    lbz 3, 0x9(5)
    addi 5, 5, 0xa
    add 4, 4, 3
    .4byte 0x4200FFAC # bdnz .L_803BB3E0
    cmplwi 4, 0x0
    .4byte 0x408200D0 # bne .L_803BB50C
    lis 3, lbl_8050EC80@ha
    addi 4, 31, 0xa
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x0
    bl fn_803B933C
    addi 3, 31, 0xa
    li 0, 0x18
    mr 6, 3
    li 4, 0x0
    li 5, 0x0
    mtctr 0
L_803BB46C:
    lbz 7, 0x0(6)
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x1(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x2(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x3(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x4(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x5(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x6(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x7(6)
    add 4, 4, 0
    addi 6, 6, 0x8
    nor 0, 7, 7
    add 5, 5, 7
    add 4, 4, 0
    .4byte 0x4200FF7C # bdnz .L_803BB46C
    li 0, 0xc0
    stw 4, 0xc4(3)
    stw 5, 0xc0(3)
    mtctr 0
L_803BB504:
    .4byte 0x42000000 # bdnz .L_803BB504
    .4byte 0x48000034 # b .L_803BB53C
L_803BB50C:
    cmpwi 0, 0x0
    .4byte 0x4182002C # beq .L_803BB53C
    addi 3, 31, 0xa
    addi 4, 30, 0xa
    li 5, 0xc8
    bl memcpy
    li 22, 0x1
    .4byte 0x48000014 # b .L_803BB53C
L_803BB52C:
    addi 3, 30, 0xa
    addi 4, 31, 0xa
    li 5, 0xc8
    bl memcpy
L_803BB53C:
    cmpwi 25, 0x0
    .4byte 0x40820160 # bne .L_803BB6A0
    li 0, 0x14
    addi 4, 31, 0xd2
    li 3, 0x0
    mtctr 0
L_803BB554:
    lbz 0, 0x0(4)
    add 3, 3, 0
    lbz 0, 0x1(4)
    add 3, 3, 0
    lbz 0, 0x2(4)
    add 3, 3, 0
    lbz 0, 0x3(4)
    add 3, 3, 0
    lbz 0, 0x4(4)
    add 3, 3, 0
    lbz 0, 0x5(4)
    add 3, 3, 0
    lbz 0, 0x6(4)
    add 3, 3, 0
    lbz 0, 0x7(4)
    add 3, 3, 0
    lbz 0, 0x8(4)
    add 3, 3, 0
    lbz 0, 0x9(4)
    addi 4, 4, 0xa
    add 3, 3, 0
    .4byte 0x4200FFAC # bdnz .L_803BB554
    cmplwi 3, 0x0
    .4byte 0x408200D0 # bne .L_803BB680
    lis 3, lbl_8050EC80@ha
    addi 4, 31, 0xa
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    bl fn_803B933C
    addi 3, 31, 0xd2
    li 0, 0x18
    mr 6, 3
    li 4, 0x0
    li 5, 0x0
    mtctr 0
L_803BB5E0:
    lbz 7, 0x0(6)
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x1(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x2(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x3(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x4(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x5(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x6(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x7(6)
    add 4, 4, 0
    addi 6, 6, 0x8
    nor 0, 7, 7
    add 5, 5, 7
    add 4, 4, 0
    .4byte 0x4200FF7C # bdnz .L_803BB5E0
    li 0, 0xc0
    stw 4, 0xc4(3)
    stw 5, 0xc0(3)
    mtctr 0
L_803BB678:
    .4byte 0x42000000 # bdnz .L_803BB678
    .4byte 0x48000034 # b .L_803BB6B0
L_803BB680:
    cmpwi 23, 0x0
    .4byte 0x4182002C # beq .L_803BB6B0
    addi 3, 31, 0xd2
    addi 4, 30, 0xd2
    li 5, 0xc8
    bl memcpy
    li 22, 0x1
    .4byte 0x48000014 # b .L_803BB6B0
L_803BB6A0:
    addi 3, 30, 0xd2
    addi 4, 31, 0xd2
    li 5, 0xc8
    bl memcpy
L_803BB6B0:
    cmpwi 24, 0x0
    .4byte 0x40820160 # bne .L_803BB814
    li 0, 0x14
    addi 4, 31, 0x19a
    li 3, 0x0
    mtctr 0
L_803BB6C8:
    lbz 0, 0x0(4)
    add 3, 3, 0
    lbz 0, 0x1(4)
    add 3, 3, 0
    lbz 0, 0x2(4)
    add 3, 3, 0
    lbz 0, 0x3(4)
    add 3, 3, 0
    lbz 0, 0x4(4)
    add 3, 3, 0
    lbz 0, 0x5(4)
    add 3, 3, 0
    lbz 0, 0x6(4)
    add 3, 3, 0
    lbz 0, 0x7(4)
    add 3, 3, 0
    lbz 0, 0x8(4)
    add 3, 3, 0
    lbz 0, 0x9(4)
    addi 4, 4, 0xa
    add 3, 3, 0
    .4byte 0x4200FFAC # bdnz .L_803BB6C8
    cmplwi 3, 0x0
    .4byte 0x408200D0 # bne .L_803BB7F4
    lis 3, lbl_8050EC80@ha
    addi 4, 31, 0xa
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x2
    bl fn_803B933C
    addi 3, 31, 0x19a
    li 0, 0x18
    mr 6, 3
    li 4, 0x0
    li 5, 0x0
    mtctr 0
L_803BB754:
    lbz 7, 0x0(6)
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x1(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x2(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x3(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x4(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x5(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x6(6)
    add 4, 4, 0
    nor 0, 7, 7
    add 5, 5, 7
    lbz 7, 0x7(6)
    add 4, 4, 0
    addi 6, 6, 0x8
    nor 0, 7, 7
    add 5, 5, 7
    add 4, 4, 0
    .4byte 0x4200FF7C # bdnz .L_803BB754
    li 0, 0xc0
    stw 4, 0xc4(3)
    stw 5, 0xc0(3)
    mtctr 0
L_803BB7EC:
    .4byte 0x42000000 # bdnz .L_803BB7EC
    .4byte 0x48000034 # b .L_803BB824
L_803BB7F4:
    cmpwi 27, 0x0
    .4byte 0x4182002C # beq .L_803BB824
    addi 3, 31, 0x19a
    addi 4, 30, 0x19a
    li 5, 0xc8
    bl memcpy
    li 22, 0x1
    .4byte 0x48000014 # b .L_803BB824
L_803BB814:
    addi 3, 30, 0x19a
    addi 4, 31, 0x19a
    li 5, 0xc8
    bl memcpy
L_803BB824:
    lis 3, lbl_8051C1A0@ha
    lwz 4, 0x4(21)
    addi 27, 3, lbl_8051C1A0@l
    addi 5, 1, 0x10
    lbz 3, 0x1ff4(27)
    bl fn_80058478
    lwz 0, 0x40(1)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_803BB8FC
    lwz 0, 0x48(1)
    cmplwi 0, 0x1c00
    .4byte 0x408200AC # bne .L_803BB8FC
    lbz 3, 0x3e(1)
    clrlwi 0, 3, 30
    cmpwi 0, 0x1
    .4byte 0x4082009C # bne .L_803BB8FC
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x40820094 # bne .L_803BB8FC
    lhz 3, 0x44(1)
    clrlwi 0, 3, 30
    cmpwi 0, 0x1
    .4byte 0x40820084 # bne .L_803BB8FC
    extrwi. 0, 3, 2, 28
    .4byte 0x4082007C # bne .L_803BB8FC
    extrwi. 0, 3, 2, 26
    .4byte 0x40820074 # bne .L_803BB8FC
    extrwi. 0, 3, 2, 24
    .4byte 0x4082006C # bne .L_803BB8FC
    extrwi. 0, 3, 2, 22
    .4byte 0x40820064 # bne .L_803BB8FC
    extrwi. 0, 3, 2, 20
    .4byte 0x4082005C # bne .L_803BB8FC
    extrwi. 0, 3, 2, 18
    .4byte 0x40820054 # bne .L_803BB8FC
    extrwi. 0, 3, 2, 16
    .4byte 0x4082004C # bne .L_803BB8FC
    lhz 3, 0x46(1)
    clrlwi 0, 3, 30
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_803BB8FC
    extrwi. 0, 3, 2, 28
    .4byte 0x40820034 # bne .L_803BB8FC
    extrwi. 0, 3, 2, 26
    .4byte 0x4082002C # bne .L_803BB8FC
    extrwi. 0, 3, 2, 24
    .4byte 0x40820024 # bne .L_803BB8FC
    extrwi. 0, 3, 2, 22
    .4byte 0x4082001C # bne .L_803BB8FC
    extrwi. 0, 3, 2, 20
    .4byte 0x40820014 # bne .L_803BB8FC
    extrwi. 0, 3, 2, 18
    .4byte 0x4082000C # bne .L_803BB8FC
    extrwi. 0, 3, 2, 16
    .4byte 0x4182000C # beq .L_803BB904
L_803BB8FC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_803BB908
L_803BB904:
    li 0, 0x1
L_803BB908:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_803BB918
    li 3, -0x80
    .4byte 0x480005E0 # b .L_803BBEF4
L_803BB918:
    cmpwi 22, 0x0
    .4byte 0x41820044 # beq .L_803BB960
    mr 3, 21
    mr 4, 31
    li 5, 0x2000
    li 6, 0x2000
    bl fn_80058238
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BB940
    .4byte 0x480005B8 # b .L_803BBEF4
L_803BB940:
    mr 3, 21
    mr 4, 31
    li 5, 0x2000
    li 6, 0x4000
    bl fn_80058238
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BB960
    .4byte 0x48000598 # b .L_803BBEF4
L_803BB960:
    lis 3, 0x2
    li 7, 0x0
    subi 23, 3, 0x7961
    li 21, 0x0
L_803BB970:
    addi 8, 21, 0xa
    li 9, 0x0
    add 8, 31, 8
    li 10, 0x0
    lbz 3, 0x65(8)
    clrlwi. 0, 3, 31
    .4byte 0x41820038 # beq .L_803BB9C0
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x40820058 # bne .L_803BB9E8
    li 3, 0x0
    li 0, 0x32
    sth 3, 0x14(8)
    li 9, 0x1
    li 10, 0x1
    sth 3, 0x16(8)
    stb 3, 0x58(8)
    stb 0, 0x59(8)
    stb 3, 0x66(8)
    stb 3, 0x67(8)
    .4byte 0x4800002C # b .L_803BB9E8
L_803BB9C0:
    li 3, 0x0
    li 0, 0x32
    stb 3, 0x65(8)
    li 9, 0x1
    sth 3, 0x14(8)
    sth 3, 0x16(8)
    stb 3, 0x58(8)
    stb 0, 0x59(8)
    stb 3, 0x66(8)
    stb 3, 0x67(8)
L_803BB9E8:
    li 11, 0x0
    li 4, 0x0
    li 5, 0x1
    li 6, 0x2
L_803BB9F8:
    li 0, 0x2
    mr 3, 4
    li 12, 0x0
    li 22, 0x0
    mtctr 0
L_803BBA0C:
    cmpwi 11, 0x7
    .4byte 0x4080000C # bge .L_803BBA1C
    cmpwi 22, 0x2
    .4byte 0x41820014 # beq .L_803BBA2C
L_803BBA1C:
    cmpwi 11, 0x7
    .4byte 0x40820024 # bne .L_803BBA44
    cmpwi 22, 0x1
    .4byte 0x4082001C # bne .L_803BBA44
L_803BBA2C:
    li 0, 0x1
    lwz 24, 0x8(8)
    slw 0, 0, 3
    or 0, 24, 0
    stw 0, 0x8(8)
    .4byte 0x48000044 # b .L_803BBA84
L_803BBA44:
    li 0, 0x1
    lwz 24, 0x8(8)
    slw 25, 0, 3
    and. 0, 24, 25
    .4byte 0x41820020 # beq .L_803BBA74
    clrlwi 0, 9, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_803BBA84
    andc 0, 24, 25
    li 10, 0x1
    stw 0, 0x8(8)
    .4byte 0x48000014 # b .L_803BBA84
L_803BBA74:
    clrlwi. 0, 9, 24
    .4byte 0x4082000C # bne .L_803BBA84
    li 9, 0x1
    li 12, 0x1
L_803BBA84:
    cmpwi 11, 0x7
    addi 3, 3, 0x1
    addi 22, 22, 0x1
    .4byte 0x4080000C # bge .L_803BBA9C
    cmpwi 22, 0x2
    .4byte 0x41820014 # beq .L_803BBAAC
L_803BBA9C:
    cmpwi 11, 0x7
    .4byte 0x40820024 # bne .L_803BBAC4
    cmpwi 22, 0x1
    .4byte 0x4082001C # bne .L_803BBAC4
L_803BBAAC:
    li 0, 0x1
    lwz 24, 0x8(8)
    slw 0, 0, 3
    or 0, 24, 0
    stw 0, 0x8(8)
    .4byte 0x48000044 # b .L_803BBB04
L_803BBAC4:
    li 0, 0x1
    lwz 24, 0x8(8)
    slw 25, 0, 3
    and. 0, 24, 25
    .4byte 0x41820020 # beq .L_803BBAF4
    clrlwi 0, 9, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_803BBB04
    andc 0, 24, 25
    li 10, 0x1
    stw 0, 0x8(8)
    .4byte 0x48000014 # b .L_803BBB04
L_803BBAF4:
    clrlwi. 0, 9, 24
    .4byte 0x4082000C # bne .L_803BBB04
    li 9, 0x1
    li 12, 0x1
L_803BBB04:
    addi 3, 3, 0x1
    addi 22, 22, 0x1
    .4byte 0x4200FF00 # bdnz .L_803BBA0C
    li 24, 0x1
    lbz 25, 0x5a(8)
    slw 0, 24, 11
    clrlwi 0, 0, 24
    and. 3, 25, 0
    .4byte 0x41820048 # beq .L_803BBB6C
    cmpwi 11, 0x7
    .4byte 0x40800024 # bge .L_803BBB50
    lwz 22, 0x8(8)
    slw 3, 24, 5
    and. 3, 22, 3
    .4byte 0x40820030 # bne .L_803BBB6C
    andc 3, 25, 0
    li 10, 0x1
    stb 3, 0x5a(8)
    .4byte 0x48000020 # b .L_803BBB6C
L_803BBB50:
    lwz 22, 0x8(8)
    slw 3, 24, 6
    and. 3, 22, 3
    .4byte 0x40820010 # bne .L_803BBB6C
    andc 3, 25, 0
    li 10, 0x1
    stb 3, 0x5a(8)
L_803BBB6C:
    lbz 22, 0x62(8)
    and. 3, 22, 0
    .4byte 0x41820024 # beq .L_803BBB98
    clrlwi 3, 9, 24
    cmplwi 3, 0x1
    .4byte 0x40820018 # bne .L_803BBB98
    clrlwi. 3, 12, 24
    .4byte 0x40820010 # bne .L_803BBB98
    andc 0, 22, 0
    li 10, 0x1
    stb 0, 0x62(8)
L_803BBB98:
    addi 11, 11, 0x1
    addi 5, 5, 0x4
    cmpwi 11, 0x8
    addi 6, 6, 0x4
    addi 4, 4, 0x4
    .4byte 0x4180FE4C # blt .L_803BB9F8
    lwz 0, 0xc(8)
    cmpw 0, 23
    .4byte 0x40810010 # ble .L_803BBBC8
    li 0, 0x0
    li 10, 0x1
    stw 0, 0xc(8)
L_803BBBC8:
    lwz 0, 0x10(8)
    cmpw 0, 23
    .4byte 0x40810014 # ble .L_803BBBE4
    lis 3, 0x2
    li 10, 0x1
    subi 0, 3, 0x7961
    stw 0, 0x10(8)
L_803BBBE4:
    lbz 0, 0x5b(8)
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_803BBBFC
    li 0, 0x0
    li 10, 0x1
    stb 0, 0x5b(8)
L_803BBBFC:
    lbz 0, 0x66(8)
    cmplwi 0, 0x63
    .4byte 0x40810010 # ble .L_803BBC14
    li 0, 0x0
    li 10, 0x1
    stb 0, 0x66(8)
L_803BBC14:
    lbz 0, 0x67(8)
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_803BBC2C
    li 0, 0x1
    li 10, 0x1
    stb 0, 0x67(8)
L_803BBC2C:
    lbz 0, 0x59(8)
    cmplwi 0, 0x77
    .4byte 0x40810010 # ble .L_803BBC44
    li 0, 0x32
    li 10, 0x1
    stb 0, 0x59(8)
L_803BBC44:
    lbz 0, 0x58(8)
    cmplwi 0, 0x63
    .4byte 0x40810010 # ble .L_803BBC5C
    li 0, 0x0
    li 10, 0x1
    stb 0, 0x58(8)
L_803BBC5C:
    lhz 0, 0x14(8)
    li 5, 0x0
    cmplwi 0, 0x3e7
    .4byte 0x40810010 # ble .L_803BBC78
    li 0, 0x3e7
    li 10, 0x1
    sth 0, 0x14(8)
L_803BBC78:
    addi 3, 8, 0x5c
    lbz 0, 0x5c(8)
    cmplwi 0, 0x1
    .4byte 0x40810024 # ble .L_803BBCA8
    cmpwi 5, 0x0
    .4byte 0x40820010 # bne .L_803BBC9C
    li 0, 0x1
    stb 0, 0x0(3)
    .4byte 0x4800000C # b .L_803BBCA4
L_803BBC9C:
    li 0, 0x0
    stb 0, 0x0(3)
L_803BBCA4:
    li 10, 0x1
L_803BBCA8:
    addi 3, 8, 0x5e
    lbz 0, 0x5e(8)
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_803BBCC4
    li 0, 0x0
    li 10, 0x1
    stb 0, 0x0(3)
L_803BBCC4:
    addi 3, 8, 0x68
    lbz 0, 0x68(8)
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_803BBCE0
    li 0, 0x1
    li 10, 0x1
    stb 0, 0x0(3)
L_803BBCE0:
    addi 3, 8, 0x2
    li 5, 0x1
    lhz 0, 0x16(8)
    cmplwi 0, 0x3e7
    .4byte 0x40810010 # ble .L_803BBD00
    li 0, 0x3e7
    li 10, 0x1
    sth 0, 0x14(3)
L_803BBD00:
    addi 4, 8, 0x1
    addi 3, 4, 0x5c
    lbz 0, 0x5d(8)
    cmplwi 0, 0x1
    .4byte 0x40810024 # ble .L_803BBD34
    cmpwi 5, 0x0
    .4byte 0x40820010 # bne .L_803BBD28
    li 0, 0x1
    stb 0, 0x0(3)
    .4byte 0x4800000C # b .L_803BBD30
L_803BBD28:
    li 0, 0x0
    stb 0, 0x0(3)
L_803BBD30:
    li 10, 0x1
L_803BBD34:
    addi 3, 4, 0x5e
    lbz 0, 0x5e(4)
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_803BBD50
    li 0, 0x0
    li 10, 0x1
    stb 0, 0x0(3)
L_803BBD50:
    addi 3, 4, 0x68
    lbz 0, 0x68(4)
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_803BBD6C
    li 0, 0x1
    li 10, 0x1
    stb 0, 0x0(3)
L_803BBD6C:
    li 0, 0x4
    mr 4, 8
    li 5, 0x0
    li 3, 0x0
    mtctr 0
L_803BBD80:
    lhz 0, 0x18(4)
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBD94
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBD94:
    lhz 0, 0x1a(4)
    addi 4, 4, 0x2
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBDAC
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBDAC:
    lhz 0, 0x1a(4)
    addi 4, 4, 0x2
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBDC4
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBDC4:
    lhz 0, 0x1a(4)
    addi 4, 4, 0x2
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBDDC
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBDDC:
    lhz 0, 0x1a(4)
    addi 4, 4, 0x2
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBDF4
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBDF4:
    lhz 0, 0x1a(4)
    addi 4, 4, 0x2
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBE0C
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBE0C:
    lhz 0, 0x1a(4)
    addi 4, 4, 0x2
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBE24
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBE24:
    lhz 0, 0x1a(4)
    addi 4, 4, 0x2
    cmpw 0, 23
    .4byte 0x4081000C # ble .L_803BBE3C
    sth 3, 0x18(4)
    li 10, 0x1
L_803BBE3C:
    addi 4, 4, 0x2
    addi 5, 5, 0x7
    .4byte 0x4200FF3C # bdnz .L_803BBD80
    clrlwi. 0, 10, 24
    .4byte 0x41820010 # beq .L_803BBE5C
    li 0, 0xc0
    mtctr 0
L_803BBE58:
    .4byte 0x42000000 # bdnz .L_803BBE58
L_803BBE5C:
    addi 7, 7, 0x1
    addi 21, 21, 0xc8
    cmpwi 7, 0x3
    .4byte 0x4180FB08 # blt .L_803BB970
    mr 3, 28
    mr 5, 29
    addi 4, 31, 0xa
    bl memcpy
    lis 3, lbl_8051C1A0@ha
    lhz 0, 0x0(31)
    addi 4, 3, lbl_8051C1A0@l
    lbz 3, 0x1ff4(27)
    sth 0, 0x2000(4)
    addi 4, 1, 0x8
    bl fn_80058748
    lis 3, lbl_8051C1A0@ha
    lwz 4, 0x8(1)
    addi 21, 3, lbl_8051C1A0@l
    lwz 5, 0xc(1)
    lwz 0, 0x1ff8(21)
    lwz 3, 0x1ffc(21)
    xor 0, 4, 0
    xor 3, 5, 3
    or. 0, 3, 0
    .4byte 0x41820024 # beq .L_803BBEE0
    addi 3, 26, 0x6000
    addi 4, 31, 0x262
    li 5, 0x1d4c
    bl memcpy
    addi 3, 26, 0x7d60
    addi 4, 30, 0x262
    li 5, 0x1d4c
    bl memcpy
L_803BBEE0:
    lwz 0, 0x8(1)
    li 3, 0x0
    lwz 4, 0xc(1)
    stw 0, 0x1ff8(21)
    stw 4, 0x1ffc(21)
L_803BBEF4:
    lmw 21, 0x84(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

