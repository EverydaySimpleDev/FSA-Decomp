# fn_803D6494 - BFIN: helper (0x184)
.section extab, "a"
.balign 4
.global etb_8000FA74
etb_8000FA74:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FA74, 8

.section extabindex, "a"
.balign 4
.global eti_8001F900
eti_8001F900:
    .4byte fn_803D6494
    .4byte 0x00000184
    .4byte etb_8000FA74
.size eti_8001F900, 12

.text
.balign 4
.global fn_803D6494

fn_803D6494:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 5, 0x234(3)
    cmpwi 5, -0x1
    .4byte 0x41820030 # beq .L_803D64E0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_803D650C
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x7f4(4)
    stw 5, 0x7f8(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000030 # b .L_803D650C
L_803D64E0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_803D650C
    li 0, 0x1
    li 3, -0x1
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    stb 0, 0x7f6(4)
L_803D650C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418200E4 # beq .L_803D6604
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xa
    bl fn_801367E0
    lwz 0, 0x234(31)
    cmpwi 0, -0x1
    .4byte 0x41820040 # beq .L_803D6578
    lis 3, lbl_80529DEC@ha
    slwi 0, 0, 2
    addi 6, 3, lbl_80529DEC@l
    add 5, 6, 0
    li 3, 0x0
    lwz 4, 0x140(5)
    li 0, 0x1
    addi 4, 4, 0x1
    stw 4, 0x140(5)
    stb 3, 0x243(6)
    lwz 3, 0x234(31)
    slw 0, 0, 3
    stw 3, 0x64(6)
    stb 0, 0x243(6)
    .4byte 0x4800006C # b .L_803D65E0
L_803D6578:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020584 # lfs f0, lbl_80543524@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0420580 # lfs f2, lbl_80543520@sda21(r0)
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
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    cmpwi 0, 0x3
    .4byte 0x41800008 # blt .L_803D65D4
    li 0, 0x2
L_803D65D4:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x64(3)
L_803D65E0:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 0, 0x0
    li 4, 0xb
    li 5, -0x1
    stb 0, 0xe4(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 0, 0x0
    stb 0, 0x11c(31)
L_803D6604:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

