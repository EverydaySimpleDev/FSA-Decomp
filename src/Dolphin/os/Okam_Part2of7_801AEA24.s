# OKAM cluster, part 2/7 (360B). draw()-related - uses the confirmed
# effect-emission fn_801EFD34.
.section extab, "a"
.balign 4
.global etb_80007B3C
etb_80007B3C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007B3C, 8

.section extabindex, "a"
.balign 4
.global eti_80014A58
eti_80014A58:
    .4byte fn_801AEA24
    .4byte 0x00000168
    .4byte etb_80007B3C
.size eti_80014A58, 12

.text
.balign 4
.global fn_801AEA24

fn_801AEA24:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    mr 31, 3
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801AEAB0
L_801AEA50:
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
L_801AEAB0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801AEA50
    li 9, 0x0
    li 8, 0x1
    li 10, -0x1
    li 7, 0x3
    li 0, 0x2
    stw 10, 0x18(1)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804A33D0@ha
    stw 9, 0x1c(1)
    lis 4, 0x5449
    addi 5, 3, lbl_804A33D0@l
    stw 9, 0x20(1)
    addi 4, 4, 0x4d47
    stb 9, 0x24(1)
    stb 9, 0x25(1)
    stb 9, 0x26(1)
    stb 8, 0x27(1)
    stb 8, 0x28(1)
    stb 9, 0x29(1)
    stb 9, 0x2a(1)
    stb 9, 0x2b(1)
    stb 9, 0x2c(1)
    stb 9, 0x2d(1)
    stb 8, 0x2e(1)
    stw 7, 0x30(1)
    stb 8, 0x34(1)
    stb 9, 0x35(1)
    stb 9, 0x36(1)
    stw 10, 0x38(1)
    stw 9, 0x3c(1)
    stw 0, 0x40(1)
    lwz 3, 0xa4(6)
    lwz 0, 0x24c(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lwz 12, 0x18(12)
    lwzx 5, 5, 0
    mtctr 12
    bctrl
    lfs 1, 0x26c(31)
    mr 4, 3
    lfs 2, 0x270(31)
    mr 3, 31
    .4byte 0xC062B898 # lfs f3, lbl_8053E838@sda21(r0)
    addi 5, 1, 0x8
    li 6, -0x1
    bl fn_801EFD34
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

