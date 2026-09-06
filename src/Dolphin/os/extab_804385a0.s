# 901KB-gap non-actor manager block: 1 function(s), 444 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010D6C
etb_80010D6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010D6C, 8

.section extabindex, "a"
.balign 4
.global eti_80020DC4
eti_80020DC4:
    .4byte fn_804385A0
    .4byte 0x000001BC
    .4byte etb_80010D6C
.size eti_80020DC4, 12

.text
.balign 4
.global fn_804385A0

fn_804385A0:
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
    .4byte 0x48000064 # b .L_8043862C
L_804385CC:
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
L_8043862C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_804385CC
    li 4, 0x0
    li 8, 0x1
    li 5, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0x48(1)
    stw 4, 0x4c(1)
    stw 4, 0x50(1)
    stb 4, 0x54(1)
    stb 4, 0x55(1)
    stb 4, 0x56(1)
    stb 8, 0x57(1)
    stb 8, 0x58(1)
    stb 4, 0x59(1)
    stb 4, 0x5a(1)
    stb 4, 0x5b(1)
    stb 4, 0x5c(1)
    stb 4, 0x5d(1)
    stb 8, 0x5e(1)
    stw 3, 0x60(1)
    stb 8, 0x64(1)
    stb 4, 0x65(1)
    stb 4, 0x66(1)
    stw 5, 0x68(1)
    stw 4, 0x6c(1)
    stw 0, 0x70(1)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x4
    .4byte 0x418100A0 # bgt .L_80438748
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_804386B8
    .4byte 0x48000094 # b .L_80438748
L_804386B8:
    .4byte 0xC0220C80 # lfs f1, lbl_80543C20@sda21(r0)
    li 7, 0x7
    lis 3, lbl_804B1738@ha
    lis 5, 0x5449
    stfs 1, 0x14(1)
    addi 6, 1, 0x8
    slwi 0, 0, 2
    addi 4, 3, lbl_804B1738@l
    stfs 1, 0x24(1)
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    stfs 1, 0x34(1)
    stb 8, 0x54(1)
    stb 7, 0x55(1)
    lfs 2, 0x260(31)
    lfs 0, 0x25c(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 2, 0x30(1)
    stw 6, 0x50(1)
    bl fn_804030C4
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_80438748
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x38
    lwz 3, 0x20(7)
    bl fn_802F745C
L_80438748:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

