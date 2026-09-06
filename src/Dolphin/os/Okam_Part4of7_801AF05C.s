# OKAM cluster, part 4/7 (400B). setParams-like - calls its own
# private helper fn_801AF7D0 (landed alongside), the generic FourCC
# actor dispatcher fn_801F9484, fn_80138A30/SpatialRegistry_GetBase.
.section extab, "a"
.balign 4
.global etb_80007B4C
etb_80007B4C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007B4C, 8

.section extabindex, "a"
.balign 4
.global eti_80014A70
eti_80014A70:
    .4byte fn_801AF05C
    .4byte 0x00000190
    .4byte etb_80007B4C
.size eti_80014A70, 12

.text
.balign 4
.global fn_801AF05C

fn_801AF05C:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022B8BC # lfs f1, lbl_8053E85C@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC002B8C0 # lfs f0, lbl_8053E860@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x41810068 # bgt .L_801AF130
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 20
    cmpwi 0, 0x2
    .4byte 0x40810008 # ble .L_801AF0E0
    li 0, 0x0
L_801AF0E0:
    lis 4, lbl_804A33C4@ha
    lis 3, lbl_804A33B8@ha
    slwi 0, 0, 2
    addi 4, 4, lbl_804A33C4@l
    addi 3, 3, lbl_804A33B8@l
    lwzx 29, 4, 0
    lwzx 30, 3, 0
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 4, 30
    mr 7, 29
    addi 6, 31, 0xc
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    cmpwi 3, 0x0
    .4byte 0x418000B0 # blt .L_801AF1D0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000A4 # b .L_801AF1D0
L_801AF130:
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    li 3, 0x0
    li 0, -0x1
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x278(31)
    stw 3, 0x254(31)
    stw 0, 0x258(31)
    stb 3, 0x25c(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 31
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801AF18C
    stw 3, 0x98(31)
    mr 3, 31
    li 4, 0x0
    bl fn_801AF7D0
    .4byte 0x48000018 # b .L_801AF1A0
L_801AF18C:
    li 0, 0x2
    mr 3, 31
    stw 0, 0x98(31)
    li 4, 0x4
    bl fn_801AF7D0
L_801AF1A0:
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    lis 3, 0xa04
    addi 3, 3, 0x2004
    li 0, 0x0
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stfs 0, 0x260(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
L_801AF1D0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

