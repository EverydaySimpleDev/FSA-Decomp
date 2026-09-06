.section extab, "a"
.balign 4
.global etb_80008EFC
etb_80008EFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008EFC, 8

.global etb_80008F04
etb_80008F04:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_80008F04, 8

.global etb_80008F0C
etb_80008F0C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80008F0C, 8

.section extabindex, "a"
.balign 4
.global eti_80016654
eti_80016654:
    .4byte fn_801F5E34
    .4byte 0x00000224
    .4byte etb_80008EFC
.size eti_80016654, 12

.global eti_80016660
eti_80016660:
    .4byte fn_801F6068
    .4byte 0x0000019C
    .4byte etb_80008F04
.size eti_80016660, 12

.global eti_8001666C
eti_8001666C:
    .4byte fn_801F62AC
    .4byte 0x00000398
    .4byte etb_80008F0C
.size eti_8001666C, 12

.text
.balign 4
.global fn_801F5E34
.global fn_801F6058
.global fn_801F6068
.global fn_801F6204
.global fn_801F620C
.global fn_801F62AC

fn_801F5E34:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CAAD8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CAAD8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F5E84
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801F5E84:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F5EBC
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801F5EBC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F5EF4
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801F5EF4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F5F2C
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801F5F2C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F5F64
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801F5F64:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F5F9C
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801F5F9C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F5FD4
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801F5FD4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F600C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801F600C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F6044
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801F6044:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F6058:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 3, 0x3030(3)
    blr

fn_801F6068:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 30, 3
    li 31, 0x0
    li 25, 0x0
    mr 26, 30
    li 27, 0x1
    li 28, -0x270f
    li 29, 0x3
L_801F6094:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 27, 25
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_801F60C4
    mr 3, 25
    bl fn_80236228
    stw 3, 0x3020(26)
    addi 31, 31, 0x1
    stw 25, 0x3030(26)
    .4byte 0x4800000C # b .L_801F60CC
L_801F60C4:
    stw 28, 0x3020(26)
    stw 29, 0x3030(26)
L_801F60CC:
    addi 25, 25, 0x1
    addi 26, 26, 0x4
    cmpwi 25, 0x4
    .4byte 0x4180FFBC # blt .L_801F6094
    mr 5, 30
    subi 3, 31, 0x1
    li 10, 0x0
    .4byte 0x48000070 # b .L_801F6158
L_801F60EC:
    addi 8, 10, 0x1
    mr 9, 10
    slwi 4, 8, 2
    lwz 11, 0x3020(5)
    subf 0, 8, 31
    add 4, 30, 4
    mtctr 0
    cmpw 8, 31
    .4byte 0x40800044 # bge .L_801F6150
L_801F6110:
    lwz 6, 0x3020(4)
    cmpw 11, 6
    .4byte 0x4080002C # bge .L_801F6144
    slwi 0, 9, 2
    mr 9, 8
    add 7, 30, 0
    stw 6, 0x3020(7)
    stw 11, 0x3020(4)
    lwz 11, 0x3020(7)
    lwz 6, 0x3030(4)
    lwz 0, 0x3030(7)
    stw 0, 0x3030(4)
    stw 6, 0x3030(7)
L_801F6144:
    addi 4, 4, 0x4
    addi 8, 8, 0x1
    .4byte 0x4200FFC4 # bdnz .L_801F6110
L_801F6150:
    addi 5, 5, 0x4
    addi 10, 10, 0x1
L_801F6158:
    cmpw 10, 3
    .4byte 0x4180FF90 # blt .L_801F60EC
    cmpwi 31, 0x4
    .4byte 0x4080008C # bge .L_801F61F0
    slwi 0, 31, 2
    subfic 3, 31, 0x4
    add 4, 30, 0
    lwz 5, 0x301c(4)
    lwz 6, 0x302c(4)
    .4byte 0x40800074 # bge .L_801F61F0
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820054 # beq .L_801F61DC
L_801F618C:
    stw 5, 0x3020(4)
    stw 6, 0x3030(4)
    stw 5, 0x3024(4)
    stw 6, 0x3034(4)
    stw 5, 0x3028(4)
    stw 6, 0x3038(4)
    stw 5, 0x302c(4)
    stw 6, 0x303c(4)
    stw 5, 0x3030(4)
    stw 6, 0x3040(4)
    stw 5, 0x3034(4)
    stw 6, 0x3044(4)
    stw 5, 0x3038(4)
    stw 6, 0x3048(4)
    stw 5, 0x303c(4)
    stw 6, 0x304c(4)
    addi 4, 4, 0x20
    .4byte 0x4200FFBC # bdnz .L_801F618C
    andi. 3, 3, 0x7
    .4byte 0x41820018 # beq .L_801F61F0
L_801F61DC:
    mtctr 3
L_801F61E0:
    stw 5, 0x3020(4)
    stw 6, 0x3030(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFF4 # bdnz .L_801F61E0
L_801F61F0:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801F6204:
    stb 4, 0x305c(3)
    blr

fn_801F620C:
    lwz 7, 0x3044(3)
    li 8, 0x0
    lwz 6, 0x3054(3)
    li 9, 0x0
    mtctr 7
    cmpwi 7, 0x0
    .4byte 0x4081001C # ble .L_801F6240
L_801F6228:
    lwz 0, 0x0(6)
    cmplw 5, 0
    .4byte 0x41820010 # beq .L_801F6240
    addi 6, 6, 0x4
    addi 9, 9, 0x1
    .4byte 0x4200FFEC # bdnz .L_801F6228
L_801F6240:
    cmpw 9, 7
    .4byte 0x40800060 # bge .L_801F62A4
    lwz 6, 0x3048(3)
    li 10, 0x0
    lwz 5, 0x304c(3)
    mtctr 6
    cmpwi 6, 0x0
    .4byte 0x40810034 # ble .L_801F6290
L_801F6260:
    lwz 0, 0x0(5)
    cmplw 4, 0
    .4byte 0x4082001C # bne .L_801F6284
    mullw 0, 10, 7
    lwz 4, 0x3058(3)
    add 0, 9, 0
    slwi 0, 0, 2
    lwzx 8, 4, 0
    .4byte 0x48000010 # b .L_801F6290
L_801F6284:
    addi 5, 5, 0x4
    addi 10, 10, 0x1
    .4byte 0x4200FFD4 # bdnz .L_801F6260
L_801F6290:
    cmpw 10, 6
    .4byte 0x40820010 # bne .L_801F62A4
    lwz 3, 0x3058(3)
    slwi 0, 9, 2
    lwzx 8, 3, 0
L_801F62A4:
    mr 3, 8
    blr

fn_801F62AC:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_8046A048@ha
    lis 6, 0x454e
    stw 0, 0x24(1)
    addi 5, 5, lbl_8046A048@l
    stmw 27, 0xc(1)
    mr 28, 4
    mr 31, 3
    addi 4, 6, 0x4d20
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xa4(7)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    mr 29, 3
    lis 4, lbl_8046A048@ha
    lis 6, 0x454e
    lwz 3, 0xa4(5)
    addi 5, 4, lbl_8046A048@l
    addi 4, 6, 0x4d20
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    mr 4, 3
    lwz 3, 0xa4(5)
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 30, 3
    stw 0, 0x3044(31)
    mr 3, 29
L_801F6344:
    lbz 0, 0x0(3)
    extsb 0, 0
    cmpwi 0, 0x2c
    .4byte 0x40820014 # bne .L_801F6364
    lwz 4, 0x3044(31)
    addi 0, 4, 0x1
    stw 0, 0x3044(31)
    .4byte 0x4800000C # b .L_801F636C
L_801F6364:
    cmpwi 0, 0xa
    .4byte 0x4182000C # beq .L_801F6374
L_801F636C:
    addi 3, 3, 0x1
    .4byte 0x4BFFFFD4 # b .L_801F6344
L_801F6374:
    lwz 5, 0x3044(31)
    addi 0, 30, 0x1
    li 4, 0x0
    mr 3, 29
    subi 5, 5, 0x1
    stw 5, 0x3044(31)
    stw 4, 0x3048(31)
    mtctr 0
    cmpwi 30, 0x0
    .4byte 0x41800024 # blt .L_801F63BC
L_801F639C:
    lbz 0, 0x0(3)
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_801F63B4
    lwz 4, 0x3048(31)
    addi 0, 4, 0x1
    stw 0, 0x3048(31)
L_801F63B4:
    addi 3, 3, 0x1
    .4byte 0x4200FFE4 # bdnz .L_801F639C
L_801F63BC:
    lwz 3, 0x3048(31)
    mr 4, 28
    li 5, 0x0
    subi 0, 3, 0x1
    stw 0, 0x3048(31)
    lwz 3, 0x3048(31)
    addi 0, 3, 0x1f
    extlwi 3, 0, 25, 2
    bl fn_80084514
    stw 3, 0x304c(31)
    mr 4, 28
    li 5, 0x0
    lwz 3, 0x3048(31)
    addi 0, 3, 0x1f
    extlwi 3, 0, 25, 2
    bl fn_80084514
    stw 3, 0x3050(31)
    mr 4, 28
    li 5, 0x0
    lwz 3, 0x3044(31)
    addi 0, 3, 0x1f
    extlwi 3, 0, 25, 2
    bl fn_80084514
    stw 3, 0x3054(31)
    mr 4, 28
    li 5, 0x0
    lwz 3, 0x3048(31)
    lwz 0, 0x3044(31)
    mullw 3, 3, 0
    addi 0, 3, 0x1f
    extlwi 3, 0, 25, 2
    bl fn_80084514
    stw 3, 0x3058(31)
    mr 3, 29
    li 10, 0x0
    li 11, 0x0
    li 4, 0x0
    li 9, 0x0
L_801F6454:
    lbz 12, 0x0(3)
    extsb 0, 12
    cmpwi 0, 0x2c
    .4byte 0x4182000C # beq .L_801F646C
    cmpwi 0, 0xa
    .4byte 0x40820054 # bne .L_801F64BC
L_801F646C:
    cmpwi 11, 0x1
    .4byte 0x40810034 # ble .L_801F64A4
    add 8, 29, 4
    lwz 4, 0x3054(31)
    lbz 5, 0x1(8)
    subi 0, 9, 0x8
    lbz 6, 0x0(8)
    lbz 7, 0x2(8)
    clrlslwi 5, 5, 24, 16
    rlwimi 5, 6, 24, 0, 7
    lbz 8, 0x3(8)
    rlwimi 5, 7, 8, 16, 23
    rlwimi 5, 8, 0, 24, 31
    stwx 5, 4, 0
L_801F64A4:
    extsb 0, 12
    cmpwi 0, 0x2c
    .4byte 0x4082001C # bne .L_801F64C8
    addi 9, 9, 0x4
    addi 11, 11, 0x1
    addi 4, 10, 0x1
L_801F64BC:
    addi 10, 10, 0x1
    addi 3, 3, 0x1
    .4byte 0x4BFFFF90 # b .L_801F6454
L_801F64C8:
    mr 9, 29
    li 4, 0x0
    li 5, 0x0
    li 0, 0x0
    li 6, 0x0
    li 3, 0x0
    .4byte 0x48000148 # b .L_801F6628
L_801F64E4:
    lbz 7, 0x0(9)
    extsb 8, 7
    cmpwi 8, 0x2c
    .4byte 0x41820014 # beq .L_801F6504
    cmpwi 8, 0xa
    .4byte 0x4182000C # beq .L_801F6504
    extsb. 8, 7
    .4byte 0x40820120 # bne .L_801F6620
L_801F6504:
    cmpwi 6, 0x0
    .4byte 0x408100E0 # ble .L_801F65E8
    extsb. 8, 7
    .4byte 0x4082000C # bne .L_801F651C
    cmpwi 5, 0x2
    .4byte 0x418000D0 # blt .L_801F65E8
L_801F651C:
    cmpwi 5, 0x0
    .4byte 0x40820038 # bne .L_801F6558
    add 27, 29, 0
    lwz 10, 0x304c(31)
    lbz 11, 0x1(27)
    subi 8, 3, 0x4
    lbz 12, 0x0(27)
    lbz 28, 0x2(27)
    clrlslwi 11, 11, 24, 16
    rlwimi 11, 12, 24, 0, 7
    lbz 27, 0x3(27)
    rlwimi 11, 28, 8, 16, 23
    rlwimi 11, 27, 0, 24, 31
    stwx 11, 10, 8
    .4byte 0x48000094 # b .L_801F65E8
L_801F6558:
    cmpwi 5, 0x1
    .4byte 0x40820020 # bne .L_801F657C
    lwz 11, 0x3050(31)
    add 12, 29, 0
    subi 10, 3, 0x4
    li 8, 0x0
    stwx 12, 11, 10
    stb 8, 0x0(9)
    .4byte 0x48000070 # b .L_801F65E8
L_801F657C:
    subf 8, 0, 4
    mr 11, 0
    add 10, 29, 0
    li 12, 0x0
    mtctr 8
    cmpw 0, 4
    .4byte 0x40800034 # bge .L_801F65C8
L_801F6598:
    lbz 8, 0x0(10)
    extsb 8, 8
    cmpwi 8, 0x30
    .4byte 0x41800018 # blt .L_801F65BC
    cmpwi 8, 0x39
    .4byte 0x41810010 # bgt .L_801F65BC
    mulli 12, 12, 0xa
    add 12, 8, 12
    subi 12, 12, 0x30
L_801F65BC:
    addi 11, 11, 0x1
    addi 10, 10, 0x1
    .4byte 0x4200FFD4 # bdnz .L_801F6598
L_801F65C8:
    lwz 8, 0x3044(31)
    subi 10, 6, 0x1
    lwz 11, 0x3058(31)
    mullw 8, 10, 8
    add 8, 5, 8
    slwi 8, 8, 2
    subi 8, 8, 0x8
    stwx 12, 11, 8
L_801F65E8:
    extsb 8, 7
    cmpwi 8, 0x2c
    .4byte 0x4182000C # beq .L_801F65FC
    extsb. 7, 7
    .4byte 0x40820010 # bne .L_801F6608
L_801F65FC:
    addi 5, 5, 0x1
    addi 0, 4, 0x1
    .4byte 0x4800001C # b .L_801F6620
L_801F6608:
    cmpwi 8, 0xa
    .4byte 0x40820014 # bne .L_801F6620
    addi 0, 4, 0x1
    li 5, 0x0
    addi 3, 3, 0x4
    addi 6, 6, 0x1
L_801F6620:
    addi 4, 4, 0x1
    addi 9, 9, 0x1
L_801F6628:
    cmpw 4, 30
    .4byte 0x4081FEB8 # ble .L_801F64E4
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801F5E34
