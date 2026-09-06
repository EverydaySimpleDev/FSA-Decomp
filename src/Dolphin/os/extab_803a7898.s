# fn_803A7898 - actor@lbl_804AF860: constructor (0xAE0) + fn_803A8378 helper (0x48), bundled
# Installs vtable lbl_804AF860, allocates ~12 sub-objects (operator new via
# fn_80084370 x12), calls fn_80402F04 (x11, likely a shared-engine helper -
# address falls inside one of the still-unexamined big non-actor stretches)
# and fn_803832BC (x6, from the ~41KB stretch reused by several earlier
# actors in this gap). Also touches lbl_80529DEC and lbl_804761A0. Track A:
# byte-match verified, structural overview per the large/complex-function
# exception.
.section extab, "a"
.balign 4
.global etb_8000F34C
etb_8000F34C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F34C, 8

.global etb_8000F354
etb_8000F354:
    .4byte 0x184A0000
    .4byte 0x0000005C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_8000F354, 24

.section extabindex, "a"
.balign 4
.global eti_8001F054
eti_8001F054:
    .4byte fn_803A7898
    .4byte 0x00000AE0
    .4byte etb_8000F354
.size eti_8001F054, 12

.global eti_8001F060
eti_8001F060:
    .4byte fn_803A8378
    .4byte 0x00000048
    .4byte etb_8000F34C
.size eti_8001F060, 12

.text
.balign 4
.global fn_803A7898
.global fn_803A8378

fn_803A7898:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lis 5, lbl_804AF860@ha
    lis 4, lbl_80529DEC@ha
    mr 31, 3
    lis 6, lbl_80476168@ha
    addi 0, 5, lbl_804AF860@l
    addi 3, 4, lbl_80529DEC@l
    stw 0, 0x0(31)
    addi 30, 6, lbl_80476168@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803A78F4
    bl fn_8009C4EC
L_803A78F4:
    stw 29, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 6, 3, lbl_80529DEC@l
    addi 4, 30, 0x0
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x2c(6)
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7930
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7930:
    stw 3, 0x8(31)
    lis 5, 0x626b
    lis 4, 0x506f
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x7062
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7980
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7980:
    stw 3, 0xc(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A79D0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A79D0:
    stw 3, 0x10(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x10(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7A20
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7A20:
    stw 3, 0x14(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x14(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7A70
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7A70:
    stw 3, 0x18(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x18(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7AC0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7AC0:
    stw 3, 0x1c(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x1c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7B10
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7B10:
    stw 3, 0x20(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x20(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7B60
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7B60:
    stw 3, 0x24(31)
    lis 3, 0x6172
    addi 6, 3, 0x3031
    li 5, 0x50
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x24(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7BAC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7BAC:
    stw 3, 0x28(31)
    lis 3, 0x6172
    addi 6, 3, 0x3032
    li 5, 0x50
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7BF8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7BF8:
    stw 3, 0x2c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x2c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A7C48
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803A7C48:
    stw 3, 0x30(31)
    lis 5, 0x6262
    lis 4, 0x5074
    lwz 3, 0x4(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6f70
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x30(31)
    bl fn_80402F04
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0xc
    lwz 0, 0x8(5)
    stw 0, 0x34(31)
    bl fn_804030C4
    mr 0, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    mr 4, 0
    bl fn_80440D78
    lis 3, 0x5449
    addi 4, 30, 0x20
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    lwz 3, 0x4(31)
    lis 4, 0x7369
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x7369
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x736f
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x736f
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x736f
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x97
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x7369
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x37
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
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
    lis 4, 0x6172
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009611C
    fctiwz 0, 1
    lis 3, 0x6172
    addi 6, 3, 0x3032
    li 5, 0x50
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x70(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009611C
    fctiwz 0, 1
    lis 3, 0x736f
    addi 6, 3, 0x3031
    li 5, 0x54
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    sth 0, 0x72(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x7369
    lwz 3, 0x4(31)
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, lbl_80529DEC@ha
    li 4, 0x0
    li 0, -0x6
    fsubs 0, 0, 31
    addi 3, 3, lbl_80529DEC@l
    stfs 0, 0x60(31)
    stw 4, 0x64(31)
    sth 4, 0x68(31)
    sth 0, 0x74(31)
    lbz 0, 0x245(3)
    stb 0, 0x77(31)
    lbz 0, 0x246(3)
    stb 0, 0x78(31)
    lbz 0, 0x77(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803A8060
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
    .4byte 0x4800003C # b .L_803A8098
L_803A8060:
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
L_803A8098:
    lbz 0, 0x78(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803A80E0
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
    .4byte 0x4800003C # b .L_803A8118
L_803A80E0:
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
L_803A8118:
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
    li 0, 0xc0
    mr 3, 31
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
    stb 0, 0x7c(31)
    .4byte 0x93ED91D0 # stw r31, lbl_8053AD90@sda21(r0)
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803A8378:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_803A83A8
    lis 5, lbl_804AF86C@ha
    extsh. 0, 4
    addi 0, 5, lbl_804AF86C@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_803A83A8
    bl dtor_80084580
L_803A83A8:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

