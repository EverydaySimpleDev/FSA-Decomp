# SYKY cluster, part 10/10 (432B). setParams - pure numeric state
# selection (this->0x230/0xb0/0x108) branching on the spawn parameter,
# no calls.
.section extab, "a"
.balign 4
.global etb_8000792C
etb_8000792C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000792C, 8

.section extabindex, "a"
.balign 4
.global eti_80014740
eti_80014740:
    .4byte fn_801A033C
    .4byte 0x000001B0
    .4byte etb_8000792C
.size eti_80014740, 12

.text
.balign 4
.global fn_801A033C

fn_801A033C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0C2B540 # lfs f6, lbl_8053E4E0@sda21(r0)
    li 7, 0x0
    stw 0, 0x14(1)
    li 0, 0x2
    .4byte 0xC0A2B514 # lfs f5, lbl_8053E4B4@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC082B544 # lfs f4, lbl_8053E4E4@sda21(r0)
    stfs 6, 0x60(3)
    .4byte 0xC062B4DC # lfs f3, lbl_8053E47C@sda21(r0)
    stfs 6, 0x64(3)
    .4byte 0xC042B4C0 # lfs f2, lbl_8053E460@sda21(r0)
    stfs 5, 0x68(3)
    .4byte 0xC022B4C4 # lfs f1, lbl_8053E464@sda21(r0)
    stfs 5, 0x6c(3)
    .4byte 0xC002B548 # lfs f0, lbl_8053E4E8@sda21(r0)
    stfs 6, 0x80(3)
    stfs 6, 0x84(3)
    stfs 5, 0x88(3)
    stfs 5, 0x8c(3)
    stfs 4, 0x70(3)
    stfs 4, 0x74(3)
    stfs 3, 0x78(3)
    stfs 3, 0x7c(3)
    stw 7, 0x248(3)
    stw 7, 0x24c(3)
    stw 7, 0x250(3)
    stw 7, 0x254(3)
    stw 7, 0x258(3)
    stw 7, 0x25c(3)
    stw 7, 0x260(3)
    stw 7, 0x238(3)
    stw 7, 0x23c(3)
    stw 7, 0x240(3)
    stw 7, 0x244(3)
    stw 0, 0x98(3)
    stw 7, 0x264(3)
    stfs 2, 0x290(3)
    stfs 1, 0x294(3)
    stfs 0, 0x298(3)
    stb 7, 0x28c(3)
    stfs 1, 0x2a8(3)
    stfs 1, 0x2a4(3)
    stfs 1, 0x2a0(3)
    stfs 1, 0x44(3)
    stfs 1, 0x40(3)
    stfs 1, 0x3c(3)
    lfs 0, 0x10(3)
    stfs 0, 0x29c(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x268(3)
    lwz 0, 0x268(3)
    cmpwi 0, 0x3
    .4byte 0x41820098 # beq .L_801A04B4
    .4byte 0x40800014 # bge .L_801A0434
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801A0440
    .4byte 0x4080007C # bge .L_801A04A8
    .4byte 0x480000A8 # b .L_801A04D8
L_801A0434:
    cmpwi 0, 0x5
    .4byte 0x408000A0 # bge .L_801A04D8
    .4byte 0x48000094 # b .L_801A04D0
L_801A0440:
    lis 4, lbl_804C6330@ha
    .4byte 0x38AD8FF8 # li r5, lbl_8053ABB8@sda21
    addi 6, 4, lbl_804C6330@l
    lis 4, 0xa04
    .4byte 0x98ED8FF8 # stb r7, lbl_8053ABB8@sda21(r0)
    addi 0, 4, 0x4
    stw 7, 0x0(6)
    stb 7, 0x1(5)
    stw 7, 0x4(6)
    stb 7, 0x2(5)
    stw 7, 0x8(6)
    stb 7, 0x3(5)
    stw 7, 0xc(6)
    stw 0, 0xb0(31)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801A049C
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48000040 # b .L_801A04D8
L_801A049C:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000034 # b .L_801A04D8
L_801A04A8:
    li 0, 0x9
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_801A04D8
L_801A04B4:
    li 0, 0x2710
    li 3, 0xf
    stw 0, 0x108(31)
    li 0, 0xe
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_801A04D8
L_801A04D0:
    li 0, 0xb
    stw 0, 0x230(31)
L_801A04D8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

