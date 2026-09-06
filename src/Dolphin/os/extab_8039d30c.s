# fn_8039D30C - helper (0x464)
.text
.balign 4
.global fn_8039D30C

fn_8039D30C:
    lwz 5, 0x2cc(3)
    li 0, 0x0
    cmpwi 5, 0x20
    .4byte 0x4080003C # bge .L_8039D354
    li 10, 0x1
    lwz 9, 0x74(3)
    slw 7, 10, 5
    li 8, 0x0
    srawi 6, 7, 31
    and 7, 9, 7
    and 6, 8, 6
    xor 7, 7, 8
    xor 6, 6, 8
    or. 6, 7, 6
    .4byte 0x41820008 # beq .L_8039D34C
    .4byte 0x48000054 # b .L_8039D39C
L_8039D34C:
    mr 10, 8
    .4byte 0x4800004C # b .L_8039D39C
L_8039D354:
    cmpwi 5, 0x40
    .4byte 0x40800040 # bge .L_8039D398
    subi 6, 5, 0x20
    li 10, 0x1
    slw 7, 10, 6
    lwz 9, 0x78(3)
    srawi 6, 7, 31
    li 8, 0x0
    and 7, 9, 7
    and 6, 8, 6
    xor 7, 7, 8
    xor 6, 6, 8
    or. 6, 7, 6
    .4byte 0x41820008 # beq .L_8039D390
    .4byte 0x48000010 # b .L_8039D39C
L_8039D390:
    mr 10, 8
    .4byte 0x48000008 # b .L_8039D39C
L_8039D398:
    li 10, 0x0
L_8039D39C:
    cmpwi 10, 0x0
    .4byte 0x408200C0 # bne .L_8039D460
    lwz 6, 0x2d8(3)
    lwz 6, 0x16c(6)
    cmpwi 6, 0x0
    .4byte 0x41820094 # beq .L_8039D444
    cmpwi 5, 0x20
    .4byte 0x4080003C # bge .L_8039D3F4
    li 10, 0x1
    lwz 9, 0x74(3)
    slw 7, 10, 5
    li 8, 0x0
    srawi 6, 7, 31
    and 7, 9, 7
    and 6, 8, 6
    xor 7, 7, 8
    xor 6, 6, 8
    or. 6, 7, 6
    .4byte 0x41820008 # beq .L_8039D3EC
    .4byte 0x48000054 # b .L_8039D43C
L_8039D3EC:
    mr 10, 8
    .4byte 0x4800004C # b .L_8039D43C
L_8039D3F4:
    cmpwi 5, 0x40
    .4byte 0x40800040 # bge .L_8039D438
    subi 6, 5, 0x20
    li 10, 0x1
    slw 7, 10, 6
    lwz 9, 0x78(3)
    srawi 6, 7, 31
    li 8, 0x0
    and 7, 9, 7
    and 6, 8, 6
    xor 7, 7, 8
    xor 6, 6, 8
    or. 6, 7, 6
    .4byte 0x41820008 # beq .L_8039D430
    .4byte 0x48000010 # b .L_8039D43C
L_8039D430:
    mr 10, 8
    .4byte 0x48000008 # b .L_8039D43C
L_8039D438:
    li 10, 0x0
L_8039D43C:
    cmpwi 10, 0x0
    .4byte 0x40820020 # bne .L_8039D460
L_8039D444:
    add 5, 3, 5
    lbz 0, 0x265(5)
    extsb 0, 0
    subfic 5, 0, 0x1c
    srwi 0, 5, 31
    add 0, 0, 5
    srawi 0, 0, 1
L_8039D460:
    lbz 5, 0x2d4(3)
    cmpwi 5, 0x1
    .4byte 0x4182010C # beq .L_8039D574
    .4byte 0x40800010 # bge .L_8039D47C
    cmpwi 5, 0x0
    .4byte 0x40800014 # bge .L_8039D488
    .4byte 0x480002D8 # b .L_8039D750
L_8039D47C:
    cmpwi 5, 0x3
    .4byte 0x408002D0 # bge .L_8039D750
    .4byte 0x480001E0 # b .L_8039D664
L_8039D488:
    lwz 6, 0x2d0(3)
    li 9, -0x2
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
    lbz 5, 0x2d4(3)
    lwz 6, 0x2d0(3)
    add 5, 3, 5
    lwz 7, 0x2c0(3)
    lbz 8, 0x236(5)
    addi 5, 6, 0x1
    extsb 8, 8
    stw 5, 0x2d0(3)
    add 0, 0, 8
    stbx 0, 7, 6
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 9, 6, 5
    lwz 8, 0x2d8(3)
    lbz 0, 0x1a1(8)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8039D538
    lwz 5, 0x15c(8)
    lbz 0, 0x2d4(3)
    add 5, 3, 5
    add 6, 3, 0
    lbz 0, 0x23a(5)
    lbz 6, 0x226(6)
    extsb 7, 0
    clrlwi 0, 6, 24
    subf 5, 7, 0
    subic. 0, 5, 0x1
    .4byte 0x40820024 # bne .L_8039D538
    lwz 5, 0x2d0(3)
    addi 0, 6, 0x20
    lwz 6, 0x2c0(3)
    subf 7, 7, 0
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 6, 5
    .4byte 0x4800021C # b .L_8039D750
L_8039D538:
    lwz 5, 0x15c(8)
    lbz 0, 0x2d4(3)
    add 7, 3, 5
    lwz 5, 0x2d0(3)
    add 6, 3, 0
    lbz 8, 0x23a(7)
    lbz 7, 0x226(6)
    addi 0, 5, 0x1
    lwz 6, 0x2c0(3)
    extsb 8, 8
    addi 7, 7, 0x1f
    stw 0, 0x2d0(3)
    subf 7, 8, 7
    stbx 7, 6, 5
    .4byte 0x480001E0 # b .L_8039D750
L_8039D574:
    lwz 6, 0x2d0(3)
    li 9, -0x2
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
    lbz 5, 0x2d4(3)
    lwz 6, 0x2d0(3)
    add 5, 3, 5
    lwz 7, 0x2c0(3)
    lbz 8, 0x236(5)
    addi 5, 6, 0x1
    extsb 8, 8
    stw 5, 0x2d0(3)
    add 5, 0, 8
    addi 0, 5, 0x40
    stbx 0, 7, 6
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 9, 6, 5
    lwz 8, 0x2d8(3)
    lbz 0, 0x1a1(8)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8039D628
    lwz 5, 0x15c(8)
    lbz 0, 0x2d4(3)
    add 5, 3, 5
    add 6, 3, 0
    lbz 0, 0x23a(5)
    lbz 6, 0x226(6)
    extsb 7, 0
    clrlwi 0, 6, 24
    subf 5, 7, 0
    subic. 0, 5, 0x1
    .4byte 0x40820024 # bne .L_8039D628
    lwz 5, 0x2d0(3)
    addi 0, 6, 0x60
    lwz 6, 0x2c0(3)
    subf 7, 7, 0
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 6, 5
    .4byte 0x4800012C # b .L_8039D750
L_8039D628:
    lwz 5, 0x15c(8)
    lbz 0, 0x2d4(3)
    add 7, 3, 5
    lwz 5, 0x2d0(3)
    add 6, 3, 0
    lbz 8, 0x23a(7)
    lbz 7, 0x226(6)
    addi 0, 5, 0x1
    lwz 6, 0x2c0(3)
    extsb 8, 8
    addi 7, 7, 0x5f
    stw 0, 0x2d0(3)
    subf 7, 8, 7
    stbx 7, 6, 5
    .4byte 0x480000F0 # b .L_8039D750
L_8039D664:
    lwz 6, 0x2d0(3)
    li 9, -0x2
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
    lbz 5, 0x2d4(3)
    lwz 6, 0x2d0(3)
    add 5, 3, 5
    lwz 7, 0x2c0(3)
    lbz 8, 0x236(5)
    addi 5, 6, 0x1
    extsb 8, 8
    stw 5, 0x2d0(3)
    add 5, 0, 8
    addi 0, 5, 0x80
    stbx 0, 7, 6
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 9, 6, 5
    lwz 8, 0x2d8(3)
    lbz 0, 0x1a1(8)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8039D718
    lwz 5, 0x15c(8)
    lbz 0, 0x2d4(3)
    add 5, 3, 5
    add 6, 3, 0
    lbz 0, 0x23a(5)
    lbz 6, 0x226(6)
    extsb 7, 0
    clrlwi 0, 6, 24
    subf 5, 7, 0
    subic. 0, 5, 0x1
    .4byte 0x40820024 # bne .L_8039D718
    lwz 5, 0x2d0(3)
    addi 0, 6, 0xa0
    lwz 6, 0x2c0(3)
    subf 7, 7, 0
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 6, 5
    .4byte 0x4800003C # b .L_8039D750
L_8039D718:
    lwz 5, 0x15c(8)
    lbz 0, 0x2d4(3)
    add 7, 3, 5
    lwz 5, 0x2d0(3)
    add 6, 3, 0
    lbz 8, 0x23a(7)
    lbz 7, 0x226(6)
    addi 0, 5, 0x1
    lwz 6, 0x2c0(3)
    extsb 8, 8
    addi 7, 7, 0x9f
    stw 0, 0x2d0(3)
    subf 7, 8, 7
    stbx 7, 6, 5
L_8039D750:
    lwz 5, 0x2d8(3)
    lbz 0, 0x2d4(3)
    add 5, 5, 0
    stb 4, 0x3b2(5)
    lbz 4, 0x2d4(3)
    addi 0, 4, 0x1
    stb 0, 0x2d4(3)
    blr

