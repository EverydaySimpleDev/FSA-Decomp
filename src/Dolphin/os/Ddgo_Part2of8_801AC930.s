# DDGO cluster, part 2/8 (Track A byte-match + overview - 544B).
# draw() body - uses the confirmed effect-emission fn_801EFD34 and
# fn_804032E8 (same idiom seen in FGN2/BPH2/TENN's own draw() halves).
.section extab, "a"
.balign 4
.global etb_80007AF4
etb_80007AF4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007AF4, 8

.section extabindex, "a"
.balign 4
.global eti_800149EC
eti_800149EC:
    .4byte fn_801AC930
    .4byte 0x00000220
    .4byte etb_80007AF4
.size eti_800149EC, 12

.text
.balign 4
.global fn_801AC930

fn_801AC930:
    stwu 1, -0x80(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 9, 1, 0x38
    stw 31, 0x7c(1)
    mr 31, 3
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801AC9BC
L_801AC95C:
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
L_801AC9BC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801AC95C
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    .4byte 0xC022B830 # lfs f1, lbl_8053E7D0@sda21(r0)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
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
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    lwz 0, 0x244(31)
    lwz 5, 0x258(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x408200FC # bne .L_801ACB3C
    cmplwi 5, 0x2
    .4byte 0x40810024 # ble .L_801ACA6C
    subi 0, 5, 0xc
    cmplwi 0, 0x2
    .4byte 0x40810018 # ble .L_801ACA6C
    subi 0, 5, 0x18
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_801ACA6C
    cmpwi 5, 0x20
    .4byte 0x40820008 # bne .L_801ACA70
L_801ACA6C:
    .4byte 0xC022B834 # lfs f1, lbl_8053E7D4@sda21(r0)
L_801ACA70:
    lfs 0, 0x274(31)
    addi 0, 1, 0x8
    lfs 2, 0x278(31)
    fmuls 1, 0, 1
    .4byte 0xC002B838 # lfs f0, lbl_8053E7D8@sda21(r0)
    stfs 2, 0x1c(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 2, 0x30(1)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    stw 0, 0x50(1)
    lwz 0, 0x294(31)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_801ACAEC
    addi 0, 5, 0x24
    lis 3, lbl_804A3208@ha
    slwi 0, 0, 2
    lis 5, 0x5449
    addi 3, 3, lbl_804A3208@l
    lwzx 4, 3, 0
    addi 3, 5, 0x4d47
    bl fn_804032E8
    mr 4, 3
    .4byte 0x48000038 # b .L_801ACB20
L_801ACAEC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, lbl_804A3208@ha
    lis 6, 0x5449
    slwi 0, 5, 2
    lwz 3, 0xa4(3)
    addi 5, 4, lbl_804A3208@l
    addi 4, 6, 0x4d47
    lwzx 5, 5, 0
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 4, 3
L_801ACB20:
    .4byte 0xC022B838 # lfs f1, lbl_8053E7D8@sda21(r0)
    mr 3, 31
    .4byte 0xC042B83C # lfs f2, lbl_8053E7DC@sda21(r0)
    addi 5, 1, 0x38
    fmr 3, 1
    li 6, 0x7
    bl fn_801EFD34
L_801ACB3C:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

