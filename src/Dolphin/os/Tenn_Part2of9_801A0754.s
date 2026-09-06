# TENN cluster, part 2/9 (444B). draw() sub-piece #1 - uses the
# confirmed 3D render-primitive fn_801F06F0.
.section extab, "a"
.balign 4
.global etb_80007944
etb_80007944:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007944, 8

.section extabindex, "a"
.balign 4
.global eti_80014764
eti_80014764:
    .4byte fn_801A0754
    .4byte 0x000001BC
    .4byte etb_80007944
.size eti_80014764, 12

.text
.balign 4
.global fn_801A0754

fn_801A0754:
    stwu 1, -0x80(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 10, 1, 0x38
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801A07D8
L_801A0778:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_801A07D8:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801A0778
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    .4byte 0xC002B554 # lfs f0, lbl_8053E4F4@sda21(r0)
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 0, 0x274(3)
    cmpwi 0, 0x2
    .4byte 0x4082002C # bne .L_801A08B8
    .4byte 0xC002B558 # lfs f0, lbl_8053E4F8@sda21(r0)
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
L_801A08B8:
    addi 4, 1, 0x8
    li 0, 0x11
    stw 4, 0x50(1)
    lis 4, lbl_804684E8@ha
    .4byte 0xC022B55C # lfs f1, lbl_8053E4FC@sda21(r0)
    addi 4, 4, lbl_804684E8@l
    stw 0, 0x68(1)
    addi 6, 1, 0x38
    fmr 2, 1
    li 7, 0x0
    lfs 0, 0x340(3)
    fctiwz 0, 0
    stfd 0, 0x78(1)
    lwz 0, 0x7c(1)
    stb 0, 0x4b(1)
    lwz 5, 0x264(3)
    addi 5, 5, 0x2ba
    bl fn_801F06F0
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

