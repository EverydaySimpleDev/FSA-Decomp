# fn_8038DA00 - actor@lbl_804AF070: constructor (0x1F0)
# Installs vtable lbl_804AF070, then constructs 2 arrays of 4 12-byte
# elements each (__construct_array = __construct_array, placement-constructing
# via fn_8003B2CC, at this->0xc and this->0x124 - plausibly two Vec3f[4]
# arrays), registers self at the global lbl_8053AD78, then calls the
# current player's own virtual slot 0x18 (resolved via lbl_8053AAF8->0xa8).
.section extab, "a"
.balign 4
.global etb_8000EDE0
etb_8000EDE0:
    .4byte 0x304A0000
    .4byte 0x000000AC
    .4byte 0x00000020
    .4byte 0x00000108
    .4byte 0x00000028
    .4byte 0x000001CC
    .4byte 0x00000030
    .4byte 0x00000000
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
.size etb_8000EDE0, 56

.section extabindex, "a"
.balign 4
.global eti_8001EC1C
eti_8001EC1C:
    .4byte fn_8038DA00
    .4byte 0x000001F0
    .4byte etb_8000EDE0
.size eti_8001EC1C, 12

.text
.balign 4
.global fn_8038DA00

fn_8038DA00:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stmw 26, 0x8(1)
    lis 4, lbl_804AF070@ha
    mr 31, 3
    addi 0, 4, lbl_804AF070@l
    lis 3, fn_8003B2CC@ha
    stw 0, 0x0(31)
    addi 4, 3, fn_8003B2CC@l
    addi 3, 31, 0xc
    li 5, 0x0
    li 6, 0xc
    li 7, 0x4
    bl __construct_array
    lis 4, fn_8003B2CC@ha
    addi 3, 31, 0x124
    addi 4, 4, fn_8003B2CC@l
    li 5, 0x0
    li 6, 0xc
    li 7, 0x4
    bl __construct_array
    .4byte 0x93ED91B8 # stw r31, lbl_8053AD78@sda21(r0)
    lis 3, lbl_804755B0@ha
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    addi 5, 3, lbl_804755B0@l
    lis 4, 0x3f3f
    lwz 3, 0xa8(6)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 30, 3
    li 3, 0x70
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820010 # beq .L_8038DAAC
    mr 4, 30
    li 5, 0x0
    bl fn_80090DF0
L_8038DAAC:
    stw 27, 0x154(31)
    lis 3, lbl_804755C4@ha
    addi 5, 3, lbl_804755C4@l
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    lwz 3, 0xa8(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    stw 3, 0x8(31)
    mr 29, 31
    .4byte 0xC3E20128 # lfs f31, lbl_805430C8@sda21(r0)
    mr 28, 31
    li 27, 0x0
    li 30, 0x0
L_8038DAF0:
    li 3, 0x5c
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_8038DB08
    mr 4, 27
    bl fn_80391A1C
L_8038DB08:
    stw 26, 0x114(29)
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    stfs 31, 0xc(28)
    stfs 31, 0x10(28)
    stfs 31, 0x14(28)
    addi 28, 28, 0xc
    stw 30, 0x4c(29)
    addi 29, 29, 0x4
    .4byte 0x4180FFC4 # blt .L_8038DAF0
    li 4, 0x0
    li 0, -0x1
    stb 4, 0xec(31)
    li 3, 0x138
    .4byte 0xC0020128 # lfs f0, lbl_805430C8@sda21(r0)
    stb 4, 0x80(31)
    stw 0, 0x40(31)
    stw 0, 0x3c(31)
    stw 4, 0x7c(31)
    stb 4, 0xe5(31)
    stfs 0, 0x78(31)
    stfs 0, 0x74(31)
    stfs 0, 0x70(31)
    stfs 0, 0x6c(31)
    stb 4, 0xe4(31)
    stfs 0, 0x68(31)
    stfs 0, 0x64(31)
    stfs 0, 0x60(31)
    stfs 0, 0x5c(31)
    stb 4, 0xe6(31)
    stb 4, 0xe7(31)
    stb 4, 0xe8(31)
    stw 4, 0x44(31)
    stb 4, 0xe9(31)
    stw 4, 0x48(31)
    stb 4, 0xea(31)
    stb 4, 0xeb(31)
    stw 4, 0x10c(31)
    stb 4, 0xed(31)
    stw 4, 0x110(31)
    stb 4, 0xee(31)
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820018 # beq .L_8038DBCC
    lis 4, lbl_804755B0@ha
    addi 5, 31, 0x80
    addi 4, 4, lbl_804755B0@l
    li 6, 0x64
    bl fn_8009E018
L_8038DBCC:
    stw 26, 0x4(31)
    mr 3, 31
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    lmw 26, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

