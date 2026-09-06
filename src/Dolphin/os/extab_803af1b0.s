# fn_803AF1B0 - helper (0x454)
.section extab, "a"
.balign 4
.global etb_8000F47C
etb_8000F47C:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000F47C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F1D4
eti_8001F1D4:
    .4byte fn_803AF1B0
    .4byte 0x00000454
    .4byte etb_8000F47C
.size eti_8001F1D4, 12

.text
.balign 4
.global fn_803AF1B0

fn_803AF1B0:
    stwu 1, -0x50(1)
    mflr 0
    li 4, 0x0
    li 8, 0x0
    stw 0, 0x54(1)
    li 0, 0x0
    stmw 25, 0x34(1)
    mr 31, 3
    li 3, 0x0
    mr 6, 31
    lwz 7, 0x454(31)
    mtctr 7
    cmpwi 7, 0x0
    .4byte 0x40810020 # ble .L_803AF204
L_803AF1E8:
    lwz 5, 0x390(6)
    cmpwi 5, 0x0
    .4byte 0x4182000C # beq .L_803AF1FC
    li 8, 0x1
    .4byte 0x4800000C # b .L_803AF204
L_803AF1FC:
    addi 6, 6, 0x4
    .4byte 0x4200FFE8 # bdnz .L_803AF1E8
L_803AF204:
    clrlwi. 5, 8, 24
    .4byte 0x41820228 # beq .L_803AF430
    cmpwi 7, 0x0
    li 5, 0x0
    li 6, 0x0
    .4byte 0x408100F0 # ble .L_803AF308
    cmpwi 7, 0x8
    subi 8, 7, 0x8
    .4byte 0x4081009C # ble .L_803AF2C0
    addi 7, 8, 0x7
    mr 10, 31
    srwi 7, 7, 3
    addi 9, 1, 0x8
    addi 11, 1, 0x18
    mtctr 7
    cmpwi 8, 0x0
    .4byte 0x4081007C # ble .L_803AF2C0
L_803AF248:
    li 8, 0x0
    addi 6, 6, 0x8
    stw 8, 0x0(9)
    lwz 7, 0x390(10)
    stw 7, 0x0(11)
    stw 8, 0x4(9)
    lwz 7, 0x394(10)
    stw 7, 0x4(11)
    stw 8, 0x8(9)
    lwz 7, 0x398(10)
    stw 7, 0x8(11)
    stw 8, 0xc(9)
    lwz 7, 0x39c(10)
    stw 7, 0xc(11)
    stw 8, 0x10(9)
    lwz 7, 0x3a0(10)
    stw 7, 0x10(11)
    stw 8, 0x14(9)
    lwz 7, 0x3a4(10)
    stw 7, 0x14(11)
    stw 8, 0x18(9)
    lwz 7, 0x3a8(10)
    stw 7, 0x18(11)
    stw 8, 0x1c(9)
    addi 9, 9, 0x20
    lwz 7, 0x3ac(10)
    addi 10, 10, 0x20
    stw 7, 0x1c(11)
    addi 11, 11, 0x20
    .4byte 0x4200FF8C # bdnz .L_803AF248
L_803AF2C0:
    slwi 7, 6, 2
    addi 9, 1, 0x8
    addi 11, 1, 0x18
    li 8, 0x0
    add 9, 9, 7
    add 10, 31, 7
    add 11, 11, 7
    .4byte 0x48000020 # b .L_803AF2FC
L_803AF2E0:
    stw 8, 0x0(9)
    addi 9, 9, 0x4
    addi 6, 6, 0x1
    lwz 7, 0x390(10)
    addi 10, 10, 0x4
    stw 7, 0x0(11)
    addi 11, 11, 0x4
L_803AF2FC:
    lwz 7, 0x454(31)
    cmpw 6, 7
    .4byte 0x4180FFDC # blt .L_803AF2E0
L_803AF308:
    lis 7, lbl_804763A4@ha
    lis 6, lbl_804763B4@ha
    addi 8, 7, lbl_804763A4@l
    addi 30, 1, 0x8
    addi 7, 6, lbl_804763B4@l
    addi 29, 1, 0x18
L_803AF320:
    lwz 6, 0x454(31)
    mr 9, 30
    mr 10, 29
    li 27, -0x1
    mtctr 6
    cmpwi 6, 0x0
    .4byte 0x4081002C # ble .L_803AF364
L_803AF33C:
    lwz 6, 0x0(9)
    cmpwi 6, 0x0
    .4byte 0x40820014 # bne .L_803AF358
    lwz 6, 0x0(10)
    cmpw 27, 6
    .4byte 0x40800008 # bge .L_803AF358
    mr 27, 6
L_803AF358:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    .4byte 0x4200FFDC # bdnz .L_803AF33C
L_803AF364:
    mr 9, 30
    mr 10, 29
    mr 11, 31
    slwi 28, 5, 2
    li 26, 0x0
    li 25, 0x0
    .4byte 0x398203E0 # li r12, lbl_80543380@sda21
    .4byte 0x48000094 # b .L_803AF414
L_803AF384:
    lwz 6, 0x0(9)
    cmpwi 6, 0x0
    .4byte 0x40820078 # bne .L_803AF404
    lwz 6, 0x0(10)
    cmpw 27, 6
    .4byte 0x4082006C # bne .L_803AF404
    cmpwi 6, 0x0
    .4byte 0x40820010 # bne .L_803AF3B0
    li 6, 0x0
    stw 6, 0x330(11)
    .4byte 0x4800004C # b .L_803AF3F8
L_803AF3B0:
    lwz 6, 0x450(31)
    cmpwi 6, 0x1
    .4byte 0x4182002C # beq .L_803AF3E4
    .4byte 0x40800010 # bge .L_803AF3CC
    cmpwi 6, 0x0
    .4byte 0x40800014 # bge .L_803AF3D8
    .4byte 0x48000030 # b .L_803AF3F8
L_803AF3CC:
    cmpwi 6, 0x3
    .4byte 0x40800028 # bge .L_803AF3F8
    .4byte 0x4800001C # b .L_803AF3F0
L_803AF3D8:
    lwzx 6, 8, 28
    stw 6, 0x330(11)
    .4byte 0x48000018 # b .L_803AF3F8
L_803AF3E4:
    lwzx 6, 7, 28
    stw 6, 0x330(11)
    .4byte 0x4800000C # b .L_803AF3F8
L_803AF3F0:
    lwzx 6, 12, 28
    stw 6, 0x330(11)
L_803AF3F8:
    li 6, 0x1
    addi 26, 26, 0x1
    stw 6, 0x0(9)
L_803AF404:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 11, 11, 0x4
    addi 25, 25, 0x1
L_803AF414:
    lwz 6, 0x454(31)
    cmpw 25, 6
    .4byte 0x4180FF68 # blt .L_803AF384
    add 5, 5, 26
    cmpw 5, 6
    .4byte 0x40800030 # bge .L_803AF458
    .4byte 0x4BFFFEF4 # b .L_803AF320
L_803AF430:
    mr 7, 31
    li 8, 0x0
    li 6, 0x0
    .4byte 0x48000010 # b .L_803AF44C
L_803AF440:
    stw 6, 0x330(7)
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AF44C:
    lwz 5, 0x454(31)
    cmpw 8, 5
    .4byte 0x4180FFEC # blt .L_803AF440
L_803AF458:
    mr 7, 31
    li 8, 0x0
    .4byte 0x4800003C # b .L_803AF49C
L_803AF464:
    lwz 6, 0x350(7)
    lwz 5, 0x330(7)
    cmpw 6, 5
    .4byte 0x4080000C # bge .L_803AF47C
    addi 5, 6, 0x2
    stw 5, 0x350(7)
L_803AF47C:
    lwz 5, 0x350(7)
    lwz 6, 0x330(7)
    cmpw 5, 6
    .4byte 0x4180000C # blt .L_803AF494
    stw 6, 0x350(7)
    addi 3, 3, 0x1
L_803AF494:
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AF49C:
    lwz 5, 0x454(31)
    cmpw 8, 5
    .4byte 0x4180FFC0 # blt .L_803AF464
    cmpw 3, 5
    .4byte 0x41800114 # blt .L_803AF5C0
    mr 5, 31
    li 7, 0x0
    .4byte 0x4800005C # b .L_803AF514
L_803AF4BC:
    lwz 6, 0x330(5)
    cmpw 0, 6
    .4byte 0x40800020 # bge .L_803AF4E4
    li 3, 0x0
    mr 0, 6
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 7, 31, 3
    .4byte 0x4800002C # b .L_803AF50C
L_803AF4E4:
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_803AF50C
    cmpw 0, 6
    .4byte 0x4082001C # bne .L_803AF50C
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x1
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 7, 31, 3
L_803AF50C:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
L_803AF514:
    lwz 3, 0x454(31)
    cmpw 7, 3
    .4byte 0x4180FFA0 # blt .L_803AF4BC
    mr 5, 31
    li 6, 0x0
    li 3, 0x3e
    .4byte 0x4800003C # b .L_803AF568
L_803AF530:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AF560
    addi 0, 4, 0x4ac
    lbzx 0, 31, 0
    cmpw 6, 0
    .4byte 0x40820018 # bne .L_803AF560
    stw 3, 0x3c0(5)
    lbz 0, 0x4c8(31)
    cmpw 0, 4
    .4byte 0x40810008 # ble .L_803AF560
    addi 4, 4, 0x1
L_803AF560:
    addi 5, 5, 0x4
    addi 6, 6, 0x1
L_803AF568:
    lwz 0, 0x454(31)
    cmpw 6, 0
    .4byte 0x4180FFC0 # blt .L_803AF530
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AF5A4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xf
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800000C # b .L_803AF5AC
L_803AF5A4:
    li 0, 0x3c
    stw 0, 0x440(31)
L_803AF5AC:
    li 3, 0x0
    li 0, 0xe
    stw 3, 0x438(31)
    stb 0, 0x4c1(31)
    .4byte 0x48000034 # b .L_803AF5F0
L_803AF5C0:
    lwz 0, 0x438(31)
    cmpw 3, 0
    .4byte 0x41820018 # beq .L_803AF5E0
    stw 3, 0x438(31)
    li 4, 0x10
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AF5E0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xe
    li 5, -0x1
    bl fn_80458880
L_803AF5F0:
    lmw 25, 0x34(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

