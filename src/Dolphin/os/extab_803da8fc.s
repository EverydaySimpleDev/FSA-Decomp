# fn_803DA8FC - actor@lbl_804B04F8: constructor (0x11C)
# Vtable is short (4 words: 0,0,dtor,0), followed by this actor's own PTMF
# dispatch table (populated at runtime, same mechanism as previous actors'
# lbl_804AFD70/804AFB90/804B0168) pointing at fn_803DEC44/fn_803DF2B4 below.
.section extab, "a"
.balign 4
.global etb_8000FB7C
etb_8000FB7C:
    .4byte 0x100A0000
    .4byte 0x0000003C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000FB7C, 24

.section extabindex, "a"
.balign 4
.global eti_8001FA2C
eti_8001FA2C:
    .4byte fn_803DA8FC
    .4byte 0x0000011C
    .4byte etb_8000FB7C
.size eti_8001FA2C, 12

.text
.balign 4
.global fn_803DA8FC

fn_803DA8FC:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B04F8@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B04F8@l
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x8(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9208 # stw r31, lbl_8053ADC8@sda21(r0)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_803DA938
    bl fn_8009C4EC
L_803DA938:
    lis 3, lbl_80529DEC@ha
    stw 30, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_804774B4@ha
    lwz 6, 0x20(5)
    addi 4, 3, lbl_804774B4@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    lwz 3, 0x4(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 12, 0x0(3)
    addi 6, 5, 0x7431
    addi 5, 4, 0x7373
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x8(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 3, 0x4(31)
    addi 6, 5, 0x7432
    addi 5, 4, 0x7373
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xc(31)
    lwz 3, 0xc(31)
    bl fn_80095FB4
    lfs 0, 0x0(3)
    stfs 0, 0x10(31)
    lwz 3, 0xc(31)
    bl fn_80095FB4
    lfs 1, 0x4(3)
    li 0, 0x0
    .4byte 0xC0020610 # lfs f0, lbl_805435B0@sda21(r0)
    mr 3, 31
    stfs 1, 0x14(31)
    lwz 4, 0x8(31)
    lbz 4, 0xb2(4)
    stb 4, 0x1e(31)
    lwz 4, 0xc(31)
    lbz 4, 0xb2(4)
    stb 4, 0x1f(31)
    sth 0, 0x1c(31)
    stb 0, 0x20(31)
    stfs 0, 0x18(31)
    stb 0, 0x21(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

