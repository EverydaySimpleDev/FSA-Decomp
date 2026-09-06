# Fresh project-wide gap hunt continuation: 17 functions, 8,796 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000D5DC
etb_8000D5DC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000D5DC, 8

.global etb_8000D5E4
etb_8000D5E4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000D5E4, 8

.global etb_8000D5EC
etb_8000D5EC:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000D5EC, 8

.global etb_8000D5F4
etb_8000D5F4:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_8000D5F4, 8

.global etb_8000D5FC
etb_8000D5FC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D5FC, 8

.global etb_8000D604
etb_8000D604:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000D604, 8

.global etb_8000D60C
etb_8000D60C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D60C, 8

.global etb_8000D614
etb_8000D614:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D614, 8

.global etb_8000D61C
etb_8000D61C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D61C, 8

.global etb_8000D624
etb_8000D624:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D624, 8

.section extabindex, "a"
.balign 4
.global eti_8001C99C
eti_8001C99C:
    .4byte fn_80307AC8
    .4byte 0x00000090
    .4byte etb_8000D5DC
.size eti_8001C99C, 12

.global eti_8001C9A8
eti_8001C9A8:
    .4byte fn_80307B58
    .4byte 0x000004C4
    .4byte etb_8000D5E4
.size eti_8001C9A8, 12

.global eti_8001C9B4
eti_8001C9B4:
    .4byte fn_8030801C
    .4byte 0x00000588
    .4byte etb_8000D5EC
.size eti_8001C9B4, 12

.global eti_8001C9C0
eti_8001C9C0:
    .4byte fn_803085A4
    .4byte 0x00000768
    .4byte etb_8000D5F4
.size eti_8001C9C0, 12

.global eti_8001C9CC
eti_8001C9CC:
    .4byte fn_80309014
    .4byte 0x00000048
    .4byte etb_8000D5FC
.size eti_8001C9CC, 12

.global eti_8001C9D8
eti_8001C9D8:
    .4byte fn_8030905C
    .4byte 0x00000740
    .4byte etb_8000D604
.size eti_8001C9D8, 12

.global eti_8001C9E4
eti_8001C9E4:
    .4byte fn_8030979C
    .4byte 0x00000260
    .4byte etb_8000D60C
.size eti_8001C9E4, 12

.global eti_8001C9F0
eti_8001C9F0:
    .4byte fn_80309A9C
    .4byte 0x000000D8
    .4byte etb_8000D614
.size eti_8001C9F0, 12

.global eti_8001C9FC
eti_8001C9FC:
    .4byte fn_80309B74
    .4byte 0x000000D8
    .4byte etb_8000D61C
.size eti_8001C9FC, 12

.global eti_8001CA08
eti_8001CA08:
    .4byte fn_80309C4C
    .4byte 0x000000D8
    .4byte etb_8000D624
.size eti_8001CA08, 12

.text
.balign 4
.global fn_80307AC8
.global fn_80307B58
.global fn_8030801C
.global fn_803085A4
.global fn_80308D0C
.global fn_80308E90
.global fn_80309014
.global fn_8030905C
.global fn_8030979C
.global fn_803099FC
.global fn_80309A00
.global fn_80309A38
.global fn_80309A54
.global fn_80309A78
.global fn_80309A9C
.global fn_80309B74
.global fn_80309C4C

fn_80307AC8:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 8, 0x2
    stw 0, 0x14(1)
    .4byte 0x4082000C # bne .L_80307AE4
    li 8, 0x0
    addi 6, 6, 0x200
L_80307AE4:
    cmpwi 6, 0x45
    .4byte 0x4080002C # bge .L_80307B14
    neg 9, 7
    neg 0, 8
    or 7, 9, 7
    li 10, 0x4
    or 0, 0, 8
    li 8, 0x0
    srwi 7, 7, 31
    srwi 9, 0, 31
    bl fn_80307830
    .4byte 0x48000038 # b .L_80307B48
L_80307B14:
    neg 10, 8
    neg 0, 7
    or 10, 10, 8
    li 8, 0x0
    srwi 10, 10, 31
    or 0, 0, 7
    stw 10, 0x8(1)
    srwi 7, 0, 31
    addi 6, 6, 0x400
    li 10, 0x0
    stw 8, 0xc(1)
    li 8, 0x2
    bl fn_803075AC
L_80307B48:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80307B58:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    clrlwi. 0, 5, 24
    stmw 27, 0x1c(1)
    mr 28, 4
    .4byte 0x41820028 # beq .L_80307B98
    mulli 5, 28, 0x68
    lis 4, lbl_80506DE8@ha
    li 6, 0xa
    addi 0, 4, lbl_80506DE8@l
    add 4, 0, 5
    lbz 0, 0x3(4)
    rlwimi 0, 6, 4, 24, 27
    stb 0, 0x3(4)
    .4byte 0x48000024 # b .L_80307BB8
L_80307B98:
    mulli 5, 28, 0x68
    lis 4, lbl_80506DE8@ha
    li 6, 0xb
    addi 0, 4, lbl_80506DE8@l
    add 4, 0, 5
    lbz 0, 0x3(4)
    rlwimi 0, 6, 4, 24, 27
    stb 0, 0x3(4)
L_80307BB8:
    mr 4, 28
    bl fn_803085A4
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    .4byte 0x3882E678 # li r4, lbl_80541618@sda21
    lis 3, lbl_805071E8@ha
    slwi 6, 28, 1
    lbzx 7, 4, 0
    .4byte 0x38AD914C # li r5, lbl_8053AD0C@sda21
    slwi 4, 28, 8
    addi 0, 3, lbl_805071E8@l
    subi 3, 7, 0x2
    lhzx 30, 5, 6
    slwi 29, 3, 1
    add 27, 0, 4
    li 31, 0x0
    .4byte 0x48000070 # b .L_80307C64
L_80307BF8:
    mr 3, 28
    bl fn_8037F0CC
    add 0, 30, 31
    slwi 0, 0, 1
    sthx 3, 27, 0
    mr 3, 28
    bl fn_8037F1E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x3
    .4byte 0x41820044 # beq .L_80307C60
    mulli 4, 28, 0x68
    lis 3, lbl_80506DE8@ha
    li 5, 0xc
    addi 0, 3, lbl_80506DE8@l
    add 3, 0, 4
    li 7, 0x1
    lbz 0, 0x3(3)
    rlwimi 0, 5, 4, 24, 27
    .4byte 0x38CD9164 # li r6, lbl_8053AD24@sda21
    li 5, 0x0
    .4byte 0x388D915C # li r4, lbl_8053AD1C@sda21
    stbx 7, 6, 28
    addi 31, 31, 0x1
    stbx 5, 4, 28
    stb 0, 0x3(3)
    .4byte 0x48000010 # b .L_80307C6C
L_80307C60:
    addi 31, 31, 0x1
L_80307C64:
    cmpw 31, 29
    .4byte 0x4180FF90 # blt .L_80307BF8
L_80307C6C:
    slwi 7, 28, 1
    .4byte 0x38CD914C # li r6, lbl_8053AD0C@sda21
    lhzx 0, 6, 7
    lis 3, lbl_805071E8@ha
    cmpw 31, 29
    slwi 4, 28, 8
    add 5, 0, 31
    addi 0, 3, lbl_805071E8@l
    sthx 5, 6, 7
    add 6, 0, 4
    subf 3, 31, 29
    li 5, 0x0
    .4byte 0x408000B4 # bge .L_80307D50
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820090 # beq .L_80307D38
L_80307CAC:
    add 4, 30, 31
    addi 31, 31, 0x1
    slwi 0, 4, 1
    add 4, 30, 31
    sthx 5, 6, 0
    slwi 0, 4, 1
    addi 31, 31, 0x1
    add 4, 30, 31
    sthx 5, 6, 0
    slwi 0, 4, 1
    addi 31, 31, 0x1
    add 4, 30, 31
    sthx 5, 6, 0
    slwi 0, 4, 1
    addi 31, 31, 0x1
    add 4, 30, 31
    sthx 5, 6, 0
    slwi 0, 4, 1
    addi 31, 31, 0x1
    add 4, 30, 31
    sthx 5, 6, 0
    slwi 0, 4, 1
    addi 31, 31, 0x1
    add 4, 30, 31
    sthx 5, 6, 0
    slwi 0, 4, 1
    addi 31, 31, 0x1
    add 4, 30, 31
    sthx 5, 6, 0
    slwi 0, 4, 1
    addi 31, 31, 0x1
    sthx 5, 6, 0
    .4byte 0x4200FF80 # bdnz .L_80307CAC
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_80307D50
L_80307D38:
    mtctr 3
L_80307D3C:
    add 4, 30, 31
    addi 31, 31, 0x1
    slwi 0, 4, 1
    sthx 5, 6, 0
    .4byte 0x4200FFF0 # bdnz .L_80307D3C
L_80307D50:
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    .4byte 0x38A2E678 # li r5, lbl_80541618@sda21
    mulli 6, 28, 0x68
    lis 3, lbl_80506DE8@ha
    lbzx 5, 5, 0
    lis 4, lbl_805071E8@ha
    addi 0, 3, lbl_80506DE8@l
    subic. 7, 5, 0x2
    add 3, 0, 6
    addi 0, 4, lbl_805071E8@l
    slwi 5, 28, 8
    add 11, 0, 5
    mr 10, 3
    mr 4, 7
    slwi 5, 30, 1
    .4byte 0x408100EC # ble .L_80307E78
    srwi. 0, 7, 1
    mtctr 0
    .4byte 0x41820094 # beq .L_80307E2C
L_80307D9C:
    add 7, 11, 5
    addi 5, 5, 0x4
    lhz 6, 0x2(7)
    lhz 0, 0x0(7)
    add 7, 11, 5
    rlwimi 0, 6, 16, 0, 15
    lhz 6, 0x2(7)
    stw 0, 0x8(1)
    addi 5, 5, 0x4
    lhz 0, 0x0(7)
    rlwimi 0, 6, 16, 0, 15
    lbz 9, 0xb(1)
    lbz 8, 0xa(1)
    lbz 7, 0x9(1)
    lbz 6, 0x8(1)
    stb 9, 0xc(1)
    stw 0, 0x8(1)
    stb 8, 0xd(1)
    lbz 9, 0xb(1)
    stb 7, 0xe(1)
    lbz 8, 0xa(1)
    stb 6, 0xf(1)
    lbz 7, 0x9(1)
    lwz 0, 0xc(1)
    lbz 6, 0x8(1)
    stb 9, 0xc(1)
    stb 8, 0xd(1)
    stb 7, 0xe(1)
    stb 6, 0xf(1)
    stw 0, 0x8(10)
    lwz 0, 0xc(1)
    stw 0, 0xc(10)
    addi 10, 10, 0x8
    .4byte 0x4200FF7C # bdnz .L_80307D9C
    andi. 4, 4, 0x1
    .4byte 0x41820050 # beq .L_80307E78
L_80307E2C:
    mtctr 4
L_80307E30:
    add 7, 11, 5
    addi 5, 5, 0x4
    lhz 6, 0x2(7)
    lhz 0, 0x0(7)
    rlwimi 0, 6, 16, 0, 15
    stw 0, 0x8(1)
    lbz 9, 0xb(1)
    lbz 8, 0xa(1)
    lbz 7, 0x9(1)
    lbz 6, 0x8(1)
    stb 9, 0xc(1)
    stb 8, 0xd(1)
    stb 7, 0xe(1)
    stb 6, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(10)
    addi 10, 10, 0x4
    .4byte 0x4200FFBC # bdnz .L_80307E30
L_80307E78:
    lis 4, lbl_80504A18@ha
    lis 6, lbl_804FBC18@ha
    slwi 5, 28, 2
    li 0, 0x0
    addi 4, 4, lbl_80504A18@l
    addi 6, 6, lbl_804FBC18@l
    lwzx 4, 4, 5
    mulli 5, 28, 0x2380
    mulli 4, 4, 0x11c
    add 5, 6, 5
    add 4, 5, 4
    lbz 4, 0x118(4)
    cmplwi 4, 0x0
    .4byte 0x408200B0 # bne .L_80307F5C
    .4byte 0x88AD9148 # lbz r5, lbl_8053AD08@sda21(r0)
    .4byte 0x3882E678 # li r4, lbl_80541618@sda21
    addi 7, 3, 0x8
    li 6, 0x8
    lbzx 4, 4, 5
    slwi 8, 4, 2
    cmpwi 8, 0x8
    .4byte 0x40810138 # ble .L_80308004
    subi 4, 8, 0x8
    cmpwi 4, 0x8
    .4byte 0x40810060 # ble .L_80307F38
    subi 4, 4, 0x1
    srwi 4, 4, 3
    mtctr 4
    .4byte 0x40810050 # ble .L_80307F38
L_80307EEC:
    lbz 5, 0x0(7)
    addi 6, 6, 0x8
    lbz 4, 0x1(7)
    add 0, 0, 5
    lbz 5, 0x2(7)
    add 0, 0, 4
    lbz 4, 0x3(7)
    add 0, 0, 5
    lbz 5, 0x4(7)
    add 0, 0, 4
    lbz 4, 0x5(7)
    add 0, 0, 5
    lbz 5, 0x6(7)
    add 0, 0, 4
    lbz 4, 0x7(7)
    add 0, 0, 5
    addi 7, 7, 0x8
    add 0, 0, 4
    .4byte 0x4200FFB8 # bdnz .L_80307EEC
L_80307F38:
    subf 4, 6, 8
    mtctr 4
    cmpw 6, 8
    .4byte 0x408000C0 # bge .L_80308004
L_80307F48:
    lbz 4, 0x0(7)
    addi 7, 7, 0x1
    add 0, 0, 4
    .4byte 0x4200FFF4 # bdnz .L_80307F48
    .4byte 0x480000AC # b .L_80308004
L_80307F5C:
    .4byte 0x88AD9148 # lbz r5, lbl_8053AD08@sda21(r0)
    .4byte 0x3882E678 # li r4, lbl_80541618@sda21
    addi 7, 3, 0x8
    li 6, 0x8
    lbzx 4, 4, 5
    slwi 8, 4, 2
    cmpwi 8, 0x8
    .4byte 0x4081008C # ble .L_80308004
    subi 4, 8, 0x8
    cmpwi 4, 0x8
    .4byte 0x40810060 # ble .L_80307FE4
    subi 4, 4, 0x1
    srwi 4, 4, 3
    mtctr 4
    .4byte 0x40810050 # ble .L_80307FE4
L_80307F98:
    lbz 5, 0x0(7)
    addi 6, 6, 0x8
    lbz 4, 0x1(7)
    add 0, 0, 5
    lbz 5, 0x2(7)
    add 0, 0, 4
    lbz 4, 0x3(7)
    add 0, 0, 5
    lbz 5, 0x4(7)
    add 0, 0, 4
    lbz 4, 0x5(7)
    add 0, 0, 5
    lbz 5, 0x6(7)
    add 0, 0, 4
    lbz 4, 0x7(7)
    add 0, 0, 5
    addi 7, 7, 0x8
    add 0, 0, 4
    .4byte 0x4200FFB8 # bdnz .L_80307F98
L_80307FE4:
    subf 4, 6, 8
    mtctr 4
    cmpw 6, 8
    .4byte 0x40800014 # bge .L_80308004
L_80307FF4:
    lbz 4, 0x0(7)
    addi 7, 7, 0x1
    add 0, 0, 4
    .4byte 0x4200FFF4 # bdnz .L_80307FF4
L_80308004:
    stb 0, 0x0(3)
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8030801C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 27, 4
    .4byte 0x80AD8F30 # lwz r5, lbl_8053AAF0@sda21(r0)
    lbz 0, 0x78(5)
    cmplwi 0, 0x4
    .4byte 0x41800074 # blt .L_803080B0
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4c(4)
    subfic 0, 4, 0x7
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x40820014 # bne .L_80308068
    cmpwi 4, 0xb
    .4byte 0x4182000C # beq .L_80308068
    cmpwi 4, 0xc
    .4byte 0x40820028 # bne .L_8030808C
L_80308068:
    mulli 5, 27, 0x68
    lis 4, lbl_80506DE8@ha
    li 6, 0x9
    addi 0, 4, lbl_80506DE8@l
    add 4, 0, 5
    lbz 0, 0x3(4)
    rlwimi 0, 6, 4, 24, 27
    stb 0, 0x3(4)
    .4byte 0x48000048 # b .L_803080D0
L_8030808C:
    mulli 5, 27, 0x68
    lis 4, lbl_80506DE8@ha
    li 6, 0xd
    addi 0, 4, lbl_80506DE8@l
    add 4, 0, 5
    lbz 0, 0x3(4)
    rlwimi 0, 6, 4, 24, 27
    stb 0, 0x3(4)
    .4byte 0x48000024 # b .L_803080D0
L_803080B0:
    mulli 5, 27, 0x68
    lis 4, lbl_80506DE8@ha
    li 6, 0xd
    addi 0, 4, lbl_80506DE8@l
    add 4, 0, 5
    lbz 0, 0x3(4)
    rlwimi 0, 6, 4, 24, 27
    stb 0, 0x3(4)
L_803080D0:
    mr 4, 27
    bl fn_803085A4
    mulli 4, 27, 0x68
    lis 3, lbl_80506DE8@ha
    li 7, 0x1
    addi 0, 3, lbl_80506DE8@l
    add 29, 0, 4
    li 6, 0x80
    lbz 0, 0xb(29)
    rlwimi 0, 7, 0, 31, 31
    li 5, 0xe0
    li 4, 0x0
    stb 0, 0xb(29)
    addi 31, 29, 0xf
    addi 30, 29, 0x17
    mr 3, 27
    stb 6, 0xa(29)
    stb 5, 0x9(29)
    lbz 0, 0xb(29)
    rlwimi 0, 4, 1, 29, 30
    stb 0, 0xb(29)
    stb 4, 0x8(29)
    lbz 0, 0xf(29)
    rlwimi 0, 7, 0, 31, 31
    stb 0, 0xf(29)
    stb 6, 0xe(29)
    stb 5, 0xd(29)
    lbz 0, 0xf(29)
    rlwimi 0, 4, 1, 29, 30
    stb 0, 0xf(29)
    stb 4, 0xc(29)
    lbz 0, 0x13(29)
    rlwimi 0, 7, 0, 31, 31
    stb 0, 0x13(29)
    stb 6, 0x12(29)
    stb 5, 0x11(29)
    lbz 0, 0x13(29)
    rlwimi 0, 4, 1, 29, 30
    stb 0, 0x13(29)
    stb 4, 0x10(29)
    lbz 0, 0x17(29)
    rlwimi 0, 7, 0, 31, 31
    stb 0, 0x17(29)
    stb 6, 0x16(29)
    stb 5, 0x15(29)
    lbz 0, 0x17(29)
    rlwimi 0, 4, 1, 29, 30
    stb 0, 0x17(29)
    stb 4, 0x14(29)
    lbz 0, 0xb(29)
    rlwimi 0, 4, 4, 24, 27
    stb 0, 0xb(29)
    lbz 0, 0xb(29)
    rlwimi 0, 4, 3, 28, 28
    stb 0, 0xb(29)
    lbz 0, 0xf(29)
    rlwimi 0, 4, 4, 24, 27
    stb 0, 0xf(29)
    lbz 0, 0x13(29)
    rlwimi 0, 4, 4, 24, 27
    stb 0, 0x13(29)
    lbz 0, 0x13(29)
    rlwimi 0, 4, 3, 28, 28
    stb 0, 0x13(29)
    lbz 0, 0x17(29)
    rlwimi 0, 4, 4, 24, 27
    stb 0, 0x17(29)
    bl fn_8022EA0C
    .4byte 0x808D8F30 # lwz r4, lbl_8053AAF0@sda21(r0)
    mr 28, 3
    lbz 0, 0x78(4)
    cmplwi 0, 0x4
    .4byte 0x418000E0 # blt .L_803082D0
    mr 3, 27
    li 26, 0x0
    bl fn_8037F1E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4180001C # blt .L_80308224
    mr 3, 27
    bl fn_8037F1E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x5
    .4byte 0x41810008 # bgt .L_80308224
    li 26, 0x1
L_80308224:
    clrlwi 5, 26, 24
    .4byte 0x880D9110 # lbz r0, lbl_8053ACD0@sda21(r0)
    neg 4, 5
    lbz 3, 0x0(31)
    or 4, 4, 5
    cmplwi 0, 0x0
    rlwimi 3, 4, 4, 28, 28
    stb 3, 0x0(31)
    .4byte 0x41820078 # beq .L_803082BC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x4182005C # beq .L_803082BC
    mr 3, 28
    li 31, 0x0
    bl fn_8022F5B0
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803082A0
    mr 3, 28
    bl fn_8023DE58
    mr 26, 3
    bl GetRoomConfigRecord
    mr 4, 26
    li 5, 0x2
    bl fn_802D7804
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_803082A0
    li 31, 0x1
L_803082A0:
    clrlwi 4, 31, 24
    lbz 0, 0x0(30)
    neg 3, 4
    or 3, 3, 4
    rlwimi 0, 3, 4, 28, 28
    stb 0, 0x0(30)
    .4byte 0x48000034 # b .L_803082EC
L_803082BC:
    lbz 0, 0x0(30)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    stb 0, 0x0(30)
    .4byte 0x48000020 # b .L_803082EC
L_803082D0:
    lbz 0, 0x0(31)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    stb 0, 0x0(31)
    lbz 0, 0x0(30)
    rlwimi 0, 3, 3, 28, 28
    stb 0, 0x0(30)
L_803082EC:
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    mr 7, 29
    lbzx 3, 3, 0
    subic. 8, 3, 0x7
    .4byte 0x40810100 # ble .L_80308400
    srwi. 0, 8, 1
    mtctr 0
    .4byte 0x4182009C # beq .L_803083A8
L_80308310:
    lbz 0, 0x1b(7)
    li 6, 0x1
    rlwimi 0, 6, 0, 31, 31
    li 5, 0x80
    stb 0, 0x1b(7)
    li 4, 0xe0
    li 3, 0x0
    stb 5, 0x1a(7)
    stb 4, 0x19(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 1, 29, 30
    stb 0, 0x1b(7)
    stb 3, 0x18(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1b(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 4, 27, 27
    stb 0, 0x1b(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 6, 0, 31, 31
    stb 0, 0x1f(7)
    stb 5, 0x1e(7)
    stb 4, 0x1d(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 3, 1, 29, 30
    stb 0, 0x1f(7)
    stb 3, 0x1c(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1f(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 3, 4, 27, 27
    stb 0, 0x1f(7)
    addi 7, 7, 0x8
    .4byte 0x4200FF74 # bdnz .L_80308310
    andi. 8, 8, 0x1
    .4byte 0x4182005C # beq .L_80308400
L_803083A8:
    mtctr 8
    li 6, 0x1
    li 5, 0x80
    li 4, 0xe0
    li 3, 0x0
L_803083BC:
    lbz 0, 0x1b(7)
    rlwimi 0, 6, 0, 31, 31
    stb 0, 0x1b(7)
    stb 5, 0x1a(7)
    stb 4, 0x19(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 1, 29, 30
    stb 0, 0x1b(7)
    stb 3, 0x18(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1b(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 4, 27, 27
    stb 0, 0x1b(7)
    addi 7, 7, 0x4
    .4byte 0x4200FFC0 # bdnz .L_803083BC
L_80308400:
    lis 3, lbl_80504A18@ha
    lis 5, lbl_804FBC18@ha
    slwi 4, 27, 2
    li 0, 0x0
    addi 3, 3, lbl_80504A18@l
    addi 5, 5, lbl_804FBC18@l
    lwzx 3, 3, 4
    mulli 4, 27, 0x2380
    mulli 3, 3, 0x11c
    add 4, 5, 4
    add 3, 4, 3
    lbz 3, 0x118(3)
    cmplwi 3, 0x0
    .4byte 0x408200B0 # bne .L_803084E4
    .4byte 0x888D9148 # lbz r4, lbl_8053AD08@sda21(r0)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    addi 6, 29, 0x8
    li 5, 0x8
    lbzx 3, 3, 4
    slwi 7, 3, 2
    cmpwi 7, 0x8
    .4byte 0x40810138 # ble .L_8030858C
    subi 3, 7, 0x8
    cmpwi 3, 0x8
    .4byte 0x40810060 # ble .L_803084C0
    subi 3, 3, 0x1
    srwi 3, 3, 3
    mtctr 3
    .4byte 0x40810050 # ble .L_803084C0
L_80308474:
    lbz 4, 0x0(6)
    addi 5, 5, 0x8
    lbz 3, 0x1(6)
    add 0, 0, 4
    lbz 4, 0x2(6)
    add 0, 0, 3
    lbz 3, 0x3(6)
    add 0, 0, 4
    lbz 4, 0x4(6)
    add 0, 0, 3
    lbz 3, 0x5(6)
    add 0, 0, 4
    lbz 4, 0x6(6)
    add 0, 0, 3
    lbz 3, 0x7(6)
    add 0, 0, 4
    addi 6, 6, 0x8
    add 0, 0, 3
    .4byte 0x4200FFB8 # bdnz .L_80308474
L_803084C0:
    subf 3, 5, 7
    mtctr 3
    cmpw 5, 7
    .4byte 0x408000C0 # bge .L_8030858C
L_803084D0:
    lbz 3, 0x0(6)
    addi 6, 6, 0x1
    add 0, 0, 3
    .4byte 0x4200FFF4 # bdnz .L_803084D0
    .4byte 0x480000AC # b .L_8030858C
L_803084E4:
    .4byte 0x888D9148 # lbz r4, lbl_8053AD08@sda21(r0)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    addi 6, 29, 0x8
    li 5, 0x8
    lbzx 3, 3, 4
    slwi 7, 3, 2
    cmpwi 7, 0x8
    .4byte 0x4081008C # ble .L_8030858C
    subi 3, 7, 0x8
    cmpwi 3, 0x8
    .4byte 0x40810060 # ble .L_8030856C
    subi 3, 3, 0x1
    srwi 3, 3, 3
    mtctr 3
    .4byte 0x40810050 # ble .L_8030856C
L_80308520:
    lbz 4, 0x0(6)
    addi 5, 5, 0x8
    lbz 3, 0x1(6)
    add 0, 0, 4
    lbz 4, 0x2(6)
    add 0, 0, 3
    lbz 3, 0x3(6)
    add 0, 0, 4
    lbz 4, 0x4(6)
    add 0, 0, 3
    lbz 3, 0x5(6)
    add 0, 0, 4
    lbz 4, 0x6(6)
    add 0, 0, 3
    lbz 3, 0x7(6)
    add 0, 0, 4
    addi 6, 6, 0x8
    add 0, 0, 3
    .4byte 0x4200FFB8 # bdnz .L_80308520
L_8030856C:
    subf 3, 5, 7
    mtctr 3
    cmpw 5, 7
    .4byte 0x40800014 # bge .L_8030858C
L_8030857C:
    lbz 3, 0x0(6)
    addi 6, 6, 0x1
    add 0, 0, 3
    .4byte 0x4200FFF4 # bdnz .L_8030857C
L_8030858C:
    stb 0, 0x0(29)
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803085A4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 24, 4
    mr 3, 24
    bl fn_8022EA0C
    mulli 26, 24, 0x68
    lis 4, lbl_80506DE8@ha
    .4byte 0x88AD9148 # lbz r5, lbl_8053AD08@sda21(r0)
    mr 25, 3
    addi 0, 4, lbl_80506DE8@l
    add 30, 0, 26
    lbz 0, 0x3(30)
    rlwimi 0, 5, 0, 30, 31
    addi 28, 30, 0x3
    addi 29, 30, 0x2
    stb 0, 0x3(30)
    lbz 0, 0x2(30)
    rlwimi 0, 25, 0, 30, 31
    stb 0, 0x2(30)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800018 # bge .L_80308618
    lbz 0, 0x0(29)
    li 3, 0x0
    rlwimi 0, 3, 2, 27, 29
    stb 0, 0x0(29)
    .4byte 0x4800001C # b .L_80308630
L_80308618:
    mr 3, 25
    bl fn_8023DE58
    subi 3, 3, 0x7
    lbz 0, 0x0(29)
    rlwimi 0, 3, 2, 27, 29
    stb 0, 0x0(29)
L_80308630:
    lis 4, lbl_80506D48@ha
    .4byte 0x880D9110 # lbz r0, lbl_8053ACD0@sda21(r0)
    slwi 27, 24, 2
    lbz 3, 0x0(29)
    addi 31, 4, lbl_80506D48@l
    cmplwi 0, 0x0
    lwzx 0, 31, 27
    rlwimi 3, 0, 6, 24, 25
    stb 3, 0x0(29)
    .4byte 0x418200D0 # beq .L_80308724
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 24
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x418200A8 # beq .L_80308724
    lwz 0, 0x4c(4)
    cmpwi 0, 0x9
    .4byte 0x41820048 # beq .L_803086D0
    lbz 0, 0x80(4)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_803086D0
    .4byte 0x386D9118 # li r3, lbl_8053ACD8@sda21
    lbzx 0, 3, 24
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_803086E4
    mr 3, 24
    bl fn_8037F1E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41800018 # blt .L_803086D0
    mr 3, 24
    bl fn_8037F1E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x5
    .4byte 0x40810018 # ble .L_803086E4
L_803086D0:
    lbz 0, 0x0(29)
    li 3, 0x1
    rlwimi 0, 3, 5, 26, 26
    stb 0, 0x0(29)
    .4byte 0x48000014 # b .L_803086F4
L_803086E4:
    lbz 0, 0x0(29)
    li 3, 0x0
    rlwimi 0, 3, 5, 26, 26
    stb 0, 0x0(29)
L_803086F4:
    .4byte 0x386D912C # li r3, lbl_8053ACEC@sda21
    lbzx 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_80308710
    .4byte 0x386D9128 # li r3, lbl_8053ACE8@sda21
    lbzx 3, 3, 24
    .4byte 0x48000008 # b .L_80308714
L_80308710:
    li 3, 0x0
L_80308714:
    lbz 0, 0x0(28)
    rlwimi 0, 3, 2, 28, 29
    stb 0, 0x0(28)
    .4byte 0x48000024 # b .L_80308744
L_80308724:
    lbz 0, 0x0(29)
    li 3, 0x1
    rlwimi 0, 3, 5, 26, 26
    li 3, 0x0
    stb 0, 0x0(29)
    lbz 0, 0x0(28)
    rlwimi 0, 3, 2, 28, 29
    stb 0, 0x0(28)
L_80308744:
    lbz 4, 0x1(30)
    li 0, 0x0
    rlwimi 4, 0, 4, 24, 27
    .4byte 0x38CD9138 # li r6, lbl_8053ACF8@sda21
    stb 4, 0x1(30)
    addi 28, 30, 0x4
    lbz 5, 0x1(6)
    lbz 8, 0x1(30)
    rlwimi 8, 0, 0, 28, 31
    slwi 7, 5, 1
    lbz 5, 0x3(6)
    stb 8, 0x1(30)
    lbz 4, 0x2(6)
    slwi 5, 5, 3
    lbz 9, 0x1(30)
    slwi 6, 4, 2
    lwzx 4, 31, 27
    .4byte 0x890D9138 # lbz r8, lbl_8053ACF8@sda21(r0)
    cmpwi 4, 0x1
    clrlwi 4, 9, 28
    or 4, 4, 8
    rlwimi 9, 4, 0, 28, 31
    stb 9, 0x1(30)
    lbz 8, 0x1(30)
    clrlwi 4, 8, 28
    or 4, 4, 7
    rlwimi 8, 4, 0, 28, 31
    stb 8, 0x1(30)
    lbz 7, 0x1(30)
    clrlwi 4, 7, 28
    or 4, 4, 6
    rlwimi 7, 4, 0, 28, 31
    stb 7, 0x1(30)
    lbz 6, 0x1(30)
    clrlwi 4, 6, 28
    or 4, 4, 5
    rlwimi 6, 4, 0, 28, 31
    stb 6, 0x1(30)
    stw 0, 0x4(30)
    .4byte 0x40820014 # bne .L_803087F4
    lbz 0, 0x5(30)
    li 3, 0xf
    rlwimi 0, 3, 4, 24, 27
    stb 0, 0x5(30)
L_803087F4:
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    lbz 0, 0x78(3)
    cmplwi 0, 0x4
    .4byte 0x418004EC # blt .L_80308CEC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 24
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x418204D0 # beq .L_80308CEC
    lis 3, lbl_80506D38@ha
    .4byte 0x880D9110 # lbz r0, lbl_8053ACD0@sda21(r0)
    addi 6, 3, lbl_80506D38@l
    lbz 4, 0x0(28)
    lwzx 5, 6, 27
    li 3, 0x0
    cmplwi 0, 0x0
    rlwimi 4, 5, 0, 27, 31
    stwx 3, 6, 27
    stb 4, 0x0(28)
    .4byte 0x40820014 # bne .L_8030885C
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_80379F84
    clrlwi. 0, 3, 24
    .4byte 0x41820150 # beq .L_803089A8
L_8030885C:
    lwzx 3, 31, 27
    clrlwi. 0, 3, 31
    .4byte 0x408200B4 # bne .L_80308918
    lis 3, lbl_80529DEC@ha
    lbz 4, 0x5(30)
    addi 0, 3, lbl_80529DEC@l
    add 6, 0, 27
    mr 3, 24
    lwz 5, 0xd8(6)
    lwz 0, 0xc8(6)
    rlwimi 4, 5, 0, 25, 31
    srawi 0, 0, 2
    stb 4, 0x5(30)
    addze 4, 0
    subi 0, 4, 0x1
    clrlwi 4, 0, 24
    lbz 0, 0x0(28)
    rlwimi 0, 4, 5, 24, 26
    stb 0, 0x0(28)
    bl fn_8037EE8C
    lis 4, lbl_80529DEC@ha
    addi 6, 30, 0x6
    addi 0, 4, lbl_80529DEC@l
    clrlwi 4, 3, 24
    add 3, 0, 27
    lbz 0, 0x6(30)
    lwz 3, 0xe8(3)
    rlwimi 0, 4, 0, 30, 31
    stb 0, 0x6(30)
    addi 4, 3, 0x1388
    cmpwi 4, 0x3a97
    .4byte 0x4081000C # ble .L_803088E4
    li 4, 0x3a97
    .4byte 0x48000010 # b .L_803088F0
L_803088E4:
    cmpwi 4, 0x0
    .4byte 0x40800008 # bge .L_803088F0
    li 4, 0x0
L_803088F0:
    lis 3, lbl_80506DE8@ha
    extrwi 5, 4, 8, 18
    addi 0, 3, lbl_80506DE8@l
    clrlwi 3, 4, 26
    add 4, 0, 26
    stb 5, 0x7(4)
    lbz 0, 0x0(6)
    rlwimi 0, 3, 2, 24, 29
    stb 0, 0x0(6)
    .4byte 0x48000094 # b .L_803089A8
L_80308918:
    cmpwi 3, 0x1
    .4byte 0x4082008C # bne .L_803089A8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    .4byte 0x80CD9308 # lwz r6, lbl_8053AEC8@sda21(r0)
    lwz 0, 0x4c(3)
    cmplwi 6, 0x0
    lbz 5, 0x88(3)
    subfic 0, 0, 0xb
    cntlzw 0, 0
    srwi 4, 0, 5
    .4byte 0x41820030 # beq .L_80308970
    lbz 3, 0x40(6)
    cmplwi 3, 0x1
    .4byte 0x4182001C # beq .L_80308968
    subi 0, 3, 0x3
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80308968
    cmplwi 3, 0x6
    .4byte 0x4082000C # bne .L_80308970
L_80308968:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80308974
L_80308970:
    li 0, 0x0
L_80308974:
    clrlslwi 0, 0, 24, 1
    lis 3, lbl_80529DEC@ha
    or 0, 0, 4
    lbz 4, 0x0(28)
    or 5, 5, 0
    addi 0, 3, lbl_80529DEC@l
    rlwimi 4, 5, 5, 25, 26
    add 3, 0, 27
    stb 4, 0x0(28)
    lwz 3, 0xf8(3)
    lbz 0, 0x5(30)
    rlwimi 0, 3, 4, 24, 27
    stb 0, 0x5(30)
L_803089A8:
    .4byte 0x880D9110 # lbz r0, lbl_8053ACD0@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x418202F4 # beq .L_80308CA4
    lwzx 0, 31, 27
    cmpwi 0, 0x2
    .4byte 0x40820030 # bne .L_803089EC
    mr 3, 25
    bl fn_8023DE58
    mr 25, 3
    bl GetRoomConfigRecord
    mr 4, 25
    li 5, 0x1
    bl fn_802D7804
    lbz 0, 0x5(30)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x5(30)
    .4byte 0x480002BC # b .L_80308CA4
L_803089EC:
    clrlwi 0, 0, 31
    cmpwi 0, 0x1
    .4byte 0x408202B0 # bne .L_80308CA4
    mr 3, 25
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x418001A8 # blt .L_80308BAC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_80308A20
    li 0, 0x1
    .4byte 0x48000014 # b .L_80308A30
L_80308A20:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_80308A30:
    clrlwi. 0, 0, 24
    .4byte 0x40820178 # bne .L_80308BAC
    mr 3, 25
    bl fn_8023BC38
    cmpwi 3, 0x0
    .4byte 0x40810040 # ble .L_80308A84
    mr 3, 25
    bl fn_8023BC38
    lis 4, 0x8889
    addi 0, 3, 0x3b
    subi 3, 4, 0x7777
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 26, 0, 3
    cmpwi 26, 0xb
    .4byte 0x40810008 # ble .L_80308A7C
    li 26, 0xb
L_80308A7C:
    addi 26, 26, 0x14
    .4byte 0x4800010C # b .L_80308B8C
L_80308A84:
    mr 3, 25
    bl fn_80236768
    cmpwi 3, 0x0
    .4byte 0x40810030 # ble .L_80308AC0
    mr 3, 25
    bl fn_80236768
    lis 4, 0x8889
    addi 0, 3, 0x3b
    subi 3, 4, 0x7777
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 26, 0, 3
    .4byte 0x480000C4 # b .L_80308B80
L_80308AC0:
    mr 3, 25
    bl fn_80236630
    cmpwi 3, 0x0
    .4byte 0x40810030 # ble .L_80308AFC
    mr 3, 25
    bl fn_80236630
    lis 4, 0x8889
    addi 0, 3, 0x3b
    subi 3, 4, 0x7777
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 26, 0, 3
    .4byte 0x48000088 # b .L_80308B80
L_80308AFC:
    mr 3, 25
    bl fn_802366CC
    cmpwi 3, 0x0
    .4byte 0x40810030 # ble .L_80308B38
    mr 3, 25
    bl fn_802366CC
    lis 4, 0x8889
    addi 0, 3, 0x3b
    subi 3, 4, 0x7777
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 26, 0, 3
    .4byte 0x4800004C # b .L_80308B80
L_80308B38:
    bl GetRoomConfigRecord
    lwz 4, 0xc4(3)
    lis 3, 0x8889
    subi 3, 3, 0x7777
    addi 0, 4, 0x3b
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 26, 0, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80308B7C
    cmpwi 26, 0x5
    .4byte 0x40810008 # ble .L_80308B80
L_80308B7C:
    li 26, 0x0
L_80308B80:
    cmpwi 26, 0x14
    .4byte 0x40810008 # ble .L_80308B8C
    li 26, 0x14
L_80308B8C:
    lbz 3, 0x0(28)
    rlwimi 3, 26, 7, 24, 24
    srawi 0, 26, 1
    stb 3, 0x0(28)
    clrlwi 3, 0, 24
    lbz 0, 0x5(30)
    rlwimi 0, 3, 0, 28, 31
    stb 0, 0x5(30)
L_80308BAC:
    lwzx 0, 31, 27
    cmpwi 0, 0x3
    .4byte 0x408200F0 # bne .L_80308CA4
    mr 3, 25
    bl fn_8023DE58
    mr 26, 3
    bl GetRoomConfigRecord
    mr 4, 26
    li 5, 0xc
    bl fn_802D7804
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80308C0C
    mr 3, 25
    bl fn_8023DE58
    mr 26, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    slwi 0, 26, 1
    add 3, 3, 0
    lbz 0, 0x5(30)
    lhz 3, 0x31b8(3)
    rlwimi 0, 3, 2, 26, 27
    stb 0, 0x5(30)
    .4byte 0x48000028 # b .L_80308C30
L_80308C0C:
    mr 3, 25
    bl fn_802351D8
    clrlwi 4, 3, 24
    lbz 0, 0x5(30)
    neg 3, 4
    or 3, 3, 4
    srwi 3, 3, 31
    rlwimi 0, 3, 4, 26, 27
    stb 0, 0x5(30)
L_80308C30:
    mr 3, 25
    bl fn_8023DE58
    mr 25, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    slwi 0, 25, 1
    add 3, 3, 0
    lbz 0, 0x0(28)
    lhz 4, 0x31b8(3)
    mr 3, 24
    rlwimi 0, 4, 25, 25, 26
    stb 0, 0x0(28)
    bl fn_80237060
    subi 0, 3, 0x1
    addi 25, 30, 0x5
    clrlwi 3, 0, 24
    lbz 0, 0x5(30)
    rlwimi 0, 3, 6, 25, 25
    stb 0, 0x5(30)
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80308CA4
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80308CA4
    lbz 0, 0x0(25)
    li 3, 0x1
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x0(25)
L_80308CA4:
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_80379F84
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80308CEC
    lwzx 0, 31, 27
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80308CD4
    lbz 0, 0x5(30)
    li 3, 0x1
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x5(30)
    .4byte 0x4800001C # b .L_80308CEC
L_80308CD4:
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_80308CEC
    lbz 0, 0x5(30)
    li 3, 0x1
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x5(30)
L_80308CEC:
    li 0, 0x0
    .4byte 0x386D911C # li r3, lbl_8053ACDC@sda21
    stbx 0, 3, 24
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80308D0C:
    lis 4, lbl_80504A38@ha
    lis 3, lbl_80505438@ha
    addi 5, 4, lbl_80504A38@l
    li 7, 0x0
    addi 6, 3, lbl_80505438@l
L_80308D20:
    li 0, 0x2
    mr 4, 5
    mtctr 0
L_80308D2C:
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x24(4)
    stb 3, 0x25(4)
    stw 3, 0x0(4)
    stw 0, 0x4(4)
    stb 3, 0x4c(4)
    stb 3, 0x4d(4)
    stw 3, 0x28(4)
    stw 0, 0x2c(4)
    stb 3, 0x74(4)
    stb 3, 0x75(4)
    stw 3, 0x50(4)
    stw 0, 0x54(4)
    stb 3, 0x9c(4)
    stb 3, 0x9d(4)
    stw 3, 0x78(4)
    stw 0, 0x7c(4)
    stb 3, 0xc4(4)
    stb 3, 0xc5(4)
    stw 3, 0xa0(4)
    stw 0, 0xa4(4)
    stb 3, 0xec(4)
    stb 3, 0xed(4)
    stw 3, 0xc8(4)
    stw 0, 0xcc(4)
    stb 3, 0x114(4)
    stb 3, 0x115(4)
    stw 3, 0xf0(4)
    stw 0, 0xf4(4)
    stb 3, 0x13c(4)
    stb 3, 0x13d(4)
    stw 3, 0x118(4)
    stw 0, 0x11c(4)
    addi 4, 4, 0x140
    .4byte 0x4200FF74 # bdnz .L_80308D2C
    li 0, 0x5
    mr 4, 6
    mtctr 0
L_80308DC8:
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x24(4)
    stb 3, 0x25(4)
    stw 3, 0x0(4)
    stw 0, 0x4(4)
    stw 0, 0xc(4)
    stb 3, 0x4c(4)
    stb 3, 0x4d(4)
    stw 3, 0x28(4)
    stw 0, 0x2c(4)
    stw 0, 0x34(4)
    stb 3, 0x74(4)
    stb 3, 0x75(4)
    stw 3, 0x50(4)
    stw 0, 0x54(4)
    stw 0, 0x5c(4)
    stb 3, 0x9c(4)
    stb 3, 0x9d(4)
    stw 3, 0x78(4)
    stw 0, 0x7c(4)
    stw 0, 0x84(4)
    stb 3, 0xc4(4)
    stb 3, 0xc5(4)
    stw 3, 0xa0(4)
    stw 0, 0xa4(4)
    stw 0, 0xac(4)
    stb 3, 0xec(4)
    stb 3, 0xed(4)
    stw 3, 0xc8(4)
    stw 0, 0xcc(4)
    stw 0, 0xd4(4)
    stb 3, 0x114(4)
    stb 3, 0x115(4)
    stw 3, 0xf0(4)
    stw 0, 0xf4(4)
    stw 0, 0xfc(4)
    stb 3, 0x13c(4)
    stb 3, 0x13d(4)
    stw 3, 0x118(4)
    stw 0, 0x11c(4)
    stw 0, 0x124(4)
    addi 4, 4, 0x140
    .4byte 0x4200FF54 # bdnz .L_80308DC8
    addi 7, 7, 0x1
    addi 6, 6, 0x640
    cmpwi 7, 0x4
    addi 5, 5, 0x280
    .4byte 0x4180FE98 # blt .L_80308D20
    blr

fn_80308E90:
    lis 4, lbl_80504A38@ha
    lis 3, lbl_80505438@ha
    addi 6, 4, lbl_80504A38@l
    li 4, 0x0
    addi 7, 3, lbl_80505438@l
L_80308EA4:
    li 0, 0x2
    mr 5, 6
    mtctr 0
L_80308EB0:
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x24(5)
    stb 3, 0x25(5)
    stw 3, 0x0(5)
    stw 0, 0x4(5)
    stb 3, 0x4c(5)
    stb 3, 0x4d(5)
    stw 3, 0x28(5)
    stw 0, 0x2c(5)
    stb 3, 0x74(5)
    stb 3, 0x75(5)
    stw 3, 0x50(5)
    stw 0, 0x54(5)
    stb 3, 0x9c(5)
    stb 3, 0x9d(5)
    stw 3, 0x78(5)
    stw 0, 0x7c(5)
    stb 3, 0xc4(5)
    stb 3, 0xc5(5)
    stw 3, 0xa0(5)
    stw 0, 0xa4(5)
    stb 3, 0xec(5)
    stb 3, 0xed(5)
    stw 3, 0xc8(5)
    stw 0, 0xcc(5)
    stb 3, 0x114(5)
    stb 3, 0x115(5)
    stw 3, 0xf0(5)
    stw 0, 0xf4(5)
    stb 3, 0x13c(5)
    stb 3, 0x13d(5)
    stw 3, 0x118(5)
    stw 0, 0x11c(5)
    addi 5, 5, 0x140
    .4byte 0x4200FF74 # bdnz .L_80308EB0
    li 0, 0x5
    mr 5, 7
    mtctr 0
L_80308F4C:
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x24(5)
    stb 3, 0x25(5)
    stw 3, 0x0(5)
    stw 0, 0x4(5)
    stw 0, 0xc(5)
    stb 3, 0x4c(5)
    stb 3, 0x4d(5)
    stw 3, 0x28(5)
    stw 0, 0x2c(5)
    stw 0, 0x34(5)
    stb 3, 0x74(5)
    stb 3, 0x75(5)
    stw 3, 0x50(5)
    stw 0, 0x54(5)
    stw 0, 0x5c(5)
    stb 3, 0x9c(5)
    stb 3, 0x9d(5)
    stw 3, 0x78(5)
    stw 0, 0x7c(5)
    stw 0, 0x84(5)
    stb 3, 0xc4(5)
    stb 3, 0xc5(5)
    stw 3, 0xa0(5)
    stw 0, 0xa4(5)
    stw 0, 0xac(5)
    stb 3, 0xec(5)
    stb 3, 0xed(5)
    stw 3, 0xc8(5)
    stw 0, 0xcc(5)
    stw 0, 0xd4(5)
    stb 3, 0x114(5)
    stb 3, 0x115(5)
    stw 3, 0xf0(5)
    stw 0, 0xf4(5)
    stw 0, 0xfc(5)
    stb 3, 0x13c(5)
    stb 3, 0x13d(5)
    stw 3, 0x118(5)
    stw 0, 0x11c(5)
    stw 0, 0x124(5)
    addi 5, 5, 0x140
    .4byte 0x4200FF54 # bdnz .L_80308F4C
    addi 4, 4, 0x1
    addi 7, 7, 0x640
    cmpwi 4, 0x4
    addi 6, 6, 0x280
    .4byte 0x4180FE98 # blt .L_80308EA4
    blr

fn_80309014:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80309044
    lis 5, lbl_804AA8B8@ha
    extsh. 0, 4
    addi 0, 5, lbl_804AA8B8@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80309044
    bl dtor_80084580
L_80309044:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030905C:
    stwu 1, -0xc0(1)
    mflr 0
    lis 4, lbl_804DBC18@ha
    lis 6, lbl_804AA8B8@ha
    stw 0, 0xc4(1)
    addi 5, 4, lbl_804DBC18@l
    lis 4, lbl_804FBC18@ha
    stmw 14, 0x78(1)
    addis 7, 5, 0x3
    addi 0, 4, lbl_804FBC18@l
    lis 5, lbl_804DBC18@ha
    stw 0, 0x60(1)
    addi 0, 6, lbl_804AA8B8@l
    lis 4, 0xcdce
    addi 29, 5, lbl_804DBC18@l
    stw 3, 0x8(1)
    subi 28, 7, 0x4c90
    subi 27, 7, 0x4e70
    subi 26, 7, 0x4e60
    subi 25, 7, 0x4e50
    subi 30, 4, 0x3233
    li 31, 0x0
    .4byte 0x39CD915C # li r14, lbl_8053AD1C@sda21
    .4byte 0x3B0D9160 # li r24, lbl_8053AD20@sda21
    .4byte 0x3AED9164 # li r23, lbl_8053AD24@sda21
    .4byte 0x3ACD9168 # li r22, lbl_8053AD28@sda21
    .4byte 0x3AAD9144 # li r21, lbl_8053AD04@sda21
    stw 0, 0x0(3)
    subi 0, 7, 0x7200
    stw 0, 0x68(1)
    subi 0, 7, 0x71f0
    stw 0, 0x64(1)
    subi 0, 7, 0x4ed0
    stw 0, 0x58(1)
    subi 0, 7, 0x4ec0
    stw 0, 0x54(1)
    subi 0, 7, 0x4ee0
    stw 0, 0x4c(1)
    subi 0, 7, 0x4eb0
    stw 0, 0x38(1)
    subi 0, 7, 0x4e90
    stw 0, 0x34(1)
    subi 0, 7, 0x4e80
    stw 0, 0x30(1)
    subi 0, 7, 0x4e40
    stw 0, 0x18(1)
    subi 0, 7, 0x4a30
    stw 0, 0x14(1)
    .4byte 0x380D9140 # li r0, lbl_8053AD00@sda21
    stw 0, 0x5c(1)
    .4byte 0x380D9114 # li r0, lbl_8053ACD4@sda21
    stw 0, 0x50(1)
    .4byte 0x380D9118 # li r0, lbl_8053ACD8@sda21
    stw 0, 0x48(1)
    .4byte 0x380D911C # li r0, lbl_8053ACDC@sda21
    stw 0, 0x44(1)
    .4byte 0x380D9120 # li r0, lbl_8053ACE0@sda21
    stw 0, 0x40(1)
    .4byte 0x380D9124 # li r0, lbl_8053ACE4@sda21
    stw 0, 0x3c(1)
    .4byte 0x380D9128 # li r0, lbl_8053ACE8@sda21
    stw 0, 0x2c(1)
    .4byte 0x380D912C # li r0, lbl_8053ACEC@sda21
    stw 0, 0x28(1)
    .4byte 0x380D9130 # li r0, lbl_8053ACF0@sda21
    stw 0, 0x24(1)
    .4byte 0x380D9138 # li r0, lbl_8053ACF8@sda21
    stw 0, 0x20(1)
    .4byte 0x380D913C # li r0, lbl_8053ACFC@sda21
    stw 0, 0x1c(1)
    .4byte 0x380D914C # li r0, lbl_8053AD0C@sda21
    stw 0, 0x10(1)
    .4byte 0x380D9154 # li r0, lbl_8053AD14@sda21
    stw 0, 0xc(1)
L_80309184:
    lwz 3, 0x68(1)
    li 4, 0x0
    li 0, 0x4
    lwz 5, 0x60(1)
    stw 4, 0x0(3)
    lwz 3, 0x64(1)
    stw 4, 0x0(3)
    mtctr 0
L_803091A4:
    li 15, 0x0
    addi 16, 4, 0x1
    stb 15, 0x118(5)
    addi 17, 4, 0x2
    addi 18, 4, 0x3
    addi 19, 4, 0x4
    stb 15, 0x119(5)
    addi 20, 4, 0x5
    addi 12, 4, 0x6
    addi 0, 4, 0x7
    stw 15, 0x104(5)
    stw 15, 0x100(5)
    stw 15, 0x114(5)
    stw 4, 0x108(5)
    addi 4, 4, 0x8
    stw 15, 0x10c(5)
    stb 15, 0x0(5)
    stb 15, 0x234(5)
    stb 15, 0x235(5)
    stw 15, 0x220(5)
    stw 15, 0x21c(5)
    stw 15, 0x230(5)
    stw 16, 0x224(5)
    stw 15, 0x228(5)
    stb 15, 0x11c(5)
    stb 15, 0x350(5)
    stb 15, 0x351(5)
    stw 15, 0x33c(5)
    stw 15, 0x338(5)
    stw 15, 0x34c(5)
    stw 17, 0x340(5)
    stw 15, 0x344(5)
    stb 15, 0x238(5)
    stb 15, 0x46c(5)
    stb 15, 0x46d(5)
    stw 15, 0x458(5)
    stw 15, 0x454(5)
    stw 15, 0x468(5)
    stw 18, 0x45c(5)
    stw 15, 0x460(5)
    stb 15, 0x354(5)
    stb 15, 0x588(5)
    stb 15, 0x589(5)
    stw 15, 0x574(5)
    stw 15, 0x570(5)
    stw 15, 0x584(5)
    stw 19, 0x578(5)
    stw 15, 0x57c(5)
    stb 15, 0x470(5)
    stb 15, 0x6a4(5)
    stb 15, 0x6a5(5)
    stw 15, 0x690(5)
    stw 15, 0x68c(5)
    stw 15, 0x6a0(5)
    stw 20, 0x694(5)
    stw 15, 0x698(5)
    stb 15, 0x58c(5)
    stb 15, 0x7c0(5)
    stb 15, 0x7c1(5)
    stw 15, 0x7ac(5)
    stw 15, 0x7a8(5)
    stw 15, 0x7bc(5)
    stw 12, 0x7b0(5)
    stw 15, 0x7b4(5)
    stb 15, 0x6a8(5)
    stb 15, 0x8dc(5)
    stb 15, 0x8dd(5)
    stw 15, 0x8c8(5)
    stw 15, 0x8c4(5)
    stw 15, 0x8d8(5)
    stw 0, 0x8cc(5)
    stw 15, 0x8d0(5)
    stb 15, 0x7c4(5)
    addi 5, 5, 0x8e0
    .4byte 0x4200FED8 # bdnz .L_803091A4
    li 0, 0x100
    mr 3, 29
    mtctr 0
L_803092DC:
    stw 30, 0x0(3)
    stw 30, 0x4(3)
    stw 30, 0x8(3)
    stw 30, 0xc(3)
    stw 30, 0x10(3)
    stw 30, 0x14(3)
    stw 30, 0x18(3)
    stw 30, 0x1c(3)
    stw 30, 0x20(3)
    stw 30, 0x24(3)
    stw 30, 0x28(3)
    stw 30, 0x2c(3)
    stw 30, 0x30(3)
    stw 30, 0x34(3)
    stw 30, 0x38(3)
    stw 30, 0x3c(3)
    stw 30, 0x40(3)
    stw 30, 0x44(3)
    stw 30, 0x48(3)
    stw 30, 0x4c(3)
    stw 30, 0x50(3)
    stw 30, 0x54(3)
    stw 30, 0x58(3)
    stw 30, 0x5c(3)
    stw 30, 0x60(3)
    stw 30, 0x64(3)
    stw 30, 0x68(3)
    stw 30, 0x6c(3)
    stw 30, 0x70(3)
    stw 30, 0x74(3)
    stw 30, 0x78(3)
    stw 30, 0x7c(3)
    addi 3, 3, 0x80
    .4byte 0x4200FF7C # bdnz .L_803092DC
    lwz 5, 0x58(1)
    li 6, 0x0
    lwz 3, 0x5c(1)
    li 0, 0x5
    stw 6, 0x0(5)
    mr 4, 31
    lwz 5, 0x54(1)
    stb 6, 0x0(3)
    lwz 3, 0x8(1)
    stw 0, 0x0(5)
    bl fn_8030801C
    lwz 3, 0x50(1)
    li 5, 0x1
    li 6, 0x0
    li 0, 0x3
    stb 5, 0x0(3)
    mr 4, 28
    lwz 3, 0x4c(1)
    li 5, 0x0
    stw 6, 0x0(3)
    lwz 3, 0x48(1)
    stb 6, 0x0(3)
    lwz 3, 0x44(1)
    stb 6, 0x0(3)
    lwz 3, 0x40(1)
    stb 6, 0x0(3)
    lwz 3, 0x3c(1)
    stb 6, 0x0(3)
    lwz 3, 0x38(1)
    stw 6, 0x0(3)
    mtctr 0
L_803093E0:
    lbz 6, 0x3(4)
    li 3, 0x1
    rlwimi 6, 3, 0, 31, 31
    li 0, 0x80
    stb 6, 0x3(4)
    addi 5, 5, 0x6
    stb 0, 0x2(4)
    lbz 6, 0x4f(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x4f(4)
    stb 0, 0x4e(4)
    lbz 6, 0x7(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x7(4)
    stb 0, 0x6(4)
    lbz 6, 0x53(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x53(4)
    stb 0, 0x52(4)
    lbz 6, 0xb(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0xb(4)
    stb 0, 0xa(4)
    lbz 6, 0x57(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x57(4)
    stb 0, 0x56(4)
    lbz 6, 0xf(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0xf(4)
    stb 0, 0xe(4)
    lbz 6, 0x5b(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x5b(4)
    stb 0, 0x5a(4)
    lbz 6, 0x13(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x13(4)
    stb 0, 0x12(4)
    lbz 6, 0x5f(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x5f(4)
    stb 0, 0x5e(4)
    lbz 6, 0x17(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x17(4)
    stb 0, 0x16(4)
    lbz 6, 0x63(4)
    rlwimi 6, 3, 0, 31, 31
    stb 6, 0x63(4)
    stb 0, 0x62(4)
    addi 4, 4, 0x18
    .4byte 0x4200FF30 # bdnz .L_803093E0
    slwi 6, 5, 2
    subfic 4, 5, 0x13
    add 6, 28, 6
    mtctr 4
    cmpwi 5, 0x13
    .4byte 0x40800030 # bge .L_803094F8
L_803094CC:
    lbz 4, 0x3(6)
    rlwimi 4, 3, 0, 31, 31
    addi 5, 5, 0x1
    stb 4, 0x3(6)
    stb 0, 0x2(6)
    lbz 4, 0x4f(6)
    rlwimi 4, 3, 0, 31, 31
    stb 4, 0x4f(6)
    stb 0, 0x4e(6)
    addi 6, 6, 0x4
    .4byte 0x4200FFD8 # bdnz .L_803094CC
L_803094F8:
    lwz 3, 0x34(1)
    li 4, 0x0
    stb 4, 0x0(27)
    li 0, 0x4
    lwz 5, 0x14(1)
    stw 4, 0x0(3)
    lwz 3, 0x30(1)
    stb 4, 0x0(26)
    stw 4, 0x0(3)
    lwz 3, 0x2c(1)
    stb 4, 0x0(25)
    stb 4, 0x0(3)
    lwz 3, 0x28(1)
    stb 4, 0x1(27)
    stb 4, 0x0(3)
    lwz 3, 0x24(1)
    stb 4, 0x1(26)
    stb 4, 0x0(3)
    lwz 3, 0x20(1)
    stb 4, 0x1(25)
    stb 4, 0x0(3)
    lwz 3, 0x1c(1)
    stb 4, 0x2(27)
    stb 4, 0x2(26)
    stb 4, 0x2(25)
    stb 4, 0x0(3)
    lwz 3, 0x18(1)
    stb 4, 0x3(27)
    stw 4, 0x0(3)
    stb 4, 0x3(26)
    stb 4, 0x3(25)
    mtctr 0
L_80309578:
    sth 4, 0x0(5)
    sth 4, 0x2(5)
    sth 4, 0x4(5)
    sth 4, 0x6(5)
    sth 4, 0x8(5)
    sth 4, 0xa(5)
    sth 4, 0xc(5)
    sth 4, 0xe(5)
    sth 4, 0x10(5)
    sth 4, 0x12(5)
    sth 4, 0x14(5)
    sth 4, 0x16(5)
    sth 4, 0x18(5)
    sth 4, 0x1a(5)
    sth 4, 0x1c(5)
    sth 4, 0x1e(5)
    sth 4, 0x20(5)
    sth 4, 0x22(5)
    sth 4, 0x24(5)
    sth 4, 0x26(5)
    sth 4, 0x28(5)
    sth 4, 0x2a(5)
    sth 4, 0x2c(5)
    sth 4, 0x2e(5)
    sth 4, 0x30(5)
    sth 4, 0x32(5)
    sth 4, 0x34(5)
    sth 4, 0x36(5)
    sth 4, 0x38(5)
    sth 4, 0x3a(5)
    sth 4, 0x3c(5)
    sth 4, 0x3e(5)
    addi 5, 5, 0x40
    .4byte 0x4200FF7C # bdnz .L_80309578
    lwz 3, 0x10(1)
    li 0, 0x0
    addi 31, 31, 0x1
    addis 29, 29, 0x1
    sth 0, 0x0(3)
    cmpwi 31, 0x4
    lwz 3, 0xc(1)
    addi 27, 27, 0x4
    stb 0, 0x0(21)
    addi 26, 26, 0x4
    addi 25, 25, 0x4
    addi 21, 21, 0x1
    sth 0, 0x0(3)
    addi 29, 29, -0x8000
    lwz 3, 0x24(1)
    addi 28, 28, 0x98
    stb 0, 0x0(14)
    addi 14, 14, 0x1
    addi 3, 3, 0x1
    stw 3, 0x24(1)
    lwz 3, 0x20(1)
    stb 0, 0x0(24)
    addi 24, 24, 0x1
    addi 3, 3, 0x1
    stw 3, 0x20(1)
    lwz 3, 0x1c(1)
    stb 0, 0x0(23)
    addi 23, 23, 0x1
    addi 3, 3, 0x1
    stw 3, 0x1c(1)
    lwz 3, 0x18(1)
    stb 0, 0x0(22)
    addi 22, 22, 0x1
    addi 3, 3, 0x4
    stw 3, 0x18(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x100
    stw 3, 0x14(1)
    lwz 3, 0x10(1)
    addi 3, 3, 0x2
    stw 3, 0x10(1)
    lwz 3, 0xc(1)
    addi 3, 3, 0x2
    stw 3, 0xc(1)
    lwz 3, 0x68(1)
    addi 3, 3, 0x4
    stw 3, 0x68(1)
    lwz 3, 0x64(1)
    addi 3, 3, 0x4
    stw 3, 0x64(1)
    lwz 3, 0x60(1)
    addi 3, 3, 0x2380
    stw 3, 0x60(1)
    lwz 3, 0x5c(1)
    addi 3, 3, 0x1
    stw 3, 0x5c(1)
    lwz 3, 0x58(1)
    addi 3, 3, 0x4
    stw 3, 0x58(1)
    lwz 3, 0x54(1)
    addi 3, 3, 0x4
    stw 3, 0x54(1)
    lwz 3, 0x50(1)
    addi 3, 3, 0x1
    stw 3, 0x50(1)
    lwz 3, 0x4c(1)
    addi 3, 3, 0x4
    stw 3, 0x4c(1)
    lwz 3, 0x48(1)
    addi 3, 3, 0x1
    stw 3, 0x48(1)
    lwz 3, 0x44(1)
    addi 3, 3, 0x1
    stw 3, 0x44(1)
    lwz 3, 0x40(1)
    addi 3, 3, 0x1
    stw 3, 0x40(1)
    lwz 3, 0x3c(1)
    addi 3, 3, 0x1
    stw 3, 0x3c(1)
    lwz 3, 0x38(1)
    addi 3, 3, 0x4
    stw 3, 0x38(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x4
    stw 3, 0x34(1)
    lwz 3, 0x30(1)
    addi 3, 3, 0x4
    stw 3, 0x30(1)
    lwz 3, 0x2c(1)
    addi 3, 3, 0x1
    stw 3, 0x2c(1)
    lwz 3, 0x28(1)
    addi 3, 3, 0x1
    stw 3, 0x28(1)
    .4byte 0x4180FA08 # blt .L_80309184
    .4byte 0x980D9148 # stb r0, lbl_8053AD08@sda21(r0)
    lwz 3, 0x8(1)
    lmw 14, 0x78(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8030979C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804DBC18@ha
    lis 3, fn_803099FC@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_804DBC18@l
    li 5, 0x0
    li 6, 0x28
    stw 31, 0xc(1)
    addis 31, 4, 0x3
    addi 4, 3, fn_803099FC@l
    li 7, 0x40
    subi 3, 31, 0x71e0
    bl __construct_array
    lis 4, fn_803099FC@ha
    subi 3, 31, 0x67e0
    addi 4, 4, fn_803099FC@l
    li 5, 0x0
    li 6, 0x28
    li 7, 0xa0
    bl __construct_array
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80309828
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    subi 5, 31, 0x4630
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80309828:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80309860
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    subi 5, 31, 0x4624
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80309860:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80309898
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    subi 5, 31, 0x4618
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80309898:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803098D0
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    subi 5, 31, 0x460c
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_803098D0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80309908
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    subi 5, 31, 0x4600
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80309908:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80309940
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    subi 5, 31, 0x45f4
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80309940:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80309978
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    subi 5, 31, 0x45e8
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80309978:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803099B0
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    subi 5, 31, 0x45dc
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_803099B0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803099E8
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    subi 5, 31, 0x45d0
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_803099E8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803099FC:
    blr

fn_80309A00:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309A10
    li 3, 0x0
    blr
L_80309A10:
    slwi 0, 4, 2
    li 4, 0x1
    add 3, 3, 0
    lwz 3, 0xb4(3)
    subi 0, 3, 0x1
    orc 3, 3, 4
    srwi 0, 0, 1
    subf 0, 0, 3
    srwi 3, 0, 31
    blr

fn_80309A38:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309A48
    li 3, 0x0
    blr
L_80309A48:
    add 3, 3, 4
    lbz 3, 0xe6(3)
    blr

fn_80309A54:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309A64
    li 3, 0x0
    blr
L_80309A64:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x94(3)
    and 3, 0, 5
    blr

fn_80309A78:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309A88
    li 3, 0x0
    blr
L_80309A88:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x84(3)
    and 3, 0, 5
    blr

fn_80309A9C:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 5, -0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x40820010 # bne .L_80309ACC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x48000008 # b .L_80309AD0
L_80309ACC:
    mr 3, 5
L_80309AD0:
    li 4, 0x0
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x4081007C # ble .L_80309B58
L_80309AE0:
    cmpwi 4, 0x0
    .4byte 0x4082000C # bne .L_80309AF0
    li 0, 0x0
    .4byte 0x48000038 # b .L_80309B24
L_80309AF0:
    cmpwi 4, 0x1
    .4byte 0x4082000C # bne .L_80309B00
    li 0, 0x1
    .4byte 0x48000028 # b .L_80309B24
L_80309B00:
    cmpwi 4, 0x2
    .4byte 0x4082000C # bne .L_80309B10
    li 0, 0x2
    .4byte 0x48000018 # b .L_80309B24
L_80309B10:
    cmpwi 4, 0x3
    .4byte 0x4082000C # bne .L_80309B20
    li 0, 0x3
    .4byte 0x48000008 # b .L_80309B24
L_80309B20:
    li 0, -0x3e7
L_80309B24:
    cmpwi 0, -0x3e7
    .4byte 0x4082000C # bne .L_80309B34
    li 3, 0x0
    .4byte 0x48000014 # b .L_80309B44
L_80309B34:
    slwi 3, 0, 2
    addi 0, 3, 0x34
    lwzx 0, 30, 0
    and 3, 0, 31
L_80309B44:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80309B50
    .4byte 0x48000010 # b .L_80309B5C
L_80309B50:
    addi 4, 4, 0x1
    .4byte 0x4200FF8C # bdnz .L_80309AE0
L_80309B58:
    li 3, 0x0
L_80309B5C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80309B74:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 5, -0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x40820010 # bne .L_80309BA4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x48000008 # b .L_80309BA8
L_80309BA4:
    mr 3, 5
L_80309BA8:
    li 4, 0x0
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x4081007C # ble .L_80309C30
L_80309BB8:
    cmpwi 4, 0x0
    .4byte 0x4082000C # bne .L_80309BC8
    li 0, 0x0
    .4byte 0x48000038 # b .L_80309BFC
L_80309BC8:
    cmpwi 4, 0x1
    .4byte 0x4082000C # bne .L_80309BD8
    li 0, 0x1
    .4byte 0x48000028 # b .L_80309BFC
L_80309BD8:
    cmpwi 4, 0x2
    .4byte 0x4082000C # bne .L_80309BE8
    li 0, 0x2
    .4byte 0x48000018 # b .L_80309BFC
L_80309BE8:
    cmpwi 4, 0x3
    .4byte 0x4082000C # bne .L_80309BF8
    li 0, 0x3
    .4byte 0x48000008 # b .L_80309BFC
L_80309BF8:
    li 0, -0x3e7
L_80309BFC:
    cmpwi 0, -0x3e7
    .4byte 0x4082000C # bne .L_80309C0C
    li 3, 0x0
    .4byte 0x48000014 # b .L_80309C1C
L_80309C0C:
    slwi 3, 0, 2
    addi 0, 3, 0x4
    lwzx 0, 30, 0
    and 3, 0, 31
L_80309C1C:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80309C28
    .4byte 0x48000010 # b .L_80309C34
L_80309C28:
    addi 4, 4, 0x1
    .4byte 0x4200FF8C # bdnz .L_80309BB8
L_80309C30:
    li 3, 0x0
L_80309C34:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80309C4C:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 5, -0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x40820010 # bne .L_80309C7C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x48000008 # b .L_80309C80
L_80309C7C:
    mr 3, 5
L_80309C80:
    li 4, 0x0
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x4081007C # ble .L_80309D08
L_80309C90:
    cmpwi 4, 0x0
    .4byte 0x4082000C # bne .L_80309CA0
    li 0, 0x0
    .4byte 0x48000038 # b .L_80309CD4
L_80309CA0:
    cmpwi 4, 0x1
    .4byte 0x4082000C # bne .L_80309CB0
    li 0, 0x1
    .4byte 0x48000028 # b .L_80309CD4
L_80309CB0:
    cmpwi 4, 0x2
    .4byte 0x4082000C # bne .L_80309CC0
    li 0, 0x2
    .4byte 0x48000018 # b .L_80309CD4
L_80309CC0:
    cmpwi 4, 0x3
    .4byte 0x4082000C # bne .L_80309CD0
    li 0, 0x3
    .4byte 0x48000008 # b .L_80309CD4
L_80309CD0:
    li 0, -0x3e7
L_80309CD4:
    cmpwi 0, -0x3e7
    .4byte 0x4082000C # bne .L_80309CE4
    li 3, 0x0
    .4byte 0x48000014 # b .L_80309CF4
L_80309CE4:
    slwi 3, 0, 2
    addi 0, 3, 0x24
    lwzx 0, 30, 0
    and 3, 0, 31
L_80309CF4:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80309D00
    .4byte 0x48000010 # b .L_80309D0C
L_80309D00:
    addi 4, 4, 0x1
    .4byte 0x4200FF8C # bdnz .L_80309C90
L_80309D08:
    li 3, 0x0
L_80309D0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8030979C

