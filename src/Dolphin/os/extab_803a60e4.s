# 901KB-gap non-actor manager block: 5 functions, 5,668 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000F324
etb_8000F324:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F324, 8

.global etb_8000F32C
etb_8000F32C:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_8000F32C, 8

.global etb_8000F334
etb_8000F334:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F334, 8

.global etb_8000F33C
etb_8000F33C:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000F33C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F018
eti_8001F018:
    .4byte fn_803A60E4
    .4byte 0x00000508
    .4byte etb_8000F324
.size eti_8001F018, 12

.global eti_8001F024
eti_8001F024:
    .4byte fn_803A6608
    .4byte 0x00000BE8
    .4byte etb_8000F32C
.size eti_8001F024, 12

.global eti_8001F030
eti_8001F030:
    .4byte fn_803A71F0
    .4byte 0x00000090
    .4byte etb_8000F334
.size eti_8001F030, 12

.global eti_8001F03C
eti_8001F03C:
    .4byte fn_803A7280
    .4byte 0x00000488
    .4byte etb_8000F33C
.size eti_8001F03C, 12

.text
.balign 4
.global fn_803A60E4
.global fn_803A65EC
.global fn_803A6608
.global fn_803A71F0
.global fn_803A7280

fn_803A60E4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 31, 3
    lha 3, 0x6e(3)
    extsh. 0, 3
    .4byte 0x40820204 # bne .L_803A6310
    lha 3, 0x6c(31)
    subi 3, 3, 0x1
    extsh. 0, 3
    sth 3, 0x6c(31)
    .4byte 0x418104AC # bgt .L_803A65CC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC00203B4 # lfs f0, lbl_80543354@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC04203B0 # lfs f2, lbl_80543350@sda21(r0)
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
    lwz 3, 0x14(1)
    addi 0, 3, 0xa
    sth 0, 0x6c(31)
    lha 0, 0x74(31)
    cmpwi 0, -0x6
    .4byte 0x40820010 # bne .L_803A6194
    li 0, 0x6
    sth 0, 0x74(31)
    .4byte 0x4800000C # b .L_803A619C
L_803A6194:
    li 0, -0x6
    sth 0, 0x74(31)
L_803A619C:
    lwz 3, 0x4(31)
    lis 4, 0x6172
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6172
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x4(31)
    li 5, 0x50
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, 0x6172
    li 5, 0x50
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 6, 0x70(31)
    lis 0, 0x4330
    lha 5, 0x74(31)
    li 4, 0x7a
    .4byte 0xC08203B8 # lfs f4, lbl_80543358@sda21(r0)
    add 5, 6, 5
    lfs 1, 0x28(30)
    xoris 5, 5, 0x8000
    lfs 0, 0x20(30)
    stw 5, 0x14(1)
    fmuls 2, 4, 31
    fsubs 1, 1, 0
    .4byte 0xC86203C8 # lfd f3, lbl_80543368@sda21(r0)
    stw 0, 0x10(1)
    lfd 0, 0x10(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x4(31)
    lis 4, 0x6172
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6172
    lfs 0, 0x24(3)
    addi 6, 4, 0x3032
    lwz 3, 0x4(31)
    li 5, 0x50
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, 0x6172
    li 5, 0x50
    lwz 12, 0x0(3)
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 6, 0x72(31)
    lis 0, 0x4330
    lha 5, 0x74(31)
    li 4, 0x7a
    .4byte 0xC08203B8 # lfs f4, lbl_80543358@sda21(r0)
    add 5, 6, 5
    lfs 1, 0x28(30)
    xoris 5, 5, 0x8000
    lfs 0, 0x20(30)
    stw 5, 0x1c(1)
    fmuls 2, 4, 31
    fsubs 1, 1, 0
    .4byte 0xC86203C8 # lfd f3, lbl_80543368@sda21(r0)
    stw 0, 0x18(1)
    lfd 0, 0x18(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
    .4byte 0x480002C0 # b .L_803A65CC
L_803A6310:
    cmpwi 3, 0x1
    .4byte 0x4182000C # beq .L_803A6320
    cmpwi 3, -0x1
    .4byte 0x4082017C # bne .L_803A6498
L_803A6320:
    li 0, 0x0
    lis 3, 0x6172
    sth 0, 0x74(31)
    addi 6, 3, 0x3031
    li 5, 0x50
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6172
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x4(31)
    li 5, 0x50
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, 0x6172
    li 5, 0x50
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 6, 0x70(31)
    lis 0, 0x4330
    lha 5, 0x74(31)
    li 4, 0x7a
    .4byte 0xC08203B8 # lfs f4, lbl_80543358@sda21(r0)
    add 5, 6, 5
    lfs 1, 0x28(30)
    xoris 5, 5, 0x8000
    lfs 0, 0x20(30)
    stw 5, 0x1c(1)
    fmuls 2, 4, 31
    fsubs 1, 1, 0
    .4byte 0xC86203C8 # lfd f3, lbl_80543368@sda21(r0)
    stw 0, 0x18(1)
    lfd 0, 0x18(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x4(31)
    lis 4, 0x6172
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6172
    lfs 0, 0x24(3)
    addi 6, 4, 0x3032
    lwz 3, 0x4(31)
    li 5, 0x50
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, 0x6172
    li 5, 0x50
    lwz 12, 0x0(3)
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 6, 0x72(31)
    lis 0, 0x4330
    lha 5, 0x74(31)
    li 4, 0x7a
    .4byte 0xC08203B8 # lfs f4, lbl_80543358@sda21(r0)
    add 5, 6, 5
    lfs 1, 0x28(30)
    xoris 5, 5, 0x8000
    lfs 0, 0x20(30)
    stw 5, 0x14(1)
    fmuls 2, 4, 31
    fsubs 1, 1, 0
    .4byte 0xC86203C8 # lfd f3, lbl_80543368@sda21(r0)
    stw 0, 0x10(1)
    lfd 0, 0x10(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
L_803A6498:
    lha 3, 0x6e(31)
    extsh. 0, 3
    .4byte 0x40800098 # bge .L_803A6538
    cmpwi 3, -0x5
    .4byte 0x4081000C # ble .L_803A64B4
    neg 3, 3
    .4byte 0x48000018 # b .L_803A64C8
L_803A64B4:
    cmpwi 3, -0xa
    addi 3, 3, 0xa
    .4byte 0x4082000C # bne .L_803A64C8
    li 0, 0x0
    sth 0, 0x6e(31)
L_803A64C8:
    mullw 4, 3, 3
    lis 3, 0x4330
    lwz 0, 0x64(31)
    stw 3, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC88203C8 # lfd f4, lbl_80543368@sda21(r0)
    xoris 4, 4, 0x8000
    .4byte 0xC06203BC # lfs f3, lbl_8054335C@sda21(r0)
    stw 4, 0x1c(1)
    .4byte 0xC02203C0 # lfs f1, lbl_80543360@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 0, 0, 4
    lfs 2, 0x60(31)
    stw 3, 0x10(1)
    lwz 3, 0x24(31)
    fmuls 3, 3, 0
    lfd 0, 0x10(1)
    fsubs 0, 0, 4
    fdivs 1, 3, 1
    fmuls 2, 2, 0
    bl fn_80402E08
    lha 3, 0x6e(31)
    cmpwi 3, 0x0
    .4byte 0x418200A4 # beq .L_803A65CC
    subi 0, 3, 0x1
    sth 0, 0x6e(31)
    .4byte 0x48000098 # b .L_803A65CC
L_803A6538:
    extsh. 0, 3
    .4byte 0x40810090 # ble .L_803A65CC
    cmpwi 3, 0x5
    .4byte 0x40800008 # bge .L_803A654C
    .4byte 0x48000018 # b .L_803A6560
L_803A654C:
    cmpwi 3, 0xa
    subfic 3, 3, 0xa
    .4byte 0x4082000C # bne .L_803A6560
    li 0, 0x0
    sth 0, 0x6e(31)
L_803A6560:
    mullw 4, 3, 3
    lis 3, 0x4330
    lwz 0, 0x64(31)
    stw 3, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC88203C8 # lfd f4, lbl_80543368@sda21(r0)
    xoris 4, 4, 0x8000
    .4byte 0xC06203C4 # lfs f3, lbl_80543364@sda21(r0)
    stw 4, 0x1c(1)
    .4byte 0xC02203C0 # lfs f1, lbl_80543360@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 0, 0, 4
    lfs 2, 0x60(31)
    stw 3, 0x10(1)
    lwz 3, 0x28(31)
    fmuls 3, 3, 0
    lfd 0, 0x10(1)
    fsubs 0, 0, 4
    fdivs 1, 3, 1
    fmuls 2, 2, 0
    bl fn_80402E08
    lha 3, 0x6e(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_803A65CC
    addi 0, 3, 0x1
    sth 0, 0x6e(31)
L_803A65CC:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803A65EC:
    .4byte 0x806D91D0 # lwz r3, lbl_8053AD90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_803A6600
    lwz 3, 0x80(3)
    blr
L_803A6600:
    li 3, 0x5
    blr

fn_803A6608:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 26, 0x18(1)
    mr 31, 3
    li 0, 0x5
    stw 0, 0x80(3)
    lbz 0, 0x76(3)
    cmplwi 0, 0x0
    .4byte 0x40820130 # bne .L_803A6764
    lha 3, 0x68(31)
    li 28, 0x0
    li 30, 0x0
    li 27, 0x0
    addi 0, 3, 0x1
    sth 0, 0x68(31)
    lha 0, 0x68(31)
    cmpwi 0, 0x0
    .4byte 0x40810098 # ble .L_803A66F0
    lwz 3, 0x8(31)
    li 4, 0x16
    .4byte 0xC02203D4 # lfs f1, lbl_80543374@sda21(r0)
    li 5, 0x0
    .4byte 0xC04203D0 # lfs f2, lbl_80543370@sda21(r0)
    bl fn_80402940
    mr 29, 31
    mr 28, 3
    li 26, 0x0
L_803A6680:
    lwz 3, 0xc(29)
    li 4, 0x16
    .4byte 0xC02203D4 # lfs f1, lbl_80543374@sda21(r0)
    li 5, 0x0
    .4byte 0xC04203D0 # lfs f2, lbl_80543370@sda21(r0)
    bl fn_80402940
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x6
    .4byte 0x4180FFDC # blt .L_803A6680
    li 26, 0x0
    mr 29, 31
L_803A66B0:
    lwz 3, 0x24(29)
    li 4, 0x16
    .4byte 0xC02203D4 # lfs f1, lbl_80543374@sda21(r0)
    li 5, 0x0
    .4byte 0xC04203D0 # lfs f2, lbl_80543370@sda21(r0)
    bl fn_80402940
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x2
    .4byte 0x4180FFDC # blt .L_803A66B0
    lwz 3, 0x2c(31)
    li 4, 0x16
    .4byte 0xC02203D4 # lfs f1, lbl_80543374@sda21(r0)
    li 5, 0x0
    .4byte 0xC04203D0 # lfs f2, lbl_80543370@sda21(r0)
    bl fn_80402940
L_803A66F0:
    lha 0, 0x68(31)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_803A6718
    lwz 3, 0x30(31)
    li 4, 0x1a
    .4byte 0xC02203D4 # lfs f1, lbl_80543374@sda21(r0)
    li 5, 0x0
    .4byte 0xC04203D0 # lfs f2, lbl_80543370@sda21(r0)
    bl fn_80402940
    mr 30, 3
L_803A6718:
    lha 0, 0x68(31)
    cmpwi 0, 0xa
    .4byte 0x40810020 # ble .L_803A6740
    lwz 3, 0x34(31)
    li 4, 0x16
    .4byte 0xC02203D4 # lfs f1, lbl_80543374@sda21(r0)
    li 5, 0x0
    .4byte 0xC04203D0 # lfs f2, lbl_80543370@sda21(r0)
    bl fn_80402940
    mr 27, 3
L_803A6740:
    clrlwi. 0, 28, 24
    .4byte 0x41820A90 # beq .L_803A71D4
    clrlwi. 0, 30, 24
    .4byte 0x41820A88 # beq .L_803A71D4
    clrlwi. 0, 27, 24
    .4byte 0x41820A80 # beq .L_803A71D4
    li 0, 0x1
    stb 0, 0x76(31)
    .4byte 0x48000A74 # b .L_803A71D4
L_803A6764:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_803A67B0
    lis 3, lbl_80529DEC@ha
    lbz 4, 0x77(31)
    addi 6, 3, lbl_80529DEC@l
    li 0, 0x2
    stb 4, 0x245(6)
    li 4, 0xb
    li 5, -0x1
    lbz 3, 0x78(31)
    stb 3, 0x246(6)
    stw 0, 0x80(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000634 # b .L_803A6DE0
L_803A67B0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_803A6824
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x245(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_803A67F4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_804594E4
    li 3, 0x1
    bl OSSetSoundMode
    .4byte 0x48000018 # b .L_803A6808
L_803A67F4:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_804594E4
    li 3, 0x0
    bl OSSetSoundMode
L_803A6808:
    li 0, 0x2
    li 4, 0xc
    stw 0, 0x80(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480005C0 # b .L_803A6DE0
L_803A6824:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418200D4 # beq .L_803A690C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lwz 3, 0x64(31)
    addi 0, 3, 0x1
    stw 0, 0x64(31)
    lwz 0, 0x64(31)
    cmpwi 0, 0x1
    .4byte 0x4081000C # ble .L_803A686C
    li 0, 0x0
    stw 0, 0x64(31)
L_803A686C:
    .4byte 0xCBE203C8 # lfd f31, lbl_80543368@sda21(r0)
    mr 28, 31
    li 29, 0x0
    lis 30, 0x4330
L_803A687C:
    lwz 0, 0x64(31)
    stw 30, 0x10(1)
    xoris 0, 0, 0x8000
    lfs 2, 0x60(31)
    stw 0, 0x14(1)
    lwz 3, 0xc(28)
    lfd 0, 0x10(1)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    fsubs 0, 0, 31
    fmuls 2, 2, 0
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x6
    .4byte 0x4180FFC8 # blt .L_803A687C
    li 29, 0x0
    .4byte 0xCBE203C8 # lfd f31, lbl_80543368@sda21(r0)
    sth 29, 0x6e(31)
    mr 28, 31
    lis 30, 0x4330
L_803A68CC:
    lwz 0, 0x64(31)
    stw 30, 0x10(1)
    xoris 0, 0, 0x8000
    lfs 2, 0x60(31)
    stw 0, 0x14(1)
    lwz 3, 0x24(28)
    lfd 0, 0x10(1)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    fsubs 0, 0, 31
    fmuls 2, 2, 0
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFC8 # blt .L_803A68CC
    .4byte 0x480004D8 # b .L_803A6DE0
L_803A690C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418200D4 # beq .L_803A69F4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lwz 3, 0x64(31)
    subi 0, 3, 0x1
    stw 0, 0x64(31)
    lwz 0, 0x64(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803A6954
    li 0, 0x1
    stw 0, 0x64(31)
L_803A6954:
    .4byte 0xCBE203C8 # lfd f31, lbl_80543368@sda21(r0)
    mr 28, 31
    li 29, 0x0
    lis 30, 0x4330
L_803A6964:
    lwz 0, 0x64(31)
    stw 30, 0x10(1)
    xoris 0, 0, 0x8000
    lfs 2, 0x60(31)
    stw 0, 0x14(1)
    lwz 3, 0xc(28)
    lfd 0, 0x10(1)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    fsubs 0, 0, 31
    fmuls 2, 2, 0
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x6
    .4byte 0x4180FFC8 # blt .L_803A6964
    li 29, 0x0
    .4byte 0xCBE203C8 # lfd f31, lbl_80543368@sda21(r0)
    sth 29, 0x6e(31)
    mr 28, 31
    lis 30, 0x4330
L_803A69B4:
    lwz 0, 0x64(31)
    stw 30, 0x10(1)
    xoris 0, 0, 0x8000
    lfs 2, 0x60(31)
    stw 0, 0x14(1)
    lwz 3, 0x24(28)
    lfd 0, 0x10(1)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    fsubs 0, 0, 31
    fmuls 2, 2, 0
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFC8 # blt .L_803A69B4
    .4byte 0x480003F0 # b .L_803A6DE0
L_803A69F4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418201E8 # beq .L_803A6BF0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    li 0, -0x1
    sth 0, 0x6e(31)
    lwz 0, 0x64(31)
    cmpwi 0, 0x0
    .4byte 0x408200E0 # bne .L_803A6B0C
    lbz 0, 0x77(31)
    cmplwi 0, 0x1
    .4byte 0x4082006C # bne .L_803A6AA4
    li 0, 0x0
    lis 3, 0x736f
    stb 0, 0x77(31)
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x99
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_804594E4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x43
    li 5, -0x1
    bl fn_80458880
    li 3, 0x0
    bl OSSetSoundMode
    .4byte 0x48000340 # b .L_803A6DE0
L_803A6AA4:
    li 0, 0x1
    lis 3, 0x736f
    stb 0, 0x77(31)
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x98
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_804594E4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x43
    li 5, -0x1
    bl fn_80458880
    li 3, 0x1
    bl OSSetSoundMode
    .4byte 0x480002D8 # b .L_803A6DE0
L_803A6B0C:
    lbz 0, 0x78(31)
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_803A6B84
    li 0, 0x0
    lis 3, 0x7369
    stb 0, 0x78(31)
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x39
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x41820270 # beq .L_803A6DE0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134CC0
    .4byte 0x48000260 # b .L_803A6DE0
L_803A6B84:
    li 0, 0x1
    lis 3, 0x7369
    stb 0, 0x78(31)
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x38
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x41820204 # beq .L_803A6DE0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1e
    bl fn_80134CC0
    .4byte 0x480001F4 # b .L_803A6DE0
L_803A6BF0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418201DC # beq .L_803A6DE0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    li 3, 0x1
    sth 3, 0x6e(31)
    lwz 0, 0x64(31)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_803A6D04
    lbz 0, 0x77(31)
    cmplwi 0, 0x1
    .4byte 0x4082006C # bne .L_803A6CA0
    li 0, 0x0
    lis 3, 0x736f
    stb 0, 0x77(31)
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x99
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_804594E4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x43
    li 5, -0x1
    bl fn_80458880
    li 3, 0x0
    bl OSSetSoundMode
    .4byte 0x48000144 # b .L_803A6DE0
L_803A6CA0:
    stb 3, 0x77(31)
    lis 3, 0x736f
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x98
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_804594E4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x43
    li 5, -0x1
    bl fn_80458880
    li 3, 0x1
    bl OSSetSoundMode
    .4byte 0x480000E0 # b .L_803A6DE0
L_803A6D04:
    lbz 0, 0x78(31)
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_803A6D7C
    li 0, 0x0
    lis 3, 0x7369
    stb 0, 0x78(31)
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x39
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_803A6DE0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134CC0
    .4byte 0x48000068 # b .L_803A6DE0
L_803A6D7C:
    stb 3, 0x78(31)
    lis 3, 0x7369
    addi 6, 3, 0x3032
    li 5, 0x54
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x38
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_803A6DE0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1e
    bl fn_80134CC0
L_803A6DE0:
    lha 3, 0x6a(31)
    subi 3, 3, 0x1
    extsh. 0, 3
    sth 3, 0x6a(31)
    .4byte 0x418103DC # bgt .L_803A71CC
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 5, 0x19
    lis 4, 0x7572
    lis 3, 0x50
    lwz 7, 0xb4(8)
    addi 0, 5, 0x660d
    addi 6, 4, 0x3031
    addi 5, 3, 0x6f63
    mullw 4, 7, 0
    .4byte 0xC00203B4 # lfs f0, lbl_80543354@sda21(r0)
    .4byte 0xC04203B0 # lfs f2, lbl_80543350@sda21(r0)
    addis 3, 4, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    addi 0, 3, 0xa
    sth 0, 0x6a(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820110 # beq .L_803A6F88
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3035
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3036
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000248 # b .L_803A71CC
L_803A6F88:
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820110 # beq .L_803A70C4
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3035
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3036
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800010C # b .L_803A71CC
L_803A70C4:
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3035
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3036
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803A71CC:
    mr 3, 31
    bl fn_803A60E4
L_803A71D4:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 26, 0x18(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803A71F0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x0
    stb 0, 0x8(1)
    stb 0, 0x9(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stb 0, 0xa(1)
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    lbz 3, 0xc(1)
    lbz 0, 0xd(1)
    stb 3, 0x8(4)
    lbz 3, 0xe(1)
    stb 0, 0x9(4)
    lbz 0, 0xf(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803A7280:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 31, 3
    li 0, 0x0
    stw 0, 0x64(3)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    sth 0, 0x68(3)
    .4byte 0xC04203D4 # lfs f2, lbl_80543374@sda21(r0)
    stb 0, 0x76(3)
    lwz 3, 0x8(3)
    bl fn_80402E08
    lwz 3, 0x8(31)
    li 30, 0x0
    mr 29, 31
    li 28, 0x0
    sth 30, 0x22(3)
L_803A72DC:
    lwz 3, 0xc(29)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    .4byte 0xC04203D4 # lfs f2, lbl_80543374@sda21(r0)
    bl fn_80402E08
    lwz 3, 0xc(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 29, 29, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFDC # blt .L_803A72DC
    mr 29, 31
    li 28, 0x0
    li 30, 0x0
L_803A7310:
    lwz 3, 0x24(29)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    .4byte 0xC04203D4 # lfs f2, lbl_80543374@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x24(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x2
    addi 29, 29, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFDC # blt .L_803A7310
    lwz 3, 0x2c(31)
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    .4byte 0xC04203D4 # lfs f2, lbl_80543374@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x2c(31)
    li 0, 0x0
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC04203D4 # lfs f2, lbl_80543374@sda21(r0)
    lwz 3, 0x30(31)
    bl fn_80402E08
    lwz 3, 0x30(31)
    li 0, 0x0
    .4byte 0xC02203D0 # lfs f1, lbl_80543370@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC04203D4 # lfs f2, lbl_80543374@sda21(r0)
    lwz 3, 0x34(31)
    bl fn_80402E08
    lwz 4, 0x34(31)
    li 0, 0x0
    lis 3, lbl_80529DEC@ha
    sth 0, 0x22(4)
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x245(3)
    stb 0, 0x77(31)
    lbz 0, 0x246(3)
    stb 0, 0x78(31)
    lbz 0, 0x77(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803A73EC
    lwz 3, 0x4(31)
    lis 4, 0x736f
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x98
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800003C # b .L_803A7424
L_803A73EC:
    lwz 3, 0x4(31)
    lis 4, 0x736f
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x99
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
L_803A7424:
    lbz 0, 0x78(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803A746C
    lwz 3, 0x4(31)
    lis 4, 0x7369
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x38
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800003C # b .L_803A74A4
L_803A746C:
    lwz 3, 0x4(31)
    lis 4, 0x7369
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x39
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
L_803A74A4:
    lwz 3, 0x4(31)
    lis 4, 0x6172
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6172
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x4(31)
    li 5, 0x50
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, 0x6172
    li 5, 0x50
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 6, 0x70(31)
    lis 0, 0x4330
    lha 5, 0x74(31)
    li 4, 0x7a
    .4byte 0xC08203B8 # lfs f4, lbl_80543358@sda21(r0)
    add 5, 6, 5
    lfs 1, 0x28(30)
    xoris 5, 5, 0x8000
    lfs 0, 0x20(30)
    stw 5, 0x14(1)
    fmuls 2, 4, 31
    fsubs 1, 1, 0
    .4byte 0xC86203C8 # lfd f3, lbl_80543368@sda21(r0)
    stw 0, 0x10(1)
    lfd 0, 0x10(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x4(31)
    lis 4, 0x6172
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6172
    lfs 0, 0x24(3)
    addi 6, 4, 0x3032
    lwz 3, 0x4(31)
    li 5, 0x50
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, 0x6172
    li 5, 0x50
    lwz 12, 0x0(3)
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 6, 0x72(31)
    lis 0, 0x4330
    lha 5, 0x74(31)
    li 4, 0x7a
    .4byte 0xC08203B8 # lfs f4, lbl_80543358@sda21(r0)
    add 5, 6, 5
    lfs 1, 0x28(30)
    xoris 5, 5, 0x8000
    lfs 0, 0x20(30)
    stw 5, 0x1c(1)
    fmuls 2, 4, 31
    fsubs 1, 1, 0
    .4byte 0xC86203C8 # lfd f3, lbl_80543368@sda21(r0)
    stw 0, 0x18(1)
    lfd 0, 0x18(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 8, 3, 0x660d
    .4byte 0xC02203B4 # lfs f1, lbl_80543354@sda21(r0)
    lwz 0, 0xb4(9)
    li 6, 0x0
    .4byte 0xC04203B0 # lfs f2, lbl_80543350@sda21(r0)
    li 5, 0xa
    mullw 7, 0, 8
    li 4, 0xff
    li 3, 0xc0
    li 0, 0x5
    addis 7, 7, 0x3c6f
    subi 7, 7, 0xca1
    stw 7, 0xb4(9)
    lwz 7, 0xb4(9)
    srwi 7, 7, 9
    oris 7, 7, 0x3f80
    stw 7, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 7, 0x24(1)
    addi 7, 7, 0xa
    sth 7, 0x6a(31)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 7, 0xb4(9)
    mullw 7, 7, 8
    addis 7, 7, 0x3c6f
    subi 7, 7, 0xca1
    stw 7, 0xb4(9)
    lwz 7, 0xb4(9)
    srwi 7, 7, 9
    oris 7, 7, 0x3f80
    stw 7, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 7, 0x2c(1)
    addi 7, 7, 0xa
    sth 7, 0x6c(31)
    sth 6, 0x6e(31)
    stb 6, 0x79(31)
    stb 5, 0x7a(31)
    stb 4, 0x7b(31)
    stb 3, 0x7c(31)
    stw 0, 0x80(31)
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

