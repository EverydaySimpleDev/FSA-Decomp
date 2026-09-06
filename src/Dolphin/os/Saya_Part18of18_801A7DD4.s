# SAYA cluster, part 18/18 (412B). setParams-like - uses the confirmed
# NAVI sway utility fn_801F3668.
.section extab, "a"
.balign 4
.global etb_80007A2C
etb_80007A2C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007A2C, 8

.section extabindex, "a"
.balign 4
.global eti_800148C0
eti_800148C0:
    .4byte fn_801A7DD4
    .4byte 0x0000019C
    .4byte etb_80007A2C
.size eti_800148C0, 12

.text
.balign 4
.global fn_801A7DD4

fn_801A7DD4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC082B6C0 # lfs f4, lbl_8053E660@sda21(r0)
    li 4, 0x0
    stw 0, 0x14(1)
    li 0, -0x1
    .4byte 0xC062B6C4 # lfs f3, lbl_8053E664@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC042B6E8 # lfs f2, lbl_8053E688@sda21(r0)
    stfs 4, 0x60(3)
    li 3, 0x2
    .4byte 0xC022B6EC # lfs f1, lbl_8053E68C@sda21(r0)
    stfs 4, 0x64(31)
    .4byte 0xC002B6B4 # lfs f0, lbl_8053E654@sda21(r0)
    stfs 3, 0x68(31)
    stfs 3, 0x6c(31)
    stfs 2, 0x70(31)
    stfs 2, 0x74(31)
    stfs 1, 0x78(31)
    stfs 1, 0x7c(31)
    stfs 4, 0x80(31)
    stfs 4, 0x84(31)
    stfs 3, 0x88(31)
    stfs 3, 0x8c(31)
    stw 4, 0x240(31)
    stw 4, 0x244(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 3, 0x254(31)
    stw 0, 0x258(31)
    stw 4, 0x25c(31)
    stw 0, 0x26c(31)
    stw 0, 0x270(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x264(31)
    stw 0, 0x268(31)
    stw 4, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801A7E98
    stw 4, 0x250(31)
    stw 4, 0x234(31)
    stw 4, 0x240(31)
L_801A7E98:
    lwz 0, 0x90(31)
    mr 3, 31
    clrlwi 0, 0, 28
    stw 0, 0x260(31)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801A7ECC
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000094 # b .L_801A7F5C
L_801A7ECC:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_801A7EF4
    .4byte 0x40800010 # bge .L_801A7EE8
    cmpwi 0, 0x0
    .4byte 0x40800040 # bge .L_801A7F20
    .4byte 0x48000078 # b .L_801A7F5C
L_801A7EE8:
    cmpwi 0, 0x3
    .4byte 0x40800070 # bge .L_801A7F5C
    .4byte 0x48000064 # b .L_801A7F54
L_801A7EF4:
    lwz 0, 0x250(31)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_801A7F14
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x250(31)
    stw 0, 0x234(31)
    stw 0, 0x240(31)
L_801A7F14:
    lwz 3, 0x240(31)
    addi 0, 3, 0xc
    stw 0, 0x254(31)
L_801A7F20:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801A7F48
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_801A7F5C
L_801A7F48:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_801A7F5C
L_801A7F54:
    li 0, 0xd
    stw 0, 0x230(31)
L_801A7F5C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

