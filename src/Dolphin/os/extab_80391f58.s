# fn_80391F58 - actor@lbl_804AF490: major helper function (0x12D0, largest
# piece in this actor's cluster)
# Calls fn_80455770 an extreme 34 times - clearly a heavy consumer of
# whatever shared subsystem that function represents (likely math/animation
# given the density). Track A: byte-match verified, structural overview per
# the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000EF48
etb_8000EF48:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000EF48, 8

.section extabindex, "a"
.balign 4
.global eti_8001ED90
eti_8001ED90:
    .4byte fn_80391F58
    .4byte 0x000012D0
    .4byte etb_8000EF48
.size eti_8001ED90, 12

.text
.balign 4
.global fn_80391F58

fn_80391F58:
    stwu 1, -0x5c0(1)
    mflr 0
    stw 0, 0x5c4(1)
    stfd 31, 0x5b0(1)
    psq_st 31, 0x5b8(1), 0, 0
    stw 31, 0x5ac(1)
    mr 31, 3
    lis 3, 0x4330
    lwz 4, 0x230(31)
    lwz 0, 0x23c(31)
    xoris 4, 4, 0x8000
    stw 3, 0x598(1)
    .4byte 0xC8420200 # lfd f2, lbl_805431A0@sda21(r0)
    cmplwi 0, 0xb
    stw 4, 0x59c(1)
    .4byte 0xC00201F8 # lfs f0, lbl_80543198@sda21(r0)
    lfd 1, 0x598(1)
    .4byte 0xC06201F4 # lfs f3, lbl_80543194@sda21(r0)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 31, 3, 0
    .4byte 0x41811260 # bgt .L_8039320C
    lis 3, jumptable_804AF514@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF514@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080123C # bge .L_8039320C
    fctiwz 0, 31
    li 3, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 3, 0x114(1)
    addi 5, 1, 0x2a4
    stfd 0, 0x598(1)
    addi 6, 1, 0x8c
    psq_l 2, 0xc(31), 0, 0
    li 4, 0x1
    lwz 0, 0x59c(1)
    stb 8, 0x115(1)
    lfs 0, 0x14(31)
    stb 7, 0x116(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 0, 0x117(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    lwz 0, 0x114(1)
    psq_st 2, 0x43c(1), 0, 0
    stfs 0, 0x444(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 0, 0x2ac(1)
    stw 0, 0x8c(1)
    bl fn_80455770
    .4byte 0x480011D8 # b .L_8039320C
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408011CC # bge .L_8039320C
    fctiwz 0, 31
    li 3, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 3, 0x110(1)
    addi 5, 1, 0x298
    stfd 0, 0x598(1)
    addi 6, 1, 0x88
    psq_l 2, 0xc(31), 0, 0
    li 4, 0x5
    lwz 0, 0x59c(1)
    stb 8, 0x111(1)
    lfs 0, 0x14(31)
    stb 7, 0x112(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 0, 0x113(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    lwz 0, 0x110(1)
    psq_st 2, 0x430(1), 0, 0
    stfs 0, 0x438(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 0, 0x2a0(1)
    stw 0, 0x88(1)
    bl fn_80455770
    .4byte 0x48001168 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x594(1)
    stfs 0, 0x58c(1)
    stfs 1, 0x590(1)
    .4byte 0x40800064 # bge .L_80392134
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x10c(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x28c
    psq_l 3, 0x58c(1), 0, 0
    addi 6, 1, 0x84
    lwz 0, 0x59c(1)
    li 4, 0x2
    stb 8, 0x10d(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x10e(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x10f(1)
    lwz 0, 0x10c(1)
    psq_st 3, 0x424(1), 0, 0
    stfs 2, 0x42c(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x294(1)
    stw 0, 0x84(1)
    bl fn_80455770
L_80392134:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x588(1)
    stfs 0, 0x580(1)
    stfs 1, 0x584(1)
    .4byte 0x408010B0 # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x108(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x280
    psq_l 3, 0x580(1), 0, 0
    addi 6, 1, 0x80
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0x109(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x10a(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x10b(1)
    lwz 0, 0x108(1)
    psq_st 3, 0x418(1), 0, 0
    stfs 2, 0x420(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x288(1)
    stw 0, 0x80(1)
    bl fn_80455770
    .4byte 0x4800104C # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x57c(1)
    stfs 0, 0x574(1)
    stfs 1, 0x578(1)
    .4byte 0x40800064 # bge .L_80392250
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x104(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x274
    psq_l 3, 0x574(1), 0, 0
    addi 6, 1, 0x7c
    lwz 0, 0x59c(1)
    li 4, 0x5
    stb 8, 0x105(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x106(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x107(1)
    lwz 0, 0x104(1)
    psq_st 3, 0x40c(1), 0, 0
    stfs 2, 0x414(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x27c(1)
    stw 0, 0x7c(1)
    bl fn_80455770
L_80392250:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x570(1)
    stfs 0, 0x568(1)
    stfs 1, 0x56c(1)
    .4byte 0x40800F94 # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x100(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x268
    psq_l 3, 0x568(1), 0, 0
    addi 6, 1, 0x78
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0x101(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x102(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x103(1)
    lwz 0, 0x100(1)
    psq_st 3, 0x400(1), 0, 0
    stfs 2, 0x408(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x270(1)
    stw 0, 0x78(1)
    bl fn_80455770
    .4byte 0x48000F30 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x564(1)
    stfs 0, 0x55c(1)
    stfs 1, 0x560(1)
    .4byte 0x40800064 # bge .L_8039236C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xfc(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x25c
    psq_l 3, 0x55c(1), 0, 0
    addi 6, 1, 0x74
    lwz 0, 0x59c(1)
    li 4, 0x1
    stb 8, 0xfd(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xfe(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xff(1)
    lwz 0, 0xfc(1)
    psq_st 3, 0x3f4(1), 0, 0
    stfs 2, 0x3fc(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x264(1)
    stw 0, 0x74(1)
    bl fn_80455770
L_8039236C:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_803923D8
    fctiwz 0, 31
    li 3, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 3, 0xf8(1)
    addi 5, 1, 0x250
    stfd 0, 0x598(1)
    addi 6, 1, 0x70
    psq_l 2, 0xc(31), 0, 0
    li 4, 0x0
    lwz 0, 0x59c(1)
    stb 8, 0xf9(1)
    lfs 0, 0x14(31)
    stb 7, 0xfa(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 0, 0xfb(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    lwz 0, 0xf8(1)
    psq_st 2, 0x3e8(1), 0, 0
    stfs 0, 0x3f0(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 0, 0x258(1)
    stw 0, 0x70(1)
    bl fn_80455770
L_803923D8:
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x558(1)
    stfs 0, 0x550(1)
    stfs 1, 0x554(1)
    .4byte 0x40800E0C # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xf4(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x244
    psq_l 3, 0x550(1), 0, 0
    addi 6, 1, 0x6c
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xf5(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xf6(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xf7(1)
    lwz 0, 0xf4(1)
    psq_st 3, 0x3dc(1), 0, 0
    stfs 2, 0x3e4(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x24c(1)
    stw 0, 0x6c(1)
    bl fn_80455770
    .4byte 0x48000DA8 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x54c(1)
    stfs 0, 0x544(1)
    stfs 1, 0x548(1)
    .4byte 0x40800064 # bge .L_803924F4
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xf0(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x238
    psq_l 3, 0x544(1), 0, 0
    addi 6, 1, 0x68
    lwz 0, 0x59c(1)
    li 4, 0x1
    stb 8, 0xf1(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xf2(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xf3(1)
    lwz 0, 0xf0(1)
    psq_st 3, 0x3d0(1), 0, 0
    stfs 2, 0x3d8(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x240(1)
    stw 0, 0x68(1)
    bl fn_80455770
L_803924F4:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_80392560
    fctiwz 0, 31
    li 3, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 3, 0xec(1)
    addi 5, 1, 0x22c
    stfd 0, 0x598(1)
    addi 6, 1, 0x64
    psq_l 2, 0xc(31), 0, 0
    li 4, 0x5
    lwz 0, 0x59c(1)
    stb 8, 0xed(1)
    lfs 0, 0x14(31)
    stb 7, 0xee(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 0, 0xef(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    lwz 0, 0xec(1)
    psq_st 2, 0x3c4(1), 0, 0
    stfs 0, 0x3cc(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 0, 0x234(1)
    stw 0, 0x64(1)
    bl fn_80455770
L_80392560:
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x540(1)
    stfs 0, 0x538(1)
    stfs 1, 0x53c(1)
    .4byte 0x40800C84 # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xe8(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x220
    psq_l 3, 0x538(1), 0, 0
    addi 6, 1, 0x60
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xe9(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xea(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xeb(1)
    lwz 0, 0xe8(1)
    psq_st 3, 0x3b8(1), 0, 0
    stfs 2, 0x3c0(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x228(1)
    stw 0, 0x60(1)
    bl fn_80455770
    .4byte 0x48000C20 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x534(1)
    stfs 0, 0x52c(1)
    stfs 1, 0x530(1)
    .4byte 0x40800064 # bge .L_8039267C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xe4(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x214
    psq_l 3, 0x52c(1), 0, 0
    addi 6, 1, 0x5c
    lwz 0, 0x59c(1)
    li 4, 0x2
    stb 8, 0xe5(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xe6(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xe7(1)
    lwz 0, 0xe4(1)
    psq_st 3, 0x3ac(1), 0, 0
    stfs 2, 0x3b4(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x21c(1)
    stw 0, 0x5c(1)
    bl fn_80455770
L_8039267C:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_803926E8
    fctiwz 0, 31
    li 3, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 3, 0xe0(1)
    addi 5, 1, 0x208
    stfd 0, 0x598(1)
    addi 6, 1, 0x58
    psq_l 2, 0xc(31), 0, 0
    li 4, 0x0
    lwz 0, 0x59c(1)
    stb 8, 0xe1(1)
    lfs 0, 0x14(31)
    stb 7, 0xe2(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 0, 0xe3(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    lwz 0, 0xe0(1)
    psq_st 2, 0x3a0(1), 0, 0
    stfs 0, 0x3a8(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 0, 0x210(1)
    stw 0, 0x58(1)
    bl fn_80455770
L_803926E8:
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x528(1)
    stfs 0, 0x520(1)
    stfs 1, 0x524(1)
    .4byte 0x40800AFC # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xdc(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x1fc
    psq_l 3, 0x520(1), 0, 0
    addi 6, 1, 0x54
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xdd(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xde(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xdf(1)
    lwz 0, 0xdc(1)
    psq_st 3, 0x394(1), 0, 0
    stfs 2, 0x39c(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x204(1)
    stw 0, 0x54(1)
    bl fn_80455770
    .4byte 0x48000A98 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x51c(1)
    stfs 0, 0x514(1)
    stfs 1, 0x518(1)
    .4byte 0x40800064 # bge .L_80392804
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xd8(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x1f0
    psq_l 3, 0x514(1), 0, 0
    addi 6, 1, 0x50
    lwz 0, 0x59c(1)
    li 4, 0x3
    stb 8, 0xd9(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xda(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xdb(1)
    lwz 0, 0xd8(1)
    psq_st 3, 0x388(1), 0, 0
    stfs 2, 0x390(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x1f8(1)
    stw 0, 0x50(1)
    bl fn_80455770
L_80392804:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_80392870
    fctiwz 0, 31
    li 3, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 3, 0xd4(1)
    addi 5, 1, 0x1e4
    stfd 0, 0x598(1)
    addi 6, 1, 0x4c
    psq_l 2, 0xc(31), 0, 0
    li 4, 0x0
    lwz 0, 0x59c(1)
    stb 8, 0xd5(1)
    lfs 0, 0x14(31)
    stb 7, 0xd6(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 0, 0xd7(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    lwz 0, 0xd4(1)
    psq_st 2, 0x37c(1), 0, 0
    stfs 0, 0x384(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 0, 0x1ec(1)
    stw 0, 0x4c(1)
    bl fn_80455770
L_80392870:
    lfs 1, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x510(1)
    stfs 0, 0x508(1)
    stfs 1, 0x50c(1)
    .4byte 0x40800974 # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xd0(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x1d8
    psq_l 3, 0x508(1), 0, 0
    addi 6, 1, 0x48
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xd1(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xd2(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xd3(1)
    lwz 0, 0xd0(1)
    psq_st 3, 0x370(1), 0, 0
    stfs 2, 0x378(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x1e0(1)
    stw 0, 0x48(1)
    bl fn_80455770
    .4byte 0x48000910 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 1, 1, 0
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x500(1)
    stfs 0, 0x4fc(1)
    stfs 3, 0x504(1)
    .4byte 0x40800064 # bge .L_80392994
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xcc(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x1cc
    psq_l 2, 0x4fc(1), 0, 0
    addi 6, 1, 0x44
    lwz 0, 0x59c(1)
    li 4, 0x1
    stb 8, 0xcd(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xce(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xcf(1)
    lwz 0, 0xcc(1)
    psq_st 2, 0x364(1), 0, 0
    stfs 3, 0x36c(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x1d4(1)
    stw 0, 0x44(1)
    bl fn_80455770
L_80392994:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x4f8(1)
    stfs 0, 0x4f0(1)
    stfs 1, 0x4f4(1)
    .4byte 0x40800064 # bge .L_80392A20
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xc8(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x1c0
    psq_l 3, 0x4f0(1), 0, 0
    addi 6, 1, 0x40
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xc9(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xca(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xcb(1)
    lwz 0, 0xc8(1)
    psq_st 3, 0x358(1), 0, 0
    stfs 2, 0x360(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x1c8(1)
    stw 0, 0x40(1)
    bl fn_80455770
L_80392A20:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x4ec(1)
    stfs 0, 0x4e4(1)
    stfs 1, 0x4e8(1)
    .4byte 0x40800064 # bge .L_80392AAC
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xc4(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x1b4
    psq_l 3, 0x4e4(1), 0, 0
    addi 6, 1, 0x3c
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xc5(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xc6(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xc7(1)
    lwz 0, 0xc4(1)
    psq_st 3, 0x34c(1), 0, 0
    stfs 2, 0x354(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x1bc(1)
    stw 0, 0x3c(1)
    bl fn_80455770
L_80392AAC:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    .4byte 0xC02201F0 # lfs f1, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x4dc(1)
    stfs 0, 0x4d8(1)
    stfs 3, 0x4e0(1)
    .4byte 0x40800730 # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xc0(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x1a8
    psq_l 2, 0x4d8(1), 0, 0
    addi 6, 1, 0x38
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xc1(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xc2(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xc3(1)
    lwz 0, 0xc0(1)
    psq_st 2, 0x340(1), 0, 0
    stfs 3, 0x348(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x1b0(1)
    stw 0, 0x38(1)
    bl fn_80455770
    .4byte 0x480006CC # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 1, 1, 0
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x4d0(1)
    stfs 0, 0x4cc(1)
    stfs 3, 0x4d4(1)
    .4byte 0x40800064 # bge .L_80392BD8
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xbc(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x19c
    psq_l 2, 0x4cc(1), 0, 0
    addi 6, 1, 0x34
    lwz 0, 0x59c(1)
    li 4, 0x1
    stb 8, 0xbd(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xbe(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xbf(1)
    lwz 0, 0xbc(1)
    psq_st 2, 0x334(1), 0, 0
    stfs 3, 0x33c(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x1a4(1)
    stw 0, 0x34(1)
    bl fn_80455770
L_80392BD8:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x4c8(1)
    stfs 0, 0x4c0(1)
    stfs 1, 0x4c4(1)
    .4byte 0x40800064 # bge .L_80392C64
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xb8(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x190
    psq_l 3, 0x4c0(1), 0, 0
    addi 6, 1, 0x30
    lwz 0, 0x59c(1)
    li 4, 0x5
    stb 8, 0xb9(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xba(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xbb(1)
    lwz 0, 0xb8(1)
    psq_st 3, 0x328(1), 0, 0
    stfs 2, 0x330(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x198(1)
    stw 0, 0x30(1)
    bl fn_80455770
L_80392C64:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x4bc(1)
    stfs 0, 0x4b4(1)
    stfs 1, 0x4b8(1)
    .4byte 0x40800064 # bge .L_80392CF0
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xb4(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x184
    psq_l 3, 0x4b4(1), 0, 0
    addi 6, 1, 0x2c
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xb5(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xb6(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xb7(1)
    lwz 0, 0xb4(1)
    psq_st 3, 0x31c(1), 0, 0
    stfs 2, 0x324(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x18c(1)
    stw 0, 0x2c(1)
    bl fn_80455770
L_80392CF0:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    .4byte 0xC02201F0 # lfs f1, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x4ac(1)
    stfs 0, 0x4a8(1)
    stfs 3, 0x4b0(1)
    .4byte 0x408004EC # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xb0(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x178
    psq_l 2, 0x4a8(1), 0, 0
    addi 6, 1, 0x28
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xb1(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xb2(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xb3(1)
    lwz 0, 0xb0(1)
    psq_st 2, 0x310(1), 0, 0
    stfs 3, 0x318(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x180(1)
    stw 0, 0x28(1)
    bl fn_80455770
    .4byte 0x48000488 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 1, 1, 0
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x4a0(1)
    stfs 0, 0x49c(1)
    stfs 3, 0x4a4(1)
    .4byte 0x40800064 # bge .L_80392E1C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xac(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x16c
    psq_l 2, 0x49c(1), 0, 0
    addi 6, 1, 0x24
    lwz 0, 0x59c(1)
    li 4, 0x2
    stb 8, 0xad(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xae(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xaf(1)
    lwz 0, 0xac(1)
    psq_st 2, 0x304(1), 0, 0
    stfs 3, 0x30c(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x174(1)
    stw 0, 0x24(1)
    bl fn_80455770
L_80392E1C:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x498(1)
    stfs 0, 0x490(1)
    stfs 1, 0x494(1)
    .4byte 0x40800064 # bge .L_80392EA8
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xa8(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x160
    psq_l 3, 0x490(1), 0, 0
    addi 6, 1, 0x20
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xa9(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xaa(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xab(1)
    lwz 0, 0xa8(1)
    psq_st 3, 0x2f8(1), 0, 0
    stfs 2, 0x300(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x168(1)
    stw 0, 0x20(1)
    bl fn_80455770
L_80392EA8:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x48c(1)
    stfs 0, 0x484(1)
    stfs 1, 0x488(1)
    .4byte 0x40800064 # bge .L_80392F34
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xa4(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x154
    psq_l 3, 0x484(1), 0, 0
    addi 6, 1, 0x1c
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xa5(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xa6(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xa7(1)
    lwz 0, 0xa4(1)
    psq_st 3, 0x2ec(1), 0, 0
    stfs 2, 0x2f4(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x15c(1)
    stw 0, 0x1c(1)
    bl fn_80455770
L_80392F34:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    .4byte 0xC02201F0 # lfs f1, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x47c(1)
    stfs 0, 0x478(1)
    stfs 3, 0x480(1)
    .4byte 0x408002A8 # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0xa0(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x148
    psq_l 2, 0x478(1), 0, 0
    addi 6, 1, 0x18
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0xa1(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0xa2(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0xa3(1)
    lwz 0, 0xa0(1)
    psq_st 2, 0x2e0(1), 0, 0
    stfs 3, 0x2e8(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x150(1)
    stw 0, 0x18(1)
    bl fn_80455770
    .4byte 0x48000244 # b .L_8039320C
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 1, 1, 0
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x470(1)
    stfs 0, 0x46c(1)
    stfs 3, 0x474(1)
    .4byte 0x40800064 # bge .L_80393060
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x9c(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x13c
    psq_l 2, 0x46c(1), 0, 0
    addi 6, 1, 0x14
    lwz 0, 0x59c(1)
    li 4, 0x3
    stb 8, 0x9d(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x9e(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x9f(1)
    lwz 0, 0x9c(1)
    psq_st 2, 0x2d4(1), 0, 0
    stfs 3, 0x2dc(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x144(1)
    stw 0, 0x14(1)
    bl fn_80455770
L_80393060:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x468(1)
    stfs 0, 0x460(1)
    stfs 1, 0x464(1)
    .4byte 0x40800064 # bge .L_803930EC
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x98(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x130
    psq_l 3, 0x460(1), 0, 0
    addi 6, 1, 0x10
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0x99(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x9a(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x9b(1)
    lwz 0, 0x98(1)
    psq_st 3, 0x2c8(1), 0, 0
    stfs 2, 0x2d0(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x138(1)
    stw 0, 0x10(1)
    bl fn_80455770
L_803930EC:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    stfs 2, 0x45c(1)
    stfs 0, 0x454(1)
    stfs 1, 0x458(1)
    .4byte 0x40800064 # bge .L_80393178
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x94(1)
    frsp 4, 2
    stfd 0, 0x598(1)
    addi 5, 1, 0x124
    psq_l 3, 0x454(1), 0, 0
    addi 6, 1, 0xc
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0x95(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x96(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x97(1)
    lwz 0, 0x94(1)
    psq_st 3, 0x2bc(1), 0, 0
    stfs 2, 0x2c4(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 4, 0x12c(1)
    stw 0, 0xc(1)
    bl fn_80455770
L_80393178:
    lfs 1, 0xc(31)
    .4byte 0xC00201FC # lfs f0, lbl_8054319C@sda21(r0)
    lwz 0, 0x4(31)
    fadds 0, 1, 0
    .4byte 0xC02201F0 # lfs f1, lbl_80543190@sda21(r0)
    lfs 3, 0x14(31)
    cmpwi 0, 0x8
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x44c(1)
    stfs 0, 0x448(1)
    stfs 3, 0x450(1)
    .4byte 0x40800064 # bge .L_8039320C
    fctiwz 0, 31
    li 4, 0xff
    li 8, 0xd2
    li 7, 0x0
    stb 4, 0x90(1)
    frsp 4, 3
    stfd 0, 0x598(1)
    addi 5, 1, 0x118
    psq_l 2, 0x448(1), 0, 0
    addi 6, 1, 0x8
    lwz 0, 0x59c(1)
    li 4, 0x0
    stb 8, 0x91(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x92(1)
    .4byte 0xC02201E8 # lfs f1, lbl_80543188@sda21(r0)
    stb 0, 0x93(1)
    lwz 0, 0x90(1)
    psq_st 2, 0x2b0(1), 0, 0
    stfs 3, 0x2b8(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 4, 0x120(1)
    stw 0, 0x8(1)
    bl fn_80455770
L_8039320C:
    psq_l 31, 0x5b8(1), 0, 0
    lwz 0, 0x5c4(1)
    lfd 31, 0x5b0(1)
    lwz 31, 0x5ac(1)
    mtlr 0
    addi 1, 1, 0x5c0
    blr

