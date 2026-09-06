# TENN cluster, part 3/9 (Track A byte-match + overview - 636B). draw()
# sub-piece #2 - uses the confirmed effect-emission fn_801EFD34 and
# fn_804032E8 (same idiom seen in FGN2/BPH2's own draw() halves).
.section extab, "a"
.balign 4
.global etb_8000794C
etb_8000794C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000794C, 8

.section extabindex, "a"
.balign 4
.global eti_80014770
eti_80014770:
    .4byte fn_801A0910
    .4byte 0x0000027C
    .4byte etb_8000794C
.size eti_80014770, 12

.text
.balign 4
.global fn_801A0910

fn_801A0910:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801A09A4
L_801A0944:
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
L_801A09A4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801A0944
    li 9, 0x0
    li 8, 0x1
    li 10, -0x1
    li 7, 0x3
    li 6, 0x2
    stw 10, 0x48(1)
    .4byte 0xC042B550 # lfs f2, lbl_8053E4F0@sda21(r0)
    lis 3, lbl_804A2BE4@ha
    stw 9, 0x4c(1)
    lis 5, 0x5449
    addi 0, 1, 0x8
    .4byte 0xC002B560 # lfs f0, lbl_8053E500@sda21(r0)
    stw 9, 0x50(1)
    addi 4, 3, lbl_804A2BE4@l
    addi 3, 5, 0x4d47
    stb 9, 0x54(1)
    stb 9, 0x55(1)
    stb 9, 0x56(1)
    stb 8, 0x57(1)
    stb 8, 0x58(1)
    stb 9, 0x59(1)
    stb 9, 0x5a(1)
    stb 9, 0x5b(1)
    stb 9, 0x5c(1)
    stb 9, 0x5d(1)
    stb 8, 0x5e(1)
    stw 7, 0x60(1)
    stb 8, 0x64(1)
    stb 9, 0x65(1)
    stb 9, 0x66(1)
    stw 10, 0x68(1)
    stw 9, 0x6c(1)
    stw 6, 0x70(1)
    lfs 31, 0x10(31)
    stfs 2, 0x14(1)
    stfs 2, 0x24(1)
    stfs 2, 0x34(1)
    lfs 3, 0x328(31)
    lfs 1, 0x324(31)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 2, 0x10(1)
    stfs 2, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 2, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
    lfs 1, 0x33c(31)
    fsubs 0, 1, 0
    fadds 0, 31, 0
    stfs 0, 0x10(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    mr 4, 3
    .4byte 0xC042B564 # lfs f2, lbl_8053E504@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x38
    li 6, 0x7
    bl fn_801EFD34
    stfs 31, 0x10(31)
    lwz 0, 0x2c4(31)
    cmpwi 0, 0x0
    .4byte 0x418000B0 # blt .L_801A0B70
    lwz 4, 0x26c(31)
    lis 0, 0x4330
    .4byte 0x80AD9368 # lwz r5, lbl_8053AF28@sda21(r0)
    lis 3, 0x8889
    clrlwi 6, 4, 24
    stw 0, 0x78(1)
    subi 4, 3, 0x7777
    .4byte 0xC862B570 # lfd f3, lbl_8053E510@sda21(r0)
    sth 6, 0x10(5)
    .4byte 0xC022B568 # lfs f1, lbl_8053E508@sda21(r0)
    .4byte 0x806D9368 # lwz r3, lbl_8053AF28@sda21(r0)
    .4byte 0xC002B56C # lfs f0, lbl_8053E50C@sda21(r0)
    lbz 0, 0x14(3)
    ori 0, 0, 0x1
    stb 0, 0x14(3)
    lwz 6, 0x2c4(31)
    .4byte 0x806D9368 # lwz r3, lbl_8053AF28@sda21(r0)
    mulhw 0, 4, 6
    add 0, 0, 6
    srawi 4, 0, 5
    srwi 5, 4, 31
    srawi 0, 0, 5
    add 4, 4, 5
    mulli 5, 4, 0x3c
    srwi 4, 0, 31
    add 0, 0, 4
    stb 0, 0x12(3)
    subf 4, 5, 6
    xoris 0, 4, 0x8000
    stw 0, 0x7c(1)
    .4byte 0x806D9368 # lwz r3, lbl_8053AF28@sda21(r0)
    lfd 2, 0x78(1)
    fsubs 2, 2, 3
    fmuls 1, 1, 2
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stb 0, 0x13(3)
    .4byte 0x806D9368 # lwz r3, lbl_8053AF28@sda21(r0)
    lbz 0, 0x14(3)
    ori 0, 0, 0x2
    stb 0, 0x14(3)
L_801A0B70:
    psq_l 31, 0x98(1), 0, 0
    lwz 0, 0xa4(1)
    lfd 31, 0x90(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

