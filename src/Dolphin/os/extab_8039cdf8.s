# fn_8039CDF8 - helper (0x2e4)
.section extab, "a"
.balign 4
.global etb_8000F1EC
etb_8000F1EC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000F1EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF34
eti_8001EF34:
    .4byte fn_8039CDF8
    .4byte 0x000002E4
    .4byte etb_8000F1EC
.size eti_8001EF34, 12

.text
.balign 4
.global fn_8039CDF8

fn_8039CDF8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    lwz 3, 0x2d8(3)
    lwz 4, 0x2cc(30)
    lwz 0, 0x15c(3)
    add 3, 30, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x4081002C # ble .L_8039CE5C
    lwz 3, 0x2c0(30)
    .4byte 0x38820318 # li r4, lbl_805432B8@sda21
    bl strcat
    lwz 3, 0x2c4(30)
    .4byte 0x38820318 # li r4, lbl_805432B8@sda21
    bl strcat
    lwz 3, 0x2d0(30)
    addi 0, 3, 0x4
    stw 0, 0x2d0(30)
    .4byte 0x48000014 # b .L_8039CE6C
L_8039CE5C:
    lbz 3, 0x2d5(30)
    addi 0, 3, 0x1
    stb 0, 0x2d5(30)
    .4byte 0x4800025C # b .L_8039D0C4
L_8039CE6C:
    lwz 4, 0x2cc(30)
    li 0, 0x0
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039CEB4
    li 8, 0x1
    lwz 7, 0x74(30)
    slw 5, 8, 4
    li 6, 0x0
    srawi 3, 5, 31
    and 5, 7, 5
    and 3, 6, 3
    xor 5, 5, 6
    xor 3, 3, 6
    or. 3, 5, 3
    .4byte 0x41820008 # beq .L_8039CEAC
    .4byte 0x48000054 # b .L_8039CEFC
L_8039CEAC:
    mr 8, 6
    .4byte 0x4800004C # b .L_8039CEFC
L_8039CEB4:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039CEF8
    subi 3, 4, 0x20
    li 8, 0x1
    slw 5, 8, 3
    lwz 7, 0x78(30)
    srawi 3, 5, 31
    li 6, 0x0
    and 5, 7, 5
    and 3, 6, 3
    xor 5, 5, 6
    xor 3, 3, 6
    or. 3, 5, 3
    .4byte 0x41820008 # beq .L_8039CEF0
    .4byte 0x48000010 # b .L_8039CEFC
L_8039CEF0:
    mr 8, 6
    .4byte 0x48000008 # b .L_8039CEFC
L_8039CEF8:
    li 8, 0x0
L_8039CEFC:
    cmpwi 8, 0x0
    .4byte 0x40820100 # bne .L_8039D000
    lwz 3, 0x2d8(30)
    lwz 5, 0x16c(3)
    cmpwi 5, 0x0
    .4byte 0x41820094 # beq .L_8039CFA4
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039CF54
    li 9, 0x1
    lwz 8, 0x74(30)
    slw 6, 9, 4
    li 7, 0x0
    srawi 5, 6, 31
    and 6, 8, 6
    and 5, 7, 5
    xor 6, 6, 7
    xor 5, 5, 7
    or. 5, 6, 5
    .4byte 0x41820008 # beq .L_8039CF4C
    .4byte 0x48000054 # b .L_8039CF9C
L_8039CF4C:
    mr 9, 7
    .4byte 0x4800004C # b .L_8039CF9C
L_8039CF54:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039CF98
    subi 5, 4, 0x20
    li 9, 0x1
    slw 6, 9, 5
    lwz 8, 0x78(30)
    srawi 5, 6, 31
    li 7, 0x0
    and 6, 8, 6
    and 5, 7, 5
    xor 6, 6, 7
    xor 5, 5, 7
    or. 5, 6, 5
    .4byte 0x41820008 # beq .L_8039CF90
    .4byte 0x48000010 # b .L_8039CF9C
L_8039CF90:
    mr 9, 7
    .4byte 0x48000008 # b .L_8039CF9C
L_8039CF98:
    li 9, 0x0
L_8039CF9C:
    cmpwi 9, 0x0
    .4byte 0x40820060 # bne .L_8039D000
L_8039CFA4:
    lwz 5, 0x3b8(3)
    lhz 0, 0x28(5)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820018 # bne .L_8039CFC8
    slwi 0, 4, 2
    lfs 3, 0xe8(3)
    add 3, 30, 0
    lfs 0, 0x84(3)
    .4byte 0x48000024 # b .L_8039CFE8
L_8039CFC8:
    slwi 0, 4, 2
    .4byte 0xC0220248 # lfs f1, lbl_805431E8@sda21(r0)
    add 4, 30, 0
    lfs 3, 0xf0(3)
    lfs 2, 0x12c(4)
    lfs 0, 0x84(4)
    fsubs 1, 2, 1
    fadds 0, 0, 1
L_8039CFE8:
    fsubs 1, 3, 0
    .4byte 0xC0020244 # lfs f0, lbl_805431E4@sda21(r0)
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
L_8039D000:
    lwz 9, 0x2d8(30)
    lis 5, 0x4330
    lbz 3, 0x2d5(30)
    xoris 4, 0, 0x8000
    lwz 6, 0x15c(9)
    li 0, 0xc
    add 7, 30, 3
    slwi 3, 3, 2
    add 6, 30, 6
    lbz 7, 0x229(7)
    lbz 6, 0x23a(6)
    add 3, 30, 3
    stw 4, 0x14(1)
    mr 8, 9
    extsb 4, 6
    .4byte 0xC8620250 # lfd f3, lbl_805431F0@sda21(r0)
    stw 5, 0x10(1)
    subf 4, 4, 7
    subi 4, 4, 0x1
    lfs 0, 0x1e0(3)
    xoris 3, 4, 0x8000
    lfd 1, 0x10(1)
    stw 3, 0xc(1)
    li 4, 0x0
    fsubs 1, 1, 3
    stw 5, 0x8(1)
    lfd 2, 0x8(1)
    fadds 0, 1, 0
    fsubs 1, 2, 3
    mtctr 0
L_8039D078:
    lwz 3, 0x68(8)
    lbz 0, 0x8(3)
    cmplwi 0, 0xff
    .4byte 0x40820028 # bne .L_8039D0AC
    slwi 0, 4, 2
    add 4, 9, 0
    lwz 3, 0x68(4)
    stfs 0, 0x0(3)
    lwz 3, 0x68(4)
    stfs 1, 0x4(3)
    lwz 3, 0x68(4)
    stb 31, 0x8(3)
    .4byte 0x48000010 # b .L_8039D0B8
L_8039D0AC:
    addi 8, 8, 0x4
    addi 4, 4, 0x1
    .4byte 0x4200FFC4 # bdnz .L_8039D078
L_8039D0B8:
    lbz 3, 0x2d5(30)
    addi 0, 3, 0x1
    stb 0, 0x2d5(30)
L_8039D0C4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

