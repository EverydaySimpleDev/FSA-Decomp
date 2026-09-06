# YASI cluster, part 5/7 (372B). Uses the already-landed fn_801F02BC
# plus 2 unfamiliar helpers fn_8023CA88/fn_8023CB24.
.section extab, "a"
.balign 4
.global etb_8000CE74
etb_8000CE74:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CE74, 8

.section extabindex, "a"
.balign 4
.global eti_8001BF28
eti_8001BF28:
    .4byte fn_802DF754
    .4byte 0x00000174
    .4byte etb_8000CE74
.size eti_8001BF28, 12

.text
.balign 4
.global fn_802DF754

fn_802DF754:
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
    .4byte 0x48000064 # b .L_802DF7E0
L_802DF780:
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
L_802DF7E0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802DF780
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lbz 0, 0x234(31)
    stb 0, 0x1b(1)
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_802DF888
    stb 5, 0x28(1)
    lwz 3, 0xc8(31)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x25(1)
    lwz 3, 0xc8(31)
    bl fn_8023CA88
    stb 3, 0x24(1)
L_802DF888:
    .4byte 0xC022E1CC # lfs f1, lbl_8054116C@sda21(r0)
    lis 3, lbl_8046E998@ha
    addi 4, 3, lbl_8046E998@l
    addi 6, 1, 0x8
    fmr 2, 1
    mr 3, 31
    li 5, 0x1ae
    li 7, 0x7
    li 8, 0x0
    li 9, 0x1
    bl fn_801F02BC
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

