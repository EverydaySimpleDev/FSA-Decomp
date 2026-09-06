# fn_802F18AC - TFL2: draw() (0xD14)
# Heavy trigonometric positioning (9x sin + 9x cos) combined with
# fn_802F6CF4 (x14) and fn_802F745C (confirmed spatial-triad member) -
# computes points distributed around a circle/orbit, consistent with a
# ring/radial visual effect. Track A: byte-match verified, structural
# overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D30C
etb_8000D30C:
    .4byte 0x194A0000
    .4byte 0x00000000
.size etb_8000D30C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C594
eti_8001C594:
    .4byte fn_802F18AC
    .4byte 0x00000D14
    .4byte etb_8000D30C
.size eti_8001C594, 12

.text
.balign 4
.global fn_802F18AC

fn_802F18AC:
    stwu 1, -0x160(1)
    mflr 0
    stw 0, 0x164(1)
    stfd 31, 0x150(1)
    psq_st 31, 0x158(1), 0, 0
    stfd 30, 0x140(1)
    psq_st 30, 0x148(1), 0, 0
    stfd 29, 0x130(1)
    psq_st 29, 0x138(1), 0, 0
    stfd 28, 0x120(1)
    psq_st 28, 0x128(1), 0, 0
    stfd 27, 0x110(1)
    psq_st 27, 0x118(1), 0, 0
    stw 31, 0x10c(1)
    stw 30, 0x108(1)
    stw 29, 0x104(1)
    li 0, -0x1
    lis 4, lbl_8046F788@ha
    stw 0, 0xb4(1)
    mr 31, 3
    addi 30, 4, lbl_8046F788@l
    addi 9, 1, 0xa4
    stw 0, 0xb8(1)
    li 10, 0x0
    .4byte 0x48000064 # b .L_802F1970
L_802F1910:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_802F1970:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802F1910
    li 12, 0x0
    li 11, 0x1
    .4byte 0xC042E4A0 # lfs f2, lbl_80541440@sda21(r0)
    li 29, -0x1
    stb 12, 0xc0(1)
    li 10, 0x3
    li 9, 0x2
    li 8, -0x2
    stb 12, 0xc1(1)
    lis 3, 0x5449
    addi 7, 30, 0xac
    addi 6, 30, 0x90
    stw 29, 0xb4(1)
    addi 0, 1, 0x74
    .4byte 0xC002E4A4 # lfs f0, lbl_80541444@sda21(r0)
    addi 4, 3, 0x4d47
    stw 12, 0xb8(1)
    addi 5, 30, 0xc8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stw 12, 0xbc(1)
    stb 12, 0xc2(1)
    stb 11, 0xc3(1)
    stb 11, 0xc4(1)
    stb 12, 0xc5(1)
    stb 12, 0xc6(1)
    stb 12, 0xc7(1)
    stb 12, 0xc8(1)
    stb 12, 0xc9(1)
    stb 11, 0xca(1)
    stw 10, 0xcc(1)
    stb 11, 0xd0(1)
    stb 12, 0xd1(1)
    stb 12, 0xd2(1)
    stw 29, 0xd4(1)
    stw 12, 0xd8(1)
    stw 9, 0xdc(1)
    stb 29, 0xc0(1)
    stb 8, 0xc1(1)
    stfs 2, 0x80(1)
    stfs 2, 0x90(1)
    stfs 2, 0xa0(1)
    lwz 8, 0x234(31)
    slwi 8, 8, 2
    stfs 2, 0x78(1)
    lfsx 3, 7, 8
    lfsx 1, 6, 8
    stfs 2, 0x7c(1)
    stfs 1, 0x74(1)
    stfs 2, 0x84(1)
    stfs 0, 0x88(1)
    stfs 2, 0x8c(1)
    stfs 2, 0x94(1)
    stfs 2, 0x98(1)
    stfs 3, 0x9c(1)
    stw 0, 0xbc(1)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x234(31)
    addi 5, 30, 0x74
    addi 4, 30, 0x58
    lfs 3, 0x10(31)
    slwi 0, 0, 2
    lfs 1, 0xc(31)
    lfsx 2, 5, 0
    lfsx 0, 4, 0
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    stfs 3, 0x70(1)
    stfs 2, 0x6c(1)
    stfs 0, 0x68(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802F1AC8
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x68
    addi 6, 1, 0xa4
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802F1AC8:
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    stfs 0, 0x80(1)
    stfs 0, 0x90(1)
    stfs 0, 0xa0(1)
    lfs 31, 0x248(31)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 29, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl cos
    frsp 28, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl sin
    frsp 27, 1
    fmr 1, 31
    bl sin
    frsp 31, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl sin
    frsp 8, 1
    li 4, -0x1
    fmuls 1, 29, 30
    addi 0, 1, 0x74
    fmuls 0, 29, 27
    li 3, 0x1
    fmuls 7, 28, 30
    stfs 1, 0x74(1)
    fmuls 3, 8, 31
    fmuls 6, 28, 27
    stfs 0, 0x84(1)
    fmuls 1, 8, 27
    fmuls 0, 8, 30
    stb 4, 0xc0(1)
    fneg 2, 31
    fmsubs 5, 3, 30, 6
    stb 4, 0xc1(1)
    fmadds 4, 3, 27, 7
    fmuls 3, 8, 29
    stfs 2, 0x94(1)
    fmadds 2, 7, 31, 1
    fmsubs 1, 6, 31, 0
    stfs 5, 0x78(1)
    fmuls 0, 28, 29
    stfs 4, 0x88(1)
    stfs 3, 0x98(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x9c(1)
    stb 3, 0xc5(1)
    stw 0, 0xbc(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x3
    .4byte 0x4182010C # beq .L_802F1CB0
    .4byte 0x40800014 # bge .L_802F1BBC
    cmpwi 0, 0x1
    .4byte 0x41820068 # beq .L_802F1C18
    .4byte 0x408000B0 # bge .L_802F1C64
    .4byte 0x48000014 # b .L_802F1BCC
L_802F1BBC:
    cmpwi 0, 0x6
    .4byte 0x41820184 # beq .L_802F1D44
    .4byte 0x40800008 # bge .L_802F1BCC
    .4byte 0x480001C4 # b .L_802F1D8C
L_802F1BCC:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408001B8 # bge .L_802F1D8C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0xdc
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000178 # b .L_802F1D8C
L_802F1C18:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080016C # bge .L_802F1D8C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0xec
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x4800012C # b .L_802F1D8C
L_802F1C64:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800120 # bge .L_802F1D8C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x108
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x480000E0 # b .L_802F1D8C
L_802F1CB0:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802F1CF8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x11c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802F1CF8:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080008C # bge .L_802F1D8C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x12c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x4800004C # b .L_802F1D8C
L_802F1D44:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802F1D8C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x13c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802F1D8C:
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    stfs 0, 0x80(1)
    stfs 0, 0x90(1)
    stfs 0, 0xa0(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802F1DB8
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_802F1DB8
    cmpwi 0, 0x5
    .4byte 0x408200B8 # bne .L_802F1E6C
L_802F1DB8:
    .4byte 0xC042E4B0 # lfs f2, lbl_80541450@sda21(r0)
    lfs 0, 0x248(31)
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    fsubs 31, 2, 0
    bl cos
    frsp 27, 1
    fmr 1, 31
    bl cos
    frsp 28, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl sin
    frsp 30, 1
    fmr 1, 31
    bl sin
    frsp 31, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl sin
    frsp 8, 1
    fmuls 1, 28, 27
    fmuls 0, 28, 30
    fmuls 7, 29, 27
    fmuls 3, 8, 31
    stfs 1, 0x74(1)
    fmuls 6, 29, 30
    fmuls 1, 8, 30
    stfs 0, 0x84(1)
    fmuls 0, 8, 27
    fneg 2, 31
    fmsubs 5, 3, 27, 6
    fmadds 4, 3, 30, 7
    fmuls 3, 8, 28
    stfs 2, 0x94(1)
    fmadds 2, 7, 31, 1
    fmsubs 1, 6, 31, 0
    stfs 5, 0x78(1)
    fmuls 0, 29, 28
    stfs 4, 0x88(1)
    stfs 3, 0x98(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x9c(1)
    .4byte 0x480000B0 # b .L_802F1F18
L_802F1E6C:
    lfs 0, 0x248(31)
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    fneg 31, 0
    bl cos
    frsp 27, 1
    fmr 1, 31
    bl cos
    frsp 28, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl sin
    frsp 30, 1
    fmr 1, 31
    bl sin
    frsp 31, 1
    .4byte 0xC822E4A8 # lfd f1, lbl_80541448@sda21(r0)
    bl sin
    frsp 8, 1
    fmuls 1, 28, 27
    fmuls 0, 28, 30
    fmuls 7, 29, 27
    fmuls 3, 8, 31
    stfs 1, 0x74(1)
    fmuls 6, 29, 30
    fmuls 1, 8, 30
    stfs 0, 0x84(1)
    fmuls 0, 8, 27
    fneg 2, 31
    fmsubs 5, 3, 27, 6
    fmadds 4, 3, 30, 7
    fmuls 3, 8, 28
    stfs 2, 0x94(1)
    fmadds 2, 7, 31, 1
    fmsubs 1, 6, 31, 0
    stfs 5, 0x78(1)
    fmuls 0, 29, 28
    stfs 4, 0x88(1)
    stfs 3, 0x98(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x9c(1)
L_802F1F18:
    addi 0, 1, 0x74
    stw 0, 0xbc(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x3
    .4byte 0x41820370 # beq .L_802F2298
    .4byte 0x40800014 # bge .L_802F1F40
    cmpwi 0, 0x1
    .4byte 0x41820134 # beq .L_802F2068
    .4byte 0x40800248 # bge .L_802F2180
    .4byte 0x48000014 # b .L_802F1F50
L_802F1F40:
    cmpwi 0, 0x6
    .4byte 0x41820524 # beq .L_802F2468
    .4byte 0x40800008 # bge .L_802F1F50
    .4byte 0x48000420 # b .L_802F236C
L_802F1F50:
    lfs 1, 0x248(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062E4B4 # lfs f3, lbl_80541454@sda21(r0)
    .4byte 0x40800030 # bge .L_802F1F94
    .4byte 0xC002E4B8 # lfs f0, lbl_80541458@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802F1FB8
L_802F1F94:
    .4byte 0xC002E4BC # lfs f0, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802F1FB8:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802F1FD4
    fneg 6, 6
L_802F1FD4:
    .4byte 0xC022E4BC # lfs f1, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022E4C0 # lfs f1, lbl_80541460@sda21(r0)
    .4byte 0xC062E4B4 # lfs f3, lbl_80541454@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0x60(1)
    fctiwz 1, 2
    stfs 5, 0x64(1)
    stfd 1, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x5c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800558 # bge .L_802F257C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0xdc
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x5c
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000518 # b .L_802F257C
L_802F2068:
    lfs 1, 0x248(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062E4B4 # lfs f3, lbl_80541454@sda21(r0)
    .4byte 0x40800030 # bge .L_802F20AC
    .4byte 0xC002E4B8 # lfs f0, lbl_80541458@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802F20D0
L_802F20AC:
    .4byte 0xC002E4BC # lfs f0, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802F20D0:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802F20EC
    fneg 6, 6
L_802F20EC:
    .4byte 0xC022E4BC # lfs f1, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022E4C0 # lfs f1, lbl_80541460@sda21(r0)
    .4byte 0xC062E4B4 # lfs f3, lbl_80541454@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0x54(1)
    fctiwz 1, 2
    stfs 5, 0x58(1)
    stfd 1, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x50(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800440 # bge .L_802F257C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x14c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x50
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000400 # b .L_802F257C
L_802F2180:
    lfs 1, 0x248(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062E4C4 # lfs f3, lbl_80541464@sda21(r0)
    .4byte 0x40800030 # bge .L_802F21C4
    .4byte 0xC002E4B8 # lfs f0, lbl_80541458@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802F21E8
L_802F21C4:
    .4byte 0xC002E4BC # lfs f0, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802F21E8:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802F2204
    fneg 6, 6
L_802F2204:
    .4byte 0xC022E4BC # lfs f1, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022E4C8 # lfs f1, lbl_80541468@sda21(r0)
    .4byte 0xC062E4C4 # lfs f3, lbl_80541464@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0x48(1)
    fctiwz 1, 2
    stfs 5, 0x4c(1)
    stfd 1, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x44(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800328 # bge .L_802F257C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x168
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x44
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x480002E8 # b .L_802F257C
L_802F2298:
    .4byte 0xC022E4C0 # lfs f1, lbl_80541460@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x3c(1)
    stfs 0, 0x38(1)
    stfs 3, 0x40(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802F2300
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x11c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x38
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802F2300:
    .4byte 0xC022E4C0 # lfs f1, lbl_80541460@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x30(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x34(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800254 # bge .L_802F257C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x12c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x2c
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000214 # b .L_802F257C
L_802F236C:
    li 3, 0x1
    li 0, -0x1
    stb 3, 0xc0(1)
    stb 0, 0xc1(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x40820070 # bne .L_802F23F4
    .4byte 0xC022E4C8 # lfs f1, lbl_80541468@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    stfs 3, 0x28(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408001CC # bge .L_802F257C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x17c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x20
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x4800018C # b .L_802F257C
L_802F23F4:
    cmpwi 0, 0x8
    .4byte 0x41820184 # beq .L_802F257C
    .4byte 0xC022E4C8 # lfs f1, lbl_80541468@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x18(1)
    stfs 0, 0x14(1)
    stfs 3, 0x1c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800158 # bge .L_802F257C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x18c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x14
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000118 # b .L_802F257C
L_802F2468:
    lfs 1, 0x248(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062E4B4 # lfs f3, lbl_80541454@sda21(r0)
    .4byte 0x40800030 # bge .L_802F24AC
    .4byte 0xC002E4B8 # lfs f0, lbl_80541458@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802F24D0
L_802F24AC:
    .4byte 0xC002E4BC # lfs f0, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802F24D0:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802F24EC
    fneg 6, 6
L_802F24EC:
    .4byte 0xC022E4BC # lfs f1, lbl_8054145C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022E4C0 # lfs f1, lbl_80541460@sda21(r0)
    .4byte 0xC062E4B4 # lfs f3, lbl_80541454@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0xc(1)
    fctiwz 1, 2
    stfs 5, 0x10(1)
    stfd 1, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x8(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802F257C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x13c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802F257C:
    psq_l 31, 0x158(1), 0, 0
    lfd 31, 0x150(1)
    psq_l 30, 0x148(1), 0, 0
    lfd 30, 0x140(1)
    psq_l 29, 0x138(1), 0, 0
    lfd 29, 0x130(1)
    psq_l 28, 0x128(1), 0, 0
    lfd 28, 0x120(1)
    psq_l 27, 0x118(1), 0, 0
    lfd 27, 0x110(1)
    lwz 31, 0x10c(1)
    lwz 30, 0x108(1)
    lwz 0, 0x164(1)
    lwz 29, 0x104(1)
    mtlr 0
    addi 1, 1, 0x160
    blr

