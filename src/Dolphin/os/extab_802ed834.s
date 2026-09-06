# fn_802ED834 - GNEF: draw()-related byte-array builder (0x150)
# Gated on this->0x2cc; when set, builds a small byte sequence (via a
# stbx-indexed loop) and calls fn_802F745C (confirmed spatial-triad member).
# Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D22C
etb_8000D22C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000D22C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C45C
eti_8001C45C:
    .4byte fn_802ED834
    .4byte 0x00000150
    .4byte etb_8000D22C
.size eti_8001C45C, 12

.text
.balign 4
.global fn_802ED834

fn_802ED834:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    lwz 0, 0x2cc(3)
    cmplwi 0, 0x0
    .4byte 0x4182012C # beq .L_802ED974
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    li 11, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_802ED8C4
L_802ED864:
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
L_802ED8C4:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802ED864
    li 7, 0x0
    li 6, 0x1
    stb 7, 0x24(1)
    li 8, -0x1
    li 5, 0x3
    li 4, 0x2
    stb 7, 0x29(1)
    li 0, -0x3
    stb 7, 0x25(1)
    stb 7, 0x2b(1)
    stb 7, 0x2c(1)
    stw 8, 0x18(1)
    stw 7, 0x1c(1)
    stw 7, 0x20(1)
    stb 7, 0x26(1)
    stb 6, 0x27(1)
    stb 6, 0x28(1)
    stb 7, 0x2a(1)
    stb 7, 0x2d(1)
    stb 6, 0x2e(1)
    stw 5, 0x30(1)
    stb 6, 0x34(1)
    stb 7, 0x35(1)
    stb 7, 0x36(1)
    stw 8, 0x38(1)
    stw 7, 0x3c(1)
    stw 4, 0x40(1)
    stb 7, 0x24(1)
    stb 0, 0x25(1)
    stb 6, 0x2c(1)
    stb 6, 0x2b(1)
    stb 6, 0x29(1)
    lwz 0, 0x4(3)
    lwz 5, 0x2cc(3)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_802ED974
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    addi 6, 1, 0x8
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802ED974:
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

