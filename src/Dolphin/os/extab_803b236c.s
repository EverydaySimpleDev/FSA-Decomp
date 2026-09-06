# fn_803B236C - helper (0xc44) - effect-heavy, fn_8013CC50 x6
.section extab, "a"
.balign 4
.global etb_8000F4D4
etb_8000F4D4:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F4D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F258
eti_8001F258:
    .4byte fn_803B236C
    .4byte 0x00000C44
    .4byte etb_8000F4D4
.size eti_8001F258, 12

.text
.balign 4
.global fn_803B236C

fn_803B236C:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    mr 30, 3
    lha 3, 0x458(3)
    cmpwi 3, 0x0
    .4byte 0x41810BF4 # bgt .L_803B2F88
    lbz 3, 0x4c8(30)
    li 5, 0x0
    cmplwi 3, 0x0
    .4byte 0x418200BC # beq .L_803B2460
    addic. 0, 3, 0x1
    addi 3, 1, 0x6c
    li 4, 0x0
    mtctr 0
    .4byte 0x40810024 # ble .L_803B23DC
L_803B23BC:
    lha 0, 0x45c(30)
    cmpw 4, 0
    .4byte 0x41820010 # beq .L_803B23D4
    stw 4, 0x0(3)
    addi 3, 3, 0x4
    addi 5, 5, 0x1
L_803B23D4:
    addi 4, 4, 0x1
    .4byte 0x4200FFE4 # bdnz .L_803B23BC
L_803B23DC:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x84(1)
    addi 3, 1, 0x6c
    mullw 4, 5, 4
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    stw 0, 0x80(1)
    .4byte 0xC0020434 # lfs f0, lbl_805433D4@sda21(r0)
    lfd 1, 0x80(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 2, 1, 2
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    add 3, 30, 0
    lbz 0, 0x4ac(3)
    sth 0, 0x45c(30)
    .4byte 0x4800000C # b .L_803B2468
L_803B2460:
    lbz 0, 0x4ac(30)
    sth 0, 0x45c(30)
L_803B2468:
    lha 0, 0x45e(30)
    li 5, 0x0
    addi 3, 1, 0x6c
    li 4, 0x0
    cmpw 5, 0
    .4byte 0x41820010 # beq .L_803B248C
    stw 5, 0x6c(1)
    li 4, 0x1
    addi 3, 3, 0x4
L_803B248C:
    lha 0, 0x45e(30)
    li 5, 0x1
    cmpw 5, 0
    .4byte 0x41820010 # beq .L_803B24A8
    stw 5, 0x0(3)
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_803B24A8:
    lha 0, 0x45e(30)
    li 5, 0x2
    cmpw 5, 0
    .4byte 0x41820010 # beq .L_803B24C4
    stw 5, 0x0(3)
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_803B24C4:
    lha 0, 0x45e(30)
    li 5, 0x3
    cmpw 5, 0
    .4byte 0x4182000C # beq .L_803B24DC
    stw 5, 0x0(3)
    addi 4, 4, 0x1
L_803B24DC:
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    xoris 6, 4, 0x8000
    lis 3, 0x19
    lis 5, 0x4330
    lwz 7, 0xb4(9)
    addi 0, 3, 0x660d
    lis 4, lbl_80476368@ha
    stw 6, 0x8c(1)
    mullw 8, 7, 0
    lis 3, lbl_80476378@ha
    stw 5, 0x88(1)
    addi 6, 4, lbl_80476368@l
    addi 5, 3, lbl_80476378@l
    .4byte 0xC8220440 # lfd f1, lbl_805433E0@sda21(r0)
    addis 4, 8, 0x3c6f
    lfd 0, 0x88(1)
    subi 4, 4, 0xca1
    .4byte 0xC0A20434 # lfs f5, lbl_805433D4@sda21(r0)
    stw 4, 0xb4(9)
    fsubs 3, 0, 1
    addi 7, 1, 0x6c
    .4byte 0xC0820494 # lfs f4, lbl_80543434@sda21(r0)
    lwz 3, 0xb4(9)
    li 4, 0x3
    .4byte 0xC0420448 # lfs f2, lbl_805433E8@sda21(r0)
    srwi 3, 3, 9
    .4byte 0xC0020498 # lfs f0, lbl_80543438@sda21(r0)
    oris 8, 3, 0x3f80
    li 31, 0x0
    stw 8, 0x18(1)
    mr 3, 30
    lfs 1, 0x18(1)
    fsubs 1, 1, 5
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x80(1)
    lwz 8, 0x84(1)
    slwi 8, 8, 2
    lwzx 7, 7, 8
    sth 7, 0x45e(30)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 7, 0xb4(8)
    mullw 7, 7, 0
    addis 7, 7, 0x3c6f
    subi 7, 7, 0xca1
    stw 7, 0xb4(8)
    lwz 8, 0xb4(8)
    lha 7, 0x45e(30)
    srwi 8, 8, 9
    oris 8, 8, 0x3f80
    slwi 7, 7, 2
    stw 8, 0x14(1)
    lfsx 1, 6, 7
    lfs 3, 0x14(1)
    fsubs 3, 3, 5
    fmadds 1, 4, 3, 1
    stfs 1, 0x244(30)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 6, 0xb4(7)
    mullw 6, 6, 0
    addis 6, 6, 0x3c6f
    subi 6, 6, 0xca1
    stw 6, 0xb4(7)
    lwz 7, 0xb4(7)
    lha 6, 0x45e(30)
    srwi 7, 7, 9
    oris 7, 7, 0x3f80
    slwi 6, 6, 2
    stw 7, 0x10(1)
    lfsx 1, 5, 6
    lfs 3, 0x10(1)
    fsubs 3, 3, 5
    fmadds 1, 4, 3, 1
    stfs 1, 0x248(30)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 5, 5, 0
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 5
    fmadds 31, 2, 1, 0
    mtctr 4
L_803B263C:
    lwz 0, 0x1c8(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B264C
    .4byte 0x480000C8 # b .L_803B2710
L_803B264C:
    lwz 0, 0x1cc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2660
    .4byte 0x480000B4 # b .L_803B2710
L_803B2660:
    lwz 0, 0x1d0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2674
    .4byte 0x480000A0 # b .L_803B2710
L_803B2674:
    lwz 0, 0x1d4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2688
    .4byte 0x4800008C # b .L_803B2710
L_803B2688:
    lwz 0, 0x1d8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B269C
    .4byte 0x48000078 # b .L_803B2710
L_803B269C:
    lwz 0, 0x1dc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B26B0
    .4byte 0x48000064 # b .L_803B2710
L_803B26B0:
    lwz 0, 0x1e0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B26C4
    .4byte 0x48000050 # b .L_803B2710
L_803B26C4:
    lwz 0, 0x1e4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B26D8
    .4byte 0x4800003C # b .L_803B2710
L_803B26D8:
    lwz 0, 0x1e8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B26EC
    .4byte 0x48000028 # b .L_803B2710
L_803B26EC:
    lwz 0, 0x1ec(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2700
    .4byte 0x48000014 # b .L_803B2710
L_803B2700:
    addi 3, 3, 0x28
    addi 31, 31, 0x1
    .4byte 0x4200FF34 # bdnz .L_803B263C
    li 31, -0x1
L_803B2710:
    cmpwi 31, -0x1
    .4byte 0x4182006C # beq .L_803B2780
    .4byte 0xC062049C # lfs f3, lbl_8054343C@sda21(r0)
    fmr 1, 31
    lfs 2, 0x248(30)
    addi 4, 1, 0x60
    lfs 0, 0x244(30)
    li 3, 0x0
    fadds 4, 3, 2
    fadds 2, 3, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    li 5, 0x56c
    li 6, 0x0
    stfs 4, 0x64(1)
    li 7, 0x0
    stfs 2, 0x60(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x68(1)
    bl fn_8013CC50
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0x1c8(4)
    lwz 3, 0x1c8(4)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803B2780:
    lha 0, 0x45c(30)
    cmpwi 0, 0x2
    .4byte 0x418202D4 # beq .L_803B2A5C
    .4byte 0x40800014 # bge .L_803B27A0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_803B27AC
    .4byte 0x4080016C # bge .L_803B2904
    .4byte 0x48000570 # b .L_803B2D0C
L_803B27A0:
    cmpwi 0, 0x4
    .4byte 0x40800568 # bge .L_803B2D0C
    .4byte 0x4800040C # b .L_803B2BB4
L_803B27AC:
    li 0, 0x3
    mr 3, 30
    li 31, 0x0
    mtctr 0
L_803B27BC:
    lwz 0, 0x1c8(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B27CC
    .4byte 0x480000C8 # b .L_803B2890
L_803B27CC:
    lwz 0, 0x1cc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B27E0
    .4byte 0x480000B4 # b .L_803B2890
L_803B27E0:
    lwz 0, 0x1d0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B27F4
    .4byte 0x480000A0 # b .L_803B2890
L_803B27F4:
    lwz 0, 0x1d4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2808
    .4byte 0x4800008C # b .L_803B2890
L_803B2808:
    lwz 0, 0x1d8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B281C
    .4byte 0x48000078 # b .L_803B2890
L_803B281C:
    lwz 0, 0x1dc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2830
    .4byte 0x48000064 # b .L_803B2890
L_803B2830:
    lwz 0, 0x1e0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2844
    .4byte 0x48000050 # b .L_803B2890
L_803B2844:
    lwz 0, 0x1e4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2858
    .4byte 0x4800003C # b .L_803B2890
L_803B2858:
    lwz 0, 0x1e8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B286C
    .4byte 0x48000028 # b .L_803B2890
L_803B286C:
    lwz 0, 0x1ec(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2880
    .4byte 0x48000014 # b .L_803B2890
L_803B2880:
    addi 3, 3, 0x28
    addi 31, 31, 0x1
    .4byte 0x4200FF34 # bdnz .L_803B27BC
    li 31, -0x1
L_803B2890:
    cmpwi 31, -0x1
    .4byte 0x418205CC # beq .L_803B2E60
    .4byte 0xC062049C # lfs f3, lbl_8054343C@sda21(r0)
    fmr 1, 31
    lfs 2, 0x248(30)
    addi 4, 1, 0x54
    lfs 0, 0x244(30)
    li 3, 0x0
    fadds 4, 3, 2
    fadds 2, 3, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    li 5, 0x56e
    li 6, 0x0
    stfs 4, 0x58(1)
    li 7, 0x0
    stfs 2, 0x54(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x5c(1)
    bl fn_8013CC50
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0x1c8(4)
    lwz 3, 0x1c8(4)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x48000560 # b .L_803B2E60
L_803B2904:
    li 0, 0x3
    mr 3, 30
    li 31, 0x0
    mtctr 0
L_803B2914:
    lwz 0, 0x1c8(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2924
    .4byte 0x480000C8 # b .L_803B29E8
L_803B2924:
    lwz 0, 0x1cc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2938
    .4byte 0x480000B4 # b .L_803B29E8
L_803B2938:
    lwz 0, 0x1d0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B294C
    .4byte 0x480000A0 # b .L_803B29E8
L_803B294C:
    lwz 0, 0x1d4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2960
    .4byte 0x4800008C # b .L_803B29E8
L_803B2960:
    lwz 0, 0x1d8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2974
    .4byte 0x48000078 # b .L_803B29E8
L_803B2974:
    lwz 0, 0x1dc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2988
    .4byte 0x48000064 # b .L_803B29E8
L_803B2988:
    lwz 0, 0x1e0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B299C
    .4byte 0x48000050 # b .L_803B29E8
L_803B299C:
    lwz 0, 0x1e4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B29B0
    .4byte 0x4800003C # b .L_803B29E8
L_803B29B0:
    lwz 0, 0x1e8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B29C4
    .4byte 0x48000028 # b .L_803B29E8
L_803B29C4:
    lwz 0, 0x1ec(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B29D8
    .4byte 0x48000014 # b .L_803B29E8
L_803B29D8:
    addi 3, 3, 0x28
    addi 31, 31, 0x1
    .4byte 0x4200FF34 # bdnz .L_803B2914
    li 31, -0x1
L_803B29E8:
    cmpwi 31, -0x1
    .4byte 0x41820474 # beq .L_803B2E60
    .4byte 0xC062049C # lfs f3, lbl_8054343C@sda21(r0)
    fmr 1, 31
    lfs 2, 0x248(30)
    addi 4, 1, 0x48
    lfs 0, 0x244(30)
    li 3, 0x0
    fadds 4, 3, 2
    fadds 2, 3, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    li 5, 0x570
    li 6, 0x0
    stfs 4, 0x4c(1)
    li 7, 0x0
    stfs 2, 0x48(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x50(1)
    bl fn_8013CC50
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0x1c8(4)
    lwz 3, 0x1c8(4)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x48000408 # b .L_803B2E60
L_803B2A5C:
    li 0, 0x3
    mr 3, 30
    li 31, 0x0
    mtctr 0
L_803B2A6C:
    lwz 0, 0x1c8(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2A7C
    .4byte 0x480000C8 # b .L_803B2B40
L_803B2A7C:
    lwz 0, 0x1cc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2A90
    .4byte 0x480000B4 # b .L_803B2B40
L_803B2A90:
    lwz 0, 0x1d0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2AA4
    .4byte 0x480000A0 # b .L_803B2B40
L_803B2AA4:
    lwz 0, 0x1d4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2AB8
    .4byte 0x4800008C # b .L_803B2B40
L_803B2AB8:
    lwz 0, 0x1d8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2ACC
    .4byte 0x48000078 # b .L_803B2B40
L_803B2ACC:
    lwz 0, 0x1dc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2AE0
    .4byte 0x48000064 # b .L_803B2B40
L_803B2AE0:
    lwz 0, 0x1e0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2AF4
    .4byte 0x48000050 # b .L_803B2B40
L_803B2AF4:
    lwz 0, 0x1e4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2B08
    .4byte 0x4800003C # b .L_803B2B40
L_803B2B08:
    lwz 0, 0x1e8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2B1C
    .4byte 0x48000028 # b .L_803B2B40
L_803B2B1C:
    lwz 0, 0x1ec(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2B30
    .4byte 0x48000014 # b .L_803B2B40
L_803B2B30:
    addi 3, 3, 0x28
    addi 31, 31, 0x1
    .4byte 0x4200FF34 # bdnz .L_803B2A6C
    li 31, -0x1
L_803B2B40:
    cmpwi 31, -0x1
    .4byte 0x4182031C # beq .L_803B2E60
    .4byte 0xC062049C # lfs f3, lbl_8054343C@sda21(r0)
    fmr 1, 31
    lfs 2, 0x248(30)
    addi 4, 1, 0x3c
    lfs 0, 0x244(30)
    li 3, 0x0
    fadds 4, 3, 2
    fadds 2, 3, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    li 5, 0x56d
    li 6, 0x0
    stfs 4, 0x40(1)
    li 7, 0x0
    stfs 2, 0x3c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x44(1)
    bl fn_8013CC50
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0x1c8(4)
    lwz 3, 0x1c8(4)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x480002B0 # b .L_803B2E60
L_803B2BB4:
    li 0, 0x3
    mr 3, 30
    li 31, 0x0
    mtctr 0
L_803B2BC4:
    lwz 0, 0x1c8(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2BD4
    .4byte 0x480000C8 # b .L_803B2C98
L_803B2BD4:
    lwz 0, 0x1cc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2BE8
    .4byte 0x480000B4 # b .L_803B2C98
L_803B2BE8:
    lwz 0, 0x1d0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2BFC
    .4byte 0x480000A0 # b .L_803B2C98
L_803B2BFC:
    lwz 0, 0x1d4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2C10
    .4byte 0x4800008C # b .L_803B2C98
L_803B2C10:
    lwz 0, 0x1d8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2C24
    .4byte 0x48000078 # b .L_803B2C98
L_803B2C24:
    lwz 0, 0x1dc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2C38
    .4byte 0x48000064 # b .L_803B2C98
L_803B2C38:
    lwz 0, 0x1e0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2C4C
    .4byte 0x48000050 # b .L_803B2C98
L_803B2C4C:
    lwz 0, 0x1e4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2C60
    .4byte 0x4800003C # b .L_803B2C98
L_803B2C60:
    lwz 0, 0x1e8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2C74
    .4byte 0x48000028 # b .L_803B2C98
L_803B2C74:
    lwz 0, 0x1ec(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2C88
    .4byte 0x48000014 # b .L_803B2C98
L_803B2C88:
    addi 3, 3, 0x28
    addi 31, 31, 0x1
    .4byte 0x4200FF34 # bdnz .L_803B2BC4
    li 31, -0x1
L_803B2C98:
    cmpwi 31, -0x1
    .4byte 0x418201C4 # beq .L_803B2E60
    .4byte 0xC062049C # lfs f3, lbl_8054343C@sda21(r0)
    fmr 1, 31
    lfs 2, 0x248(30)
    addi 4, 1, 0x30
    lfs 0, 0x244(30)
    li 3, 0x0
    fadds 4, 3, 2
    fadds 2, 3, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    li 5, 0x56f
    li 6, 0x0
    stfs 4, 0x34(1)
    li 7, 0x0
    stfs 2, 0x30(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x38(1)
    bl fn_8013CC50
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0x1c8(4)
    lwz 3, 0x1c8(4)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x48000158 # b .L_803B2E60
L_803B2D0C:
    li 0, 0x3
    mr 3, 30
    li 31, 0x0
    mtctr 0
L_803B2D1C:
    lwz 0, 0x1c8(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2D2C
    .4byte 0x480000C8 # b .L_803B2DF0
L_803B2D2C:
    lwz 0, 0x1cc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2D40
    .4byte 0x480000B4 # b .L_803B2DF0
L_803B2D40:
    lwz 0, 0x1d0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2D54
    .4byte 0x480000A0 # b .L_803B2DF0
L_803B2D54:
    lwz 0, 0x1d4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2D68
    .4byte 0x4800008C # b .L_803B2DF0
L_803B2D68:
    lwz 0, 0x1d8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2D7C
    .4byte 0x48000078 # b .L_803B2DF0
L_803B2D7C:
    lwz 0, 0x1dc(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2D90
    .4byte 0x48000064 # b .L_803B2DF0
L_803B2D90:
    lwz 0, 0x1e0(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2DA4
    .4byte 0x48000050 # b .L_803B2DF0
L_803B2DA4:
    lwz 0, 0x1e4(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2DB8
    .4byte 0x4800003C # b .L_803B2DF0
L_803B2DB8:
    lwz 0, 0x1e8(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2DCC
    .4byte 0x48000028 # b .L_803B2DF0
L_803B2DCC:
    lwz 0, 0x1ec(3)
    addi 31, 31, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_803B2DE0
    .4byte 0x48000014 # b .L_803B2DF0
L_803B2DE0:
    addi 3, 3, 0x28
    addi 31, 31, 0x1
    .4byte 0x4200FF34 # bdnz .L_803B2D1C
    li 31, -0x1
L_803B2DF0:
    cmpwi 31, -0x1
    .4byte 0x4182006C # beq .L_803B2E60
    .4byte 0xC062049C # lfs f3, lbl_8054343C@sda21(r0)
    fmr 1, 31
    lfs 2, 0x248(30)
    addi 4, 1, 0x24
    lfs 0, 0x244(30)
    li 3, 0x0
    fadds 4, 3, 2
    fadds 2, 3, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    li 5, 0x571
    li 6, 0x0
    stfs 4, 0x28(1)
    li 7, 0x0
    stfs 2, 0x24(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x2c(1)
    bl fn_8013CC50
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0x1c8(4)
    lwz 3, 0x1c8(4)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803B2E60:
    lis 3, 0x3
    addi 4, 1, 0x20
    addi 0, 3, 0x29
    stw 0, 0x20(1)
    lwz 3, 0x184(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 0, 0xa
    mr 3, 30
    li 4, 0x0
    mtctr 0
L_803B2E94:
    lwz 0, 0x2c8(3)
    cmpwi 0, -0x1
    .4byte 0x40820038 # bne .L_803B2ED4
    mulli 5, 4, 0xc
    slwi 0, 4, 2
    lfs 0, 0x244(30)
    li 4, 0x3a
    add 3, 30, 0
    add 5, 30, 5
    stfs 0, 0x250(5)
    lfs 0, 0x248(30)
    stfs 0, 0x254(5)
    lfs 0, 0x24c(30)
    stfs 0, 0x258(5)
    stw 4, 0x2c8(3)
    .4byte 0x48000010 # b .L_803B2EE0
L_803B2ED4:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
    .4byte 0x4200FFB8 # bdnz .L_803B2E94
L_803B2EE0:
    lha 0, 0x45a(30)
    cmpwi 0, 0x0
    .4byte 0x41810088 # bgt .L_803B2F70
    lis 4, lbl_8050DB0C@ha
    lis 3, 0x19
    addi 5, 4, lbl_8050DB0C@l
    lis 0, 0x4330
    lha 4, 0x50(5)
    addi 3, 3, 0x660d
    stw 0, 0x88(1)
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    sth 4, 0x458(30)
    .4byte 0xC0020434 # lfs f0, lbl_805433D4@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 3
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 3, 0xb4(4)
    lha 0, 0x52(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    xoris 0, 0, 0x8000
    stw 3, 0x8(1)
    stw 0, 0x8c(1)
    lfs 1, 0x8(1)
    lfd 2, 0x88(1)
    fsubs 0, 1, 0
    fsubs 1, 2, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    sth 0, 0x45a(30)
    .4byte 0x48000024 # b .L_803B2F90
L_803B2F70:
    li 0, 0x14
    sth 0, 0x458(30)
    lha 3, 0x45a(30)
    subi 0, 3, 0x1
    sth 0, 0x45a(30)
    .4byte 0x4800000C # b .L_803B2F90
L_803B2F88:
    subi 0, 3, 0x1
    sth 0, 0x458(30)
L_803B2F90:
    psq_l 31, 0xa8(1), 0, 0
    lwz 0, 0xb4(1)
    lfd 31, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

