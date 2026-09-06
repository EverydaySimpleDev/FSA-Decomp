# SAYA cluster, part 13/18 (Track A byte-match + overview - 532B).
# draw()-related - uses the confirmed 3D render-primitive fn_801F06F0.
.section extab, "a"
.balign 4
.global etb_80007A0C
etb_80007A0C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007A0C, 8

.section extabindex, "a"
.balign 4
.global eti_80014890
eti_80014890:
    .4byte fn_801A6690
    .4byte 0x00000214
    .4byte etb_80007A0C
.size eti_80014890, 12

.text
.balign 4
.global fn_801A6690

fn_801A6690:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    lwz 0, 0x260(3)
    cmpwi 0, 0x2
    .4byte 0x408001E4 # bge .L_801A6890
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801A66BC
    .4byte 0x480001D8 # b .L_801A6890
L_801A66BC:
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801A6734
L_801A66D4:
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
L_801A6734:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801A66D4
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
    lwz 0, 0x250(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_801A67DC
    .4byte 0xC022B688 # lfs f1, lbl_8053E628@sda21(r0)
    lis 3, lbl_80468500@ha
    lwz 5, 0x254(31)
    addi 4, 3, lbl_80468500@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x303
    addi 6, 1, 0x8
    li 7, -0x1
    bl fn_801F06F0
L_801A67DC:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x418000AC # blt .L_801A6890
    lwz 6, 0x25c(31)
    lis 3, 0x8889
    .4byte 0x80AD9360 # lwz r5, lbl_8053AF20@sda21(r0)
    lis 0, 0x4330
    subi 4, 3, 0x7777
    stw 0, 0x48(1)
    .4byte 0xC862B698 # lfd f3, lbl_8053E638@sda21(r0)
    stb 6, 0x10(5)
    .4byte 0xC022B68C # lfs f1, lbl_8053E62C@sda21(r0)
    .4byte 0x806D9360 # lwz r3, lbl_8053AF20@sda21(r0)
    .4byte 0xC002B690 # lfs f0, lbl_8053E630@sda21(r0)
    lbz 0, 0x13(3)
    ori 0, 0, 0x1
    stb 0, 0x13(3)
    lwz 6, 0x258(31)
    .4byte 0x806D9360 # lwz r3, lbl_8053AF20@sda21(r0)
    mulhw 0, 4, 6
    add 0, 0, 6
    srawi 4, 0, 5
    srwi 5, 4, 31
    srawi 0, 0, 5
    add 4, 4, 5
    mulli 5, 4, 0x3c
    srwi 4, 0, 31
    add 0, 0, 4
    stb 0, 0x11(3)
    subf 4, 5, 6
    xoris 0, 4, 0x8000
    stw 0, 0x4c(1)
    .4byte 0x806D9360 # lwz r3, lbl_8053AF20@sda21(r0)
    lfd 2, 0x48(1)
    fsubs 2, 2, 3
    fmuls 1, 1, 2
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    stb 0, 0x12(3)
    .4byte 0x806D9360 # lwz r3, lbl_8053AF20@sda21(r0)
    lbz 0, 0x13(3)
    ori 0, 0, 0x2
    stb 0, 0x13(3)
L_801A6890:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

