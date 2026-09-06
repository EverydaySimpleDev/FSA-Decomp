# fn_803DEC44 - actor@lbl_804B04F8: PTMF-dispatched method (0x670)
# Calls into the shared engine subsystem (fn_80402E08/fn_80458880) - not
# contiguous with the ctor/dtor, reached only via the PTMF table.
.section extab, "a"
.balign 4
.global etb_8000FBDC
etb_8000FBDC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000FBDC, 8

.section extabindex, "a"
.balign 4
.global eti_8001FAA4
eti_8001FAA4:
    .4byte fn_803DEC44
    .4byte 0x00000670
    .4byte etb_8000FBDC
.size eti_8001FAA4, 12

.text
.balign 4
.global fn_803DEC44

fn_803DEC44:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lwz 3, 0x88(3)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_803DEC80
    addi 0, 3, 0x1
    stw 0, 0x88(31)
    lwz 0, 0x88(31)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_803DEC80
    li 0, 0x0
    stw 0, 0x88(31)
L_803DEC80:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820468 # beq .L_803DF0FC
    lbz 0, 0x9e(31)
    cmplwi 0, 0x3
    .4byte 0x40820014 # bne .L_803DECB4
    stb 0, 0x9f(31)
    li 0, 0x5
    stw 0, 0x68(31)
    .4byte 0x48000438 # b .L_803DF0E8
L_803DECB4:
    li 29, 0x0
    mr 30, 31
    sth 29, 0x9c(31)
    li 28, 0x0
L_803DECC4:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x34(30)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x34(30)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    sth 29, 0x20(3)
    fmr 2, 1
    lwz 3, 0x34(30)
    sth 29, 0x22(3)
    lwz 3, 0x44(30)
    bl fn_80402E08
    lwz 3, 0x44(30)
    addi 28, 28, 0x1
    cmpwi 28, 0x2
    sth 29, 0x20(3)
    lwz 3, 0x44(30)
    addi 30, 30, 0x4
    sth 29, 0x22(3)
    .4byte 0x4180FFB4 # blt .L_803DECC4
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x30(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x30(31)
    li 30, 0x0
    mr 28, 31
    li 27, 0x0
    sth 30, 0x22(3)
    li 29, 0x1
    lwz 3, 0x40(31)
    lwz 3, 0x4(3)
    stb 30, 0xb0(3)
L_803DED48:
    lwz 3, 0x14(28)
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    stb 29, 0xb0(3)
    lwz 3, 0x14(28)
    bl fn_80402E08
    lwz 3, 0x14(28)
    addi 27, 27, 0x1
    cmpwi 27, 0x7
    addi 28, 28, 0x4
    sth 30, 0x20(3)
    .4byte 0x4180FFD0 # blt .L_803DED48
    mr 28, 31
    li 27, 0x0
    li 29, 0x1
    li 30, 0x0
L_803DED8C:
    lwz 3, 0x50(28)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC042067C # lfs f2, lbl_8054361C@sda21(r0)
    stb 29, 0xb0(3)
    lwz 3, 0x50(28)
    bl fn_80402E08
    lwz 3, 0x50(28)
    addi 27, 27, 0x1
    cmpwi 27, 0x2
    addi 28, 28, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFD0 # blt .L_803DED8C
    lbz 0, 0x9e(31)
    cmpwi 0, 0x1
    .4byte 0x418200C0 # beq .L_803DEE88
    .4byte 0x40800168 # bge .L_803DEF34
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_803DEDDC
    .4byte 0x4800015C # b .L_803DEF34
L_803DEDDC:
    lwz 3, 0x4(31)
    lis 5, 0x636f
    lis 4, 0x57
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6762
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6f70
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6f70
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x636f
    stb 0, 0xb0(3)
    lis 4, 0x57
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6762
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000158 # b .L_803DEFDC
L_803DEE88:
    lwz 3, 0x4(31)
    lis 5, 0x636f
    lis 4, 0x57
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6762
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6f70
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6f70
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x636f
    stb 0, 0xb0(3)
    lis 4, 0x57
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6762
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480000AC # b .L_803DEFDC
L_803DEF34:
    lwz 3, 0x4(31)
    lis 5, 0x636f
    lis 4, 0x57
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6762
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6f70
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6f70
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x636f
    stb 0, 0xb0(3)
    lis 4, 0x57
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6762
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803DEFDC:
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x546e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lbz 0, 0x9e(31)
    lis 4, lbl_8047788C@ha
    addi 4, 4, lbl_8047788C@l
    li 5, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3032
    li 5, 0x546e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lbz 0, 0x9e(31)
    lis 4, lbl_8047788C@ha
    addi 4, 4, lbl_8047788C@l
    li 5, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x7870
    addi 6, 4, 0x3031
    li 5, 0x5465
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lbz 0, 0x9e(31)
    lis 4, lbl_80477880@ha
    addi 4, 4, lbl_80477880@l
    li 5, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    li 7, 0x0
    bl fn_803832BC
    lbz 4, 0x9e(31)
    li 5, 0x0
    li 3, 0x2
    li 0, 0x1
    slwi 4, 4, 2
    add 4, 31, 4
    lwz 4, 0x44(4)
    lwz 4, 0x4(4)
    stb 5, 0xb0(4)
    stw 3, 0x84(31)
    lbz 3, 0x9e(31)
    stb 3, 0x9f(31)
    stw 0, 0x90(31)
L_803DF0E8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000164 # b .L_803DF25C
L_803DF0FC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_803DF130
    li 0, 0x1
    li 4, 0xc
    stw 0, 0x68(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000130 # b .L_803DF25C
L_803DF130:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_803DF1C8
    lbz 0, 0x9e(31)
    stb 0, 0x9f(31)
    lbz 3, 0x9e(31)
    cmplwi 3, 0x3
    .4byte 0x40800024 # bge .L_803DF17C
    addi 0, 3, 0x1
    stb 0, 0x9e(31)
    lbz 0, 0x9e(31)
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_803DF184
    li 0, 0x3
    stb 0, 0x9e(31)
    .4byte 0x4800000C # b .L_803DF184
L_803DF17C:
    li 0, 0x0
    stb 0, 0x9e(31)
L_803DF184:
    li 0, 0x1
    stw 0, 0x88(31)
    lbz 0, 0x9e(31)
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_803DF1A4
    li 0, 0x1e
    stw 0, 0x8c(31)
    .4byte 0x4800000C # b .L_803DF1AC
L_803DF1A4:
    li 0, 0x3c
    stw 0, 0x8c(31)
L_803DF1AC:
    li 0, 0x1
    li 4, 0x26
    stw 0, 0x90(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000098 # b .L_803DF25C
L_803DF1C8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820080 # beq .L_803DF25C
    lbz 0, 0x9e(31)
    stb 0, 0x9f(31)
    lbz 3, 0x9e(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803DF214
    subi 0, 3, 0x1
    stb 0, 0x9e(31)
    lbz 0, 0x9e(31)
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_803DF21C
    li 0, 0x1
    stb 0, 0x9e(31)
    .4byte 0x4800000C # b .L_803DF21C
L_803DF214:
    li 0, 0x3
    stb 0, 0x9e(31)
L_803DF21C:
    li 0, 0x1
    stw 0, 0x88(31)
    lbz 0, 0x9e(31)
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_803DF23C
    li 0, 0x1e
    stw 0, 0x8c(31)
    .4byte 0x4800000C # b .L_803DF244
L_803DF23C:
    li 0, 0x3c
    stw 0, 0x8c(31)
L_803DF244:
    li 0, 0x1
    li 4, 0x26
    stw 0, 0x90(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803DF25C:
    lwz 3, 0x8c(31)
    addi 0, 3, 0x1
    stw 0, 0x8c(31)
    lbz 0, 0x9e(31)
    cmplwi 0, 0x3
    .4byte 0x4082001C # bne .L_803DF28C
    lwz 0, 0x8c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800024 # blt .L_803DF2A0
    li 0, 0x0
    stw 0, 0x8c(31)
    .4byte 0x48000018 # b .L_803DF2A0
L_803DF28C:
    lwz 0, 0x8c(31)
    cmpwi 0, 0x78
    .4byte 0x4180000C # blt .L_803DF2A0
    li 0, 0x0
    stw 0, 0x8c(31)
L_803DF2A0:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

