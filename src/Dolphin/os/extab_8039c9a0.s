# fn_8039C9A0 - helper (0x458) - string formatting (strcat x14 + strlen)
.section extab, "a"
.balign 4
.global etb_8000F1E4
etb_8000F1E4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000F1E4, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF28
eti_8001EF28:
    .4byte fn_8039C9A0
    .4byte 0x00000458
    .4byte etb_8000F1E4
.size eti_8001EF28, 12

.text
.balign 4
.global fn_8039C9A0

fn_8039C9A0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    li 30, 0x0
    stw 29, 0x24(1)
    mr. 29, 4
    stw 28, 0x20(1)
    mr 28, 3
    .4byte 0x4080000C # bge .L_8039C9D8
    mulli 29, 29, -0x1
    li 30, 0x1
L_8039C9D8:
    lbz 0, 0x2d6(28)
    cmplwi 0, 0x0
    .4byte 0x418201F4 # beq .L_8039CBD4
    lwz 4, 0x2cc(28)
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039CA28
    li 7, 0x1
    lwz 6, 0x74(28)
    slw 3, 7, 4
    li 5, 0x0
    srawi 0, 3, 31
    and 3, 6, 3
    and 0, 5, 0
    xor 3, 3, 5
    xor 0, 0, 5
    or. 0, 3, 0
    .4byte 0x41820008 # beq .L_8039CA20
    .4byte 0x48000054 # b .L_8039CA70
L_8039CA20:
    mr 7, 5
    .4byte 0x4800004C # b .L_8039CA70
L_8039CA28:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039CA6C
    subi 0, 4, 0x20
    li 7, 0x1
    slw 3, 7, 0
    lwz 6, 0x78(28)
    srawi 0, 3, 31
    li 5, 0x0
    and 3, 6, 3
    and 0, 5, 0
    xor 3, 3, 5
    xor 0, 0, 5
    or. 0, 3, 0
    .4byte 0x41820008 # beq .L_8039CA64
    .4byte 0x48000010 # b .L_8039CA70
L_8039CA64:
    mr 7, 5
    .4byte 0x48000008 # b .L_8039CA70
L_8039CA6C:
    li 7, 0x0
L_8039CA70:
    cmpwi 7, 0x0
    .4byte 0x40820160 # bne .L_8039CBD4
    lwz 3, 0x2d8(28)
    lwz 0, 0x16c(3)
    cmpwi 0, 0x0
    .4byte 0x41820094 # beq .L_8039CB18
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039CAC8
    li 8, 0x1
    lwz 7, 0x74(28)
    slw 5, 8, 4
    li 6, 0x0
    srawi 0, 5, 31
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039CAC0
    .4byte 0x48000054 # b .L_8039CB10
L_8039CAC0:
    mr 8, 6
    .4byte 0x4800004C # b .L_8039CB10
L_8039CAC8:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039CB0C
    subi 0, 4, 0x20
    li 8, 0x1
    slw 5, 8, 0
    lwz 7, 0x78(28)
    srawi 0, 5, 31
    li 6, 0x0
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039CB04
    .4byte 0x48000010 # b .L_8039CB10
L_8039CB04:
    mr 8, 6
    .4byte 0x48000008 # b .L_8039CB10
L_8039CB0C:
    li 8, 0x0
L_8039CB10:
    cmpwi 8, 0x0
    .4byte 0x408200B8 # bne .L_8039CBCC
L_8039CB18:
    lwz 5, 0x3b8(3)
    lhz 0, 0x28(5)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820018 # bne .L_8039CB3C
    slwi 0, 4, 2
    lfs 3, 0xe8(3)
    add 3, 28, 0
    lfs 0, 0x84(3)
    .4byte 0x48000024 # b .L_8039CB5C
L_8039CB3C:
    slwi 0, 4, 2
    .4byte 0xC0220248 # lfs f1, lbl_805431E8@sda21(r0)
    add 4, 28, 0
    lfs 3, 0xf0(3)
    lfs 2, 0x12c(4)
    lfs 0, 0x84(4)
    fsubs 1, 2, 1
    fadds 0, 0, 1
L_8039CB5C:
    fsubs 1, 3, 0
    .4byte 0xC0020244 # lfs f0, lbl_805431E4@sda21(r0)
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 6, 0x14(1)
    cmpwi 6, 0x0
    .4byte 0x40810054 # ble .L_8039CBCC
    lis 3, lbl_8050E528@ha
    li 4, 0xf
    addi 3, 3, lbl_8050E528@l
    .4byte 0x38A202F8 # li r5, lbl_80543298@sda21
    crclr 6
    bl fn_8006B414
    lis 4, lbl_8050E528@ha
    lwz 3, 0x2c0(28)
    addi 4, 4, lbl_8050E528@l
    bl strcat
    lis 4, lbl_8050E528@ha
    lwz 3, 0x2c4(28)
    addi 4, 4, lbl_8050E528@l
    bl strcat
    lis 3, lbl_8050E528@ha
    addi 3, 3, lbl_8050E528@l
    bl strlen
    lwz 0, 0x2d0(28)
    add 0, 0, 3
    stw 0, 0x2d0(28)
L_8039CBCC:
    li 0, 0x0
    stb 0, 0x2d6(28)
L_8039CBD4:
    li 3, 0x0
    clrlwi. 0, 30, 24
    stb 3, 0xa(1)
    stb 3, 0x9(1)
    stb 3, 0x8(1)
    .4byte 0x41820030 # beq .L_8039CC18
    li 0, 0x2d
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    lwz 3, 0x2c0(28)
    bl strcat
    lwz 3, 0x2c4(28)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(28)
    addi 0, 3, 0x1
    stw 0, 0x2d0(28)
L_8039CC18:
    lis 3, 0x68dc
    subi 0, 3, 0x7453
    mulhw 0, 0, 29
    srawi 4, 0, 12
    srawi 0, 0, 12
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0x2710
    add. 3, 4, 5
    subf 30, 0, 29
    .4byte 0x41820034 # beq .L_8039CC78
    addi 0, 3, 0x30
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    li 31, 0x1
    lwz 3, 0x2c0(28)
    bl strcat
    lwz 3, 0x2c4(28)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(28)
    addi 0, 3, 0x1
    stw 0, 0x2d0(28)
L_8039CC78:
    lis 3, 0x1062
    addi 0, 3, 0x4dd3
    mulhw 0, 0, 30
    srawi 4, 0, 6
    srawi 0, 0, 6
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0x3e8
    add. 3, 4, 5
    subf 30, 0, 30
    .4byte 0x4082000C # bne .L_8039CCB0
    clrlwi. 0, 31, 24
    .4byte 0x41820034 # beq .L_8039CCE0
L_8039CCB0:
    addi 0, 3, 0x30
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    li 31, 0x1
    lwz 3, 0x2c0(28)
    bl strcat
    lwz 3, 0x2c4(28)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(28)
    addi 0, 3, 0x1
    stw 0, 0x2d0(28)
L_8039CCE0:
    lis 3, 0x51ec
    subi 0, 3, 0x7ae1
    mulhw 0, 0, 30
    srawi 4, 0, 5
    srawi 0, 0, 5
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0x64
    add. 3, 4, 5
    subf 30, 0, 30
    .4byte 0x4082000C # bne .L_8039CD18
    clrlwi. 0, 31, 24
    .4byte 0x41820034 # beq .L_8039CD48
L_8039CD18:
    addi 0, 3, 0x30
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    li 31, 0x1
    lwz 3, 0x2c0(28)
    bl strcat
    lwz 3, 0x2c4(28)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(28)
    addi 0, 3, 0x1
    stw 0, 0x2d0(28)
L_8039CD48:
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 30
    srawi 4, 0, 2
    srawi 0, 0, 2
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    add. 3, 4, 5
    subf 30, 0, 30
    .4byte 0x4082000C # bne .L_8039CD80
    clrlwi. 0, 31, 24
    .4byte 0x41820030 # beq .L_8039CDAC
L_8039CD80:
    addi 0, 3, 0x30
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    lwz 3, 0x2c0(28)
    bl strcat
    lwz 3, 0x2c4(28)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(28)
    addi 0, 3, 0x1
    stw 0, 0x2d0(28)
L_8039CDAC:
    addi 0, 30, 0x30
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    lwz 3, 0x2c0(28)
    bl strcat
    lwz 3, 0x2c4(28)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(28)
    addi 0, 3, 0x1
    stw 0, 0x2d0(28)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

