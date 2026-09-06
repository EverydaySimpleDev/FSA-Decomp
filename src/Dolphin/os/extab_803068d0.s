# Fresh-gap-hunt batch 19 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000D5BC
etb_8000D5BC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D5BC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C96C
eti_8001C96C:
    .4byte fn_803068D0
    .4byte 0x000001C4
    .4byte etb_8000D5BC
.size eti_8001C96C, 12

.text
.balign 4
.global fn_803068D0

fn_803068D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lbz 3, 0x2(3)
    extrwi. 0, 3, 3, 27
    .4byte 0x4182018C # beq .L_80306A7C
    extrwi 31, 3, 1, 25
    clrlwi 3, 3, 30
    bl fn_8022F340
    mulli 5, 3, 0x98
    lis 3, lbl_80506F88@ha
    lbz 0, 0x3(30)
    addi 8, 30, 0x18
    addi 4, 3, lbl_80506F88@l
    mulli 3, 31, 0x4c
    add 7, 4, 5
    clrlwi 5, 0, 30
    add 6, 7, 3
    li 10, 0x0
    mr 9, 6
    .4byte 0x3882E678 # li r4, lbl_80541618@sda21
    .4byte 0x48000018 # b .L_80306948
L_80306934:
    lwz 0, 0x0(8)
    addi 10, 10, 0x1
    addi 8, 8, 0x4
    stw 0, 0x0(9)
    addi 9, 9, 0x4
L_80306948:
    lbzx 3, 4, 5
    subi 0, 3, 0x7
    cmpw 10, 0
    .4byte 0x4180FFE0 # blt .L_80306934
    cmpwi 10, 0x13
    slwi 0, 10, 2
    add 6, 6, 0
    subfic 3, 10, 0x13
    li 5, 0x1
    li 4, 0x80
    .4byte 0x408000BC # bge .L_80306A2C
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820094 # beq .L_80306A10
L_80306980:
    lbz 0, 0x3(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0x3(6)
    stb 4, 0x2(6)
    lbz 0, 0x7(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0x7(6)
    stb 4, 0x6(6)
    lbz 0, 0xb(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0xb(6)
    stb 4, 0xa(6)
    lbz 0, 0xf(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0xf(6)
    stb 4, 0xe(6)
    lbz 0, 0x13(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0x13(6)
    stb 4, 0x12(6)
    lbz 0, 0x17(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0x17(6)
    stb 4, 0x16(6)
    lbz 0, 0x1b(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0x1b(6)
    stb 4, 0x1a(6)
    lbz 0, 0x1f(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0x1f(6)
    stb 4, 0x1e(6)
    addi 6, 6, 0x20
    .4byte 0x4200FF7C # bdnz .L_80306980
    andi. 3, 3, 0x7
    .4byte 0x41820020 # beq .L_80306A2C
L_80306A10:
    mtctr 3
L_80306A14:
    lbz 0, 0x3(6)
    rlwimi 0, 5, 0, 31, 31
    stb 0, 0x3(6)
    stb 4, 0x2(6)
    addi 6, 6, 0x4
    .4byte 0x4200FFEC # bdnz .L_80306A14
L_80306A2C:
    xori 3, 31, 0x1
    li 0, 0x13
    mulli 5, 3, 0x4c
    li 4, 0x1
    li 3, 0x80
    add 6, 7, 5
    mtctr 0
L_80306A48:
    lbz 5, 0x3(6)
    extrwi 0, 5, 3, 24
    cmplwi 0, 0x2
    .4byte 0x40820020 # bne .L_80306A74
    lbz 0, 0x0(6)
    rlwimi 0, 5, 7, 22, 23
    cmpwi 0, 0x45
    .4byte 0x40800010 # bge .L_80306A74
    rlwimi 5, 4, 0, 31, 31
    stb 5, 0x3(6)
    stb 3, 0x2(6)
L_80306A74:
    addi 6, 6, 0x4
    .4byte 0x4200FFD0 # bdnz .L_80306A48
L_80306A7C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

