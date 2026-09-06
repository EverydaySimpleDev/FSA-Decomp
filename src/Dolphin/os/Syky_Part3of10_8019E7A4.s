# SYKY cluster, part 3/10 (Track A byte-match + overview - 364B). draw()
# sub-piece #2 - uses the confirmed 3D render-primitive fn_801F06F0.
.section extab, "a"
.balign 4
.global etb_800078F4
etb_800078F4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800078F4, 8

.section extabindex, "a"
.balign 4
.global eti_800146EC
eti_800146EC:
    .4byte fn_8019E7A4
    .4byte 0x0000016C
    .4byte etb_800078F4
.size eti_800146EC, 12

.text
.balign 4
.global fn_8019E7A4

fn_8019E7A4:
    stwu 1, -0x80(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 10, 1, 0x38
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8019E828
L_8019E7C8:
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
L_8019E828:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8019E7C8
    .4byte 0xC002B4C4 # lfs f0, lbl_8053E464@sda21(r0)
    li 10, 0x0
    li 9, 0x1
    li 11, -0x1
    li 8, 0x3
    li 5, 0x2
    stw 11, 0x48(1)
    lis 4, lbl_80468494@ha
    .4byte 0xC022B4C0 # lfs f1, lbl_8053E460@sda21(r0)
    addi 0, 1, 0x8
    stw 10, 0x4c(1)
    addi 4, 4, lbl_80468494@l
    fmr 2, 1
    addi 6, 1, 0x38
    stw 10, 0x50(1)
    li 7, 0x0
    stb 10, 0x54(1)
    stb 10, 0x55(1)
    stb 10, 0x56(1)
    stb 9, 0x57(1)
    stb 9, 0x58(1)
    stb 10, 0x59(1)
    stb 10, 0x5a(1)
    stb 10, 0x5b(1)
    stb 10, 0x5c(1)
    stb 10, 0x5d(1)
    stb 9, 0x5e(1)
    stw 8, 0x60(1)
    stb 9, 0x64(1)
    stb 10, 0x65(1)
    stb 10, 0x66(1)
    stw 11, 0x68(1)
    stw 10, 0x6c(1)
    stw 5, 0x70(1)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    lfs 3, 0x290(3)
    stfs 3, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
    lwz 5, 0x264(3)
    addi 5, 5, 0x8
    bl fn_801F06F0
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

