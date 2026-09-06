# fn_803DA2F4 - TNGL: vtable-slot function (0x19C)
# Player-validity (fn_8023E724/8023DE58 x2 each), target resolve
# (fn_8022EA0C).
.section extab, "a"
.balign 4
.global etb_8000FB5C
etb_8000FB5C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000FB5C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F9FC
eti_8001F9FC:
    .4byte fn_803DA2F4
    .4byte 0x0000019C
    .4byte etb_8000FB5C
.size eti_8001F9FC, 12

.text
.balign 4
.global fn_803DA2F4

fn_803DA2F4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    .4byte 0xC00205F8 # lfs f0, lbl_80543598@sda21(r0)
    mr 29, 3
    .4byte 0xC04205FC # lfs f2, lbl_8054359C@sda21(r0)
    li 3, 0x0
    stfs 0, 0x60(29)
    li 0, 0x1
    .4byte 0xC0220600 # lfs f1, lbl_805435A0@sda21(r0)
    stfs 0, 0x64(29)
    .4byte 0xC0020604 # lfs f0, lbl_805435A4@sda21(r0)
    stfs 2, 0x68(29)
    stfs 2, 0x6c(29)
    stfs 1, 0x80(29)
    stfs 1, 0x84(29)
    stfs 0, 0x88(29)
    stfs 0, 0x8c(29)
    stw 3, 0x240(29)
    stw 3, 0x244(29)
    stw 3, 0x248(29)
    stw 3, 0x234(29)
    stw 3, 0x238(29)
    stw 3, 0x23c(29)
    stw 3, 0x24c(29)
    stb 0, 0x250(29)
    stw 3, 0x290(29)
    stw 3, 0x294(29)
    stw 3, 0x298(29)
    stw 3, 0x29c(29)
    stb 3, 0x251(29)
    stb 0, 0x11f(29)
    lwz 0, 0x90(29)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_803DA3E4
    li 3, 0x0
    bl fn_8022EA0C
    mr. 31, 3
    .4byte 0x41800044 # blt .L_803DA3E4
    bl fn_8023DE58
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC0020608 # lfs f0, lbl_805435A8@sda21(r0)
    stfs 1, 0xc(29)
    lfs 1, 0x4(3)
    stfs 1, 0x10(29)
    lfs 1, 0x8(3)
    mr 3, 31
    stfs 1, 0x14(29)
    lfs 1, 0x10(29)
    fadds 0, 1, 0
    stfs 0, 0x10(29)
    bl fn_8023DE58
    stw 3, 0x4(29)
L_803DA3E4:
    .4byte 0xC3E20608 # lfs f31, lbl_805435A8@sda21(r0)
    mr 31, 29
    li 30, 0x0
L_803DA3F0:
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x0(3)
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    stfs 0, 0x260(31)
    lfs 0, 0x4(3)
    stfs 0, 0x264(31)
    lfs 0, 0x8(3)
    stfs 0, 0x268(31)
    lfs 0, 0x264(31)
    fadds 0, 0, 31
    stfs 0, 0x264(31)
    addi 31, 31, 0xc
    .4byte 0x4180FFC8 # blt .L_803DA3F0
    lfs 0, 0xc(29)
    stfs 0, 0x254(29)
    lfs 0, 0x10(29)
    stfs 0, 0x258(29)
    lfs 0, 0x14(29)
    stfs 0, 0x25c(29)
    lwz 0, 0x90(29)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_803DA464
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x248(29)
    stw 0, 0x230(29)
    .4byte 0x4800000C # b .L_803DA46C
L_803DA464:
    li 0, 0x5
    stw 0, 0x230(29)
L_803DA46C:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

