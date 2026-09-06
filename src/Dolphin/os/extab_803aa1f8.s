# fn_803AA1F8 - helper (0x700), called by the fused body blob
.section extab, "a"
.balign 4
.global etb_8000F3EC
etb_8000F3EC:
    .4byte 0x3A4A0000
    .4byte 0x00000000
.size etb_8000F3EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F0FC
eti_8001F0FC:
    .4byte fn_803AA1F8
    .4byte 0x00000700
    .4byte etb_8000F3EC
.size eti_8001F0FC, 12

.text
.balign 4
.global fn_803AA1F8

fn_803AA1F8:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stfd 25, 0x80(1)
    psq_st 25, 0x88(1), 0, 0
    stfd 24, 0x70(1)
    psq_st 24, 0x78(1), 0, 0
    stfd 23, 0x60(1)
    psq_st 23, 0x68(1), 0, 0
    stmw 25, 0x44(1)
    mr 27, 3
    lbz 0, 0x4c8(3)
    cmplwi 0, 0xff
    .4byte 0x418200CC # beq .L_803AA328
    lwz 3, 0x444(27)
    li 26, 0x0
    subi 0, 3, 0x1
    stw 0, 0x444(27)
    lwz 0, 0x444(27)
    cmpwi 0, 0x0
    .4byte 0x408200B0 # bne .L_803AA328
    mr 25, 27
    li 28, 0x0
    .4byte 0x48000090 # b .L_803AA314
L_803AA288:
    addi 0, 26, 0x4ac
    lbzx 0, 27, 0
    cmpw 28, 0
    .4byte 0x40820078 # bne .L_803AA30C
    lwz 0, 0x1b8(25)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_803AA2FC
    lwz 7, 0x158(25)
    addi 4, 1, 0x10
    .4byte 0xC0620448 # lfs f3, lbl_805433E8@sda21(r0)
    li 3, 0x0
    lfs 1, 0x28(7)
    li 5, 0x241
    lfs 0, 0x20(7)
    li 6, 0x0
    lfs 2, 0x30(7)
    li 7, 0x0
    fsubs 4, 1, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    li 8, 0x0
    stfs 0, 0x14(1)
    li 9, 0x0
    fmadds 2, 4, 3, 2
    stfs 0, 0x18(1)
    li 10, 0x1
    stfs 2, 0x10(1)
    bl fn_8013CC50
    stw 3, 0x1b8(25)
L_803AA2FC:
    lbz 0, 0x4c8(27)
    cmpw 0, 26
    .4byte 0x40810008 # ble .L_803AA30C
    addi 26, 26, 0x1
L_803AA30C:
    addi 25, 25, 0x4
    addi 28, 28, 0x1
L_803AA314:
    lwz 0, 0x454(27)
    cmpw 28, 0
    .4byte 0x4180FF6C # blt .L_803AA288
    li 0, 0xf0
    stw 0, 0x444(27)
L_803AA328:
    mr 30, 27
    li 28, 0x0
    .4byte 0x480000E8 # b .L_803AA418
L_803AA334:
    lwz 3, 0x3d0(30)
    cmpwi 3, 0x0
    .4byte 0x41820060 # beq .L_803AA39C
    addi 0, 3, 0x1
    stw 0, 0x3d0(30)
    lwz 0, 0x3d0(30)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_803AA360
    li 0, 0xc4
    stw 0, 0x3c0(30)
    .4byte 0x480000B4 # b .L_803AA410
L_803AA360:
    cmpwi 0, 0x10
    .4byte 0x40800010 # bge .L_803AA374
    li 0, 0xc3
    stw 0, 0x3c0(30)
    .4byte 0x480000A0 # b .L_803AA410
L_803AA374:
    cmpwi 0, 0x18
    .4byte 0x40800010 # bge .L_803AA388
    li 0, 0xc4
    stw 0, 0x3c0(30)
    .4byte 0x4800008C # b .L_803AA410
L_803AA388:
    li 3, 0xc3
    li 0, 0x0
    stw 3, 0x3c0(30)
    stw 0, 0x3d0(30)
    .4byte 0x48000078 # b .L_803AA410
L_803AA39C:
    lwz 0, 0x3c0(30)
    cmpwi 0, 0xc3
    .4byte 0x4082006C # bne .L_803AA410
    mr 3, 28
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_803AA410
    lwz 4, 0x3d0(30)
    lis 3, 0x2
    li 5, 0xc4
    addi 0, 28, 0x4ac
    addi 4, 4, 0x1
    addi 3, 3, 0x32
    stw 4, 0x3d0(30)
    addi 4, 1, 0xc
    stw 5, 0x3c0(30)
    stw 3, 0xc(1)
    lbzx 0, 27, 0
    slwi 3, 0, 2
    addi 0, 3, 0x174
    lwzx 3, 27, 0
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_803AA410:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_803AA418:
    lwz 0, 0x454(27)
    cmpw 28, 0
    .4byte 0x4180FF14 # blt .L_803AA334
    lis 3, lbl_8050DB0C@ha
    .4byte 0xC3A20448 # lfs f29, lbl_805433E8@sda21(r0)
    .4byte 0xC3C2042C # lfs f30, lbl_805433CC@sda21(r0)
    mr 29, 27
    .4byte 0xCBE20440 # lfd f31, lbl_805433E0@sda21(r0)
    mr 28, 27
    .4byte 0xC322045C # lfs f25, lbl_805433FC@sda21(r0)
    addi 31, 3, lbl_8050DB0C@l
    .4byte 0xC3420460 # lfs f26, lbl_80543400@sda21(r0)
    li 30, 0x0
    .4byte 0xC3620430 # lfs f27, lbl_805433D0@sda21(r0)
    lis 26, 0x4330
    .4byte 0xC3820428 # lfs f28, lbl_805433C8@sda21(r0)
    .4byte 0x48000264 # b .L_803AA6BC
L_803AA45C:
    lwz 3, 0x350(29)
    lwz 0, 0x340(29)
    lwz 4, 0x360(29)
    add 0, 0, 3
    lwz 5, 0x370(29)
    add 0, 0, 4
    lwz 3, 0x320(29)
    add 0, 0, 5
    lwz 4, 0x380(29)
    add 0, 3, 0
    lwz 5, 0x3b0(29)
    subf 0, 4, 0
    lwz 3, 0x3a0(29)
    add 0, 0, 5
    add 0, 3, 0
    stw 0, 0x3e0(29)
    lwz 0, 0x3e0(29)
    cmpwi 0, -0x1388
    .4byte 0x4080000C # bge .L_803AA4B0
    li 0, -0x1388
    stw 0, 0x3e0(29)
L_803AA4B0:
    lwz 0, 0x3e0(29)
    cmpwi 0, -0x1f4
    .4byte 0x40800054 # bge .L_803AA50C
    lwz 4, 0x434(27)
    lis 3, 0x4330
    lha 0, 0x2b0(31)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    stw 4, 0x24(1)
    .4byte 0xC042044C # lfs f2, lbl_805433EC@sda21(r0)
    lfd 0, 0x20(1)
    stw 0, 0x2c(1)
    fsubs 1, 0, 3
    .4byte 0xC0020450 # lfs f0, lbl_805433F0@sda21(r0)
    stw 3, 0x28(1)
    fdivs 2, 2, 1
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fmuls 1, 2, 1
    fdivs 24, 1, 0
    .4byte 0x480000C0 # b .L_803AA5C8
L_803AA50C:
    cmpwi 0, 0xbb8
    .4byte 0x40810054 # ble .L_803AA564
    lwz 4, 0x434(27)
    lis 3, 0x4330
    lha 0, 0x2b0(31)
    xoris 4, 4, 0x8000
    stw 3, 0x28(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    stw 4, 0x2c(1)
    .4byte 0xC0420454 # lfs f2, lbl_805433F4@sda21(r0)
    lfd 0, 0x28(1)
    stw 0, 0x24(1)
    fsubs 1, 0, 3
    .4byte 0xC0020450 # lfs f0, lbl_805433F0@sda21(r0)
    stw 3, 0x20(1)
    fdivs 2, 2, 1
    lfd 1, 0x20(1)
    fsubs 1, 1, 3
    fmuls 1, 2, 1
    fdivs 24, 1, 0
    .4byte 0x48000068 # b .L_803AA5C8
L_803AA564:
    lis 4, 0x4330
    xoris 3, 0, 0x8000
    lwz 0, 0x434(27)
    stw 3, 0x24(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8820440 # lfd f4, lbl_805433E0@sda21(r0)
    stw 4, 0x20(1)
    lha 3, 0x2b0(31)
    lfd 0, 0x20(1)
    stw 0, 0x34(1)
    xoris 0, 3, 0x8000
    fsubs 2, 0, 4
    .4byte 0xC0620458 # lfs f3, lbl_805433F8@sda21(r0)
    stw 4, 0x30(1)
    .4byte 0xC0020450 # lfs f0, lbl_805433F0@sda21(r0)
    lfd 1, 0x30(1)
    fmuls 2, 3, 2
    stw 0, 0x2c(1)
    fsubs 1, 1, 4
    stw 4, 0x28(1)
    fdivs 1, 2, 1
    lfd 2, 0x28(1)
    fsubs 2, 2, 4
    fmuls 1, 2, 1
    fdivs 24, 1, 0
L_803AA5C8:
    lwz 3, 0x158(29)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x158(29)
    lfs 0, 0x3f0(27)
    lwz 12, 0x0(3)
    fsubs 2, 0, 24
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 0, 0x3e0(29)
    cmpwi 0, 0x270f
    .4byte 0x4081000C # ble .L_803AA604
    li 0, 0x270f
    stw 0, 0x3e0(29)
L_803AA604:
    lwz 3, 0x158(29)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 4, 0x4(4)
    fsubs 23, 1, 0
    lhz 25, 0x4(4)
    bl fn_80095FB4
    lfs 24, 0x0(3)
    lwz 3, 0x168(27)
    bl fn_80095FB4
    lfs 0, 0x0(3)
    xoris 0, 25, 0x8000
    stw 0, 0x34(1)
    fadds 0, 0, 24
    stw 26, 0x30(1)
    fmadds 1, 23, 29, 0
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 1, 30, 1
    fdivs 0, 1, 0
    stfs 0, 0x2f0(28)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lwz 3, 0x158(29)
    lwz 4, 0x4(4)
    lhz 25, 0x6(4)
    bl fn_80095FB4
    lfs 24, 0xc(3)
    lwz 3, 0x168(27)
    bl fn_80095FB4
    lfs 0, 0x4(3)
    xoris 0, 25, 0x8000
    stw 0, 0x2c(1)
    addi 29, 29, 0x4
    fadds 0, 0, 24
    addi 30, 30, 0x1
    stw 26, 0x28(1)
    fsubs 1, 0, 25
    lfd 0, 0x28(1)
    fsubs 0, 0, 31
    fsubs 1, 1, 26
    fmuls 1, 27, 1
    fdivs 0, 1, 0
    stfs 0, 0x2f4(28)
    stfs 28, 0x2f8(28)
    addi 28, 28, 0xc
L_803AA6BC:
    lwz 0, 0x454(27)
    cmpw 30, 0
    .4byte 0x4180FD98 # blt .L_803AA45C
    mr 3, 27
    bl fn_803B2FB0
    lbz 0, 0x4c8(27)
    cmplwi 0, 0xff
    .4byte 0x418200A0 # beq .L_803AA778
    mr 3, 27
    bl fn_803B236C
    li 0, 0xa
    mr 4, 27
    li 5, 0x0
    mtctr 0
L_803AA6F4:
    lwz 3, 0x2c8(4)
    cmpwi 3, 0x0
    .4byte 0x41800070 # blt .L_803AA76C
    subi 0, 3, 0x1
    stw 0, 0x2c8(4)
    lwz 0, 0x2c8(4)
    cmpwi 0, -0x1
    .4byte 0x4181005C # bgt .L_803AA76C
    mulli 4, 5, 0xc
    slwi 0, 5, 2
    lis 3, 0x3
    add 5, 27, 0
    add 7, 27, 4
    li 6, -0x1
    lfs 0, 0x250(7)
    addi 0, 3, 0x2a
    addi 4, 1, 0x8
    stfs 0, 0x244(27)
    lfs 0, 0x254(7)
    stfs 0, 0x248(27)
    lfs 0, 0x258(7)
    stfs 0, 0x24c(27)
    stw 6, 0x2c8(5)
    stw 0, 0x8(1)
    lwz 3, 0x184(27)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_803AA778
L_803AA76C:
    addi 4, 4, 0x4
    addi 5, 5, 0x1
    .4byte 0x4200FF80 # bdnz .L_803AA6F4
L_803AA778:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418200A8 # beq .L_803AA834
    lis 4, lbl_8050EC80@ha
    lis 3, 0x2
    addi 7, 4, lbl_8050EC80@l
    lwz 4, 0x328(27)
    lwz 5, 0x10(7)
    subi 0, 3, 0x7961
    lwz 3, 0x324(27)
    mulli 6, 5, 0xc8
    lwz 5, 0x32c(27)
    add 3, 3, 4
    lwz 4, 0x320(27)
    add 6, 7, 6
    add 3, 3, 5
    lwz 5, 0x30(6)
    add 3, 3, 5
    add 3, 4, 3
    stw 3, 0x30(6)
    lwz 3, 0x10(7)
    mulli 3, 3, 0xc8
    add 4, 7, 3
    lwz 3, 0x30(4)
    cmpw 3, 0
    .4byte 0x40810008 # ble .L_803AA7F0
    stw 0, 0x30(4)
L_803AA7F0:
    lwz 0, 0x10(7)
    lis 4, lbl_8050EC80@ha
    lis 3, 0xfffe
    mulli 5, 0, 0xc8
    addi 4, 4, lbl_8050EC80@l
    addi 0, 3, 0x7961
    add 4, 4, 5
    lwz 3, 0x30(4)
    cmpw 3, 0
    .4byte 0x40800008 # bge .L_803AA81C
    stw 0, 0x30(4)
L_803AA81C:
    li 0, 0x4
    li 4, 0xb
    stb 0, 0x4c0(27)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AA834:
    li 26, 0x0
    mr 25, 27
L_803AA83C:
    lwz 5, 0x1c8(25)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_803AA88C
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_803AA86C
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_803AA86C
    li 4, 0x1
L_803AA86C:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_803AA88C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1c8(25)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1c8(25)
L_803AA88C:
    addi 26, 26, 0x1
    addi 25, 25, 0x4
    cmpwi 26, 0x1e
    .4byte 0x4180FFA4 # blt .L_803AA83C
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    psq_l 25, 0x88(1), 0, 0
    lfd 25, 0x80(1)
    psq_l 24, 0x78(1), 0, 0
    lfd 24, 0x70(1)
    psq_l 23, 0x68(1), 0, 0
    lfd 23, 0x60(1)
    lmw 25, 0x44(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

