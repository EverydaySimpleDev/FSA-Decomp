# SAFU cluster, part 2/4 (448B). draw()-related - uses the confirmed
# 3D render-primitive fn_801F06F0 and the confirmed HUD/map marker
# registration fn_803075AC.
.section extab, "a"
.balign 4
.global etb_80007C54
etb_80007C54:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007C54, 8

.section extabindex, "a"
.balign 4
.global eti_80014BFC
eti_80014BFC:
    .4byte fn_801B6694
    .4byte 0x000001C0
    .4byte etb_80007C54
.size eti_80014BFC, 12

.text
.balign 4
.global fn_801B6694

fn_801B6694:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x40
    stw 31, 0x8c(1)
    mr 31, 3
    stw 0, 0x50(1)
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_801B6720
L_801B66C0:
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
L_801B6720:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801B66C0
    .4byte 0xC062BAF8 # lfs f3, lbl_8053EA98@sda21(r0)
    li 11, 0x0
    li 10, 0x1
    li 12, -0x1
    li 9, 0x3
    li 8, 0x2
    .4byte 0xC022BAFC # lfs f1, lbl_8053EA9C@sda21(r0)
    lis 3, lbl_80469120@ha
    stw 12, 0x50(1)
    addi 4, 3, lbl_80469120@l
    fmr 2, 1
    addi 0, 1, 0x10
    stw 11, 0x54(1)
    mr 3, 31
    addi 6, 1, 0x40
    li 5, 0xe6
    stw 11, 0x58(1)
    li 7, 0x0
    stb 11, 0x5c(1)
    stb 11, 0x5d(1)
    stb 11, 0x5e(1)
    stb 10, 0x5f(1)
    stb 10, 0x60(1)
    stb 11, 0x61(1)
    stb 11, 0x62(1)
    stb 11, 0x63(1)
    stb 11, 0x64(1)
    stb 11, 0x65(1)
    stb 10, 0x66(1)
    stw 9, 0x68(1)
    stb 10, 0x6c(1)
    stb 11, 0x6d(1)
    stb 11, 0x6e(1)
    stw 12, 0x70(1)
    stw 11, 0x74(1)
    stw 8, 0x78(1)
    stfs 3, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 3, 0x3c(1)
    lfs 4, 0x25c(31)
    lfs 0, 0x258(31)
    stfs 0, 0x10(1)
    stfs 3, 0x14(1)
    stfs 3, 0x18(1)
    stfs 3, 0x20(1)
    stfs 4, 0x24(1)
    stfs 3, 0x28(1)
    stfs 3, 0x30(1)
    stfs 3, 0x34(1)
    stfs 4, 0x38(1)
    stw 0, 0x58(1)
    stb 10, 0x5c(1)
    stb 10, 0x5d(1)
    stb 11, 0x60(1)
    stb 10, 0x6d(1)
    bl fn_801F06F0
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x8(1)
    addi 5, 31, 0xc
    li 6, 0xe6
    li 7, 0x0
    stw 0, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

