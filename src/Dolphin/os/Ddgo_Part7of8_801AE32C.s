# DDGO cluster, part 7/8 (Track A byte-match + overview - 640B).
# setParams - calls its shared private helper Ddgo_ApplyState (landed
# alongside) and plays a sound (fn_80458F9C).
.section extab, "a"
.balign 4
.global etb_80007B1C
etb_80007B1C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007B1C, 8

.section extabindex, "a"
.balign 4
.global eti_80014A28
eti_80014A28:
    .4byte fn_801AE32C
    .4byte 0x00000280
    .4byte etb_80007B1C
.size eti_80014A28, 12

.text
.balign 4
.global fn_801AE32C

fn_801AE32C:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC062B888 # lfs f3, lbl_8053E828@sda21(r0)
    li 5, 0x0
    stw 0, 0x24(1)
    li 4, -0x1
    .4byte 0xC002B88C # lfs f0, lbl_8053E82C@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC042B830 # lfs f2, lbl_8053E7D0@sda21(r0)
    stfs 3, 0x60(31)
    addi 0, 3, 0x660d
    .4byte 0xC022B890 # lfs f1, lbl_8053E830@sda21(r0)
    stfs 3, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 28
    stw 3, 0x234(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 24
    stw 3, 0x294(31)
    stw 5, 0x24c(31)
    stw 5, 0x250(31)
    stw 5, 0x254(31)
    stw 5, 0x238(31)
    stw 5, 0x23c(31)
    stw 5, 0x240(31)
    stw 5, 0x244(31)
    stw 5, 0x248(31)
    stw 5, 0x29c(31)
    stw 5, 0x2a0(31)
    stfs 2, 0x274(31)
    stfs 2, 0x278(31)
    stfs 2, 0x27c(31)
    stfs 2, 0x280(31)
    stfs 2, 0x284(31)
    stfs 2, 0x288(31)
    stw 4, 0x264(31)
    stw 5, 0x28c(31)
    stw 4, 0x290(31)
    stw 4, 0x260(31)
    stb 5, 0x298(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    clrlwi 0, 0, 30
    stw 0, 0x98(31)
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x41820080 # beq .L_801AE4C4
    stw 5, 0x290(31)
    stb 5, 0x298(31)
    stw 5, 0x238(31)
    stw 5, 0x24c(31)
    lwz 0, 0x290(31)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801AE4A4
    .4byte 0x40800014 # bge .L_801AE478
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801AE488
    .4byte 0x40800020 # bge .L_801AE490
    .4byte 0x48000050 # b .L_801AE4C4
L_801AE478:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801AE4BC
    .4byte 0x40800044 # bge .L_801AE4C4
    .4byte 0x4800002C # b .L_801AE4B0
L_801AE488:
    stw 5, 0x28c(31)
    .4byte 0x48000038 # b .L_801AE4C4
L_801AE490:
    li 0, 0xc
    stw 0, 0x28c(31)
    lwz 0, 0x28c(31)
    stw 0, 0x258(31)
    .4byte 0x48000024 # b .L_801AE4C4
L_801AE4A4:
    li 0, 0x18
    stw 0, 0x28c(31)
    .4byte 0x48000018 # b .L_801AE4C4
L_801AE4B0:
    li 0, 0x20
    stw 0, 0x28c(31)
    .4byte 0x4800000C # b .L_801AE4C4
L_801AE4BC:
    li 0, 0x24
    stw 0, 0x28c(31)
L_801AE4C4:
    mr 3, 31
    bl Ddgo_ApplyState
    .4byte 0xC002B838 # lfs f0, lbl_8053E7D8@sda21(r0)
    li 3, 0x2710
    li 0, 0x3
    stfs 0, 0x270(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x268(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 3, 0x108(31)
    stw 0, 0x25c(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801AE50C
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_801AE520
L_801AE50C:
    li 0, 0x1
    lis 3, 0xa04
    stw 0, 0xb8(31)
    addi 0, 3, 0x4
    stw 0, 0xb0(31)
L_801AE520:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_801AE554
    .4byte 0x40800010 # bge .L_801AE53C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801AE548
    .4byte 0x48000060 # b .L_801AE598
L_801AE53C:
    cmpwi 0, 0x3
    .4byte 0x40800058 # bge .L_801AE598
    .4byte 0x4800001C # b .L_801AE560
L_801AE548:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000048 # b .L_801AE598
L_801AE554:
    li 0, 0xc
    stw 0, 0x230(31)
    .4byte 0x4800003C # b .L_801AE598
L_801AE560:
    .4byte 0x800D9020 # lwz r0, lbl_8053ABE0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801AE590
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x806D9020 # lwz r3, lbl_8053ABE0@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0x900D9020 # stw r0, lbl_8053ABE0@sda21(r0)
    .4byte 0x4800000C # b .L_801AE598
L_801AE590:
    li 0, 0x1
    stw 0, 0x230(31)
L_801AE598:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

