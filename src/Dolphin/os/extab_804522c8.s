# 9-function dtk-fused bundle (0x804522C8-0x804538D4, ~5.6KB), Track A
# (structural overview, matching the size precedent of the earlier 13-fn
# and 148-fn bundles in this gap).
# An EIGHTEENTH, larger member of the "weapon/joint-attachment resolver"
# family (vtable lbl_804B1D58, dtor fn_80452A80 - 0xDB0 bytes, real ctor
# fn_8045270C - direct vtable-install confirmed). Reuses fn_8009C69C (the
# joint-name-lookup call) and the confirmed player-candidate table
# (lbl_80529DEC), plus per-index feature-flag gating via the confirmed
# global manager struct (lbl_8053AAF8->0x7f). This class owns MANY more
# sub-object slots than the earlier siblings (offsets up to at least 0xd8/
# 0xec/0xf4 seen in the ctor's own pre-reset pass) and drives a "TIMG"-
# tagged resource lookup (fn_804030C4/fn_80403084) similar to the earlier
# 12th/13th siblings' extra methods. Individual helper functions
# (fn_804522C8/80452308/80452350/80453830/80453848/80453874/80453884) not
# traced to the same depth - out of scope for this landing. GQR mtspr fix
# applied (raw .4byte) for the 4 standard GQR2-5 quantization setups.
.section extab, "a"
.balign 4
.global etb_80011534
etb_80011534:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80011534, 8

.global etb_8001153C
etb_8001153C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001153C, 8

.global etb_80011544
etb_80011544:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011544, 8

.global etb_8001154C
etb_8001154C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8001154C, 8

.global etb_80011554
etb_80011554:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80011554, 8

.global etb_8001155C
etb_8001155C:
    .4byte 0x604A0000
    .4byte 0x000000D4
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A800014
    .4byte dtor_80084580
.size etb_8001155C, 24

.section extabindex, "a"
.balign 4
.global eti_800214A8
eti_800214A8:
    .4byte fn_804522C8
    .4byte 0x00000040
    .4byte etb_8001153C
.size eti_800214A8, 12

.global eti_800214B4
eti_800214B4:
    .4byte fn_80452308
    .4byte 0x00000048
    .4byte etb_80011544
.size eti_800214B4, 12

.global eti_800214C0
eti_800214C0:
    .4byte fn_80452350
    .4byte 0x000003BC
    .4byte etb_8001154C
.size eti_800214C0, 12

.global eti_800214CC
eti_800214CC:
    .4byte fn_8045270C
    .4byte 0x00000374
    .4byte etb_80011554
.size eti_800214CC, 12

.global eti_800214D8
eti_800214D8:
    .4byte fn_80452A80
    .4byte 0x00000DB0
    .4byte etb_8001155C
.size eti_800214D8, 12

.global eti_800214E4
eti_800214E4:
    .4byte fn_80453884
    .4byte 0x00000050
    .4byte etb_80011534
.size eti_800214E4, 12

.text
.balign 4
.global fn_804522C8
.global fn_80452308
.global fn_80452350
.global fn_8045270C
.global fn_80452A80
.global fn_80453830
.global fn_80453848
.global fn_80453874
.global fn_80453884

fn_804522C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lha 0, 0xfa(3)
    cmpwi 0, 0x7
    .4byte 0x41820014 # beq .L_804522F0
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_804522F0
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_804522F8
L_804522F0:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804316EC
L_804522F8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80452308:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80452350:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310CC
    li 30, 0x0
    mr 29, 31
    sth 30, 0xf8(31)
    sth 30, 0xfe(31)
L_80452388:
    lwz 3, 0x48(29)
    .4byte 0xC0220E58 # lfs f1, lbl_80543DF8@sda21(r0)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x60(29)
    .4byte 0xC0220E58 # lfs f1, lbl_80543DF8@sda21(r0)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x48(29)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x60(29)
    sth 0, 0x20(3)
    lwz 3, 0x48(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x48(29)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x26(3)
    lwz 3, 0x54(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x54(29)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x26(3)
    lwz 3, 0x60(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x60(29)
    addi 30, 30, 0x1
    li 0, 0x0
    addi 29, 29, 0x4
    cmpwi 30, 0x3
    sth 0, 0x26(3)
    .4byte 0x4180FF48 # blt .L_80452388
    lwz 3, 0x4(31)
    lis 4, 0x756c
    addi 6, 4, 0x3031
    li 5, 0x5063
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 0, 0xf8(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    .4byte 0xC0620E58 # lfs f3, lbl_80543DF8@sda21(r0)
    add 4, 31, 0
    lfs 1, 0x114(31)
    lfs 2, 0x118(31)
    lfs 0, 0x108(4)
    fadds 1, 3, 1
    lwz 12, 0x10(12)
    fadds 2, 2, 0
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x756c
    addi 6, 4, 0x3031
    li 5, 0x5063
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 3, 0x0
    li 0, 0x2
    sth 3, 0x132(31)
    li 4, 0x0
    sth 3, 0xfe(31)
    sth 0, 0xfa(31)
    sth 3, 0xfc(31)
    lwz 3, 0x8(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    li 30, 0x0
    mr 29, 31
    li 28, 0x0
    sth 30, 0x26(3)
L_80452514:
    lwz 3, 0xc(29)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    .4byte 0xC0420E78 # lfs f2, lbl_80543E18@sda21(r0)
    bl fn_80402E08
    lwz 3, 0xc(29)
    addi 28, 28, 0x1
    cmpwi 28, 0xf
    addi 29, 29, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFDC # blt .L_80452514
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820140 # beq .L_80452688
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_8045256C
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200C8 # beq .L_80452630
L_8045256C:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_80452588
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200AC # beq .L_80452630
L_80452588:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_804525A4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820090 # beq .L_80452630
L_804525A4:
    cmpwi 4, 0x3
    .4byte 0x40820018 # bne .L_804525C0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_80452630
L_804525C0:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_804525DC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_80452630
L_804525DC:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_804525F8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_80452630
L_804525F8:
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_80452614
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_80452630
L_80452614:
    cmpwi 4, 0x7
    .4byte 0x40820070 # bne .L_80452688
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x4082005C # bne .L_80452688
L_80452630:
    lis 3, lbl_80491400@ha
    lis 5, 0x5449
    addi 4, 3, lbl_80491400@l
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(31)
    lis 4, 0x7363
    li 5, 0x50
    lwz 12, 0x0(3)
    mr 28, 0
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x48000058 # b .L_804526DC
L_80452688:
    lis 3, lbl_80491414@ha
    lis 5, 0x5449
    addi 4, 3, lbl_80491414@l
    addi 3, 5, 0x4d47
    bl fn_80403084
    mr 0, 3
    lwz 3, 0x4(31)
    lis 4, 0x7363
    li 5, 0x50
    lwz 12, 0x0(3)
    mr 28, 0
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_804526DC:
    mr 3, 31
    bl fn_8044D894
    li 0, 0x9
    stw 0, 0x184(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8045270C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820344 # beq .L_80452A68
    lis 3, lbl_804B1D58@ha
    addi 0, 3, lbl_804B1D58@l
    stw 0, 0x0(30)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    li 0, 0x7
    mr 5, 30
    li 4, 0x0
    li 3, 0x1
    mtctr 0
L_80452750:
    lwz 6, 0x6c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80452770
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 3, 0x24(6)
    stw 4, 0x6c(5)
L_80452770:
    lwz 6, 0x88(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80452790
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 3, 0x24(6)
    stw 4, 0x88(5)
L_80452790:
    addi 5, 5, 0x4
    .4byte 0x4200FFBC # bdnz .L_80452750
    lwz 6, 0xb0(30)
    li 4, 0x0
    li 0, 0x1
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_804527C0
    lwz 3, 0xf4(6)
    ori 3, 3, 0x1
    stw 3, 0xf4(6)
    stw 0, 0x24(6)
    stw 4, 0xb0(30)
L_804527C0:
    lwz 6, 0xb4(30)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_804527E0
    lwz 3, 0xf4(6)
    ori 3, 3, 0x1
    stw 3, 0xf4(6)
    stw 0, 0x24(6)
    stw 4, 0xb4(30)
L_804527E0:
    addi 5, 30, 0x8
    lwz 6, 0xb8(30)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80452804
    lwz 3, 0xf4(6)
    ori 3, 3, 0x1
    stw 3, 0xf4(6)
    stw 0, 0x24(6)
    stw 4, 0xb0(5)
L_80452804:
    lwz 6, 0xb4(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80452824
    lwz 3, 0xf4(6)
    ori 3, 3, 0x1
    stw 3, 0xf4(6)
    stw 0, 0x24(6)
    stw 4, 0xb4(5)
L_80452824:
    li 27, 0x0
    mr 26, 30
    mr 28, 27
    mr 29, 27
L_80452834:
    lwz 0, 0xa4(26)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80452854
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xa4(26)
    bl fn_800EC240
    stw 28, 0xa4(26)
L_80452854:
    lwz 0, 0xc0(26)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80452874
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xc0(26)
    bl fn_800EC240
    stw 29, 0xc0(26)
L_80452874:
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    cmpwi 27, 0x3
    .4byte 0x4180FFB4 # blt .L_80452834
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804528A4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804528A4:
    li 29, 0x0
    mr 26, 30
    stw 29, 0x4(30)
    li 27, 0x0
L_804528B4:
    lwz 3, 0xd8(26)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804528D4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804528D4:
    addi 27, 27, 0x1
    stw 29, 0xd8(26)
    cmpwi 27, 0x4
    addi 26, 26, 0x4
    .4byte 0x4180FFD0 # blt .L_804528B4
    lwz 3, 0xec(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80452908
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80452908:
    li 0, 0x0
    stw 0, 0xec(30)
    lwz 3, 0xf4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80452930
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80452930:
    li 0, 0x0
    stw 0, 0xf4(30)
    lwz 3, 0xd0(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80452958
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80452958:
    li 0, 0x0
    stw 0, 0xd0(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80452980
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80452980:
    li 29, 0x0
    mr 26, 30
    stw 29, 0x8(30)
    li 27, 0x0
L_80452990:
    lwz 3, 0xc(26)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804529B0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804529B0:
    addi 27, 27, 0x1
    stw 29, 0xc(26)
    cmpwi 27, 0xf
    addi 26, 26, 0x4
    .4byte 0x4180FFD0 # blt .L_80452990
    li 27, 0x0
    mr 26, 30
L_804529CC:
    lwz 3, 0x48(26)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804529EC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804529EC:
    li 0, 0x0
    stw 0, 0x48(26)
    lwz 3, 0x54(26)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80452A14
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80452A14:
    li 0, 0x0
    stw 0, 0x54(26)
    lwz 3, 0x60(26)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80452A3C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80452A3C:
    addi 27, 27, 0x1
    li 3, 0x0
    cmpwi 27, 0x3
    stw 3, 0x60(26)
    addi 26, 26, 0x4
    .4byte 0x4180FF7C # blt .L_804529CC
    extsh. 0, 31
    .4byte 0x906D9380 # stw r3, lbl_8053AF40@sda21(r0)
    .4byte 0x4081000C # ble .L_80452A68
    mr 3, 30
    bl dtor_80084580
L_80452A68:
    mr 3, 30
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80452A80:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stmw 20, 0x80(1)
    lis 4, lbl_804B1D58@ha
    lis 5, lbl_80490FC8@ha
    addi 0, 4, lbl_804B1D58@l
    mr 31, 3
    lis 4, fn_8009711C@ha
    stw 0, 0x0(3)
    addi 29, 5, lbl_80490FC8@l
    addi 3, 31, 0x144
    addi 4, 4, fn_8009711C@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x2
    bl __construct_array
    lis 4, fn_8009711C@ha
    addi 3, 31, 0x14c
    addi 4, 4, fn_8009711C@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x2
    bl __construct_array
    lis 4, fn_8009711C@ha
    addi 3, 31, 0x154
    addi 4, 4, fn_8009711C@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x2
    bl __construct_array
    lis 4, fn_8009711C@ha
    addi 3, 31, 0x15c
    addi 4, 4, fn_8009711C@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x2
    bl __construct_array
    lis 4, fn_80453830@ha
    addi 3, 31, 0x164
    addi 4, 4, fn_80453830@l
    li 5, 0x0
    li 6, 0x10
    li 7, 0x2
    bl __construct_array
    .4byte 0x93ED9380 # stw r31, lbl_8053AF40@sda21(r0)
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_80452B54
    bl fn_8009C4EC
L_80452B54:
    stw 20, 0x4(31)
    lis 4, lbl_80529DEC@ha
    addi 6, 4, lbl_80529DEC@l
    addi 4, 29, 0x460
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x4c(6)
    bl fn_8009C69C
    li 3, 0x4
    oris 3, 3, 0x4
    .4byte 0x7C72E3A6 # mtspr GQR2, r3
    li 3, 0x5
    oris 3, 3, 0x5
    .4byte 0x7C73E3A6 # mtspr GQR3, r3
    li 3, 0x6
    oris 3, 3, 0x6
    .4byte 0x7C74E3A6 # mtspr GQR4, r3
    li 3, 0x7
    oris 3, 3, 0x7
    .4byte 0x7C75E3A6 # mtspr GQR5, r3
    mr 21, 31
    addi 22, 29, 0x288
    li 23, 0x0
    lis 20, 0x5343
L_80452BB4:
    addi 3, 20, 0x524e
    addi 4, 29, 0x46c
    bl fn_80403084
    stw 3, 0xd4(31)
    lwz 3, 0xd4(31)
    bl fn_800A4994
    stw 3, 0xd8(21)
    lwz 3, 0xd8(21)
    lwz 4, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 4, 0xd8(21)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x4
    addi 21, 21, 0x4
    .4byte 0x4180FF8C # blt .L_80452BB4
    li 0, 0x0
    lis 4, 0x5343
    stw 0, 0x124(31)
    addi 3, 4, 0x524e
    addi 4, 29, 0x478
    bl fn_80403084
    stw 3, 0xe8(31)
    lwz 3, 0xe8(31)
    bl fn_800A4994
    stw 3, 0xec(31)
    lwz 3, 0xec(31)
    lwz 4, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x706f
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 4, 0xec(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5343
    stw 0, 0x128(31)
    addi 3, 4, 0x524e
    addi 4, 29, 0x488
    bl fn_80403084
    stw 3, 0xf0(31)
    lwz 3, 0xf0(31)
    bl fn_800A4994
    stw 3, 0xf4(31)
    lwz 3, 0xf4(31)
    lwz 4, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x706f
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 4, 0xf4(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5343
    stw 0, 0x12c(31)
    addi 3, 4, 0x524e
    addi 4, 29, 0x498
    stb 0, 0x13e(31)
    bl fn_80403084
    stw 3, 0xcc(31)
    lwz 3, 0xcc(31)
    bl fn_800A4994
    stw 3, 0xd0(31)
    lwz 3, 0x4(31)
    lwz 4, 0xd0(31)
    lwz 12, 0x0(3)
    lwz 12, 0x70(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x756c
    sth 0, 0x130(31)
    addi 6, 4, 0x3031
    li 5, 0x5063
    sth 0, 0x132(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x756c
    addi 6, 4, 0x3031
    li 5, 0x5063
    stfs 0, 0x114(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 28, 29, 0x0
    mr 20, 28
    mr 21, 31
    stfs 0, 0x118(31)
    li 22, 0x0
L_80452DCC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lwz 3, 0x4(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 22, 22, 0x1
    cmpwi 22, 0x3
    addi 20, 20, 0x8
    fsubs 0, 0, 31
    stfs 0, 0x108(21)
    addi 21, 21, 0x4
    .4byte 0x4180FFA0 # blt .L_80452DCC
    lwz 3, 0x4(31)
    lwz 5, 0x248(29)
    lwz 12, 0x0(3)
    lwz 6, 0x24c(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x268(29)
    stb 0, 0x13b(31)
    lwz 6, 0x26c(29)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x288(29)
    stb 0, 0x13c(31)
    lwz 6, 0x28c(29)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x1a0(29)
    stb 0, 0x13d(31)
    lwz 6, 0x1a4(29)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x1d8(29)
    stb 0, 0x139(31)
    lwz 6, 0x1dc(29)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 21, 29, 0x1a0
    addi 22, 29, 0x1d8
    li 23, 0x0
    stb 0, 0x13a(31)
    li 20, 0x0
L_80452EF4:
    lwz 3, 0x4(31)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stb 20, 0xb0(3)
    lwz 5, 0x0(22)
    lwz 3, 0x4(31)
    lwz 6, 0x4(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    stb 20, 0xb0(3)
    cmpwi 23, 0x7
    addi 21, 21, 0x8
    addi 22, 22, 0x8
    .4byte 0x4180FFB0 # blt .L_80452EF4
    addi 30, 29, 0x18
    mr 24, 28
    mr 25, 31
    mr 27, 31
    mr 26, 30
    li 23, 0x0
L_80452F60:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x54
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0x54(1)
    lwz 5, 0x0(24)
    stb 0, 0x154(25)
    lwz 6, 0x4(24)
    lbz 0, 0x55(1)
    stb 0, 0x155(25)
    lbz 0, 0x56(1)
    stb 0, 0x156(25)
    lbz 0, 0x57(1)
    stb 0, 0x157(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x50
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x50(1)
    lwz 5, 0x0(26)
    stb 0, 0x15c(25)
    lwz 6, 0x4(26)
    lbz 0, 0x51(1)
    stb 0, 0x15d(25)
    lbz 0, 0x52(1)
    stb 0, 0x15e(25)
    lbz 0, 0x53(1)
    stb 0, 0x15f(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x4c
    lwz 12, 0x0(4)
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    lbz 0, 0x4c(1)
    lwz 5, 0x0(26)
    stb 0, 0x144(25)
    lwz 6, 0x4(26)
    lbz 0, 0x4d(1)
    stb 0, 0x145(25)
    lbz 0, 0x4e(1)
    stb 0, 0x146(25)
    lbz 0, 0x4f(1)
    stb 0, 0x147(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x48
    lwz 12, 0x0(4)
    lwz 12, 0xb0(12)
    mtctr 12
    bctrl
    lbz 0, 0x48(1)
    lwz 5, 0x0(26)
    stb 0, 0x14c(25)
    lwz 6, 0x4(26)
    lbz 0, 0x49(1)
    stb 0, 0x14d(25)
    lbz 0, 0x4a(1)
    stb 0, 0x14e(25)
    lbz 0, 0x4b(1)
    stb 0, 0x14f(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 5, 0x128(3)
    addi 23, 23, 0x1
    li 4, 0xff
    li 0, 0x0
    stb 5, 0x164(27)
    cmpwi 23, 0x2
    addi 24, 24, 0x8
    addi 26, 26, 0x8
    lbz 5, 0x129(3)
    stb 5, 0x165(27)
    lbz 5, 0x12a(3)
    stb 5, 0x166(27)
    lbz 5, 0x12b(3)
    stb 5, 0x167(27)
    lbz 5, 0x12c(3)
    stb 5, 0x168(27)
    lbz 5, 0x12d(3)
    stb 5, 0x169(27)
    lbz 5, 0x12e(3)
    stb 5, 0x16a(27)
    lbz 5, 0x12f(3)
    stb 5, 0x16b(27)
    lbz 5, 0x130(3)
    stb 5, 0x16c(27)
    lbz 5, 0x131(3)
    stb 5, 0x16d(27)
    lbz 5, 0x132(3)
    stb 5, 0x16e(27)
    lbz 5, 0x133(3)
    stb 5, 0x16f(27)
    lbz 5, 0x134(3)
    stb 5, 0x170(27)
    lbz 5, 0x135(3)
    stb 5, 0x171(27)
    lbz 5, 0x136(3)
    stb 5, 0x172(27)
    lbz 5, 0x137(3)
    stb 5, 0x173(27)
    addi 27, 27, 0x10
    stb 4, 0x15f(25)
    stb 0, 0x157(25)
    stb 4, 0x14f(25)
    stb 4, 0x147(25)
    addi 25, 25, 0x4
    .4byte 0x4180FDE4 # blt .L_80452F60
    stb 4, 0x173(31)
    li 20, 0xc8
    li 21, 0xa7
    li 22, 0x4c
    stb 4, 0x16f(31)
    li 27, 0x2a
    li 26, 0x27
    li 25, 0x10
    stb 4, 0x16b(31)
    li 24, 0xed
    li 23, 0xa0
    li 12, 0x7f
    stb 4, 0x167(31)
    li 11, 0x51
    li 10, 0x18
    li 9, 0xc0
    stb 20, 0x183(31)
    li 8, 0x91
    li 7, 0xe6
    li 6, 0xe1
    stb 20, 0x17f(31)
    li 5, 0x87
    stb 20, 0x17b(31)
    stb 20, 0x177(31)
    stb 21, 0x15c(31)
    stb 22, 0x15d(31)
    stb 27, 0x15e(31)
    stb 26, 0x154(31)
    stb 25, 0x155(31)
    stb 0, 0x156(31)
    stb 4, 0x160(31)
    stb 24, 0x161(31)
    stb 23, 0x162(31)
    stb 0, 0x158(31)
    stb 0, 0x159(31)
    stb 0, 0x15a(31)
    stb 12, 0x14c(31)
    stb 11, 0x14d(31)
    stb 10, 0x14e(31)
    stb 12, 0x144(31)
    stb 11, 0x145(31)
    stb 10, 0x146(31)
    stb 12, 0x150(31)
    stb 11, 0x151(31)
    stb 10, 0x152(31)
    stb 12, 0x148(31)
    stb 11, 0x149(31)
    stb 10, 0x14a(31)
    stb 9, 0x164(31)
    stb 8, 0x165(31)
    stb 22, 0x166(31)
    stb 9, 0x168(31)
    stb 8, 0x169(31)
    stb 22, 0x16a(31)
    stb 7, 0x16c(31)
    stb 6, 0x16d(31)
    stb 5, 0x16e(31)
    lbz 9, 0x173(31)
    stb 7, 0x170(31)
    stb 6, 0x171(31)
    addi 4, 29, 0x18
    li 8, 0xa9
    li 7, 0x80
    stb 5, 0x172(31)
    li 0, 0x46
    lwz 5, 0x8(4)
    stb 9, 0x173(31)
    lwz 6, 0xc(4)
    stb 8, 0x174(31)
    stb 7, 0x175(31)
    stb 0, 0x176(31)
    stb 8, 0x178(31)
    stb 7, 0x179(31)
    stb 0, 0x17a(31)
    stb 8, 0x17c(31)
    stb 7, 0x17d(31)
    stb 0, 0x17e(31)
    stb 8, 0x180(31)
    stb 7, 0x181(31)
    stb 0, 0x182(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80453304
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80453304:
    stw 3, 0x8(31)
    lis 4, 0x6c61
    addi 6, 4, 0x636b
    li 5, 0x5062
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(31)
    bl fn_80402F04
    mr 20, 31
    addi 21, 29, 0x2a8
    li 22, 0x0
L_80453340:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8045335C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8045335C:
    stw 3, 0xc(20)
    lwz 5, 0x0(21)
    lwz 3, 0x4(31)
    lwz 6, 0x4(21)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(20)
    bl fn_80402F04
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0xf
    addi 20, 20, 0x4
    .4byte 0x4180FFA8 # blt .L_80453340
    mr 27, 31
    mr 26, 28
    mr 25, 30
    addi 29, 29, 0x30
    li 24, 0x0
L_804533B0:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804533CC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804533CC:
    stw 3, 0x48(27)
    lwz 5, 0x0(26)
    lwz 3, 0x4(31)
    lwz 6, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x48(27)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80453414
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80453414:
    stw 3, 0x54(27)
    lwz 5, 0x0(25)
    lwz 3, 0x4(31)
    lwz 6, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x54(27)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8045345C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8045345C:
    stw 3, 0x60(27)
    lwz 5, 0x0(29)
    lwz 3, 0x4(31)
    lwz 6, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x60(27)
    bl fn_80402F04
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x3
    addi 25, 25, 0x8
    addi 29, 29, 0x8
    addi 27, 27, 0x4
    .4byte 0x4180FF10 # blt .L_804533B0
    li 5, 0x0
    li 0, 0x2
    sth 5, 0xf8(31)
    li 4, 0x0
    sth 5, 0xfe(31)
    sth 0, 0xfa(31)
    sth 5, 0xfc(31)
    lwz 5, 0x8(31)
    lwz 3, 0x4(5)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0x8(31)
    li 23, 0x0
    mr 20, 31
    li 21, 0x0
    sth 23, 0x26(4)
L_804534EC:
    lwz 3, 0xc(20)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    .4byte 0xC0420E78 # lfs f2, lbl_80543E18@sda21(r0)
    bl fn_80402E08
    lwz 4, 0xc(20)
    addi 21, 21, 0x1
    cmpwi 21, 0xf
    addi 20, 20, 0x4
    sth 23, 0x22(4)
    .4byte 0x4180FFDC # blt .L_804534EC
    li 23, 0x0
L_80453518:
    lha 0, 0xf8(31)
    cmpw 23, 0
    .4byte 0x40820130 # bne .L_80453650
    lwz 0, 0x15c(31)
    lwz 5, 0x0(28)
    stw 0, 0x40(1)
    lwz 6, 0x4(28)
    lwz 0, 0x154(31)
    stw 0, 0x44(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    addi 5, 1, 0x40
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x14c(31)
    lwz 5, 0x0(30)
    stw 0, 0x38(1)
    lwz 6, 0x4(30)
    lwz 0, 0x144(31)
    stw 0, 0x3c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x3c
    addi 5, 1, 0x38
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x164(31)
    lwz 12, 0x0(3)
    lwz 6, 0x168(31)
    lwz 4, 0x16c(31)
    lwz 0, 0x170(31)
    lwz 12, 0x3c(12)
    stw 5, 0x68(1)
    lwz 5, 0x0(30)
    stw 6, 0x6c(1)
    lwz 6, 0x4(30)
    stw 4, 0x70(1)
    stw 0, 0x74(1)
    mtctr 12
    bctrl
    lwz 10, 0x74(1)
    addi 4, 1, 0x18
    lwz 9, 0x70(1)
    addi 5, 1, 0x1c
    lwz 8, 0x6c(1)
    addi 6, 1, 0x20
    lwz 0, 0x68(1)
    addi 7, 1, 0x24
    stw 10, 0x24(1)
    stw 9, 0x20(1)
    stw 8, 0x1c(1)
    stw 0, 0x18(1)
    bl fn_800A0CE4
    lwz 3, 0x4(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800012C # b .L_80453778
L_80453650:
    lwz 0, 0x160(31)
    lwz 5, 0x0(28)
    stw 0, 0x30(1)
    lwz 6, 0x4(28)
    lwz 0, 0x158(31)
    stw 0, 0x34(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x30
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x150(31)
    lwz 5, 0x0(30)
    stw 0, 0x28(1)
    lwz 6, 0x4(30)
    lwz 0, 0x148(31)
    stw 0, 0x2c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2c
    addi 5, 1, 0x28
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x174(31)
    lwz 12, 0x0(3)
    lwz 6, 0x178(31)
    lwz 4, 0x17c(31)
    lwz 0, 0x180(31)
    lwz 12, 0x3c(12)
    stw 5, 0x58(1)
    lwz 5, 0x0(30)
    stw 6, 0x5c(1)
    lwz 6, 0x4(30)
    stw 4, 0x60(1)
    stw 0, 0x64(1)
    mtctr 12
    bctrl
    lwz 10, 0x64(1)
    addi 4, 1, 0x8
    lwz 9, 0x60(1)
    addi 5, 1, 0xc
    lwz 8, 0x5c(1)
    addi 6, 1, 0x10
    lwz 0, 0x58(1)
    addi 7, 1, 0x14
    stw 10, 0x14(1)
    stw 9, 0x10(1)
    stw 8, 0xc(1)
    stw 0, 0x8(1)
    bl fn_800A0CE4
    lwz 3, 0x4(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80453778:
    addi 23, 23, 0x1
    addi 30, 30, 0x8
    cmpwi 23, 0x3
    addi 28, 28, 0x8
    .4byte 0x4180FD90 # blt .L_80453518
    li 4, 0x0
    li 0, 0x1
    stb 4, 0x136(31)
    mr 3, 31
    stb 0, 0x13f(31)
    stb 4, 0x140(31)
    stw 4, 0x120(31)
    stb 4, 0x137(31)
    sth 4, 0x134(31)
    stb 4, 0x138(31)
    stw 4, 0x6c(31)
    stw 4, 0x88(31)
    stw 4, 0x70(31)
    stw 4, 0x8c(31)
    stw 4, 0x74(31)
    stw 4, 0x90(31)
    stw 4, 0x78(31)
    stw 4, 0x94(31)
    stw 4, 0x7c(31)
    stw 4, 0x98(31)
    stw 4, 0x80(31)
    stw 4, 0x9c(31)
    stw 4, 0x84(31)
    stw 4, 0xa0(31)
    stw 4, 0xb0(31)
    stw 4, 0xb4(31)
    stw 4, 0xb8(31)
    stw 4, 0xbc(31)
    stw 4, 0xa4(31)
    stw 4, 0xc0(31)
    stw 4, 0xa8(31)
    stw 4, 0xc4(31)
    stw 4, 0xac(31)
    stw 4, 0xc8(31)
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    lmw 20, 0x80(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_80453830:
    li 0, -0x1
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    blr

fn_80453848:
    lwz 0, 0xf4(3)
    li 5, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_8045386C
    lwz 4, 0xd0(3)
    lwz 0, 0xdc(3)
    add. 0, 4, 0
    .4byte 0x40820008 # bne .L_8045386C
    li 5, 0x1
L_8045386C:
    mr 3, 5
    blr

fn_80453874:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_80453884:
    stwu 1, -0x20(1)
    mflr 0
    lwz 10, 0xc(4)
    stw 0, 0x24(1)
    addi 5, 1, 0x10
    lwz 9, 0x8(4)
    addi 6, 1, 0xc
    lwz 8, 0x4(4)
    addi 7, 1, 0x8
    lwz 0, 0x0(4)
    addi 4, 1, 0x14
    stw 10, 0x8(1)
    stw 9, 0xc(1)
    stw 8, 0x10(1)
    stw 0, 0x14(1)
    bl fn_800A0CE4
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

