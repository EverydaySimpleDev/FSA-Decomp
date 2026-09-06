# fn_803CE4CC - helper (0x520)
.section extab, "a"
.balign 4
.global etb_8000F8EC
etb_8000F8EC:
    .4byte 0x50080000
    .4byte 0x00000000
.size etb_8000F8EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F72C
eti_8001F72C:
    .4byte fn_803CE4CC
    .4byte 0x00000520
    .4byte etb_8000F8EC
.size eti_8001F72C, 12

.text
.balign 4
.global fn_803CE4CC

fn_803CE4CC:
    stwu 1, -0x60(1)
    mflr 0
    lis 5, lbl_804765D0@ha
    lis 4, lbl_8050EC80@ha
    stw 0, 0x64(1)
    stmw 22, 0x38(1)
    addi 31, 5, lbl_804765D0@l
    mr 23, 3
    addi 30, 4, lbl_8050EC80@l
    li 24, 0x0
    addi 29, 31, 0x30
    addi 28, 31, 0x0
    addi 27, 31, 0x18
    addi 26, 31, 0x730
L_803CE504:
    li 0, 0x1
    lbz 3, 0x115(23)
    slw 25, 0, 24
    clrlwi 0, 25, 24
    andc 0, 3, 0
    stb 0, 0x115(23)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0xff(3)
    cmpwi 0, 0x0
    .4byte 0x418203E8 # beq .L_803CE910
    addi 3, 30, 0x20
    bl fn_803BADAC
    clrlwi. 0, 3, 24
    .4byte 0x41820318 # beq .L_803CE850
    lwz 3, 0x20(30)
    li 6, 0x0
    lwz 4, 0x24(30)
    xor 0, 3, 6
    xor 5, 4, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_803CE55C
    li 6, 0x1
L_803CE55C:
    cmpwi 6, 0x0
    .4byte 0x41820240 # beq .L_803CE7A0
    addi 5, 1, 0x10
    bl OSTicksToCalendarTime
    lwz 3, 0x8(23)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 0, 0x10(1)
    addi 5, 31, 0x868
    li 4, 0x1e
    stw 0, 0x8(1)
    lwz 6, 0x20(1)
    lwz 7, 0x1c(1)
    lwz 8, 0x24(1)
    addi 6, 6, 0x1
    lwz 9, 0x18(1)
    lwz 10, 0x14(1)
    crclr 6
    bl fn_8006B414
    lwz 3, 0x8(23)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    li 22, 0x0
    stb 0, 0xb0(3)
    mr 25, 22
L_803CE630:
    mr 4, 25
    li 3, 0x0
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803CE64C
    addi 22, 22, 0x1
    .4byte 0x48000014 # b .L_803CE65C
L_803CE64C:
    slwi 0, 22, 2
    addi 3, 31, 0x730
    lwzx 25, 3, 0
    .4byte 0x48000014 # b .L_803CE66C
L_803CE65C:
    addi 25, 25, 0x1
    cmpwi 25, 0x8
    .4byte 0x4180FFCC # blt .L_803CE630
    lwz 25, 0x1c(26)
L_803CE66C:
    lwz 3, 0x8(23)
    lis 4, 0x6631
    addi 6, 4, 0x6c76
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 25
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 25, 0x0
    mr 22, 25
L_803CE6AC:
    mr 4, 22
    li 3, 0x1
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803CE6C8
    addi 25, 25, 0x1
    .4byte 0x48000014 # b .L_803CE6D8
L_803CE6C8:
    slwi 0, 25, 2
    addi 3, 31, 0x730
    lwzx 22, 3, 0
    .4byte 0x48000014 # b .L_803CE6E8
L_803CE6D8:
    addi 22, 22, 0x1
    cmpwi 22, 0x8
    .4byte 0x4180FFCC # blt .L_803CE6AC
    lwz 22, 0x1c(26)
L_803CE6E8:
    lwz 3, 0x8(23)
    lis 4, 0x6632
    addi 6, 4, 0x6c76
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 22
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 25, 0x0
    mr 22, 25
L_803CE728:
    mr 4, 22
    li 3, 0x2
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803CE744
    addi 25, 25, 0x1
    .4byte 0x48000014 # b .L_803CE754
L_803CE744:
    slwi 0, 25, 2
    addi 3, 31, 0x730
    lwzx 22, 3, 0
    .4byte 0x48000014 # b .L_803CE764
L_803CE754:
    addi 22, 22, 0x1
    cmpwi 22, 0x8
    .4byte 0x4180FFCC # blt .L_803CE728
    lwz 22, 0x1c(26)
L_803CE764:
    lwz 3, 0x8(23)
    lis 4, 0x6633
    addi 6, 4, 0x6c76
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 22
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x480000A4 # b .L_803CE840
L_803CE7A0:
    lwz 3, 0x8(23)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x6a
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(23)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803CE840:
    mr 3, 23
    mr 4, 24
    bl fn_803BDD44
    .4byte 0x48000170 # b .L_803CE9BC
L_803CE850:
    lwz 3, 0x8(23)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11d
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(23)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    clrlwi 0, 25, 24
    stb 4, 0xb0(3)
    mr 3, 23
    mr 4, 24
    lbz 5, 0x115(23)
    or 0, 5, 0
    stb 0, 0x115(23)
    bl fn_803BD5E0
    .4byte 0x480000B0 # b .L_803CE9BC
L_803CE910:
    lwz 3, 0x8(23)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x6a
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(23)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 24
    stb 0, 0xb0(3)
    mr 3, 23
    bl fn_803BDD44
L_803CE9BC:
    addi 24, 24, 0x1
    addi 29, 29, 0x8
    cmpwi 24, 0x3
    addi 28, 28, 0x8
    addi 27, 27, 0x8
    addi 30, 30, 0xc8
    .4byte 0x4180FB30 # blt .L_803CE504
    lmw 22, 0x38(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

