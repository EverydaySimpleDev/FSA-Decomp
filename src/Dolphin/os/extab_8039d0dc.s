# fn_8039D0DC - helper (0x230)
.section extab, "a"
.balign 4
.global etb_8000F1F4
etb_8000F1F4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000F1F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF40
eti_8001EF40:
    .4byte fn_8039D0DC
    .4byte 0x00000230
    .4byte etb_8000F1F4
.size eti_8001EF40, 12

.text
.balign 4
.global fn_8039D0DC

fn_8039D0DC:
    stwu 1, -0x20(1)
    li 0, 0x0
    lwz 6, 0x2cc(3)
    cmpwi 6, 0x20
    .4byte 0x4080003C # bge .L_8039D128
    li 10, 0x1
    lwz 9, 0x74(3)
    slw 7, 10, 6
    li 8, 0x0
    srawi 5, 7, 31
    and 7, 9, 7
    and 5, 8, 5
    xor 7, 7, 8
    xor 5, 5, 8
    or. 5, 7, 5
    .4byte 0x41820008 # beq .L_8039D120
    .4byte 0x48000054 # b .L_8039D170
L_8039D120:
    mr 10, 8
    .4byte 0x4800004C # b .L_8039D170
L_8039D128:
    cmpwi 6, 0x40
    .4byte 0x40800040 # bge .L_8039D16C
    subi 5, 6, 0x20
    li 10, 0x1
    slw 7, 10, 5
    lwz 9, 0x78(3)
    srawi 5, 7, 31
    li 8, 0x0
    and 7, 9, 7
    and 5, 8, 5
    xor 7, 7, 8
    xor 5, 5, 8
    or. 5, 7, 5
    .4byte 0x41820008 # beq .L_8039D164
    .4byte 0x48000010 # b .L_8039D170
L_8039D164:
    mr 10, 8
    .4byte 0x48000008 # b .L_8039D170
L_8039D16C:
    li 10, 0x0
L_8039D170:
    cmpwi 10, 0x0
    .4byte 0x40820100 # bne .L_8039D274
    lwz 5, 0x2d8(3)
    lwz 7, 0x16c(5)
    cmpwi 7, 0x0
    .4byte 0x41820094 # beq .L_8039D218
    cmpwi 6, 0x20
    .4byte 0x4080003C # bge .L_8039D1C8
    li 11, 0x1
    lwz 10, 0x74(3)
    slw 8, 11, 6
    li 9, 0x0
    srawi 7, 8, 31
    and 8, 10, 8
    and 7, 9, 7
    xor 8, 8, 9
    xor 7, 7, 9
    or. 7, 8, 7
    .4byte 0x41820008 # beq .L_8039D1C0
    .4byte 0x48000054 # b .L_8039D210
L_8039D1C0:
    mr 11, 9
    .4byte 0x4800004C # b .L_8039D210
L_8039D1C8:
    cmpwi 6, 0x40
    .4byte 0x40800040 # bge .L_8039D20C
    subi 7, 6, 0x20
    li 11, 0x1
    slw 8, 11, 7
    lwz 10, 0x78(3)
    srawi 7, 8, 31
    li 9, 0x0
    and 8, 10, 8
    and 7, 9, 7
    xor 8, 8, 9
    xor 7, 7, 9
    or. 7, 8, 7
    .4byte 0x41820008 # beq .L_8039D204
    .4byte 0x48000010 # b .L_8039D210
L_8039D204:
    mr 11, 9
    .4byte 0x48000008 # b .L_8039D210
L_8039D20C:
    li 11, 0x0
L_8039D210:
    cmpwi 11, 0x0
    .4byte 0x40820060 # bne .L_8039D274
L_8039D218:
    lwz 7, 0x3b8(5)
    lhz 0, 0x28(7)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820018 # bne .L_8039D23C
    slwi 0, 6, 2
    lfs 3, 0xe8(5)
    add 5, 3, 0
    lfs 0, 0x84(5)
    .4byte 0x48000024 # b .L_8039D25C
L_8039D23C:
    slwi 0, 6, 2
    .4byte 0xC0220248 # lfs f1, lbl_805431E8@sda21(r0)
    add 6, 3, 0
    lfs 3, 0xf0(5)
    lfs 2, 0x12c(6)
    lfs 0, 0x84(6)
    fsubs 1, 2, 1
    fadds 0, 0, 1
L_8039D25C:
    fsubs 1, 3, 0
    .4byte 0xC0020244 # lfs f0, lbl_805431E4@sda21(r0)
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
L_8039D274:
    lwz 10, 0x2d8(3)
    lis 8, 0x4330
    lbz 7, 0x2d4(3)
    xoris 5, 0, 0x8000
    lwz 6, 0x15c(10)
    clrlslwi 0, 7, 24, 2
    add 9, 3, 7
    add 6, 3, 6
    stw 5, 0xc(1)
    lbz 5, 0x23a(6)
    add 7, 3, 0
    stw 8, 0x8(1)
    add 6, 10, 0
    lbz 0, 0x226(9)
    extsb 5, 5
    .4byte 0xC8620250 # lfd f3, lbl_805431F0@sda21(r0)
    subf 5, 5, 0
    lfd 0, 0x8(1)
    subi 0, 5, 0x1
    stw 8, 0x10(1)
    xoris 0, 0, 0x8000
    fsubs 2, 0, 3
    stw 0, 0x14(1)
    lfs 1, 0x1d4(7)
    lfd 0, 0x10(1)
    fadds 1, 2, 1
    fsubs 0, 0, 3
    stfs 1, 0x124(6)
    stfs 0, 0x130(6)
    lwz 5, 0x2d8(3)
    lbz 0, 0x2d4(3)
    add 5, 5, 0
    stb 4, 0x3b2(5)
    lbz 4, 0x2d4(3)
    addi 0, 4, 0x1
    stb 0, 0x2d4(3)
    addi 1, 1, 0x20
    blr

