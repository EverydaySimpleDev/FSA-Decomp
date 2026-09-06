# fn_803AD4B0 - helper (0x3e4)
.section extab, "a"
.balign 4
.global etb_8000F434
etb_8000F434:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F434, 8

.section extabindex, "a"
.balign 4
.global eti_8001F168
eti_8001F168:
    .4byte fn_803AD4B0
    .4byte 0x000003E4
    .4byte etb_8000F434
.size eti_8001F168, 12

.text
.balign 4
.global fn_803AD4B0

fn_803AD4B0:
    stwu 1, -0x30(1)
    mflr 0
    li 5, 0x0
    li 6, 0x0
    stw 0, 0x34(1)
    li 0, 0x0
    li 9, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 3, 0x454(3)
    cmpwi 3, 0x0
    .4byte 0x40810080 # ble .L_803AD55C
    cmpwi 3, 0x8
    subi 7, 3, 0x8
    .4byte 0x4081004C # ble .L_803AD534
    addi 3, 7, 0x7
    addi 8, 1, 0x8
    srwi 3, 3, 3
    li 4, 0x0
    mtctr 3
    cmpwi 7, 0x0
    .4byte 0x40810030 # ble .L_803AD534
L_803AD508:
    stb 4, 0x0(8)
    addi 9, 9, 0x8
    stb 4, 0x1(8)
    stb 4, 0x2(8)
    stb 4, 0x3(8)
    stb 4, 0x4(8)
    stb 4, 0x5(8)
    stb 4, 0x6(8)
    stb 4, 0x7(8)
    addi 8, 8, 0x8
    .4byte 0x4200FFD8 # bdnz .L_803AD508
L_803AD534:
    addi 7, 1, 0x8
    li 4, 0x0
    add 7, 7, 9
    .4byte 0x48000010 # b .L_803AD550
L_803AD544:
    stb 4, 0x0(7)
    addi 7, 7, 0x1
    addi 9, 9, 0x1
L_803AD550:
    lwz 3, 0x454(31)
    cmpw 9, 3
    .4byte 0x4180FFEC # blt .L_803AD544
L_803AD55C:
    lwz 3, 0x454(31)
    li 7, 0x0
    cmpwi 3, 0x0
    .4byte 0x408100E4 # ble .L_803AD64C
    cmpwi 3, 0x8
    subi 8, 3, 0x8
    .4byte 0x408100AC # ble .L_803AD620
    addi 4, 8, 0x7
    addi 3, 1, 0x8
    srwi 4, 4, 3
    mtctr 4
    cmpwi 8, 0x0
    .4byte 0x40810094 # ble .L_803AD620
L_803AD590:
    addi 4, 7, 0x4b8
    addi 7, 7, 0x8
    add 4, 31, 4
    lbz 9, 0x0(4)
    lbzx 8, 3, 9
    addi 8, 8, 0x1
    stbx 8, 3, 9
    lbz 9, 0x1(4)
    lbzx 8, 3, 9
    addi 8, 8, 0x1
    stbx 8, 3, 9
    lbz 9, 0x2(4)
    lbzx 8, 3, 9
    addi 8, 8, 0x1
    stbx 8, 3, 9
    lbz 9, 0x3(4)
    lbzx 8, 3, 9
    addi 8, 8, 0x1
    stbx 8, 3, 9
    lbz 9, 0x4(4)
    lbzx 8, 3, 9
    addi 8, 8, 0x1
    stbx 8, 3, 9
    lbz 9, 0x5(4)
    lbzx 8, 3, 9
    addi 8, 8, 0x1
    stbx 8, 3, 9
    lbz 9, 0x6(4)
    lbzx 8, 3, 9
    addi 8, 8, 0x1
    stbx 8, 3, 9
    lbz 8, 0x7(4)
    lbzx 4, 3, 8
    addi 4, 4, 0x1
    stbx 4, 3, 8
    .4byte 0x4200FF74 # bdnz .L_803AD590
L_803AD620:
    addi 4, 1, 0x8
    .4byte 0x4800001C # b .L_803AD640
L_803AD628:
    addi 3, 7, 0x4b8
    addi 7, 7, 0x1
    lbzx 8, 31, 3
    lbzx 3, 4, 8
    addi 3, 3, 0x1
    stbx 3, 4, 8
L_803AD640:
    lwz 3, 0x454(31)
    cmpw 7, 3
    .4byte 0x4180FFE0 # blt .L_803AD628
L_803AD64C:
    lwz 11, 0x454(31)
    addi 12, 1, 0xc
    mr 10, 12
    addi 9, 1, 0x8
    li 8, -0x1f4
    li 7, -0x12c
    li 4, -0x64
    li 3, 0x0
    mtctr 11
    cmpwi 11, 0x0
    .4byte 0x40810048 # ble .L_803AD6BC
L_803AD678:
    lbz 11, 0x0(9)
    cmplwi 11, 0x3
    .4byte 0x4082000C # bne .L_803AD68C
    stw 8, 0x0(10)
    .4byte 0x48000028 # b .L_803AD6B0
L_803AD68C:
    cmplwi 11, 0x2
    .4byte 0x4082000C # bne .L_803AD69C
    stw 7, 0x0(10)
    .4byte 0x48000018 # b .L_803AD6B0
L_803AD69C:
    cmplwi 11, 0x1
    .4byte 0x4082000C # bne .L_803AD6AC
    stw 4, 0x0(10)
    .4byte 0x48000008 # b .L_803AD6B0
L_803AD6AC:
    stw 3, 0x0(10)
L_803AD6B0:
    addi 9, 9, 0x1
    addi 10, 10, 0x4
    .4byte 0x4200FFC0 # bdnz .L_803AD678
L_803AD6BC:
    mr 7, 12
    mr 8, 31
    li 9, 0x0
    .4byte 0x48000040 # b .L_803AD708
L_803AD6CC:
    lwz 4, 0x3a0(8)
    lwz 3, 0x0(7)
    cmpw 4, 3
    .4byte 0x4081000C # ble .L_803AD6E4
    subi 3, 4, 0x2
    stw 3, 0x3a0(8)
L_803AD6E4:
    lwz 3, 0x3a0(8)
    lwz 4, 0x0(7)
    cmpw 3, 4
    .4byte 0x4181000C # bgt .L_803AD6FC
    stw 4, 0x3a0(8)
    addi 5, 5, 0x1
L_803AD6FC:
    addi 7, 7, 0x4
    addi 8, 8, 0x4
    addi 9, 9, 0x1
L_803AD708:
    lwz 3, 0x454(31)
    cmpw 9, 3
    .4byte 0x4180FFBC # blt .L_803AD6CC
    cmpw 5, 3
    .4byte 0x41800138 # blt .L_803AD850
    li 5, 0x0
    .4byte 0x4800005C # b .L_803AD77C
L_803AD724:
    lwz 4, 0x0(12)
    cmpw 0, 4
    .4byte 0x40810020 # ble .L_803AD74C
    li 3, 0x0
    mr 0, 4
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 5, 31, 3
    .4byte 0x4800002C # b .L_803AD774
L_803AD74C:
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_803AD774
    cmpw 0, 4
    .4byte 0x4082001C # bne .L_803AD774
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x1
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 5, 31, 3
L_803AD774:
    addi 12, 12, 0x4
    addi 5, 5, 0x1
L_803AD77C:
    lwz 3, 0x454(31)
    cmpw 5, 3
    .4byte 0x4180FFA0 # blt .L_803AD724
    mr 7, 31
    li 8, 0x0
    li 5, 0x3e
    li 3, 0x1
    .4byte 0x48000050 # b .L_803AD7E8
L_803AD79C:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x4182003C # beq .L_803AD7E0
    addi 0, 6, 0x4ac
    lbzx 0, 31, 0
    cmpw 8, 0
    .4byte 0x4082002C # bne .L_803AD7E0
    stw 5, 0x3c0(7)
    slw 0, 3, 8
    clrlwi 0, 0, 24
    lbz 4, 0x4db(31)
    or 0, 4, 0
    stb 0, 0x4db(31)
    lbz 0, 0x4c8(31)
    cmpw 0, 6
    .4byte 0x40810008 # ble .L_803AD7E0
    addi 6, 6, 0x1
L_803AD7E0:
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AD7E8:
    lwz 0, 0x454(31)
    cmpw 8, 0
    .4byte 0x4180FFAC # blt .L_803AD79C
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AD824
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xf
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_803AD834
L_803AD824:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2d
    li 5, -0x1
    bl fn_80458880
L_803AD834:
    li 0, 0x0
    li 3, 0x96
    stw 0, 0x438(31)
    li 0, 0x18
    stw 3, 0x440(31)
    stb 0, 0x4c1(31)
    .4byte 0x48000034 # b .L_803AD880
L_803AD850:
    lwz 0, 0x438(31)
    cmpw 5, 0
    .4byte 0x41820018 # beq .L_803AD870
    stw 5, 0x438(31)
    li 4, 0x10
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AD870:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xe
    li 5, -0x1
    bl fn_80458880
L_803AD880:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

