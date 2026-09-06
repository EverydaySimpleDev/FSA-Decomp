# GOL2 cluster, part 2/5 (Track A byte-match + overview - 656B).
# draw()-related - uses the confirmed 3D render-primitive fn_801F06F0
# and the confirmed spatial triad member fn_802F745C.
.section extab, "a"
.balign 4
.global etb_8000CF5C
etb_8000CF5C:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_8000CF5C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C06C
eti_8001C06C:
    .4byte fn_802E2998
    .4byte 0x00000290
    .4byte etb_8000CF5C
.size eti_8001C06C, 12

.text
.balign 4
.global fn_802E2998

fn_802E2998:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x418100A4 # bgt .L_802E2A7C
    lfs 31, 0xc(31)
    mr 30, 31
    lfs 30, 0x10(31)
    mr 29, 31
    lfs 29, 0x14(31)
    li 28, 0x0
L_802E29F4:
    psq_l 1, 0x258(30), 0, 0
    lfs 0, 0x260(30)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x288(29)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_802E2A38
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    lis 3, lbl_8046F090@ha
    addi 4, 3, lbl_8046F090@l
    li 5, 0x25a
    fmr 2, 1
    mr 3, 31
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
    .4byte 0x48000028 # b .L_802E2A5C
L_802E2A38:
    .4byte 0xC022E228 # lfs f1, lbl_805411C8@sda21(r0)
    lis 3, lbl_8046F090@ha
    addi 4, 3, lbl_8046F090@l
    li 5, 0x25b
    fmr 2, 1
    mr 3, 31
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
L_802E2A5C:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    addi 30, 30, 0xc
    .4byte 0x4180FF88 # blt .L_802E29F4
    stfs 31, 0xc(31)
    stfs 30, 0x10(31)
    stfs 29, 0x14(31)
L_802E2A7C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x5
    .4byte 0x4082016C # bne .L_802E2BF0
    li 0, -0x1
    addi 9, 1, 0x14
    stw 0, 0x24(1)
    li 10, 0x0
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_802E2B00
L_802E2AA0:
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
L_802E2B00:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802E2AA0
    li 10, 0x0
    li 9, 0x1
    stb 10, 0x31(1)
    li 11, -0x1
    li 8, 0x3
    li 7, 0x2
    li 0, -0x2
    lis 3, lbl_8046F0A4@ha
    addi 5, 3, lbl_8046F0A4@l
    stw 11, 0x24(1)
    lis 3, 0x5449
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    stw 10, 0x28(1)
    addi 4, 3, 0x4d47
    stw 10, 0x2c(1)
    stb 10, 0x30(1)
    stb 10, 0x32(1)
    stb 9, 0x33(1)
    stb 9, 0x34(1)
    stb 10, 0x35(1)
    stb 10, 0x36(1)
    stb 10, 0x37(1)
    stb 10, 0x38(1)
    stb 10, 0x39(1)
    stb 9, 0x3a(1)
    stw 8, 0x3c(1)
    stb 9, 0x40(1)
    stb 10, 0x41(1)
    stb 10, 0x42(1)
    stw 11, 0x44(1)
    stw 10, 0x48(1)
    stw 7, 0x4c(1)
    stb 0, 0x31(1)
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC062E22C # lfs f3, lbl_805411CC@sda21(r0)
    lfs 2, 0x10(31)
    .4byte 0xC022E230 # lfs f1, lbl_805411D0@sda21(r0)
    lfs 0, 0xc(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    stfs 2, 0xc(1)
    stfs 0, 0x8(1)
    stfs 3, 0x10(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802E2BF0
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802E2BF0:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0x94(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

