# 901KB-gap non-actor manager block: 1 function(s), 872 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010D44
etb_80010D44:
    .4byte 0x418A0000
    .4byte 0x00000000
.size etb_80010D44, 8

.section extabindex, "a"
.balign 4
.global eti_80020D88
eti_80020D88:
    .4byte fn_80437C10
    .4byte 0x00000368
    .4byte etb_80010D44
.size eti_80020D88, 12

.text
.balign 4
.global fn_80437C10

fn_80437C10:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stfd 30, 0xe0(1)
    psq_st 30, 0xe8(1), 0, 0
    stfd 29, 0xd0(1)
    psq_st 29, 0xd8(1), 0, 0
    stfd 28, 0xc0(1)
    psq_st 28, 0xc8(1), 0, 0
    stfd 27, 0xb0(1)
    psq_st 27, 0xb8(1), 0, 0
    stfd 26, 0xa0(1)
    psq_st 26, 0xa8(1), 0, 0
    stmw 24, 0x80(1)
    lis 6, lbl_80529DEC@ha
    lis 7, lbl_804B16C0@ha
    lis 5, lbl_804B16D0@ha
    lis 4, lbl_8050DB0C@ha
    addi 29, 6, lbl_80529DEC@l
    addi 28, 7, lbl_804B16C0@l
    addi 26, 5, lbl_804B16D0@l
    mr 24, 3
    mr 27, 29
    addi 30, 4, lbl_8050DB0C@l
    li 25, 0x0
L_80437C7C:
    li 0, 0x1
    lbz 3, 0x236(29)
    slw 0, 0, 25
    clrlwi 31, 0, 24
    and 3, 3, 31
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820274 # beq .L_80437F10
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80437D18
L_80437CB8:
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
L_80437D18:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80437CB8
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x65(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 5, 0x54(1)
    lfs 29, 0x30(30)
    stb 5, 0x55(1)
    .4byte 0xC0220C68 # lfs f1, lbl_80543C08@sda21(r0)
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    stb 0, 0x55(1)
    stb 0, 0x54(1)
    stb 4, 0x65(1)
    bl sin
    frsp 28, 1
    .4byte 0xC0220C68 # lfs f1, lbl_80543C08@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC0220C68 # lfs f1, lbl_80543C08@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC0220C68 # lfs f1, lbl_80543C08@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC0220C68 # lfs f1, lbl_80543C08@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC0220C68 # lfs f1, lbl_80543C08@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0xC0020C68 # lfs f0, lbl_80543C08@sda21(r0)
    fmuls 7, 30, 26
    addi 3, 1, 0x8
    fneg 6, 27
    stfs 0, 0x14(1)
    fmuls 10, 31, 3
    stfs 0, 0x24(1)
    fmuls 2, 28, 27
    addi 0, 25, 0x240
    fmuls 9, 31, 26
    stfs 0, 0x34(1)
    fmuls 1, 28, 26
    stw 3, 0x50(1)
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x8(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x18(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x28(1)
    fmuls 0, 29, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lbzx 0, 24, 0
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_80437EC4
    lis 3, 0x5449
    lwz 4, 0x0(28)
    addi 3, 3, 0x4d47
    bl fn_804030C4
    lwz 0, 0x4(24)
    addi 4, 27, 0x1c4
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80437F00
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 6, 1, 0x38
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x48000040 # b .L_80437F00
L_80437EC4:
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_80437F00
    lis 3, 0x5449
    lwz 4, 0x0(26)
    addi 3, 3, 0x4d47
    bl fn_804030C4
    lwz 0, 0x4(24)
    addi 4, 27, 0x1c4
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80437F00
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 6, 1, 0x38
    lwz 3, 0x20(7)
    bl fn_802F745C
L_80437F00:
    lbz 0, 0x236(29)
    andc 0, 0, 31
    stb 0, 0x236(29)
    .4byte 0x48000010 # b .L_80437F1C
L_80437F10:
    addi 0, 25, 0x240
    li 3, 0xff
    stbx 3, 24, 0
L_80437F1C:
    addi 25, 25, 0x1
    addi 27, 27, 0xc
    cmpwi 25, 0x4
    addi 26, 26, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FD4C # blt .L_80437C7C
    psq_l 31, 0xf8(1), 0, 0
    lfd 31, 0xf0(1)
    psq_l 30, 0xe8(1), 0, 0
    lfd 30, 0xe0(1)
    psq_l 29, 0xd8(1), 0, 0
    lfd 29, 0xd0(1)
    psq_l 28, 0xc8(1), 0, 0
    lfd 28, 0xc0(1)
    psq_l 27, 0xb8(1), 0, 0
    lfd 27, 0xb0(1)
    psq_l 26, 0xa8(1), 0, 0
    lfd 26, 0xa0(1)
    lmw 24, 0x80(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

