# fn_803CE11C - fused multi-entry-point vtable body (0x254, several slots)
.section extab, "a"
.balign 4
.global etb_8000F8DC
etb_8000F8DC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000F8DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F714
eti_8001F714:
    .4byte fn_803CE11C
    .4byte 0x00000254
    .4byte etb_8000F8DC
.size eti_8001F714, 12

.text
.balign 4
.global fn_803CE11C

fn_803CE11C:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8051C1A0@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 4, lbl_8051C1A0@l
    li 4, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    bl fn_803B9940
    lwz 4, 0x20(31)
    mr 30, 3
    lwz 3, 0x4(4)
    bl fn_80095FB4
    lwz 5, 0x20(31)
    lfs 0, 0x0(3)
    lfs 1, 0x8(5)
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    .4byte 0x4080008C # bge .L_803CE1FC
    lis 3, lbl_8050DB0C@ha
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    addi 30, 3, lbl_8050DB0C@l
    lha 4, 0x1d2(30)
    mr 3, 5
    li 5, 0x0
    bl fn_80402B10
    lwz 3, 0x20(31)
    li 6, 0x0
    lha 4, 0x1d2(30)
    lbz 5, 0x28(3)
    bl fn_80402628
    lis 3, lbl_80476938@ha
    li 30, 0x0
    addi 29, 3, lbl_80476938@l
L_803CE1B0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x9
    .4byte 0x4180FFC4 # blt .L_803CE1B0
    li 0, 0x0
    stb 0, 0x117(31)
    .4byte 0x4800015C # b .L_803CE354
L_803CE1FC:
    cmplwi 30, 0xc
    .4byte 0x4181014C # bgt .L_803CE34C
    lis 3, jumptable_804AFF6C@ha
    slwi 0, 30, 2
    addi 3, 3, jumptable_804AFF6C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, 0x4c
    li 0, 0x1
    stw 3, 0x80(31)
    mr 3, 31
    lbz 4, 0x110(31)
    stb 4, 0x112(31)
    stb 0, 0x1a4(31)
    bl fn_803C24BC
    li 0, 0x2
    lis 3, lbl_8050EC80@ha
    stb 0, 0x110(31)
    addi 3, 3, lbl_8050EC80@l
    li 0, 0x0
    stw 0, 0xc(3)
    stw 0, 0x8(3)
    .4byte 0x480000FC # b .L_803CE354
    li 0, 0x4d
    li 3, 0x1
    stw 0, 0x80(31)
    li 0, 0x2
    lbz 4, 0x110(31)
    stb 4, 0x112(31)
    stb 3, 0x1a4(31)
    stb 0, 0x110(31)
    .4byte 0x480000D8 # b .L_803CE354
    li 0, 0x4e
    li 3, 0x1
    stw 0, 0x80(31)
    li 0, 0x2
    lbz 4, 0x110(31)
    stb 4, 0x112(31)
    stb 3, 0x1a4(31)
    stb 0, 0x110(31)
    .4byte 0x480000B4 # b .L_803CE354
    li 0, 0x4f
    li 3, 0x1
    stw 0, 0x80(31)
    li 0, 0x2
    lbz 4, 0x110(31)
    stb 4, 0x112(31)
    stb 3, 0x1a4(31)
    stb 0, 0x110(31)
    .4byte 0x48000090 # b .L_803CE354
    li 3, 0x50
    li 0, 0xb
    stw 3, 0x80(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x48000074 # b .L_803CE354
    li 0, 0x51
    li 3, 0x1
    stw 0, 0x80(31)
    li 0, 0x2
    lbz 4, 0x110(31)
    stb 4, 0x112(31)
    stb 3, 0x1a4(31)
    stb 0, 0x110(31)
    .4byte 0x48000050 # b .L_803CE354
    lis 3, lbl_8051C1A0@ha
    addi 3, 3, lbl_8051C1A0@l
    bl fn_803B9B8C
    li 3, 0x0
    li 0, 0x11
    stw 3, 0x80(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x48000028 # b .L_803CE354
    li 3, 0x57
    li 0, 0x7
    stw 3, 0x80(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x4800000C # b .L_803CE354
L_803CE34C:
    li 0, 0x0
    stw 0, 0x80(31)
L_803CE354:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

