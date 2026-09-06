# fn_803ACDA4 - helper (0x47c)
.section extab, "a"
.balign 4
.global etb_8000F424
etb_8000F424:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F424, 8

.section extabindex, "a"
.balign 4
.global eti_8001F150
eti_8001F150:
    .4byte fn_803ACDA4
    .4byte 0x0000047C
    .4byte etb_8000F424
.size eti_8001F150, 12

.text
.balign 4
.global fn_803ACDA4

fn_803ACDA4:
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
    .4byte 0x40810080 # ble .L_803ACE50
    cmpwi 3, 0x8
    subi 7, 3, 0x8
    .4byte 0x4081004C # ble .L_803ACE28
    addi 3, 7, 0x7
    addi 8, 1, 0xc
    srwi 3, 3, 3
    li 4, 0x0
    mtctr 3
    cmpwi 7, 0x0
    .4byte 0x40810030 # ble .L_803ACE28
L_803ACDFC:
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
    .4byte 0x4200FFD8 # bdnz .L_803ACDFC
L_803ACE28:
    addi 7, 1, 0xc
    li 4, 0x0
    add 7, 7, 9
    .4byte 0x48000010 # b .L_803ACE44
L_803ACE38:
    stb 4, 0x0(7)
    addi 7, 7, 0x1
    addi 9, 9, 0x1
L_803ACE44:
    lwz 3, 0x454(31)
    cmpw 9, 3
    .4byte 0x4180FFEC # blt .L_803ACE38
L_803ACE50:
    lwz 3, 0x454(31)
    li 7, 0x0
    cmpwi 3, 0x0
    .4byte 0x408100E4 # ble .L_803ACF40
    cmpwi 3, 0x8
    subi 8, 3, 0x8
    .4byte 0x408100AC # ble .L_803ACF14
    addi 4, 8, 0x7
    addi 3, 1, 0xc
    srwi 4, 4, 3
    mtctr 4
    cmpwi 8, 0x0
    .4byte 0x40810094 # ble .L_803ACF14
L_803ACE84:
    addi 4, 7, 0x4bc
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
    .4byte 0x4200FF74 # bdnz .L_803ACE84
L_803ACF14:
    addi 4, 1, 0xc
    .4byte 0x4800001C # b .L_803ACF34
L_803ACF1C:
    addi 3, 7, 0x4bc
    addi 7, 7, 0x1
    lbzx 8, 31, 3
    lbzx 3, 4, 8
    addi 3, 3, 0x1
    stbx 3, 4, 8
L_803ACF34:
    lwz 3, 0x454(31)
    cmpw 7, 3
    .4byte 0x4180FFE0 # blt .L_803ACF1C
L_803ACF40:
    lwz 11, 0x454(31)
    addi 12, 1, 0x10
    mr 10, 12
    addi 9, 1, 0xc
    li 8, 0x1f4
    li 7, 0x12c
    li 4, 0x64
    li 3, 0x0
    mtctr 11
    cmpwi 11, 0x0
    .4byte 0x40810048 # ble .L_803ACFB0
L_803ACF6C:
    lbz 11, 0x0(9)
    cmplwi 11, 0x3
    .4byte 0x4082000C # bne .L_803ACF80
    stw 8, 0x0(10)
    .4byte 0x48000028 # b .L_803ACFA4
L_803ACF80:
    cmplwi 11, 0x2
    .4byte 0x4082000C # bne .L_803ACF90
    stw 7, 0x0(10)
    .4byte 0x48000018 # b .L_803ACFA4
L_803ACF90:
    cmplwi 11, 0x1
    .4byte 0x4082000C # bne .L_803ACFA0
    stw 4, 0x0(10)
    .4byte 0x48000008 # b .L_803ACFA4
L_803ACFA0:
    stw 3, 0x0(10)
L_803ACFA4:
    addi 9, 9, 0x1
    addi 10, 10, 0x4
    .4byte 0x4200FFC0 # bdnz .L_803ACF6C
L_803ACFB0:
    mr 7, 12
    mr 8, 31
    li 9, 0x0
    .4byte 0x48000040 # b .L_803ACFFC
L_803ACFC0:
    lwz 4, 0x3b0(8)
    lwz 3, 0x0(7)
    cmpw 4, 3
    .4byte 0x4080000C # bge .L_803ACFD8
    addi 3, 4, 0x2
    stw 3, 0x3b0(8)
L_803ACFD8:
    lwz 3, 0x3b0(8)
    lwz 4, 0x0(7)
    cmpw 3, 4
    .4byte 0x4180000C # blt .L_803ACFF0
    stw 4, 0x3b0(8)
    addi 5, 5, 0x1
L_803ACFF0:
    addi 7, 7, 0x4
    addi 8, 8, 0x4
    addi 9, 9, 0x1
L_803ACFFC:
    lwz 3, 0x454(31)
    cmpw 9, 3
    .4byte 0x4180FFBC # blt .L_803ACFC0
    cmpw 5, 3
    .4byte 0x418001D0 # blt .L_803AD1DC
    li 5, 0x0
    .4byte 0x4800005C # b .L_803AD070
L_803AD018:
    lwz 4, 0x0(12)
    cmpw 0, 4
    .4byte 0x40800020 # bge .L_803AD040
    li 3, 0x0
    mr 0, 4
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 5, 31, 3
    .4byte 0x4800002C # b .L_803AD068
L_803AD040:
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_803AD068
    cmpw 0, 4
    .4byte 0x4082001C # bne .L_803AD068
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x1
    stb 3, 0x4c8(31)
    lbz 3, 0x4c8(31)
    addi 3, 3, 0x4ac
    stbx 5, 31, 3
L_803AD068:
    addi 12, 12, 0x4
    addi 5, 5, 0x1
L_803AD070:
    lwz 3, 0x454(31)
    cmpw 5, 3
    .4byte 0x4180FFA0 # blt .L_803AD018
    mr 7, 31
    li 8, 0x0
    li 5, 0x3e
    li 3, 0x1
    .4byte 0x48000054 # b .L_803AD0E0
L_803AD090:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820040 # beq .L_803AD0D8
    addi 0, 6, 0x4ac
    lbzx 0, 31, 0
    cmpw 8, 0
    .4byte 0x40820030 # bne .L_803AD0D8
    stw 5, 0x3c0(7)
    addi 0, 8, 0x4
    slw 0, 3, 0
    lbz 4, 0x4db(31)
    clrlwi 0, 0, 24
    or 0, 4, 0
    stb 0, 0x4db(31)
    lbz 0, 0x4c8(31)
    cmpw 0, 6
    .4byte 0x40810008 # ble .L_803AD0D8
    addi 6, 6, 0x1
L_803AD0D8:
    addi 7, 7, 0x4
    addi 8, 8, 0x1
L_803AD0E0:
    lwz 0, 0x454(31)
    cmpw 8, 0
    .4byte 0x4180FFA8 # blt .L_803AD090
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AD11C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xf
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_803AD12C
L_803AD11C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2d
    li 5, -0x1
    bl fn_80458880
L_803AD12C:
    lwz 0, 0x454(31)
    cmpwi 0, 0x3
    .4byte 0x4082008C # bne .L_803AD1C0
    lbz 0, 0x4c8(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_803AD158
    lis 3, lbl_80529DEC@ha
    lbz 0, 0x4ac(31)
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x64(3)
    .4byte 0x4800006C # b .L_803AD1C0
L_803AD158:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020434 # lfs f0, lbl_805433D4@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042047C # lfs f2, lbl_8054341C@sda21(r0)
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
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x3
    .4byte 0x41800008 # blt .L_803AD1B4
    li 0, 0x2
L_803AD1B4:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x64(3)
L_803AD1C0:
    li 0, 0x0
    li 3, 0x96
    stw 0, 0x438(31)
    li 0, 0x1b
    stw 3, 0x440(31)
    stb 0, 0x4c1(31)
    .4byte 0x48000034 # b .L_803AD20C
L_803AD1DC:
    lwz 0, 0x438(31)
    cmpw 5, 0
    .4byte 0x41820018 # beq .L_803AD1FC
    stw 5, 0x438(31)
    li 4, 0x10
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AD1FC:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xe
    li 5, -0x1
    bl fn_80458880
L_803AD20C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

