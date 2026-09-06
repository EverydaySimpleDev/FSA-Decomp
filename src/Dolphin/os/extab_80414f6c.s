# 901KB-gap non-actor manager block: 7 functions, 10,032 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010484
etb_80010484:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010484, 8

.global etb_8001048C
etb_8001048C:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8001048C, 8

.global etb_80010494
etb_80010494:
    .4byte 0x78CA0000
    .4byte 0x00000000
.size etb_80010494, 8

.global etb_8001049C
etb_8001049C:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8001049C, 8

.global etb_800104A4
etb_800104A4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800104A4, 8

.global etb_800104AC
etb_800104AC:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_800104AC, 8

.section extabindex, "a"
.balign 4
.global eti_8002029C
eti_8002029C:
    .4byte fn_80414F78
    .4byte 0x000000B0
    .4byte etb_80010484
.size eti_8002029C, 12

.global eti_800202A8
eti_800202A8:
    .4byte fn_80415028
    .4byte 0x00001010
    .4byte etb_8001048C
.size eti_800202A8, 12

.global eti_800202B4
eti_800202B4:
    .4byte fn_80416038
    .4byte 0x00000B98
    .4byte etb_80010494
.size eti_800202B4, 12

.global eti_800202C0
eti_800202C0:
    .4byte fn_80416BD0
    .4byte 0x000004E0
    .4byte etb_8001049C
.size eti_800202C0, 12

.global eti_800202CC
eti_800202CC:
    .4byte fn_804170B0
    .4byte 0x0000003C
    .4byte etb_800104A4
.size eti_800202CC, 12

.global eti_800202D8
eti_800202D8:
    .4byte fn_804170EC
    .4byte 0x000005B0
    .4byte etb_800104AC
.size eti_800202D8, 12

.text
.balign 4
.global fn_80414F6C
.global fn_80414F78
.global fn_80415028
.global fn_80416038
.global fn_80416BD0
.global fn_804170B0
.global fn_804170EC

fn_80414F6C:
    .4byte 0x806D9240 # lwz r3, lbl_8053AE00@sda21(r0)
    lwz 3, 0xe0(3)
    blr

fn_80414F78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x10a(3)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_80414FD0
    .4byte 0x40800010 # bge .L_80414FA8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80414FB4
    .4byte 0x48000070 # b .L_80415014
L_80414FA8:
    cmpwi 0, 0x3
    .4byte 0x40800068 # bge .L_80415014
    .4byte 0x48000044 # b .L_80414FF4
L_80414FB4:
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    bl fn_8042EC7C
    cmpwi 3, 0x0
    .4byte 0x41820054 # beq .L_80415014
    li 0, 0x1
    stb 0, 0x10a(31)
    .4byte 0x48000048 # b .L_80415014
L_80414FD0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1300
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80415014
    li 0, 0x2
    stb 0, 0x10a(31)
    .4byte 0x48000024 # b .L_80415014
L_80414FF4:
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    bl fn_8042EBEC
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_80415014
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x10a(31)
    stb 0, 0x109(31)
L_80415014:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80415028:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 29, 3
    lwz 0, 0x1c(3)
    lwz 31, 0xc(3)
    cmpwi 0, 0x0
    lwz 30, 0x10(3)
    .4byte 0x41800410 # blt .L_80415478
    lwz 3, 0x20(29)
    subi 0, 3, 0x1
    stw 0, 0x20(29)
    lwz 0, 0x1c(29)
    cmpwi 0, 0x0
    .4byte 0x408103DC # ble .L_8041545C
    lwz 0, 0x20(29)
    cmpwi 0, 0x0
    .4byte 0x418103D0 # bgt .L_8041545C
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    lis 0, 0x4330
    .4byte 0xC8620A20 # lfd f3, lbl_805439C0@sda21(r0)
    lwz 4, 0xb4(5)
    addi 3, 3, 0x660d
    stw 0, 0x10(1)
    mullw 3, 4, 3
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lha 5, 0x104(29)
    srwi 0, 0, 9
    subi 4, 5, 0x1
    oris 3, 0, 0x3f80
    xoris 0, 4, 0x8000
    stw 3, 0x8(1)
    stw 0, 0x14(1)
    lfs 1, 0x8(1)
    lfd 2, 0x10(1)
    fsubs 0, 1, 0
    fsubs 1, 2, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    cmpw 0, 4
    .4byte 0x41800008 # blt .L_8041510C
    subi 0, 5, 0x2
L_8041510C:
    add 3, 29, 0
    li 0, 0x2
    lbz 5, 0x117(3)
    li 6, 0x0
    li 7, 0x0
    li 3, 0x1
    mtctr 0
L_80415128:
    slw 0, 3, 7
    lhz 4, 0x106(29)
    clrlwi 0, 0, 16
    and. 0, 4, 0
    .4byte 0x41820018 # beq .L_80415150
    cmpw 7, 5
    .4byte 0x41820010 # beq .L_80415150
    addi 0, 6, 0x117
    addi 6, 6, 0x1
    stbx 7, 29, 0
L_80415150:
    addi 7, 7, 0x1
    lhz 4, 0x106(29)
    slw 0, 3, 7
    clrlwi 0, 0, 16
    and. 0, 4, 0
    .4byte 0x41820018 # beq .L_8041517C
    cmpw 7, 5
    .4byte 0x41820010 # beq .L_8041517C
    addi 0, 6, 0x117
    addi 6, 6, 0x1
    stbx 7, 29, 0
L_8041517C:
    addi 7, 7, 0x1
    lhz 4, 0x106(29)
    slw 0, 3, 7
    clrlwi 0, 0, 16
    and. 0, 4, 0
    .4byte 0x41820018 # beq .L_804151A8
    cmpw 7, 5
    .4byte 0x41820010 # beq .L_804151A8
    addi 0, 6, 0x117
    addi 6, 6, 0x1
    stbx 7, 29, 0
L_804151A8:
    addi 7, 7, 0x1
    lhz 4, 0x106(29)
    slw 0, 3, 7
    clrlwi 0, 0, 16
    and. 0, 4, 0
    .4byte 0x41820018 # beq .L_804151D4
    cmpw 7, 5
    .4byte 0x41820010 # beq .L_804151D4
    addi 0, 6, 0x117
    addi 6, 6, 0x1
    stbx 7, 29, 0
L_804151D4:
    addi 7, 7, 0x1
    lhz 4, 0x106(29)
    slw 0, 3, 7
    clrlwi 0, 0, 16
    and. 0, 4, 0
    .4byte 0x41820018 # beq .L_80415200
    cmpw 7, 5
    .4byte 0x41820010 # beq .L_80415200
    addi 0, 6, 0x117
    addi 6, 6, 0x1
    stbx 7, 29, 0
L_80415200:
    addi 7, 7, 0x1
    .4byte 0x4200FF24 # bdnz .L_80415128
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 5
    srawi 3, 0, 1
    srwi 4, 3, 31
    srawi 0, 0, 1
    add 3, 3, 4
    mulli 4, 3, 0x5
    srwi 3, 0, 31
    add 0, 0, 3
    subf 3, 4, 5
    stw 3, 0x10(29)
    stw 0, 0xc(29)
    lwz 0, 0xc(29)
    lwz 3, 0x10(29)
    mulli 0, 0, 0x5
    add 28, 3, 0
    cmpwi 28, 0xa
    .4byte 0x41800088 # blt .L_804152D8
    li 3, 0x1e
    li 0, 0x1
    stw 3, 0x14(29)
    addi 3, 29, 0xe4
    li 4, 0x109
    li 5, 0x0
    stw 0, 0x18(29)
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    .4byte 0x4800014C # b .L_80415420
L_804152D8:
    lwz 0, 0x14(29)
    cmpwi 0, 0x1e
    .4byte 0x4081000C # ble .L_804152EC
    li 0, 0x0
    stw 0, 0x14(29)
L_804152EC:
    li 0, 0x1
    lhz 3, 0x106(29)
    slw 0, 0, 28
    clrlwi 0, 0, 16
    and. 0, 3, 0
    .4byte 0x4182002C # beq .L_8041532C
    lis 3, lbl_8048D2B0@ha
    slwi 0, 28, 2
    addi 4, 3, lbl_8048D2B0@l
    addi 3, 29, 0xe4
    lwzx 4, 4, 0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800000C # b .L_80415334
L_8041532C:
    li 0, 0x0
    stb 0, 0xe4(29)
L_80415334:
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, lbl_8048D198@ha
    slwi 5, 28, 3
    lwz 12, 0x0(3)
    addi 0, 4, lbl_8048D198@l
    add 28, 0, 5
    lwz 12, 0x3c(12)
    lwz 5, 0x0(28)
    lwz 6, 0x4(28)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lwz 3, 0x24(29)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x24(29)
    lis 4, 0x4e
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80415420:
    lwz 3, 0x1c(29)
    subi 0, 3, 0x1
    stw 0, 0x1c(29)
    lwz 0, 0x1c(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80415444
    li 0, 0x14
    stw 0, 0x20(29)
    .4byte 0x4800000C # b .L_8041544C
L_80415444:
    li 0, 0x5
    stw 0, 0x20(29)
L_8041544C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
L_8041545C:
    lwz 0, 0x1c(29)
    cmpwi 0, 0x0
    .4byte 0x40820BA4 # bne .L_80416008
    lwz 0, 0x20(29)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80415478
    .4byte 0x48000B94 # b .L_80416008
L_80415478:
    lwz 0, 0x1c(29)
    cmpwi 0, 0x0
    .4byte 0x408200C4 # bne .L_80415544
    lwz 0, 0xc(29)
    lwz 3, 0x10(29)
    mulli 0, 0, 0x5
    add 5, 3, 0
    cmpwi 5, 0x5
    .4byte 0x41800024 # blt .L_804154BC
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x81(3)
    .4byte 0x48000020 # b .L_804154D8
L_804154BC:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x81(3)
L_804154D8:
    slwi 0, 5, 30
    srwi 4, 5, 31
    subf 0, 4, 0
    srawi 3, 5, 2
    rotlwi 0, 0, 2
    lis 5, lbl_80529DEC@ha
    addze 6, 3
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 5, 5, lbl_80529DEC@l
    add 0, 0, 4
    stw 6, 0x128(5)
    li 4, 0xa
    stw 0, 0x12c(5)
    bl fn_80458F9C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    li 0, 0x7
    lis 3, lbl_80529DEC@ha
    stw 0, 0xe0(29)
    addi 3, 3, lbl_80529DEC@l
    li 4, 0x0
    li 0, 0x1
    stb 4, 0x242(3)
    stb 0, 0x252(3)
    .4byte 0x48000AC8 # b .L_80416008
L_80415544:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1000
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80415588
    li 0, 0x4
    lis 3, lbl_80529DEC@ha
    stw 0, 0xe0(29)
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x3
    li 4, 0xb
    stb 0, 0x237(3)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000A84 # b .L_80416008
L_80415588:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820128 # beq .L_804156C4
    lwz 0, 0xc(29)
    lwz 3, 0x10(29)
    mulli 0, 0, 0x5
    add 5, 3, 0
    cmpwi 5, 0x5
    .4byte 0x41800024 # blt .L_804155D8
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x81(3)
    .4byte 0x48000020 # b .L_804155F4
L_804155D8:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x81(3)
L_804155F4:
    cmpwi 5, 0xa
    .4byte 0x408000A8 # bge .L_804156A0
    li 0, 0x1
    lhz 3, 0x106(29)
    slw 0, 0, 5
    clrlwi 0, 0, 16
    and. 0, 3, 0
    .4byte 0x4182006C # beq .L_8041567C
    slwi 0, 5, 30
    srwi 4, 5, 31
    subf 0, 4, 0
    srawi 3, 5, 2
    rotlwi 0, 0, 2
    lis 5, lbl_80529DEC@ha
    addze 6, 3
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 5, 5, lbl_80529DEC@l
    add 0, 0, 4
    stw 6, 0x128(5)
    li 4, 0xa
    stw 0, 0x12c(5)
    bl fn_80458F9C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    li 0, 0x7
    lis 3, lbl_80529DEC@ha
    stw 0, 0xe0(29)
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x0
    stb 0, 0x242(3)
    stb 0, 0x252(3)
    .4byte 0x48000990 # b .L_80416008
L_8041567C:
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    li 4, 0x102
    li 5, 0x0
    bl fn_8042EDAC
    li 3, 0x0
    li 0, 0x2
    stb 3, 0x10a(29)
    stb 0, 0x109(29)
    .4byte 0x4800096C # b .L_80416008
L_804156A0:
    lwz 0, 0x1c(29)
    cmpwi 0, -0x1
    .4byte 0x40820960 # bne .L_80416008
    li 3, 0x19
    li 0, 0x1
    stw 3, 0x1c(29)
    stw 0, 0x20(29)
    stw 0, 0x18(29)
    .4byte 0x48000948 # b .L_80416008
L_804156C4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_804156F8
    li 0, 0x4
    li 4, 0xb
    stw 0, 0xe0(29)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000914 # b .L_80416008
L_804156F8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820238 # beq .L_80415944
    lwz 3, 0x10(29)
    subi 0, 3, 0x1
    stw 0, 0x10(29)
    lwz 0, 0x10(29)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80415730
    li 0, 0x4
    stw 0, 0x10(29)
L_80415730:
    lwz 3, 0x10(29)
    cmpw 3, 30
    .4byte 0x418208D0 # beq .L_80416008
    lwz 0, 0xc(29)
    mulli 0, 0, 0x5
    add 31, 3, 0
    cmpwi 31, 0xa
    .4byte 0x41800010 # blt .L_8041575C
    add 0, 30, 0
    cmpwi 0, 0xa
    .4byte 0x408008B0 # bge .L_80416008
L_8041575C:
    cmpwi 31, 0xa
    .4byte 0x41800088 # blt .L_804157E8
    li 3, 0x1e
    li 0, 0x1
    stw 3, 0x14(29)
    addi 3, 29, 0xe4
    li 4, 0x109
    li 5, 0x0
    stw 0, 0x18(29)
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    .4byte 0x4800014C # b .L_80415930
L_804157E8:
    lwz 0, 0x14(29)
    cmpwi 0, 0x1e
    .4byte 0x4081000C # ble .L_804157FC
    li 0, 0x0
    stw 0, 0x14(29)
L_804157FC:
    li 0, 0x1
    lhz 3, 0x106(29)
    slw 0, 0, 31
    clrlwi 0, 0, 16
    and. 0, 3, 0
    .4byte 0x4182002C # beq .L_8041583C
    lis 3, lbl_8048D2B0@ha
    slwi 0, 31, 2
    addi 4, 3, lbl_8048D2B0@l
    addi 3, 29, 0xe4
    lwzx 4, 4, 0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800000C # b .L_80415844
L_8041583C:
    li 0, 0x0
    stb 0, 0xe4(29)
L_80415844:
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, lbl_8048D198@ha
    slwi 5, 31, 3
    lwz 12, 0x0(3)
    addi 0, 4, lbl_8048D198@l
    add 28, 0, 5
    lwz 12, 0x3c(12)
    lwz 5, 0x0(28)
    lwz 6, 0x4(28)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x24(29)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x24(29)
    lis 4, 0x4e
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80415930:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480006C8 # b .L_80416008
L_80415944:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820244 # beq .L_80415B9C
    lwz 3, 0x10(29)
    addi 0, 3, 0x1
    stw 0, 0x10(29)
    lwz 0, 0xc(29)
    cmpwi 0, 0x2
    .4byte 0x40800018 # bge .L_80415988
    lwz 0, 0x10(29)
    cmpwi 0, 0x4
    .4byte 0x4081000C # ble .L_80415988
    li 0, 0x0
    stw 0, 0x10(29)
L_80415988:
    lwz 3, 0x10(29)
    cmpw 3, 30
    .4byte 0x41820678 # beq .L_80416008
    lwz 0, 0xc(29)
    mulli 0, 0, 0x5
    add 31, 3, 0
    cmpwi 31, 0xa
    .4byte 0x41800010 # blt .L_804159B4
    add 0, 30, 0
    cmpwi 0, 0xa
    .4byte 0x40800658 # bge .L_80416008
L_804159B4:
    cmpwi 31, 0xa
    .4byte 0x41800088 # blt .L_80415A40
    li 3, 0x1e
    li 0, 0x1
    stw 3, 0x14(29)
    addi 3, 29, 0xe4
    li 4, 0x109
    li 5, 0x0
    stw 0, 0x18(29)
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    .4byte 0x4800014C # b .L_80415B88
L_80415A40:
    lwz 0, 0x14(29)
    cmpwi 0, 0x1e
    .4byte 0x4081000C # ble .L_80415A54
    li 0, 0x0
    stw 0, 0x14(29)
L_80415A54:
    li 0, 0x1
    lhz 3, 0x106(29)
    slw 0, 0, 31
    clrlwi 0, 0, 16
    and. 0, 3, 0
    .4byte 0x4182002C # beq .L_80415A94
    lis 3, lbl_8048D2B0@ha
    slwi 0, 31, 2
    addi 4, 3, lbl_8048D2B0@l
    addi 3, 29, 0xe4
    lwzx 4, 4, 0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800000C # b .L_80415A9C
L_80415A94:
    li 0, 0x0
    stb 0, 0xe4(29)
L_80415A9C:
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, lbl_8048D198@ha
    slwi 5, 31, 3
    lwz 12, 0x0(3)
    addi 0, 4, lbl_8048D198@l
    add 28, 0, 5
    lwz 12, 0x3c(12)
    lwz 5, 0x0(28)
    lwz 6, 0x4(28)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x24(29)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x24(29)
    lis 4, 0x4e
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80415B88:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000470 # b .L_80416008
L_80415B9C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820224 # beq .L_80415DD4
    lwz 3, 0xc(29)
    subi 0, 3, 0x1
    stw 0, 0xc(29)
    lwz 0, 0xc(29)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80415BD4
    li 0, 0x2
    stw 0, 0xc(29)
L_80415BD4:
    lwz 0, 0xc(29)
    cmpw 0, 31
    .4byte 0x4182042C # beq .L_80416008
    mulli 0, 0, 0x5
    lwz 3, 0x10(29)
    add 28, 3, 0
    cmpwi 28, 0xa
    .4byte 0x41800088 # blt .L_80415C78
    li 3, 0x1e
    li 0, 0x1
    stw 3, 0x14(29)
    addi 3, 29, 0xe4
    li 4, 0x109
    li 5, 0x0
    stw 0, 0x18(29)
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    .4byte 0x4800014C # b .L_80415DC0
L_80415C78:
    lwz 0, 0x14(29)
    cmpwi 0, 0x1e
    .4byte 0x4081000C # ble .L_80415C8C
    li 0, 0x0
    stw 0, 0x14(29)
L_80415C8C:
    li 0, 0x1
    lhz 3, 0x106(29)
    slw 0, 0, 28
    clrlwi 0, 0, 16
    and. 0, 3, 0
    .4byte 0x4182002C # beq .L_80415CCC
    lis 3, lbl_8048D2B0@ha
    slwi 0, 28, 2
    addi 4, 3, lbl_8048D2B0@l
    addi 3, 29, 0xe4
    lwzx 4, 4, 0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800000C # b .L_80415CD4
L_80415CCC:
    li 0, 0x0
    stb 0, 0xe4(29)
L_80415CD4:
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, lbl_8048D198@ha
    slwi 5, 28, 3
    lwz 12, 0x0(3)
    addi 0, 4, lbl_8048D198@l
    add 28, 0, 5
    lwz 12, 0x3c(12)
    lwz 5, 0x0(28)
    lwz 6, 0x4(28)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x24(29)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x24(29)
    lis 4, 0x4e
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80415DC0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000238 # b .L_80416008
L_80415DD4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820220 # beq .L_80416008
    lwz 3, 0xc(29)
    addi 0, 3, 0x1
    stw 0, 0xc(29)
    lwz 0, 0xc(29)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_80415E0C
    li 0, 0x0
    stw 0, 0xc(29)
L_80415E0C:
    lwz 0, 0xc(29)
    cmpw 0, 31
    .4byte 0x418201F4 # beq .L_80416008
    mulli 0, 0, 0x5
    lwz 3, 0x10(29)
    add 28, 3, 0
    cmpwi 28, 0xa
    .4byte 0x41800088 # blt .L_80415EB0
    li 3, 0x1e
    li 0, 0x1
    stw 3, 0x14(29)
    addi 3, 29, 0xe4
    li 4, 0x109
    li 5, 0x0
    stw 0, 0x18(29)
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    .4byte 0x4800014C # b .L_80415FF8
L_80415EB0:
    lwz 0, 0x14(29)
    cmpwi 0, 0x1e
    .4byte 0x4081000C # ble .L_80415EC4
    li 0, 0x0
    stw 0, 0x14(29)
L_80415EC4:
    li 0, 0x1
    lhz 3, 0x106(29)
    slw 0, 0, 28
    clrlwi 0, 0, 16
    and. 0, 3, 0
    .4byte 0x4182002C # beq .L_80415F04
    lis 3, lbl_8048D2B0@ha
    slwi 0, 28, 2
    addi 4, 3, lbl_8048D2B0@l
    addi 3, 29, 0xe4
    lwzx 4, 4, 0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800000C # b .L_80415F0C
L_80415F04:
    li 0, 0x0
    stb 0, 0xe4(29)
L_80415F0C:
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, 0x736e
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 29, 0xe4
    bl strcpy
    lwz 3, 0x24(29)
    lis 4, lbl_8048D198@ha
    slwi 5, 28, 3
    lwz 12, 0x0(3)
    addi 0, 4, lbl_8048D198@l
    add 28, 0, 5
    lwz 12, 0x3c(12)
    lwz 5, 0x0(28)
    lwz 6, 0x4(28)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x24(29)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x24(29)
    lis 4, 0x4e
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80415FF8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
L_80416008:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x54(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80416038:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stmw 17, 0x24(1)
    mr 31, 3
    lis 4, lbl_8048CD50@ha
    lha 3, 0x102(3)
    addi 30, 4, lbl_8048CD50@l
    li 19, 0x0
    li 24, 0x0
    addi 0, 3, 0x1
    li 25, 0x0
    sth 0, 0x102(31)
    li 26, 0x0
    li 27, 0x0
    li 28, 0x0
    lha 0, 0x102(31)
    li 29, 0x0
    cmpwi 0, 0x0
    .4byte 0x40810194 # ble .L_80416230
    li 18, 0x0
    mr 17, 31
L_804160A8:
    lwz 3, 0x28(17)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    addi 18, 18, 0x1
    addi 17, 17, 0x4
    cmpwi 18, 0x2
    .4byte 0x4180FFDC # blt .L_804160A8
    lwz 3, 0x30(31)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    lha 0, 0x102(31)
    mr 19, 3
    cmpwi 0, 0xf
    .4byte 0x408000C4 # bge .L_804161B8
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC8620A20 # lfd f3, lbl_805439C0@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0220A30 # lfs f1, lbl_805439D0@sda21(r0)
    lfd 2, 0x8(1)
    .4byte 0xC0020A2C # lfs f0, lbl_805439CC@sda21(r0)
    fsubs 2, 2, 3
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_80416130
    fmr 31, 0
    .4byte 0x48000014 # b .L_80416140
L_80416130:
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_80416140
    fmr 31, 0
L_80416140:
    .4byte 0xCBC20A40 # lfd f30, lbl_805439E0@sda21(r0)
    addi 20, 30, 0x0
    li 18, 0x0
    lis 17, 0x4330
L_80416150:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x123
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x8(1)
    lwz 12, 0x24(12)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0xb
    .4byte 0x4180FFA0 # blt .L_80416150
    .4byte 0x4800007C # b .L_80416230
L_804161B8:
    .4byte 0xCBE20A40 # lfd f31, lbl_805439E0@sda21(r0)
    addi 20, 30, 0x0
    .4byte 0xC3C20A18 # lfs f30, lbl_805439B8@sda21(r0)
    li 18, 0x0
    lis 17, 0x4330
L_804161CC:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x123
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0xb
    .4byte 0x4180FFA0 # blt .L_804161CC
L_80416230:
    lha 0, 0x102(31)
    cmpwi 0, 0x0
    .4byte 0x40810164 # ble .L_8041639C
    lwz 3, 0x34(31)
    li 4, 0x19
    .4byte 0xC0220A34 # lfs f1, lbl_805439D4@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    lha 0, 0x102(31)
    mr 24, 3
    cmpwi 0, 0x19
    .4byte 0x408000C4 # bge .L_80416324
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8620A20 # lfd f3, lbl_805439C0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0220A38 # lfs f1, lbl_805439D8@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC0020A2C # lfs f0, lbl_805439CC@sda21(r0)
    fsubs 2, 2, 3
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_8041629C
    fmr 31, 0
    .4byte 0x48000014 # b .L_804162AC
L_8041629C:
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_804162AC
    fmr 31, 0
L_804162AC:
    .4byte 0xCBC20A40 # lfd f30, lbl_805439E0@sda21(r0)
    addi 20, 30, 0xb0
    li 18, 0x0
    lis 17, 0x4330
L_804162BC:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x139
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0x9
    .4byte 0x4180FFA0 # blt .L_804162BC
    .4byte 0x4800007C # b .L_8041639C
L_80416324:
    .4byte 0xCBE20A40 # lfd f31, lbl_805439E0@sda21(r0)
    addi 20, 30, 0xb0
    .4byte 0xC3C20A18 # lfs f30, lbl_805439B8@sda21(r0)
    li 18, 0x0
    lis 17, 0x4330
L_80416338:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x139
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0x9
    .4byte 0x4180FFA0 # blt .L_80416338
L_8041639C:
    lha 0, 0x102(31)
    cmpwi 0, 0x0
    .4byte 0x40810228 # ble .L_804165CC
    lwz 3, 0x38(31)
    li 4, 0xf
    .4byte 0xC0220A3C # lfs f1, lbl_805439DC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    mr 17, 31
    mr 25, 3
    li 18, 0x0
L_804163CC:
    lwz 3, 0xa4(17)
    li 4, 0xf
    .4byte 0xC0220A3C # lfs f1, lbl_805439DC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    addi 18, 18, 0x1
    addi 17, 17, 0x4
    cmpwi 18, 0xf
    .4byte 0x4180FFDC # blt .L_804163CC
    lha 0, 0x102(31)
    cmpwi 0, 0xf
    .4byte 0x40800124 # bge .L_80416520
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8620A20 # lfd f3, lbl_805439C0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0220A30 # lfs f1, lbl_805439D0@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC0020A2C # lfs f0, lbl_805439CC@sda21(r0)
    fsubs 2, 2, 3
    fdivs 29, 2, 1
    fmr 31, 29
    fcmpo cr0, 29, 0
    .4byte 0x4080000C # bge .L_8041643C
    fmr 31, 0
    .4byte 0x48000014 # b .L_8041644C
L_8041643C:
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    fcmpo cr0, 29, 0
    .4byte 0x40810008 # ble .L_8041644C
    fmr 31, 0
L_8041644C:
    .4byte 0xCBC20A40 # lfd f30, lbl_805439E0@sda21(r0)
    addi 20, 30, 0x58
    li 18, 0x0
    lis 17, 0x4330
L_8041645C:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x12e
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0xb
    .4byte 0x4180FFA0 # blt .L_8041645C
    .4byte 0xCBC20A40 # lfd f30, lbl_805439E0@sda21(r0)
    mr 18, 31
    li 20, 0x0
    lis 17, 0x4330
L_804164D0:
    lwz 3, 0xa4(18)
    stw 17, 0x10(1)
    lbz 0, 0x28(3)
    lwz 3, 0x4(3)
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lfd 0, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 0, 0, 30
    fmuls 0, 29, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 18, 18, 0x4
    cmpwi 20, 0xf
    .4byte 0x4180FFB8 # blt .L_804164D0
    .4byte 0x480000B0 # b .L_804165CC
L_80416520:
    li 18, 0x0
    mr 17, 31
L_80416528:
    lwz 4, 0xa4(17)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 17, 17, 0x4
    cmpwi 18, 0xf
    .4byte 0x4180FFD8 # blt .L_80416528
    .4byte 0xCBE20A40 # lfd f31, lbl_805439E0@sda21(r0)
    addi 20, 30, 0x58
    .4byte 0xC3C20A18 # lfs f30, lbl_805439B8@sda21(r0)
    li 18, 0x0
    lis 17, 0x4330
L_80416568:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x12e
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0xb
    .4byte 0x4180FFA0 # blt .L_80416568
L_804165CC:
    mr 22, 31
    addi 21, 30, 0x128
    li 20, 0x0
    li 23, 0x0
L_804165DC:
    lha 0, 0x102(31)
    cmpw 0, 23
    .4byte 0x408101CC # ble .L_804167B0
    lwz 3, 0x3c(22)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    cmpwi 20, 0x4
    .4byte 0x40820024 # bne .L_80416628
    lwz 3, 0x6c(22)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    mr 28, 3
    .4byte 0x4800001C # b .L_80416640
L_80416628:
    lwz 3, 0x6c(22)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
L_80416640:
    lha 0, 0x102(31)
    subf 0, 23, 0
    cmpwi 0, 0xf
    .4byte 0x408000D8 # bge .L_80416724
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8620A20 # lfd f3, lbl_805439C0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0220A30 # lfs f1, lbl_805439D0@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC0020A2C # lfs f0, lbl_805439CC@sda21(r0)
    fsubs 2, 2, 3
    fdivs 30, 2, 1
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_80416688
    fmr 30, 0
    .4byte 0x48000014 # b .L_80416698
L_80416688:
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    fcmpo cr0, 30, 0
    .4byte 0x40810008 # ble .L_80416698
    fmr 30, 0
L_80416698:
    li 18, 0x0
    mr 17, 21
L_804166A0:
    lwz 5, 0x0(17)
    li 3, 0x0
    lwz 6, 0x4(17)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x41820058 # beq .L_80416710
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 18, 0x148
    lis 0, 0x4330
    lbzx 4, 31, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220A40 # lfd f1, lbl_805439E0@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_80416710:
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0xa
    .4byte 0x4180FF84 # blt .L_804166A0
    .4byte 0x48000090 # b .L_804167B0
L_80416724:
    li 18, 0x0
    mr 17, 21
L_8041672C:
    lwz 5, 0x0(17)
    li 3, 0x0
    lwz 6, 0x4(17)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x4182005C # beq .L_804167A0
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 18, 0x148
    lis 0, 0x4330
    lbzx 4, 31, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8420A40 # lfd f2, lbl_805439E0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    lfd 1, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_804167A0:
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0xa
    .4byte 0x4180FF80 # blt .L_8041672C
L_804167B0:
    addi 20, 20, 0x1
    addi 22, 22, 0x4
    cmpwi 20, 0x5
    addi 21, 21, 0x50
    addi 23, 23, 0x2
    .4byte 0x4180FE18 # blt .L_804165DC
    addi 21, 30, 0x128
    addi 20, 31, 0x14
    li 22, 0x5
    addi 21, 21, 0x190
L_804167D8:
    subi 0, 22, 0x5
    lha 4, 0x102(31)
    slwi 3, 0, 1
    addi 17, 3, 0x2
    cmpw 4, 17
    .4byte 0x408101CC # ble .L_804169B8
    lwz 3, 0x3c(20)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    cmpwi 22, 0x9
    .4byte 0x40820024 # bne .L_80416830
    lwz 3, 0x6c(20)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    mr 29, 3
    .4byte 0x4800001C # b .L_80416848
L_80416830:
    lwz 3, 0x6c(20)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
L_80416848:
    lha 0, 0x102(31)
    subf 0, 17, 0
    cmpwi 0, 0xf
    .4byte 0x408000D8 # bge .L_8041692C
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8620A20 # lfd f3, lbl_805439C0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0220A30 # lfs f1, lbl_805439D0@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC0020A2C # lfs f0, lbl_805439CC@sda21(r0)
    fsubs 2, 2, 3
    fdivs 30, 2, 1
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_80416890
    fmr 30, 0
    .4byte 0x48000014 # b .L_804168A0
L_80416890:
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    fcmpo cr0, 30, 0
    .4byte 0x40810008 # ble .L_804168A0
    fmr 30, 0
L_804168A0:
    li 18, 0x0
    mr 17, 21
L_804168A8:
    lwz 5, 0x0(17)
    li 3, 0x0
    lwz 6, 0x4(17)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x41820058 # beq .L_80416918
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 18, 0x148
    lis 0, 0x4330
    lbzx 4, 31, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220A40 # lfd f1, lbl_805439E0@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_80416918:
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0xa
    .4byte 0x4180FF84 # blt .L_804168A8
    .4byte 0x48000090 # b .L_804169B8
L_8041692C:
    li 18, 0x0
    mr 17, 21
L_80416934:
    lwz 5, 0x0(17)
    li 3, 0x0
    lwz 6, 0x4(17)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x4182005C # beq .L_804169A8
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 18, 0x148
    lis 0, 0x4330
    lbzx 4, 31, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8420A40 # lfd f2, lbl_805439E0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    lfd 1, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_804169A8:
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0xa
    .4byte 0x4180FF80 # blt .L_80416934
L_804169B8:
    addi 22, 22, 0x1
    addi 21, 21, 0x50
    cmpwi 22, 0xa
    addi 20, 20, 0x4
    .4byte 0x4180FE10 # blt .L_804167D8
    lha 0, 0x102(31)
    cmpwi 0, 0x8
    .4byte 0x40810168 # ble .L_80416B3C
    lwz 3, 0x9c(31)
    li 4, 0xf
    .4byte 0xC0220A28 # lfs f1, lbl_805439C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    lha 4, 0x102(31)
    mr 26, 3
    subi 0, 4, 0x8
    cmpwi 0, 0xf
    .4byte 0x408000C4 # bge .L_80416AC4
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8620A20 # lfd f3, lbl_805439C0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0220A30 # lfs f1, lbl_805439D0@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC0020A2C # lfs f0, lbl_805439CC@sda21(r0)
    fsubs 2, 2, 3
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_80416A3C
    fmr 31, 0
    .4byte 0x48000014 # b .L_80416A4C
L_80416A3C:
    .4byte 0xC0020A18 # lfs f0, lbl_805439B8@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_80416A4C
    fmr 31, 0
L_80416A4C:
    .4byte 0xCBC20A40 # lfd f30, lbl_805439E0@sda21(r0)
    addi 20, 30, 0xf8
    li 18, 0x0
    lis 17, 0x4330
L_80416A5C:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x142
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0x6
    .4byte 0x4180FFA0 # blt .L_80416A5C
    .4byte 0x4800007C # b .L_80416B3C
L_80416AC4:
    .4byte 0xCBC20A40 # lfd f30, lbl_805439E0@sda21(r0)
    addi 20, 30, 0xf8
    .4byte 0xC3E20A18 # lfs f31, lbl_805439B8@sda21(r0)
    li 18, 0x0
    lis 17, 0x4330
L_80416AD8:
    lwz 3, 0x24(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x142
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 17, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    addi 20, 20, 0x8
    cmpwi 18, 0x6
    .4byte 0x4180FFA0 # blt .L_80416AD8
L_80416B3C:
    lha 0, 0x102(31)
    cmpwi 0, 0x14
    .4byte 0x40810020 # ble .L_80416B64
    lwz 3, 0xa0(31)
    li 4, 0x19
    .4byte 0xC0220A3C # lfs f1, lbl_805439DC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420A2C # lfs f2, lbl_805439CC@sda21(r0)
    bl fn_80402940
    mr 27, 3
L_80416B64:
    clrlwi. 0, 19, 24
    .4byte 0x4182003C # beq .L_80416BA4
    clrlwi. 0, 24, 24
    .4byte 0x41820034 # beq .L_80416BA4
    clrlwi. 0, 25, 24
    .4byte 0x4182002C # beq .L_80416BA4
    clrlwi. 0, 26, 24
    .4byte 0x41820024 # beq .L_80416BA4
    clrlwi. 0, 27, 24
    .4byte 0x4182001C # beq .L_80416BA4
    clrlwi. 0, 28, 24
    .4byte 0x41820014 # beq .L_80416BA4
    clrlwi. 0, 29, 24
    .4byte 0x4182000C # beq .L_80416BA4
    li 0, 0x1
    stb 0, 0x109(31)
L_80416BA4:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    lmw 17, 0x24(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80416BD0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 31, 3
    lis 4, lbl_8048CD50@ha
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    addi 29, 4, lbl_8048CD50@l
    bl fn_8042EB24
    li 0, -0x1
    li 28, 0x0
    stw 0, 0x1c(31)
    li 0, 0x5
    .4byte 0xCBE20A40 # lfd f31, lbl_805439E0@sda21(r0)
    addi 27, 29, 0x0
    stw 0, 0x20(31)
    lis 30, 0x4330
    .4byte 0xC3C20A2C # lfs f30, lbl_805439CC@sda21(r0)
    stb 28, 0x109(31)
    stb 28, 0x10a(31)
    sth 28, 0x102(31)
L_80416C34:
    lwz 3, 0x24(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x123
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 30, 0x8(1)
    lwz 12, 0x24(12)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
    addi 27, 27, 0x8
    cmpwi 28, 0xb
    .4byte 0x4180FFA0 # blt .L_80416C34
    .4byte 0xCBE20A40 # lfd f31, lbl_805439E0@sda21(r0)
    addi 27, 29, 0x58
    .4byte 0xC3C20A2C # lfs f30, lbl_805439CC@sda21(r0)
    li 28, 0x0
    lis 30, 0x4330
L_80416CAC:
    lwz 3, 0x24(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x12e
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 30, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
    addi 27, 27, 0x8
    cmpwi 28, 0xb
    .4byte 0x4180FFA0 # blt .L_80416CAC
    .4byte 0xCBE20A40 # lfd f31, lbl_805439E0@sda21(r0)
    addi 27, 29, 0xb0
    .4byte 0xC3C20A2C # lfs f30, lbl_805439CC@sda21(r0)
    li 28, 0x0
    lis 30, 0x4330
L_80416D24:
    lwz 3, 0x24(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x139
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 30, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
    addi 27, 27, 0x8
    cmpwi 28, 0x9
    .4byte 0x4180FFA0 # blt .L_80416D24
    .4byte 0xCBC20A40 # lfd f30, lbl_805439E0@sda21(r0)
    addi 27, 29, 0xf8
    .4byte 0xC3E20A2C # lfs f31, lbl_805439CC@sda21(r0)
    li 28, 0x0
    lis 30, 0x4330
L_80416D9C:
    lwz 3, 0x24(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x142
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 30, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
    addi 27, 27, 0x8
    cmpwi 28, 0x6
    .4byte 0x4180FFA0 # blt .L_80416D9C
    li 30, 0x0
    addi 29, 29, 0x128
L_80416E08:
    li 28, 0x0
    mr 27, 29
L_80416E10:
    lwz 5, 0x0(27)
    li 3, 0x0
    lwz 6, 0x4(27)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x4182005C # beq .L_80416E84
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 28, 0x148
    lis 0, 0x4330
    lbzx 4, 31, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8420A40 # lfd f2, lbl_805439E0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0020A2C # lfs f0, lbl_805439CC@sda21(r0)
    lfd 1, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_80416E84:
    addi 28, 28, 0x1
    addi 27, 27, 0x8
    cmpwi 28, 0xa
    .4byte 0x4180FF80 # blt .L_80416E10
    addi 30, 30, 0x1
    addi 29, 29, 0x50
    cmpwi 30, 0xa
    .4byte 0x4180FF68 # blt .L_80416E08
    mr 27, 31
    li 28, 0x0
    li 30, 0x0
L_80416EB0:
    lwz 3, 0x28(27)
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    .4byte 0xC0420A28 # lfs f2, lbl_805439C8@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x28(27)
    addi 28, 28, 0x1
    cmpwi 28, 0x3
    addi 27, 27, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFDC # blt .L_80416EB0
    lwz 3, 0x34(31)
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    .4byte 0xC0420A34 # lfs f2, lbl_805439D4@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x34(31)
    li 0, 0x0
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC0420A3C # lfs f2, lbl_805439DC@sda21(r0)
    lwz 3, 0x38(31)
    bl fn_80402E08
    lwz 3, 0x38(31)
    li 30, 0x0
    mr 27, 31
    li 28, 0x0
    sth 30, 0x22(3)
L_80416F18:
    lwz 3, 0x3c(27)
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    .4byte 0xC0420A28 # lfs f2, lbl_805439C8@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x3c(27)
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    sth 30, 0x22(3)
    .4byte 0xC0420A28 # lfs f2, lbl_805439C8@sda21(r0)
    lwz 3, 0x6c(27)
    bl fn_80402E08
    lwz 3, 0x6c(27)
    addi 28, 28, 0x1
    cmpwi 28, 0xa
    addi 27, 27, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFC4 # blt .L_80416F18
    lwz 3, 0x9c(31)
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    .4byte 0xC0420A28 # lfs f2, lbl_805439C8@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x9c(31)
    li 0, 0x0
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC0420A3C # lfs f2, lbl_805439DC@sda21(r0)
    lwz 3, 0xa0(31)
    bl fn_80402E08
    lwz 5, 0xa0(31)
    li 0, 0x0
    lis 4, 0x7572
    lis 3, 0x50
    sth 0, 0x22(5)
    addi 6, 4, 0x3031
    addi 5, 3, 0x7363
    lwz 3, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x24(31)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x24(31)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x24(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x6
    stw 0, 0xe0(31)
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_804170B0:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B1354@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B1354@l
    lbz 5, 0x109(3)
    .4byte 0x806D9240 # lwz r3, lbl_8053AE00@sda21(r0)
    mulli 4, 5, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804170EC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    li 0, 0x0
    mr 30, 3
    stb 0, 0x8(1)
    lwz 3, 0xc(3)
    stb 0, 0x9(1)
    lwz 4, 0x10(30)
    mulli 3, 3, 0x5
    stb 0, 0xa(1)
    .4byte 0x80AD8E88 # lwz r5, lbl_8053AA48@sda21(r0)
    stb 0, 0xb(1)
    add 31, 4, 3
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    lbz 3, 0xc(1)
    lbz 0, 0xd(1)
    stb 3, 0x8(5)
    lbz 3, 0xe(1)
    stb 0, 0x9(5)
    lbz 0, 0xf(1)
    stb 3, 0xa(5)
    stb 0, 0xb(5)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lbz 0, 0x109(30)
    cmplwi 0, 0x0
    .4byte 0x418204CC # beq .L_80417640
    cmpwi 31, 0xa
    .4byte 0x408001D4 # bge .L_80417350
    lwz 3, 0x14(30)
    addi 0, 3, 0x1
    stw 0, 0x14(30)
    lwz 0, 0x14(30)
    cmpwi 0, 0x1e
    .4byte 0x4180000C # blt .L_804171A0
    li 0, 0x0
    stw 0, 0x14(30)
L_804171A0:
    lwz 0, 0x14(30)
    cmpwi 0, 0xa
    .4byte 0x4080008C # bge .L_80417234
    lwz 3, 0x24(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000118 # b .L_80417348
L_80417234:
    cmpwi 0, 0x14
    .4byte 0x4080008C # bge .L_804172C4
    lwz 3, 0x24(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000088 # b .L_80417348
L_804172C4:
    lwz 3, 0x24(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80417348:
    li 31, 0x0
    .4byte 0x48000140 # b .L_8041748C
L_80417350:
    lwz 3, 0x14(30)
    addi 0, 3, 0x1
    stw 0, 0x14(30)
    lwz 0, 0x14(30)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_80417370
    li 0, 0x0
    stw 0, 0x14(30)
L_80417370:
    lwz 3, 0x14(30)
    cmpwi 3, 0x1e
    .4byte 0x40800030 # bge .L_804173A8
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x10(1)
    .4byte 0xC8420A20 # lfd f2, lbl_805439C0@sda21(r0)
    .4byte 0xC0020A48 # lfs f0, lbl_805439E8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 31, 1, 0
    .4byte 0x48000038 # b .L_804173DC
L_804173A8:
    subi 3, 3, 0x1e
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x10(1)
    .4byte 0xC8420A20 # lfd f2, lbl_805439C0@sda21(r0)
    .4byte 0xC0020A48 # lfs f0, lbl_805439E8@sda21(r0)
    .4byte 0xC0620A18 # lfs f3, lbl_805439B8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 31, 3, 0
L_804173DC:
    lwz 3, 0x24(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x24(30)
    addi 5, 4, 0x7363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    lis 0, 0x4330
    stb 4, 0xb0(3)
    .4byte 0xC8220A40 # lfd f1, lbl_805439E0@sda21(r0)
    lbz 3, 0x108(30)
    stw 0, 0x10(1)
    stw 3, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 31, 0x1c(1)
L_8041748C:
    lwz 0, 0x18(30)
    cmpwi 0, 0x0
    .4byte 0x4081013C # ble .L_804175D0
    cmpwi 0, 0x5
    subfic 4, 0, 0xa
    .4byte 0x40800008 # bge .L_804174A8
    mr 4, 0
L_804174A8:
    cmpwi 0, 0xa
    .4byte 0x41800010 # blt .L_804174BC
    li 0, 0x0
    stw 0, 0x18(30)
    .4byte 0x48000010 # b .L_804174C8
L_804174BC:
    lwz 3, 0x18(30)
    addi 0, 3, 0x1
    stw 0, 0x18(30)
L_804174C8:
    mullw 6, 4, 4
    lis 0, 0x4330
    lwz 3, 0x24(30)
    lis 5, 0x7461
    lis 4, 0x4e
    stw 0, 0x18(1)
    xoris 0, 6, 0x8000
    lwz 12, 0x0(3)
    stw 0, 0x1c(1)
    addi 6, 5, 0x3035
    .4byte 0xC8220A20 # lfd f1, lbl_805439C0@sda21(r0)
    addi 5, 4, 0x6461
    lfd 0, 0x18(1)
    .4byte 0xC0420A4C # lfs f2, lbl_805439EC@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC0020A38 # lfs f0, lbl_805439D8@sda21(r0)
    lwz 12, 0x3c(12)
    fmuls 1, 2, 1
    fdivs 30, 1, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x24(30)
    lis 4, 0x4e
    addi 6, 5, 0x3035
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    lfs 0, 0x4(30)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    lwz 3, 0x24(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7572
    lwz 3, 0x24(30)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    lfs 0, 0x8(30)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
L_804175D0:
    lwz 3, 0x24(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80417640:
    .4byte 0xC0220A2C # lfs f1, lbl_805439CC@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x24(30)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lbz 0, 0x109(30)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8041766C
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    bl fn_8042EB98
L_8041766C:
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 0, 0x54(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

