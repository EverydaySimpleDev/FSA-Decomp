.section extab, "a"
.balign 4
.global etb_8000CE4C
etb_8000CE4C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CE4C, 8

.section extabindex, "a"
.balign 4
.global eti_8001BEEC
eti_8001BEEC:
    .4byte fn_802DF234
    .4byte 0x00000224
    .4byte etb_8000CE4C
.size eti_8001BEEC, 12

.text
.balign 4
.global fn_802DEE2C
.global fn_802DF234

fn_802DEE2C:
    li 5, 0x0
    li 8, 0x0
    mr 6, 5
L_802DEE38:
    li 3, 0x0
    li 0, 0xa
    mr 4, 3
    mtctr 0
L_802DEE48:
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    li 7, 0x0
    lwz 9, 0x4(9)
    lwz 0, 0xc(9)
    add 9, 0, 3
    addi 3, 3, 0x4
    addi 0, 9, 0x178
    stwx 7, 5, 0
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 0, 0xc(9)
    add 9, 0, 4
    addi 0, 9, 0x3c8
    add 9, 6, 0
    stw 7, 0x4(9)
    stw 7, 0x0(9)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 0, 0xc(9)
    add 9, 0, 4
    addi 0, 9, 0x6e8
    add 9, 6, 0
    stw 7, 0x4(9)
    stw 7, 0x0(9)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 0, 0xc(9)
    add 9, 0, 4
    addi 0, 9, 0xa08
    add 9, 6, 0
    stw 7, 0x4(9)
    stw 7, 0x0(9)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 0, 0xc(9)
    add 9, 0, 4
    addi 4, 4, 0x8
    addi 0, 9, 0xd28
    add 9, 6, 0
    stw 7, 0x4(9)
    stw 7, 0x0(9)
    .4byte 0x4200FF5C # bdnz .L_802DEE48
    addi 8, 8, 0x1
    addi 6, 6, 0x50
    cmpwi 8, 0xa
    addi 5, 5, 0x28
    .4byte 0x4180FF38 # blt .L_802DEE38
    li 0, 0x10
    li 10, 0x0
    mtctr 0
L_802DEF10:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 6, 7, 0x1
    mr 4, 6
    addi 9, 10, 0x308
    lwz 5, 0x4(5)
    li 3, 0x0
    addi 0, 10, 0x328
    li 8, 0xff
    lwz 5, 0xc(5)
    addi 6, 6, 0x2f68
    addi 4, 4, 0x2fe8
    addi 7, 7, 0x4
    stbx 3, 5, 9
    addi 9, 10, 0x309
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 8, 5, 0
    addi 0, 10, 0x329
    addi 10, 10, 0x2
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 3, 5, 6
    addis 6, 7, 0x1
    addi 7, 7, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 3, 5, 4
    mr 4, 6
    addi 6, 6, 0x2f68
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x2fe8
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 3, 5, 9
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 8, 5, 0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 3, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 3, 5, 4
    .4byte 0x4200FF3C # bdnz .L_802DEF10
    li 0, 0x4
    mtctr 0
L_802DEFE0:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 8, 3, 0x348
    li 5, 0x0
    addi 7, 3, 0x34c
    lwz 4, 0x4(4)
    addi 6, 3, 0x350
    addi 0, 3, 0x354
    lwz 4, 0xc(4)
    stwx 5, 4, 8
    addi 8, 3, 0x358
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 5, 4, 7
    addi 7, 3, 0x35c
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 5, 4, 6
    addi 6, 3, 0x360
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 5, 4, 0
    addi 0, 3, 0x364
    addi 3, 3, 0x20
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 5, 4, 8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 5, 4, 7
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 5, 4, 6
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 5, 4, 0
    .4byte 0x4200FF58 # bdnz .L_802DEFE0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 6, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x6748(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x674c(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x6750(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x6754(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x6758(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x675c(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x6760(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 5, 0x6764(3)
L_802DF110:
    li 7, 0x0
    mr 4, 5
L_802DF118:
    li 0, 0x4
    li 3, 0x0
    mtctr 0
L_802DF124:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addis 8, 8, 0x1
    subi 8, 8, 0x298
    stwx 0, 4, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addis 8, 8, 0x1
    subi 8, 8, 0x294
    stwx 0, 4, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addis 8, 8, 0x1
    subi 8, 8, 0x290
    stwx 0, 4, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addis 8, 8, 0x1
    subi 8, 8, 0x28c
    stwx 0, 4, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addis 8, 8, 0x1
    subi 8, 8, 0x288
    stwx 0, 4, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addis 8, 8, 0x1
    subi 8, 8, 0x284
    stwx 0, 4, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addis 8, 8, 0x1
    subi 8, 8, 0x280
    stwx 0, 4, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 3
    addi 3, 3, 0x20
    addis 8, 8, 0x1
    subi 8, 8, 0x27c
    stwx 0, 4, 8
    .4byte 0x4200FF18 # bdnz .L_802DF124
    addi 7, 7, 0x1
    addi 4, 4, 0x80
    cmpwi 7, 0xa
    .4byte 0x4180FEFC # blt .L_802DF118
    addi 6, 6, 0x1
    addi 5, 5, 0x500
    cmpwi 6, 0xa
    .4byte 0x4180FEE4 # blt .L_802DF110
    blr

fn_802DF234:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D4068@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D4068@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF284
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
L_802DF284:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF2BC
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
L_802DF2BC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF2F4
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
L_802DF2F4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF32C
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
L_802DF32C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF364
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
L_802DF364:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF39C
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
L_802DF39C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF3D4
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
L_802DF3D4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF40C
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
L_802DF40C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802DF444
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
L_802DF444:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_802DF234
