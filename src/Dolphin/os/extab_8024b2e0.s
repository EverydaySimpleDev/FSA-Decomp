.section extab, "a"
.balign 4
.global etb_8000B540
etb_8000B540:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_8000B540, 8

.global etb_8000B548
etb_8000B548:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B548, 8

.section extabindex, "a"
.balign 4
.global eti_80019AD4
eti_80019AD4:
    .4byte fn_8024B2E0
    .4byte 0x00000708
    .4byte etb_8000B540
.size eti_80019AD4, 12

.global eti_80019AE0
eti_80019AE0:
    .4byte fn_8024BAEC
    .4byte 0x0000009C
    .4byte etb_8000B548
.size eti_80019AE0, 12

.text
.balign 4
.global fn_8024B2E0
.global fn_8024B9E8
.global fn_8024BAEC
.global fn_8024BB88
.global fn_8024BB94

fn_8024B2E0:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stmw 25, 0x64(1)
    mr 29, 3
    lbz 0, 0x1216(3)
    cmplwi 0, 0x0
    .4byte 0x408206B8 # bne .L_8024B9C4
    lwz 0, 0xd60(29)
    cmpwi 0, 0x0
    .4byte 0x418000F0 # blt .L_8024B408
    li 0, 0x7
    li 5, 0x0
    mtctr 0
L_8024B328:
    lfs 0, 0x32c(29)
    addi 4, 5, 0x284
    add 4, 29, 4
    li 0, 0x0
    stfs 0, 0x38(3)
    addi 5, 5, 0x7
    lfs 0, 0x330(29)
    stfs 0, 0x3c(3)
    lfs 0, 0x334(29)
    stfs 0, 0x40(3)
    stb 0, 0x0(4)
    lfs 0, 0x32c(29)
    stfs 0, 0x44(3)
    lfs 0, 0x330(29)
    stfs 0, 0x48(3)
    lfs 0, 0x334(29)
    stfs 0, 0x4c(3)
    stb 0, 0x1(4)
    lfs 0, 0x32c(29)
    stfs 0, 0x50(3)
    lfs 0, 0x330(29)
    stfs 0, 0x54(3)
    lfs 0, 0x334(29)
    stfs 0, 0x58(3)
    stb 0, 0x2(4)
    lfs 0, 0x32c(29)
    stfs 0, 0x5c(3)
    lfs 0, 0x330(29)
    stfs 0, 0x60(3)
    lfs 0, 0x334(29)
    stfs 0, 0x64(3)
    stb 0, 0x3(4)
    lfs 0, 0x32c(29)
    stfs 0, 0x68(3)
    lfs 0, 0x330(29)
    stfs 0, 0x6c(3)
    lfs 0, 0x334(29)
    stfs 0, 0x70(3)
    stb 0, 0x4(4)
    lfs 0, 0x32c(29)
    stfs 0, 0x74(3)
    lfs 0, 0x330(29)
    stfs 0, 0x78(3)
    lfs 0, 0x334(29)
    stfs 0, 0x7c(3)
    stb 0, 0x5(4)
    lfs 0, 0x32c(29)
    stfs 0, 0x80(3)
    lfs 0, 0x330(29)
    stfs 0, 0x84(3)
    lfs 0, 0x334(29)
    stfs 0, 0x88(3)
    addi 3, 3, 0x54
    stb 0, 0x6(4)
    .4byte 0x4200FF28 # bdnz .L_8024B328
    .4byte 0x480005C0 # b .L_8024B9C4
L_8024B408:
    li 30, 0x0
    mr 28, 30
L_8024B410:
    lwz 0, 0x4(29)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024B424
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024B484
L_8024B424:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024B474
    lwz 25, 0xd60(29)
    cmpwi 25, 0x0
    .4byte 0x4180001C # blt .L_8024B458
    mr 3, 28
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x40820038 # bne .L_8024B484
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024B484
L_8024B458:
    lwz 26, 0x4(29)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024B484
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024B484
L_8024B474:
    lwz 0, 0xd60(29)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024B484
    addi 30, 30, 0x1
L_8024B484:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8024B410
    cmpwi 30, 0x1
    .4byte 0x418100C4 # bgt .L_8024B558
    li 0, 0x7
    mr 3, 29
    mtctr 0
L_8024B4A4:
    lfs 0, 0x32c(29)
    stfs 0, 0x38(3)
    lfs 0, 0x330(29)
    stfs 0, 0x3c(3)
    lfs 0, 0x334(29)
    stfs 0, 0x40(3)
    lfs 0, 0x32c(29)
    stfs 0, 0x44(3)
    lfs 0, 0x330(29)
    stfs 0, 0x48(3)
    lfs 0, 0x334(29)
    stfs 0, 0x4c(3)
    lfs 0, 0x32c(29)
    stfs 0, 0x50(3)
    lfs 0, 0x330(29)
    stfs 0, 0x54(3)
    lfs 0, 0x334(29)
    stfs 0, 0x58(3)
    lfs 0, 0x32c(29)
    stfs 0, 0x5c(3)
    lfs 0, 0x330(29)
    stfs 0, 0x60(3)
    lfs 0, 0x334(29)
    stfs 0, 0x64(3)
    lfs 0, 0x32c(29)
    stfs 0, 0x68(3)
    lfs 0, 0x330(29)
    stfs 0, 0x6c(3)
    lfs 0, 0x334(29)
    stfs 0, 0x70(3)
    lfs 0, 0x32c(29)
    stfs 0, 0x74(3)
    lfs 0, 0x330(29)
    stfs 0, 0x78(3)
    lfs 0, 0x334(29)
    stfs 0, 0x7c(3)
    lfs 0, 0x32c(29)
    stfs 0, 0x80(3)
    lfs 0, 0x330(29)
    stfs 0, 0x84(3)
    lfs 0, 0x334(29)
    stfs 0, 0x88(3)
    addi 3, 3, 0x54
    .4byte 0x4200FF54 # bdnz .L_8024B4A4
    .4byte 0x48000368 # b .L_8024B8BC
L_8024B558:
    psq_l 1, 0x8(29), 0, 0
    li 31, 0x1
    lfs 0, 0x10(29)
    lis 28, 0x4330
    lwz 3, 0x4(29)
    psq_st 1, 0x20(1), 0, 0
    .4byte 0xCBC2D0C0 # lfd f30, lbl_80540060@sda21(r0)
    addi 30, 3, 0x1
    stfs 0, 0x28(1)
    .4byte 0xC3E2D0B8 # lfs f31, lbl_80540058@sda21(r0)
    .4byte 0x48000168 # b .L_8024B6E8
    .4byte 0x48000010 # b .L_8024B594
L_8024B588:
    cmpwi 30, 0x4
    .4byte 0x4080001C # bge .L_8024B5A8
    addi 30, 30, 0x1
L_8024B594:
    lwz 3, 0x4(29)
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182FFE4 # beq .L_8024B588
L_8024B5A8:
    cmpwi 30, 0x4
    .4byte 0x408001CC # bge .L_8024B778
    mr 3, 30
    bl fn_8023E724
    subi 4, 31, 0x1
    li 0, 0xc
    mulli 5, 4, 0xc
    lfs 1, 0x0(3)
    lfs 2, 0x4(3)
    li 7, 0x0
    lfs 3, 0x8(3)
    mulli 3, 5, 0xc
    lfs 0, 0x20(1)
    lfs 10, 0x24(1)
    lfs 8, 0x28(1)
    mtctr 0
L_8024B5E8:
    subfic 4, 7, 0xc
    xoris 0, 7, 0x8000
    xoris 4, 4, 0x8000
    add 6, 29, 3
    stw 4, 0x34(1)
    addi 7, 7, 0x1
    addi 5, 5, 0x1
    addi 3, 3, 0xc
    stw 28, 0x30(1)
    lfd 4, 0x30(1)
    stw 0, 0x3c(1)
    fsubs 5, 4, 30
    stw 28, 0x38(1)
    lfd 4, 0x38(1)
    fmuls 5, 0, 5
    stw 4, 0x44(1)
    fsubs 7, 4, 30
    stw 28, 0x40(1)
    fdivs 12, 5, 31
    lfd 5, 0x40(1)
    stw 0, 0x4c(1)
    stw 28, 0x48(1)
    lfd 4, 0x48(1)
    stw 0, 0x5c(1)
    fsubs 6, 5, 30
    stw 28, 0x58(1)
    fmuls 11, 1, 7
    fsubs 4, 4, 30
    stw 4, 0x54(1)
    fmuls 9, 10, 6
    fdivs 6, 11, 31
    stw 28, 0x50(1)
    lfd 5, 0x50(1)
    fmuls 7, 2, 4
    lfd 4, 0x58(1)
    fadds 11, 12, 6
    fsubs 4, 4, 30
    fsubs 5, 5, 30
    fdivs 9, 9, 31
    stfs 11, 0x8(1)
    fmuls 6, 3, 4
    fdivs 4, 7, 31
    fmuls 5, 8, 5
    fadds 4, 9, 4
    fdivs 6, 6, 31
    stfs 4, 0xc(1)
    psq_l 4, 0x8(1), 0, 0
    psq_st 4, 0x14(1), 0, 0
    lfs 4, 0x18(1)
    fdivs 7, 5, 31
    lfs 5, 0x14(1)
    stfs 5, 0x38(6)
    stfs 4, 0x3c(6)
    fadds 5, 7, 6
    frsp 4, 5
    stfs 5, 0x10(1)
    stfs 5, 0x1c(1)
    stfs 4, 0x40(6)
    .4byte 0x4200FF18 # bdnz .L_8024B5E8
    stfs 1, 0x20(1)
    addi 31, 31, 0x1
    addi 30, 30, 0x1
    stfs 2, 0x24(1)
    stfs 3, 0x28(1)
L_8024B6E8:
    li 26, 0x0
    mr 27, 26
L_8024B6F0:
    lwz 0, 0x4(29)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024B704
    addi 26, 26, 0x1
    .4byte 0x48000064 # b .L_8024B764
L_8024B704:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024B754
    lwz 25, 0xd60(29)
    cmpwi 25, 0x0
    .4byte 0x4180001C # blt .L_8024B738
    mr 3, 27
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x40820038 # bne .L_8024B764
    addi 26, 26, 0x1
    .4byte 0x48000030 # b .L_8024B764
L_8024B738:
    lwz 25, 0x4(29)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x4082001C # bne .L_8024B764
    addi 26, 26, 0x1
    .4byte 0x48000014 # b .L_8024B764
L_8024B754:
    lwz 0, 0xd60(29)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024B764
    addi 26, 26, 0x1
L_8024B764:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024B6F0
    cmpw 31, 26
    .4byte 0x4180FE20 # blt .L_8024B594
L_8024B778:
    li 27, 0x0
    mr 26, 27
L_8024B780:
    lwz 0, 0x4(29)
    cmpw 26, 0
    .4byte 0x4082000C # bne .L_8024B794
    addi 27, 27, 0x1
    .4byte 0x48000064 # b .L_8024B7F4
L_8024B794:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024B7E4
    lwz 25, 0xd60(29)
    cmpwi 25, 0x0
    .4byte 0x4180001C # blt .L_8024B7C8
    mr 3, 26
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x40820038 # bne .L_8024B7F4
    addi 27, 27, 0x1
    .4byte 0x48000030 # b .L_8024B7F4
L_8024B7C8:
    lwz 25, 0x4(29)
    mr 3, 26
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x4082001C # bne .L_8024B7F4
    addi 27, 27, 0x1
    .4byte 0x48000014 # b .L_8024B7F4
L_8024B7E4:
    lwz 0, 0xd60(29)
    cmpw 26, 0
    .4byte 0x40820008 # bne .L_8024B7F4
    addi 27, 27, 0x1
L_8024B7F4:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF84 # blt .L_8024B780
    subi 0, 27, 0x1
    lfs 2, 0x20(1)
    mulli 3, 0, 0xc
    lfs 1, 0x24(1)
    lfs 0, 0x28(1)
    mulli 0, 3, 0xc
    cmpwi 3, 0x31
    subfic 3, 3, 0x31
    add 4, 29, 0
    .4byte 0x40800098 # bge .L_8024B8BC
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820074 # beq .L_8024B8A4
L_8024B834:
    stfs 2, 0x38(4)
    stfs 1, 0x3c(4)
    stfs 0, 0x40(4)
    stfs 2, 0x44(4)
    stfs 1, 0x48(4)
    stfs 0, 0x4c(4)
    stfs 2, 0x50(4)
    stfs 1, 0x54(4)
    stfs 0, 0x58(4)
    stfs 2, 0x5c(4)
    stfs 1, 0x60(4)
    stfs 0, 0x64(4)
    stfs 2, 0x68(4)
    stfs 1, 0x6c(4)
    stfs 0, 0x70(4)
    stfs 2, 0x74(4)
    stfs 1, 0x78(4)
    stfs 0, 0x7c(4)
    stfs 2, 0x80(4)
    stfs 1, 0x84(4)
    stfs 0, 0x88(4)
    stfs 2, 0x8c(4)
    stfs 1, 0x90(4)
    stfs 0, 0x94(4)
    addi 4, 4, 0x60
    .4byte 0x4200FF9C # bdnz .L_8024B834
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_8024B8BC
L_8024B8A4:
    mtctr 3
L_8024B8A8:
    stfs 2, 0x38(4)
    stfs 1, 0x3c(4)
    stfs 0, 0x40(4)
    addi 4, 4, 0xc
    .4byte 0x4200FFF0 # bdnz .L_8024B8A8
L_8024B8BC:
    li 0, 0x7
    mr 5, 29
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    li 6, 0x0
    li 4, 0x1
    li 3, 0x0
    mtctr 0
L_8024B8D8:
    lfs 1, 0x40(5)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024B8F0
    addi 0, 6, 0x284
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_8024B8F8
L_8024B8F0:
    addi 0, 6, 0x284
    stbx 3, 29, 0
L_8024B8F8:
    lfs 1, 0x4c(5)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024B910
    addi 0, 6, 0x285
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_8024B918
L_8024B910:
    addi 0, 6, 0x285
    stbx 3, 29, 0
L_8024B918:
    lfs 1, 0x58(5)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024B930
    addi 0, 6, 0x286
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_8024B938
L_8024B930:
    addi 0, 6, 0x286
    stbx 3, 29, 0
L_8024B938:
    lfs 1, 0x64(5)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024B950
    addi 0, 6, 0x287
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_8024B958
L_8024B950:
    addi 0, 6, 0x287
    stbx 3, 29, 0
L_8024B958:
    lfs 1, 0x70(5)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024B970
    addi 0, 6, 0x288
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_8024B978
L_8024B970:
    addi 0, 6, 0x288
    stbx 3, 29, 0
L_8024B978:
    lfs 1, 0x7c(5)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024B990
    addi 0, 6, 0x289
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_8024B998
L_8024B990:
    addi 0, 6, 0x289
    stbx 3, 29, 0
L_8024B998:
    lfs 1, 0x88(5)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024B9B0
    addi 0, 6, 0x28a
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_8024B9B8
L_8024B9B0:
    addi 0, 6, 0x28a
    stbx 3, 29, 0
L_8024B9B8:
    addi 5, 5, 0x54
    addi 6, 6, 0x7
    .4byte 0x4200FF18 # bdnz .L_8024B8D8
L_8024B9C4:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    lmw 25, 0x64(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8024B9E8:
    lbz 0, 0x1216(3)
    cmplwi 0, 0x0
    bnelr
    li 0, 0xc
    addi 6, 3, 0x240
    li 8, 0x30
    mtctr 0
L_8024BA04:
    subi 0, 8, 0x1
    add 7, 3, 8
    mulli 4, 0, 0xc
    subi 0, 8, 0x2
    addi 5, 4, 0x38
    add 5, 3, 5
    psq_l 1, 0x0(5), 0, 0
    mulli 4, 0, 0xc
    lfs 0, 0x8(5)
    subi 0, 8, 0x3
    subi 8, 8, 0x1
    psq_st 1, 0x38(6), 0, 0
    addi 5, 4, 0x38
    mulli 4, 0, 0xc
    stfs 0, 0x40(6)
    add 5, 3, 5
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    add 7, 3, 8
    subi 0, 8, 0x3
    subi 8, 8, 0x1
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0x8(5)
    addi 5, 4, 0x38
    mulli 4, 0, 0xc
    psq_st 1, 0x2c(6), 0, 0
    add 5, 3, 5
    stfs 0, 0x34(6)
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    add 7, 3, 8
    subi 8, 8, 0x1
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0x8(5)
    addi 5, 4, 0x38
    add 5, 3, 5
    psq_st 1, 0x20(6), 0, 0
    stfs 0, 0x28(6)
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    add 7, 3, 8
    subi 8, 8, 0x1
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0x8(5)
    psq_st 1, 0x14(6), 0, 0
    stfs 0, 0x1c(6)
    subi 6, 6, 0x30
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    .4byte 0x4200FF3C # bdnz .L_8024BA04
    psq_l 1, 0x8(3), 0, 0
    lfs 0, 0x10(3)
    psq_st 1, 0x38(3), 0, 0
    stfs 0, 0x40(3)
    lwz 4, 0xbf0(3)
    lbz 0, 0xb4(4)
    stb 0, 0x284(3)
    blr

fn_8024BAEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x1216(3)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_8024BB78
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024BB18
    bl fn_8024B2E0
    .4byte 0x48000064 # b .L_8024BB78
L_8024BB18:
    li 0, 0x31
    mr 6, 3
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    li 7, 0x0
    li 5, 0x1
    li 4, 0x0
    mtctr 0
L_8024BB34:
    lfs 1, 0x8(3)
    stfs 1, 0x38(6)
    lfs 1, 0xc(3)
    stfs 1, 0x3c(6)
    lfs 1, 0x10(3)
    stfs 1, 0x40(6)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024BB64
    addi 0, 7, 0x284
    stbx 5, 3, 0
    .4byte 0x4800000C # b .L_8024BB6C
L_8024BB64:
    addi 0, 7, 0x284
    stbx 4, 3, 0
L_8024BB6C:
    addi 6, 6, 0xc
    addi 7, 7, 0x1
    .4byte 0x4200FFC0 # bdnz .L_8024BB34
L_8024BB78:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024BB88:
    li 0, 0x1
    stb 0, 0xced(3)
    blr

fn_8024BB94:
    lbz 0, 0xce8(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024BBA8
    lwz 3, 0xcf4(3)
    blr
L_8024BBA8:
    li 3, 0x0
    blr

