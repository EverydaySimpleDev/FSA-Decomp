# TTAT cluster, part 8/9 (Track A byte-match + overview - 1004B).
# setParams - uses effect spawn fn_8013CC50, the generic FourCC actor
# dispatcher fn_801F9484, fn_801F666C/SpatialRegistry_GetBase, and sound
# fn_80458F9C.
.section extab, "a"
.balign 4
.global etb_80007A94
etb_80007A94:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80007A94, 8

.section extabindex, "a"
.balign 4
.global eti_8001495C
eti_8001495C:
    .4byte fn_801AA508
    .4byte 0x000003EC
    .4byte etb_80007A94
.size eti_8001495C, 12

.text
.balign 4
.global fn_801AA508

fn_801AA508:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, 0x504
    .4byte 0xC022B784 # lfs f1, lbl_8053E724@sda21(r0)
    stw 0, 0x34(1)
    addi 5, 4, 0x4
    .4byte 0xC002B788 # lfs f0, lbl_8053E728@sda21(r0)
    li 7, 0x0
    stmw 26, 0x18(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC042B78C # lfs f2, lbl_8053E72C@sda21(r0)
    .4byte 0xC062B790 # lfs f3, lbl_8053E730@sda21(r0)
    li 6, -0x1
    li 4, 0x2710
    addi 0, 3, 0x660d
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    .4byte 0xC022B740 # lfs f1, lbl_8053E6E0@sda21(r0)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0xC002B748 # lfs f0, lbl_8053E6E8@sda21(r0)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    .4byte 0xC042B794 # lfs f2, lbl_8053E734@sda21(r0)
    stfs 3, 0x88(31)
    stfs 3, 0x8c(31)
    stw 7, 0x240(31)
    stw 7, 0x244(31)
    stw 7, 0x248(31)
    stw 7, 0x234(31)
    stw 7, 0x238(31)
    stw 7, 0x23c(31)
    stw 6, 0x270(31)
    lfs 3, 0xc(31)
    stfs 3, 0x280(31)
    lfs 3, 0x10(31)
    stfs 3, 0x284(31)
    lfs 3, 0x14(31)
    stfs 3, 0x288(31)
    stw 6, 0x274(31)
    lfs 3, 0xc(31)
    stfs 3, 0x28c(31)
    lfs 3, 0x10(31)
    stfs 3, 0x290(31)
    lfs 3, 0x14(31)
    stfs 3, 0x294(31)
    stw 6, 0x278(31)
    lfs 3, 0xc(31)
    stfs 3, 0x298(31)
    lfs 3, 0x10(31)
    stfs 3, 0x29c(31)
    lfs 3, 0x14(31)
    stfs 3, 0x2a0(31)
    stw 6, 0x27c(31)
    lfs 3, 0xc(31)
    stfs 3, 0x2a4(31)
    lfs 3, 0x10(31)
    stfs 3, 0x2a8(31)
    lfs 3, 0x14(31)
    stfs 3, 0x2ac(31)
    stw 5, 0xb0(31)
    stw 4, 0x108(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 28
    stw 3, 0x258(31)
    stw 6, 0x268(31)
    stw 7, 0x25c(31)
    stw 6, 0x260(31)
    stw 7, 0x264(31)
    stw 7, 0x254(31)
    stfs 1, 0x2b4(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x2b2(31)
    lhz 3, 0x2b2(31)
    li 0, 0x1
    clrlwi 3, 3, 30
    sth 3, 0x2b2(31)
    lhz 3, 0x2b2(31)
    clrlslwi 3, 3, 30, 14
    sth 3, 0x2b2(31)
    lhz 3, 0x2b2(31)
    addi 3, 3, 0x2000
    sth 3, 0x2b2(31)
    stw 7, 0x2b8(31)
    stb 7, 0x2b0(31)
    stw 7, 0x24c(31)
    stw 0, 0x250(31)
    stb 7, 0x26c(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x418200BC # beq .L_801AA76C
    cmpwi 0, 0x5
    .4byte 0x418200B4 # beq .L_801AA76C
    lwz 3, 0x90(31)
    subi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x41820078 # beq .L_801AA748
    stw 7, 0x260(31)
    stb 7, 0x2b0(31)
    stw 7, 0x234(31)
    stw 7, 0x240(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x41820034 # beq .L_801AA72C
    .4byte 0x40800010 # bge .L_801AA70C
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801AA718
    .4byte 0x48000030 # b .L_801AA738
L_801AA70C:
    cmpwi 0, 0x5
    .4byte 0x40800028 # bge .L_801AA738
    .4byte 0x48000010 # b .L_801AA724
L_801AA718:
    li 0, 0x3
    stw 0, 0x240(31)
    .4byte 0x48000018 # b .L_801AA738
L_801AA724:
    li 0, 0x3
    stw 0, 0x240(31)
L_801AA72C:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_801AA738:
    lwz 3, 0x25c(31)
    lwz 0, 0x240(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
L_801AA748:
    .4byte 0xC022B784 # lfs f1, lbl_8053E724@sda21(r0)
    li 0, 0x5
    .4byte 0xC002B788 # lfs f0, lbl_8053E728@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 0, 0x230(31)
    .4byte 0x48000178 # b .L_801AA8E0
L_801AA76C:
    li 0, 0x4
    .4byte 0xC042B798 # lfs f2, lbl_8053E738@sda21(r0)
    stw 0, 0x250(31)
    addi 4, 31, 0xc
    .4byte 0xC002B79C # lfs f0, lbl_8053E73C@sda21(r0)
    li 6, 0x0
    lwz 0, 0x250(31)
    li 7, 0x0
    .4byte 0xC022B748 # lfs f1, lbl_8053E6E8@sda21(r0)
    li 8, 0x0
    stw 0, 0x240(31)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 3, 0x4(31)
    .4byte 0xA0AD8548 # lhz r5, lbl_8053A108@sda21(r0)
    bl fn_8013CC50
    stw 3, 0x2b8(31)
    mr 29, 31
    mr 28, 31
    li 26, 0x0
    lis 30, 0x5454
L_801AA7D0:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x4154
    addi 6, 29, 0x280
    addi 7, 26, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x270(28)
    lwz 27, 0x270(28)
    cmpwi 27, 0x0
    .4byte 0x41800020 # blt .L_801AA81C
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801AA81C
    lwz 0, 0x198(31)
    stw 0, 0x268(3)
L_801AA81C:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    addi 29, 29, 0xc
    .4byte 0x4180FFA4 # blt .L_801AA7D0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002B748 # lfs f0, lbl_8053E6E8@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x100
    .4byte 0xC042B760 # lfs f2, lbl_8053E700@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    stw 3, 0x244(31)
    lwz 3, 0x244(31)
    clrlwi 3, 3, 31
    stw 3, 0x244(31)
    stw 0, 0x248(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801AA8B0
    .4byte 0x800D9010 # lwz r0, lbl_8053ABD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801AA8BC
L_801AA8B0:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_801AA8E0
L_801AA8BC:
    .4byte 0x40820024 # bne .L_801AA8E0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x806D9010 # lwz r3, lbl_8053ABD0@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0x900D9010 # stw r0, lbl_8053ABD0@sda21(r0)
L_801AA8E0:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

