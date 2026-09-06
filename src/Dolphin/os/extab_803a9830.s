# fn_803A9830 - fused multi-entry-point vtable body (0x288, 7 slots) - calls the 3 following helpers directly
.section extab, "a"
.balign 4
.global etb_8000F3DC
etb_8000F3DC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F3DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F0E4
eti_8001F0E4:
    .4byte fn_803A9830
    .4byte 0x00000288
    .4byte etb_8000F3DC
.size eti_8001F0E4, 12

.text
.balign 4
.global fn_803A9830

fn_803A9830:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0x4c0(3)
    cmplwi 0, 0x6
    .4byte 0x418101DC # bgt .L_803A9A28
    lis 4, jumptable_804AF9AC@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AF9AC@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x440(31)
    subi 0, 3, 0x1
    stw 0, 0x440(31)
    lwz 0, 0x440(31)
    cmpwi 0, 0x0
    .4byte 0x408201AC # bne .L_803A9A28
    li 0, 0x1
    stb 0, 0x4c0(31)
    .4byte 0x480001A0 # b .L_803A9A28
    lbz 3, 0x4c2(31)
    addi 0, 3, 0x2
    stb 0, 0x4c2(31)
    lbz 0, 0x4c2(31)
    cmplwi 0, 0xfe
    .4byte 0x41800188 # blt .L_803A9A28
    li 0, 0xff
    li 5, 0x2
    stb 0, 0x4c2(31)
    li 4, 0x1
    li 0, 0x0
    li 3, 0xff
    stb 5, 0x4c0(31)
    stb 4, 0x4c1(31)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235c(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235d(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235e(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235f(4)
    bl fn_80128C58
    li 0, -0x100
    addi 3, 1, 0x8
    stw 0, 0x8(1)
    bl fn_8013A884
    .4byte 0x48000120 # b .L_803A9A28
    bl fn_803AA8F8
    .4byte 0x48000118 # b .L_803A9A28
    bl fn_803AA1F8
    .4byte 0x48000110 # b .L_803A9A28
    bl fn_803A9AB8
    .4byte 0x48000108 # b .L_803A9A28
    lbz 3, 0x4c2(31)
    cmplwi 3, 0xf5
    .4byte 0x418000C4 # blt .L_803A99F0
    li 0, 0xff
    lis 3, lbl_80529DEC@ha
    stb 0, 0x4c2(31)
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x24d(3)
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_803A99E4
    li 0, 0x5
    li 3, 0x1
    stb 0, 0x4c0(31)
    li 0, 0x0
    lwz 6, 0x1b8(31)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_803A997C
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x1b8(31)
L_803A997C:
    lwz 6, 0x1bc(31)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_803A999C
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x1bc(31)
L_803A999C:
    addi 5, 31, 0x8
    lwz 6, 0x1c0(31)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_803A99C0
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x1b8(5)
L_803A99C0:
    lwz 6, 0x1bc(5)
    cmplwi 6, 0x0
    .4byte 0x41820060 # beq .L_803A9A28
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x1bc(5)
    .4byte 0x48000048 # b .L_803A9A28
L_803A99E4:
    li 0, 0x9
    stb 0, 0x4c0(31)
    .4byte 0x4800003C # b .L_803A9A28
L_803A99F0:
    addi 0, 3, 0xa
    stb 0, 0x4c2(31)
    .4byte 0x48000030 # b .L_803A9A28
    lbz 3, 0x4c2(31)
    cmplwi 3, 0xa
    .4byte 0x4181001C # bgt .L_803A9A20
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x4c2(31)
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    stb 0, 0x1d(3)
    .4byte 0x4800000C # b .L_803A9A28
L_803A9A20:
    subi 0, 3, 0xa
    stb 0, 0x4c2(31)
L_803A9A28:
    lwz 3, 0x44c(31)
    addi 0, 3, 0x1
    stw 0, 0x44c(31)
    lwz 0, 0x450(31)
    lwz 4, 0x44c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x24(3)
    lha 0, 0x6(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_803A9A5C
    li 0, 0x0
    stw 0, 0x44c(31)
L_803A9A5C:
    lwz 4, 0x44c(31)
    lis 3, 0x4330
    lwz 0, 0x450(31)
    xoris 4, 4, 0x8000
    stw 3, 0x10(1)
    slwi 0, 0, 2
    .4byte 0xC8220440 # lfd f1, lbl_805433E0@sda21(r0)
    stw 4, 0x14(1)
    add 3, 31, 0
    lwz 3, 0x24(3)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 0, 0x450(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x4(3)
    bl fn_8009DB58
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

