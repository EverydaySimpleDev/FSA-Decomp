# fn_8039499C - leading helper (0xae4) - heavy string formatting (fn_80095FB4 x12 + strcpy)
.section extab, "a"
.balign 4
.global etb_8000EFA8
etb_8000EFA8:
    .4byte 0x314A0000
    .4byte 0x00000000
.size etb_8000EFA8, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE20
eti_8001EE20:
    .4byte fn_8039499C
    .4byte 0x00000AE4
    .4byte etb_8000EFA8
.size eti_8001EE20, 12

.text
.balign 4
.global fn_8039499C

fn_8039499C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stmw 26, 0x28(1)
    mr 26, 3
    mr 27, 4
    lbz 0, 0x1aa(3)
    cmplwi 0, 0x0
    .4byte 0x40820A44 # bne .L_80395428
    lbz 0, 0x1a2(26)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    lfs 31, 0xc0(26)
    slwi 0, 0, 2
    lfs 30, 0xc4(26)
    add 3, 26, 0
    li 5, 0x0
    lwz 31, 0x20(3)
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 0, 3
    mr 3, 31
    lwz 12, 0x0(31)
    lis 4, 0x546d
    mr 30, 0
    li 5, 0x0
    lwz 12, 0x3c(12)
    addi 6, 4, 0x3032
    mtctr 12
    bctrl
    mr 0, 3
    mr 3, 31
    lwz 12, 0x0(31)
    lis 5, 0x7461
    lis 4, 0x4e6d
    mr 29, 0
    lwz 12, 0x3c(12)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    mtctr 12
    bctrl
    lbz 0, 0x3b0(26)
    mr 28, 3
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80394A94
    lwz 3, 0x8(26)
    bl fn_80078C94
    li 0, 0x0
    stb 0, 0x3b0(26)
L_80394A94:
    clrlwi. 0, 27, 24
    .4byte 0x41820060 # beq .L_80394AF8
    mr 3, 31
    lis 4, 0x524f
    lwz 12, 0x0(31)
    addi 6, 4, 0x4f54
    li 5, 0x0
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x120(26)
    lis 4, lbl_8050DB0C@ha
    lfs 0, 0x9c(26)
    addi 4, 4, lbl_8050DB0C@l
    lwz 12, 0x0(3)
    fadds 0, 1, 0
    lfs 1, 0x3c(4)
    lfs 4, 0x11c(26)
    lfs 3, 0x98(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    fadds 1, 4, 3
    mtctr 12
    bctrl
    .4byte 0x4800004C # b .L_80394B40
L_80394AF8:
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lis 4, 0x524f
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x98(26)
    addi 6, 4, 0x4f54
    stfs 0, 0x9c(26)
    stfs 0, 0xa0(26)
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x11c(26)
    lwz 12, 0x10(12)
    lfs 2, 0x120(26)
    mtctr 12
    bctrl
L_80394B40:
    lwz 4, 0x164(26)
    lis 0, 0x4330
    lwz 3, 0x20(26)
    xoris 4, 4, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    cmplw 31, 3
    stw 4, 0x14(1)
    .4byte 0xC0620248 # lfs f3, lbl_805431E8@sda21(r0)
    lfd 1, 0x10(1)
    lfs 0, 0x118(30)
    fsubs 1, 1, 2
    .4byte 0xC0420244 # lfs f2, lbl_805431E4@sda21(r0)
    fsubs 1, 3, 1
    fmuls 0, 1, 0
    fmuls 28, 2, 0
    .4byte 0x408201E4 # bne .L_80394D64
    lwz 12, 0x0(3)
    lis 4, 0x506d
    addi 6, 4, 0x3030
    li 5, 0x0
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408201BC # bne .L_80394D64
    lwz 3, 0x20(26)
    lis 4, 0x506d
    addi 6, 4, 0x3030
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x3562
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x5035
    stb 0, 0xb0(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x3462
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x5034
    stb 0, 0xb0(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x3362
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x5033
    stb 0, 0xb0(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x3262
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x5032
    stb 0, 0xb0(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x3162
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x5031
    stb 0, 0xb0(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    lwz 3, 0x20(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80394D64:
    mr 3, 30
    bl fn_8009F0D0
    addi 4, 26, 0x1ab
    bl strcpy
    mr 3, 29
    bl fn_8009F0D0
    addi 4, 26, 0x2ab
    bl strcpy
    mr 3, 28
    fmr 1, 31
    lwz 12, 0x0(28)
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 3, 30
    lfs 0, 0xcc(26)
    lwz 12, 0x0(30)
    fadds 2, 0, 28
    lfs 1, 0xc8(26)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 3, 30
    .4byte 0xC0220258 # lfs f1, lbl_805431F8@sda21(r0)
    lwz 12, 0x0(30)
    lfs 0, 0xe8(26)
    lwz 12, 0x18(12)
    fadds 1, 1, 0
    lfs 2, 0xec(26)
    mtctr 12
    bctrl
    lfs 0, 0xcc(26)
    mr 3, 29
    lwz 12, 0x0(29)
    fadds 0, 0, 28
    lfs 1, 0xd4(26)
    lfs 4, 0xc8(26)
    lfs 3, 0xd0(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    fadds 1, 4, 3
    mtctr 12
    bctrl
    mr 3, 29
    .4byte 0xC0220258 # lfs f1, lbl_805431F8@sda21(r0)
    lwz 12, 0x0(29)
    lfs 0, 0xe8(26)
    lwz 12, 0x18(12)
    fadds 1, 1, 0
    lfs 2, 0xec(26)
    mtctr 12
    bctrl
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC022023C # lfs f1, lbl_805431DC@sda21(r0)
    mr 3, 31
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 4, 0x10(4)
    bl fn_8009D340
    li 29, 0x0
    mr 27, 26
L_80394E60:
    lwz 3, 0x68(27)
    lbz 0, 0x8(3)
    cmplwi 0, 0xff
    .4byte 0x418200B4 # beq .L_80394F20
    mr 3, 30
    bl fn_80095FB4
    lfs 0, 0x98(26)
    lfs 2, 0x0(3)
    mr 3, 30
    fadds 1, 0, 31
    lwz 28, 0x68(27)
    lfs 0, 0x0(28)
    fadds 1, 1, 2
    fadds 27, 0, 1
    bl fn_80095FB4
    lfs 0, 0x9c(26)
    lwz 0, 0x164(26)
    fadds 2, 0, 30
    lfs 3, 0x4(3)
    lfs 1, 0x4(28)
    cmpwi 0, 0x1
    lfs 0, 0x118(30)
    fadds 2, 2, 3
    fadds 2, 28, 2
    fmadds 2, 1, 0, 2
    .4byte 0x40820010 # bne .L_80394ED4
    .4byte 0xC002025C # lfs f0, lbl_805431FC@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0x48000014 # b .L_80394EE4
L_80394ED4:
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_80394EE4
    .4byte 0xC0020260 # lfs f0, lbl_80543200@sda21(r0)
    fsubs 2, 2, 0
L_80394EE4:
    lwz 3, 0x68(27)
    fmr 1, 27
    .4byte 0xC0620238 # lfs f3, lbl_805431D8@sda21(r0)
    li 4, 0x0
    lbz 0, 0x8(3)
    li 5, 0x0
    fmr 4, 3
    slwi 3, 0, 2
    li 6, 0x0
    addi 0, 3, 0x30
    lwzx 3, 26, 0
    lwz 12, 0x0(3)
    lwz 12, 0xec(12)
    mtctr 12
    bctrl
L_80394F20:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0xc
    .4byte 0x4180FF34 # blt .L_80394E60
    lbz 0, 0x1a0(26)
    cmplwi 0, 0x0
    .4byte 0x4182050C # beq .L_80395444
    lha 3, 0x19c(26)
    .4byte 0xC362023C # lfs f27, lbl_805431DC@sda21(r0)
    extsh. 0, 3
    .4byte 0x40800070 # bge .L_80394FB8
    cmpwi 3, -0x5
    .4byte 0x4081000C # ble .L_80394F5C
    neg 3, 3
    .4byte 0x48000018 # b .L_80394F70
L_80394F5C:
    cmpwi 3, -0xa
    addi 3, 3, 0xa
    .4byte 0x4082000C # bne .L_80394F70
    li 0, 0x0
    sth 0, 0x19c(26)
L_80394F70:
    mullw 4, 3, 3
    lis 0, 0x4330
    lha 3, 0x19c(26)
    stw 0, 0x10(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    cmpwi 3, 0x0
    xoris 0, 4, 0x8000
    .4byte 0xC0620264 # lfs f3, lbl_80543204@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC0020268 # lfs f0, lbl_80543208@sda21(r0)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 27, 1, 0
    .4byte 0x4182007C # beq .L_80395024
    subi 0, 3, 0x1
    sth 0, 0x19c(26)
    .4byte 0x48000070 # b .L_80395024
L_80394FB8:
    extsh. 0, 3
    .4byte 0x40810068 # ble .L_80395024
    cmpwi 3, 0x5
    .4byte 0x40800008 # bge .L_80394FCC
    .4byte 0x48000018 # b .L_80394FE0
L_80394FCC:
    cmpwi 3, 0xa
    subfic 3, 3, 0xa
    .4byte 0x4082000C # bne .L_80394FE0
    li 0, 0x0
    sth 0, 0x19c(26)
L_80394FE0:
    mullw 4, 3, 3
    lis 0, 0x4330
    lha 3, 0x19c(26)
    stw 0, 0x10(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    cmpwi 3, 0x0
    xoris 0, 4, 0x8000
    .4byte 0xC062026C # lfs f3, lbl_8054320C@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC0020268 # lfs f0, lbl_80543208@sda21(r0)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 27, 1, 0
    .4byte 0x4182000C # beq .L_80395024
    addi 0, 3, 0x1
    sth 0, 0x19c(26)
L_80395024:
    lbz 0, 0x1a1(26)
    cmplwi 0, 0x0
    .4byte 0x40820150 # bne .L_8039517C
    lwz 0, 0x164(26)
    cmpwi 0, 0x2
    .4byte 0x408200A4 # bne .L_803950DC
    mr 3, 30
    bl fn_80095FB4
    lfs 0, 0x9c(26)
    lfs 3, 0x4(3)
    mr 3, 30
    fadds 2, 0, 30
    lwz 0, 0x168(26)
    lfs 1, 0x118(30)
    slwi 0, 0, 2
    .4byte 0xC0020260 # lfs f0, lbl_80543200@sda21(r0)
    fadds 3, 2, 3
    add 4, 26, 0
    lfs 2, 0x130(4)
    fadds 3, 28, 3
    fmadds 1, 2, 1, 3
    fsubs 27, 1, 0
    bl fn_80095FB4
    lfs 0, 0x98(26)
    fmr 2, 27
    lwz 0, 0x168(26)
    li 4, 0x0
    fadds 0, 0, 31
    lfs 1, 0x0(3)
    slwi 0, 0, 2
    lwz 3, 0x5c(26)
    add 5, 26, 0
    fadds 1, 0, 1
    lfs 0, 0x124(5)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fadds 1, 0, 1
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lwz 12, 0xec(12)
    fadds 1, 0, 1
    .4byte 0xC0620270 # lfs f3, lbl_80543210@sda21(r0)
    .4byte 0xC0820274 # lfs f4, lbl_80543214@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x48000288 # b .L_80395360
L_803950DC:
    cmpwi 0, 0x3
    .4byte 0x40820280 # bne .L_80395360
    mr 3, 30
    bl fn_80095FB4
    lfs 0, 0x9c(26)
    lfs 2, 0x4(3)
    mr 3, 30
    fadds 1, 0, 30
    lwz 0, 0x168(26)
    lfs 0, 0x118(30)
    slwi 0, 0, 2
    fadds 2, 1, 2
    add 4, 26, 0
    lfs 1, 0x130(4)
    fadds 2, 28, 2
    fmadds 27, 1, 0, 2
    bl fn_80095FB4
    lfs 0, 0x98(26)
    fmr 2, 27
    lwz 0, 0x168(26)
    li 4, 0x0
    fadds 0, 0, 31
    lfs 1, 0x0(3)
    slwi 0, 0, 2
    lwz 3, 0x5c(26)
    add 5, 26, 0
    fadds 1, 0, 1
    lfs 0, 0x124(5)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fadds 1, 0, 1
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lwz 12, 0xec(12)
    fadds 1, 0, 1
    .4byte 0xC0620270 # lfs f3, lbl_80543210@sda21(r0)
    .4byte 0xC0820274 # lfs f4, lbl_80543214@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x480001E8 # b .L_80395360
L_8039517C:
    lwz 0, 0x168(26)
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    slwi 0, 0, 2
    add 3, 26, 0
    lfs 29, 0x130(3)
    fcmpu cr0, 0, 29
    .4byte 0x40820098 # bne .L_8039522C
    mr 3, 30
    bl fn_80095FB4
    lfs 0, 0x9c(26)
    lfs 3, 0x4(3)
    mr 3, 30
    fadds 2, 0, 30
    lfs 1, 0x118(30)
    .4byte 0xC0020278 # lfs f0, lbl_80543218@sda21(r0)
    fadds 2, 2, 3
    fadds 2, 28, 2
    fmadds 1, 29, 1, 2
    fsubs 28, 1, 0
    bl fn_80095FB4
    lfs 0, 0x98(26)
    fmr 2, 28
    lwz 0, 0x168(26)
    li 4, 0x0
    fadds 0, 0, 31
    lfs 1, 0x0(3)
    slwi 0, 0, 2
    lwz 3, 0x5c(26)
    add 5, 26, 0
    fadds 1, 0, 1
    lfs 0, 0x124(5)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fadds 1, 0, 1
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lwz 12, 0xec(12)
    fadds 1, 27, 1
    .4byte 0xC0620270 # lfs f3, lbl_80543210@sda21(r0)
    .4byte 0xC0820274 # lfs f4, lbl_80543214@sda21(r0)
    fadds 1, 0, 1
    mtctr 12
    bctrl
    .4byte 0x48000138 # b .L_80395360
L_8039522C:
    .4byte 0xC002027C # lfs f0, lbl_8054321C@sda21(r0)
    fcmpu cr0, 0, 29
    .4byte 0x40820098 # bne .L_803952CC
    mr 3, 30
    bl fn_80095FB4
    lfs 0, 0x9c(26)
    lfs 3, 0x4(3)
    mr 3, 30
    fadds 2, 0, 30
    lfs 1, 0x118(30)
    .4byte 0xC0020260 # lfs f0, lbl_80543200@sda21(r0)
    fadds 2, 2, 3
    fadds 2, 28, 2
    fmadds 1, 29, 1, 2
    fsubs 28, 1, 0
    bl fn_80095FB4
    lfs 0, 0x98(26)
    fmr 2, 28
    lwz 0, 0x168(26)
    li 4, 0x0
    fadds 0, 0, 31
    lfs 1, 0x0(3)
    slwi 0, 0, 2
    lwz 3, 0x5c(26)
    add 5, 26, 0
    fadds 1, 0, 1
    lfs 0, 0x124(5)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fadds 1, 0, 1
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lwz 12, 0xec(12)
    fadds 1, 27, 1
    .4byte 0xC0620270 # lfs f3, lbl_80543210@sda21(r0)
    .4byte 0xC0820274 # lfs f4, lbl_80543214@sda21(r0)
    fadds 1, 0, 1
    mtctr 12
    bctrl
    .4byte 0x48000098 # b .L_80395360
L_803952CC:
    .4byte 0xC0020280 # lfs f0, lbl_80543220@sda21(r0)
    fcmpu cr0, 0, 29
    .4byte 0x4082008C # bne .L_80395360
    mr 3, 30
    bl fn_80095FB4
    lfs 0, 0x9c(26)
    lfs 2, 0x4(3)
    mr 3, 30
    fadds 1, 0, 30
    lfs 0, 0x118(30)
    fadds 1, 1, 2
    fadds 1, 28, 1
    fmadds 28, 29, 0, 1
    bl fn_80095FB4
    lfs 0, 0x98(26)
    fmr 2, 28
    lwz 0, 0x168(26)
    li 4, 0x0
    fadds 0, 0, 31
    lfs 1, 0x0(3)
    slwi 0, 0, 2
    lwz 3, 0x5c(26)
    add 5, 26, 0
    fadds 1, 0, 1
    lfs 0, 0x124(5)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fadds 1, 0, 1
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lwz 12, 0xec(12)
    fadds 1, 27, 1
    .4byte 0xC0620270 # lfs f3, lbl_80543210@sda21(r0)
    .4byte 0xC0820274 # lfs f4, lbl_80543214@sda21(r0)
    fadds 1, 0, 1
    mtctr 12
    bctrl
L_80395360:
    lha 3, 0x198(26)
    subi 0, 3, 0x1
    sth 0, 0x198(26)
    lha 0, 0x198(26)
    cmpwi 0, 0x0
    .4byte 0x418100D0 # bgt .L_80395444
    lha 0, 0x19a(26)
    cmpwi 0, -0x60
    .4byte 0x40820010 # bne .L_80395390
    li 0, -0x54
    sth 0, 0x19a(26)
    .4byte 0x4800000C # b .L_80395398
L_80395390:
    li 0, -0x60
    sth 0, 0x19a(26)
L_80395398:
    lha 3, 0x19a(26)
    lis 0, 0x4330
    stw 0, 0x10(1)
    li 4, 0x7a
    xoris 0, 3, 0x8000
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 0, 0x14(1)
    lwz 3, 0x5c(26)
    lfd 0, 0x10(1)
    .4byte 0xC0220284 # lfs f1, lbl_80543224@sda21(r0)
    fsubs 3, 0, 2
    .4byte 0xC0420288 # lfs f2, lbl_80543228@sda21(r0)
    bl fn_80096094
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002027C # lfs f0, lbl_8054321C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042028C # lfs f2, lbl_8054322C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 3, 0x1c(1)
    addi 0, 3, 0xa
    sth 0, 0x198(26)
    .4byte 0x48000020 # b .L_80395444
L_80395428:
    lbz 0, 0x3b0(26)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80395444
    lwz 3, 0x8(26)
    bl fn_80078C94
    li 0, 0x0
    stb 0, 0x3b0(26)
L_80395444:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    lmw 26, 0x28(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

