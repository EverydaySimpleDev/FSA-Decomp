# Fresh-gap-hunt batch 11 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008D8C
etb_80008D8C:
    .4byte 0x910A0000
    .4byte 0x00000000
.size etb_80008D8C, 8

.section extabindex, "a"
.balign 4
.global eti_8001642C
eti_8001642C:
    .4byte fn_801EFD34
    .4byte 0x00000588
    .4byte etb_80008D8C
.size eti_8001642C, 12

.text
.balign 4
.global fn_801EFD34

fn_801EFD34:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stfd 30, 0xf0(1)
    psq_st 30, 0xf8(1), 0, 0
    stfd 29, 0xe0(1)
    psq_st 29, 0xe8(1), 0, 0
    stfd 28, 0xd0(1)
    psq_st 28, 0xd8(1), 0, 0
    stmw 14, 0x88(1)
    mr 30, 3
    lwz 3, 0x4(3)
    fmr 30, 1
    stw 4, 0x8(1)
    fmr 31, 2
    cmpwi 3, 0x8
    fmr 28, 3
    mr 31, 5
    .4byte 0x40800504 # bge .L_801F0288
    lwz 0, 0x138(30)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_801EFDA8
    mr 9, 4
    addi 4, 30, 0xc
    li 7, 0x0
    li 8, 0x0
    bl fn_801EF830
L_801EFDA8:
    li 0, -0x1
    addi 9, 1, 0x18
    stw 0, 0x28(1)
    li 10, 0x0
    stw 0, 0x2c(1)
    .4byte 0x48000064 # b .L_801EFE20
L_801EFDC0:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801EFE20:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801EFDC0
    lwz 0, 0xd8(30)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    cmpwi 0, 0x0
    stw 7, 0x28(1)
    stw 6, 0x2c(1)
    stw 6, 0x30(1)
    stb 6, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stb 5, 0x37(1)
    stb 5, 0x38(1)
    stb 6, 0x39(1)
    stb 6, 0x3a(1)
    stb 6, 0x3b(1)
    stb 6, 0x3c(1)
    stb 6, 0x3d(1)
    stb 5, 0x3e(1)
    stw 4, 0x40(1)
    stb 5, 0x44(1)
    stb 6, 0x45(1)
    stb 6, 0x46(1)
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 3, 0x50(1)
    .4byte 0x40810240 # ble .L_801F00DC
    cmplwi 31, 0x0
    .4byte 0x4182011C # beq .L_801EFFC0
    lbz 15, 0x2d(31)
    lwz 0, 0x28(31)
    stw 15, 0x84(1)
    lbz 15, 0x2e(31)
    stw 0, 0x40(1)
    lwz 0, 0x84(1)
    stw 15, 0x68(1)
    lwz 15, 0x30(31)
    stb 0, 0x45(1)
    lwz 0, 0x68(1)
    stw 15, 0x6c(1)
    lwz 15, 0x34(31)
    stb 0, 0x46(1)
    lwz 0, 0x6c(1)
    stw 15, 0x70(1)
    lwz 16, 0x0(31)
    lwz 17, 0x4(31)
    lwz 18, 0x8(31)
    lwz 19, 0xc(31)
    lbz 20, 0x10(31)
    lbz 21, 0x11(31)
    lbz 22, 0x12(31)
    lbz 23, 0x13(31)
    lbz 24, 0x14(31)
    lbz 25, 0x15(31)
    lbz 26, 0x16(31)
    lbz 27, 0x17(31)
    lwz 28, 0x18(31)
    lbz 29, 0x1c(31)
    lbz 12, 0x1d(31)
    lbz 11, 0x1e(31)
    lbz 10, 0x1f(31)
    lbz 9, 0x20(31)
    lbz 8, 0x21(31)
    lbz 7, 0x22(31)
    lbz 6, 0x23(31)
    lbz 5, 0x24(31)
    lbz 4, 0x25(31)
    lbz 3, 0x26(31)
    lbz 14, 0x2c(31)
    lwz 15, 0x38(31)
    stw 0, 0x48(1)
    lwz 0, 0x70(1)
    stw 16, 0x18(1)
    stw 17, 0x1c(1)
    stw 18, 0x20(1)
    stw 19, 0x24(1)
    stb 20, 0x28(1)
    stb 21, 0x29(1)
    stb 22, 0x2a(1)
    stb 23, 0x2b(1)
    stb 24, 0x2c(1)
    stb 25, 0x2d(1)
    stb 26, 0x2e(1)
    stb 27, 0x2f(1)
    stw 28, 0x30(1)
    stb 29, 0x34(1)
    stb 12, 0x35(1)
    stb 11, 0x36(1)
    stb 10, 0x37(1)
    stb 9, 0x38(1)
    stb 8, 0x39(1)
    stb 7, 0x3a(1)
    stb 6, 0x3b(1)
    stb 5, 0x3c(1)
    stb 4, 0x3d(1)
    stb 3, 0x3e(1)
    stb 14, 0x44(1)
    stw 0, 0x4c(1)
    stw 15, 0x50(1)
L_801EFFC0:
    lwz 3, 0xdc(30)
    lwz 0, 0xd8(30)
    subi 4, 3, 0x19
    cmpw 0, 4
    .4byte 0x4181000C # bgt .L_801EFFDC
    cmpwi 3, 0x19
    .4byte 0x408000D8 # bge .L_801F00B0
L_801EFFDC:
    cmpwi 3, 0x19
    .4byte 0x40800010 # bge .L_801EFFF0
    mulli 0, 0, 0xff
    divw 5, 0, 3
    .4byte 0x48000024 # b .L_801F0010
L_801EFFF0:
    subf 0, 4, 0
    lis 3, 0x51ec
    mulli 0, 0, 0xff
    subi 3, 3, 0x7ae1
    mulhw 0, 3, 0
    srawi 0, 0, 3
    srwi 3, 0, 31
    add 5, 0, 3
L_801F0010:
    lwz 0, 0xf8(30)
    cmpwi 0, 0x2
    .4byte 0x40820048 # bne .L_801F0060
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    stw 3, 0x5c(1)
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    stw 0, 0x58(1)
    .4byte 0xC062C7F0 # lfs f3, lbl_8053F790@sda21(r0)
    lfd 0, 0x58(1)
    lfs 2, 0x14(30)
    fsubs 0, 0, 1
    fnmsubs 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    neg 0, 3
    orc 0, 3, 0
    srawi 0, 0, 31
    andc 5, 3, 0
L_801F0060:
    lwz 0, 0xfc(30)
    cmpwi 0, 0x5
    .4byte 0x40820024 # bne .L_801F008C
    lbz 4, 0x2c(1)
    srawi 0, 5, 1
    lbz 3, 0x2d(1)
    add 4, 4, 5
    add 0, 3, 0
    stb 4, 0x2c(1)
    stb 0, 0x2d(1)
    .4byte 0x48000028 # b .L_801F00B0
L_801F008C:
    lbz 0, 0x2c(1)
    lbz 3, 0x2d(1)
    add 4, 0, 5
    lbz 0, 0x2e(1)
    add 3, 3, 5
    stb 4, 0x2c(1)
    add 0, 0, 5
    stb 3, 0x2d(1)
    stb 0, 0x2e(1)
L_801F00B0:
    psq_l 2, 0x3c(30), 0, 0
    lfs 29, 0x44(30)
    ps_mul 2, 2, 2
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    ps_madd 1, 29, 29, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    .4byte 0x40810168 # ble .L_801F0234
    li 0, 0x8
    stw 0, 0x48(1)
    .4byte 0x4800015C # b .L_801F0234
L_801F00DC:
    cmplwi 31, 0x0
    .4byte 0x41820120 # beq .L_801F0200
    lbz 28, 0x2d(31)
    lwz 0, 0x28(31)
    stw 28, 0x74(1)
    lbz 28, 0x2e(31)
    stw 0, 0x40(1)
    lwz 0, 0x74(1)
    stw 28, 0x78(1)
    lwz 28, 0x30(31)
    stb 0, 0x45(1)
    lwz 0, 0x78(1)
    stw 28, 0x7c(1)
    lwz 28, 0x34(31)
    stb 0, 0x46(1)
    lwz 0, 0x7c(1)
    stw 28, 0x80(1)
    lwz 27, 0x0(31)
    lwz 26, 0x4(31)
    lwz 25, 0x8(31)
    lwz 24, 0xc(31)
    lbz 23, 0x10(31)
    lbz 22, 0x11(31)
    lbz 21, 0x12(31)
    lbz 20, 0x13(31)
    lbz 19, 0x14(31)
    lbz 18, 0x15(31)
    lbz 17, 0x16(31)
    lbz 16, 0x17(31)
    lwz 15, 0x18(31)
    lbz 14, 0x1c(31)
    lbz 12, 0x1d(31)
    lbz 11, 0x1e(31)
    lbz 10, 0x1f(31)
    lbz 9, 0x20(31)
    lbz 8, 0x21(31)
    lbz 7, 0x22(31)
    lbz 6, 0x23(31)
    lbz 5, 0x24(31)
    lbz 4, 0x25(31)
    lbz 3, 0x26(31)
    lbz 29, 0x2c(31)
    lwz 28, 0x38(31)
    stw 0, 0x48(1)
    lwz 0, 0x80(1)
    stw 27, 0x18(1)
    stw 26, 0x1c(1)
    stw 25, 0x20(1)
    stw 24, 0x24(1)
    stb 23, 0x28(1)
    stb 22, 0x29(1)
    stb 21, 0x2a(1)
    stb 20, 0x2b(1)
    stb 19, 0x2c(1)
    stb 18, 0x2d(1)
    stb 17, 0x2e(1)
    stb 16, 0x2f(1)
    stw 15, 0x30(1)
    stb 14, 0x34(1)
    stb 12, 0x35(1)
    stb 11, 0x36(1)
    stb 10, 0x37(1)
    stb 9, 0x38(1)
    stb 8, 0x39(1)
    stb 7, 0x3a(1)
    stb 6, 0x3b(1)
    stb 5, 0x3c(1)
    stb 4, 0x3d(1)
    stb 3, 0x3e(1)
    stb 29, 0x44(1)
    stw 0, 0x4c(1)
    stw 28, 0x50(1)
    .4byte 0x4800000C # b .L_801F0208
L_801F0200:
    lwz 0, 0x150(30)
    stw 0, 0x48(1)
L_801F0208:
    lwz 0, 0x138(30)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801F0218
    stw 0, 0x30(1)
L_801F0218:
    lwz 0, 0x188(30)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_801F0234
    li 3, 0xc8
    li 0, 0x41
    stb 3, 0x2c(1)
    stb 0, 0x2d(1)
L_801F0234:
    psq_l 0, 0xc(30), 0, 0
    addi 4, 1, 0xc
    lfs 3, 0x14(30)
    psq_st 0, 0x0(4), 0, 0
    lwz 0, 0x4(30)
    fadds 0, 3, 28
    lfs 2, 0xc(1)
    lfs 1, 0x10(1)
    cmpwi 0, 0x8
    fadds 2, 2, 30
    stfs 3, 0x14(1)
    fadds 1, 1, 31
    stfs 0, 0x14(1)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    .4byte 0x40800018 # bge .L_801F0288
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 6, 1, 0x18
    lwz 5, 0x8(1)
    lwz 3, 0x20(3)
    bl fn_802F745C
L_801F0288:
    psq_l 31, 0x108(1), 0, 0
    lfd 31, 0x100(1)
    psq_l 30, 0xf8(1), 0, 0
    lfd 30, 0xf0(1)
    psq_l 29, 0xe8(1), 0, 0
    lfd 29, 0xe0(1)
    psq_l 28, 0xd8(1), 0, 0
    lfd 28, 0xd0(1)
    lmw 14, 0x88(1)
    lwz 0, 0x114(1)
    mtlr 0
    addi 1, 1, 0x110
    blr

