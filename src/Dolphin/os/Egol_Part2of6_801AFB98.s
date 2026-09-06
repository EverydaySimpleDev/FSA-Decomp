# EGOL cluster, part 2/6 (444B). draw()-related - uses the confirmed
# effect-emission fn_801EFD34.
.section extab, "a"
.balign 4
.global etb_80007B74
etb_80007B74:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007B74, 8

.section extabindex, "a"
.balign 4
.global eti_80014AAC
eti_80014AAC:
    .4byte fn_801AFB98
    .4byte 0x000001BC
    .4byte etb_80007B74
.size eti_80014AAC, 12

.text
.balign 4
.global fn_801AFB98

fn_801AFB98:
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
    .4byte 0x48000064 # b .L_801AFC24
L_801AFBC4:
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
L_801AFC24:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801AFBC4
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    .4byte 0xC042B8E8 # lfs f2, lbl_8053E888@sda21(r0)
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
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_801AFCAC
    .4byte 0xC042B8EC # lfs f2, lbl_8053E88C@sda21(r0)
L_801AFCAC:
    .4byte 0xC022B8F0 # lfs f1, lbl_8053E890@sda21(r0)
    addi 0, 1, 0x8
    .4byte 0xC002B8E8 # lfs f0, lbl_8053E888@sda21(r0)
    lis 3, lbl_804A34F8@ha
    stfs 2, 0x8(1)
    lis 4, 0x5449
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    addi 5, 3, lbl_804A34F8@l
    stfs 1, 0xc(1)
    addi 4, 4, 0x4d47
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    stw 0, 0x50(1)
    lwz 3, 0xa4(6)
    lwz 0, 0x250(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lwz 12, 0x18(12)
    lwzx 5, 5, 0
    mtctr 12
    bctrl
    .4byte 0xC022B8F0 # lfs f1, lbl_8053E890@sda21(r0)
    mr 4, 3
    .4byte 0xC042B8F4 # lfs f2, lbl_8053E894@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x38
    li 6, 0x3
    bl fn_801EFD34
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

