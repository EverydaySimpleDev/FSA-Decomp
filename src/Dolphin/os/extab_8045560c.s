# 901KB-gap non-actor manager block: 3 function(s), 656 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800115BC
etb_800115BC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800115BC, 8

.global etb_800115C4
etb_800115C4:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_800115C4, 8

.section extabindex, "a"
.balign 4
.global eti_80021544
eti_80021544:
    .4byte fn_804556A4
    .4byte 0x000000CC
    .4byte etb_800115BC
.size eti_80021544, 12

.global eti_80021550
eti_80021550:
    .4byte fn_80455770
    .4byte 0x0000012C
    .4byte etb_800115C4
.size eti_80021550, 12

.text
.balign 4
.global fn_8045560C
.global fn_804556A4
.global fn_80455770

fn_8045560C:
    li 0, 0x4
    li 4, 0x0
    mtctr 0
L_80455618:
    stb 4, 0x41(3)
    stb 4, 0x55(3)
    stb 4, 0x69(3)
    stb 4, 0x7d(3)
    stb 4, 0x91(3)
    stb 4, 0xa5(3)
    stb 4, 0xb9(3)
    stb 4, 0xcd(3)
    stb 4, 0xe1(3)
    stb 4, 0xf5(3)
    stb 4, 0x109(3)
    stb 4, 0x11d(3)
    stb 4, 0x131(3)
    stb 4, 0x145(3)
    stb 4, 0x159(3)
    stb 4, 0x16d(3)
    stb 4, 0x181(3)
    stb 4, 0x195(3)
    stb 4, 0x1a9(3)
    stb 4, 0x1bd(3)
    stb 4, 0x1d1(3)
    stb 4, 0x1e5(3)
    stb 4, 0x1f9(3)
    stb 4, 0x20d(3)
    stb 4, 0x221(3)
    stb 4, 0x235(3)
    stb 4, 0x249(3)
    stb 4, 0x25d(3)
    stb 4, 0x271(3)
    stb 4, 0x285(3)
    stb 4, 0x299(3)
    stb 4, 0x2ad(3)
    addi 3, 3, 0x280
    .4byte 0x4200FF7C # bdnz .L_80455618
    blr

fn_804556A4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    li 30, 0x0
    mr 31, 29
L_804556D0:
    lbz 0, 0x41(31)
    cmplwi 0, 0x1
    .4byte 0x4082006C # bne .L_80455744
    lwz 0, 0x3c(31)
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lbz 0, 0x40(31)
    slwi 3, 0, 2
    addi 0, 3, 0x4
    lwzx 3, 29, 0
    lwz 12, 0x0(3)
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lbz 0, 0x40(31)
    li 4, 0x0
    lfs 3, 0x38(31)
    li 5, 0x0
    slwi 3, 0, 2
    lfs 1, 0x30(31)
    addi 0, 3, 0x4
    fmr 4, 3
    lwzx 3, 29, 0
    li 6, 0x0
    lfs 2, 0x34(31)
    lwz 12, 0x0(3)
    lwz 12, 0xec(12)
    mtctr 12
    bctrl
L_80455744:
    addi 30, 30, 0x1
    addi 31, 31, 0x14
    cmpwi 30, 0x80
    .4byte 0x4180FF80 # blt .L_804556D0
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80455770:
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
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 30, 4
    mr 31, 6
    .4byte 0xC0420EC0 # lfs f2, lbl_80543E60@sda21(r0)
    lwz 4, 0x24(7)
    mr 29, 3
    fmr 30, 1
    addi 7, 1, 0xc
    lfs 0, 0x858(4)
    mr 3, 4
    mr 4, 5
    li 5, 0x0
    fmuls 31, 2, 0
    li 6, 0x0
    bl fn_8030C5F0
    li 0, 0x80
    mr 3, 29
    li 4, 0x0
    mtctr 0
L_804557E4:
    lbz 0, 0x41(3)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_80455864
    mulli 4, 4, 0x14
    lwz 0, 0x0(31)
    li 3, 0x1
    fmuls 0, 30, 31
    stw 0, 0x8(1)
    add 6, 29, 4
    stb 3, 0x41(6)
    addi 7, 4, 0x3c
    .4byte 0xC0420EC4 # lfs f2, lbl_80543E64@sda21(r0)
    add 7, 29, 7
    stb 30, 0x40(6)
    lbz 5, 0x8(1)
    stfs 0, 0x38(6)
    lbz 4, 0x9(1)
    lfs 1, 0x38(6)
    lfs 0, 0xc(1)
    lbz 3, 0xa(1)
    fnmsubs 0, 1, 2, 0
    lbz 0, 0xb(1)
    stfs 0, 0x30(6)
    lfs 1, 0x38(6)
    lfs 0, 0x10(1)
    fnmsubs 0, 1, 2, 0
    stfs 0, 0x34(6)
    stb 5, 0x0(7)
    stb 4, 0x1(7)
    stb 3, 0x2(7)
    stb 0, 0x3(7)
    .4byte 0x48000010 # b .L_80455870
L_80455864:
    addi 3, 3, 0x14
    addi 4, 4, 0x1
    .4byte 0x4200FF78 # bdnz .L_804557E4
L_80455870:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x54(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

