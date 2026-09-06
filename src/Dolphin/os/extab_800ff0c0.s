/*
 * fn_800FF0C0(this): large (0x638 bytes), uses its own exception vector ("Has
 * Elf Vector: Yes"). First function of a NEW class past fn_800FF060's boundary.
 * Dispatches on this->0x230 (state, same "jumptable state" field name seen in
 * the container-class family) - special-cased for state 4/5/6/7, else skip to
 * tail. Reads a global PRNG draw count from lbl_8053AAF8 via fn_80138A30, then
 * loops (bdnz) filling a per-index byte table (lbl_8053AF00, ORs bit flags into
 * +0x30, writes indexed bytes at +0x28/0x2c/base+idx) from a family of
 * this->0x250/0x254/0x258/0x25c/0x260/0x264/0x268/0x26c fields via a fixed 0x3c
 * (60) quantization divisor (mulhw/xoris/fctiwz idiom - integer-division-by-60
 * via reciprocal multiply, then float-quantize the remainder against
 * lbl_8053C110/lbl_8053C120 constants). This looks like a per-field
 * frame/tick countdown table being re-bucketed into a byte array - exact
 * semantics not yet nailed down. On state==4, does a paired-single load of
 * this->0xc/0x14, calls fn_8023E724/fn_801F06F0 (the KNOWN shared effect-
 * spawn subsystem - see project_fsa_shared_effect_subsystem_crossref.md) and
 * conditionally fn_803075AC via fn_8023DE58. Tail (all paths) calls
 * fn_801F06F0 again with this->0x23c-derived params. Confirms this class also
 * plugs into the shared effect-spawn subsystem.
 */

.section extab, "a"
.balign 4
.global etb_800058B0
etb_800058B0:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_800058B0, 8

.section extabindex, "a"
.balign 4
.global eti_80011C38
eti_80011C38:
    .4byte fn_800FF0C0
    .4byte 0x00000638
    .4byte etb_800058B0
.size eti_80011C38, 12

.text
.balign 4
.global fn_800FF0C0

fn_800FF0C0:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stmw 24, 0xa0(1)
    mr 31, 3
    lwz 3, 0x230(3)
    cmpwi 3, 0x4
    .4byte 0x41820018 # beq .L_800FF0F4
    subi 0, 3, 0x5
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_800FF0F4
    cmpwi 3, 0x7
    .4byte 0x408205C0 # bne .L_800FF6B0
L_800FF0F4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x0
    li 9, 0x0
    .4byte 0x408104B8 # ble .L_800FF5BC
    cmpwi 3, 0x8
    subi 7, 3, 0x8
    .4byte 0x408103FC # ble .L_800FF50C
    addi 4, 7, 0x7
    lis 5, 0x8889
    srwi 4, 4, 3
    mr 8, 31
    subi 6, 5, 0x7777
    .4byte 0xC8029180 # lfd f0, lbl_8053C120@sda21(r0)
    .4byte 0xC0429170 # lfs f2, lbl_8053C110@sda21(r0)
    lis 0, 0x4330
    mtctr 4
    cmpwi 7, 0x0
    .4byte 0x408103D0 # ble .L_800FF50C
L_800FF140:
    .4byte 0x832D9340 # lwz r25, lbl_8053AF00@sda21(r0)
    li 7, 0x1
    slw 4, 7, 9
    addi 11, 9, 0x1
    lbz 12, 0x30(25)
    clrlwi 10, 4, 24
    stw 0, 0x20(1)
    addi 5, 9, 0x2c
    or 12, 12, 10
    addi 10, 9, 0x2
    stb 12, 0x30(25)
    slw 11, 7, 11
    slw 10, 7, 10
    addi 4, 9, 0x28
    lwz 29, 0x250(8)
    clrlwi 25, 11, 24
    .4byte 0x834D9340 # lwz r26, lbl_8053AF00@sda21(r0)
    addi 12, 5, 0x1
    mulhw 27, 6, 29
    stw 0, 0x30(1)
    addi 11, 4, 0x1
    clrlwi 10, 10, 24
    stw 0, 0x40(1)
    add 27, 27, 29
    srawi 27, 27, 5
    srwi 28, 27, 31
    add 24, 27, 28
    mulli 27, 24, 0x3c
    stbx 24, 26, 5
    .4byte 0x834D9340 # lwz r26, lbl_8053AF00@sda21(r0)
    subf 27, 27, 29
    xoris 27, 27, 0x8000
    stw 27, 0x24(1)
    lfd 1, 0x20(1)
    fsubs 1, 1, 0
    fdivs 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x28(1)
    lwz 24, 0x2c(1)
    stbx 24, 26, 4
    .4byte 0x836D9340 # lwz r27, lbl_8053AF00@sda21(r0)
    lbz 26, 0x30(27)
    or 25, 26, 25
    stb 25, 0x30(27)
    lwz 28, 0x254(8)
    .4byte 0x832D9340 # lwz r25, lbl_8053AF00@sda21(r0)
    mulhw 26, 6, 28
    add 26, 26, 28
    srawi 26, 26, 5
    srwi 27, 26, 31
    add 24, 26, 27
    mulli 26, 24, 0x3c
    stbx 24, 25, 12
    .4byte 0x818D9340 # lwz r12, lbl_8053AF00@sda21(r0)
    subf 25, 26, 28
    xoris 25, 25, 0x8000
    stw 25, 0x34(1)
    lfd 1, 0x30(1)
    fsubs 1, 1, 0
    fdivs 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x38(1)
    lwz 24, 0x3c(1)
    stbx 24, 12, 11
    .4byte 0x818D9340 # lwz r12, lbl_8053AF00@sda21(r0)
    lbz 11, 0x30(12)
    or 10, 11, 10
    stb 10, 0x30(12)
    lwz 12, 0x258(8)
    mulhw 10, 6, 12
    add 10, 10, 12
    srawi 10, 10, 5
    srwi 11, 10, 31
    add 24, 10, 11
    mulli 10, 24, 0x3c
    subf 10, 10, 12
    xoris 10, 10, 0x8000
    stw 10, 0x44(1)
    lfd 1, 0x40(1)
    fsubs 1, 1, 0
    fdivs 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x48(1)
    lwz 28, 0x4c(1)
    .4byte 0x832D9340 # lwz r25, lbl_8053AF00@sda21(r0)
    addi 12, 5, 0x2
    addi 26, 4, 0x2
    addi 11, 9, 0x3
    stbx 24, 25, 12
    slw 12, 7, 11
    clrlwi 25, 12, 24
    addi 10, 9, 0x4
    .4byte 0x836D9340 # lwz r27, lbl_8053AF00@sda21(r0)
    slw 11, 7, 10
    addi 10, 9, 0x5
    addi 30, 5, 0x3
    stbx 28, 27, 26
    clrlwi 28, 11, 24
    slw 10, 7, 10
    addi 29, 4, 0x3
    .4byte 0x836D9340 # lwz r27, lbl_8053AF00@sda21(r0)
    addi 12, 5, 0x4
    stw 0, 0x50(1)
    addi 11, 4, 0x4
    lbz 26, 0x30(27)
    clrlwi 10, 10, 24
    stw 0, 0x60(1)
    or 25, 26, 25
    stb 25, 0x30(27)
    lwz 24, 0x25c(8)
    .4byte 0x836D9340 # lwz r27, lbl_8053AF00@sda21(r0)
    mulhw 25, 6, 24
    add 26, 25, 24
    srawi 26, 26, 5
    srwi 25, 26, 31
    add 25, 26, 25
    mulli 26, 25, 0x3c
    stbx 25, 27, 30
    .4byte 0x83CD9340 # lwz r30, lbl_8053AF00@sda21(r0)
    subf 27, 26, 24
    xoris 27, 27, 0x8000
    stw 27, 0x54(1)
    lfd 1, 0x50(1)
    fsubs 1, 1, 0
    fdivs 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x58(1)
    lwz 24, 0x5c(1)
    stbx 24, 30, 29
    .4byte 0x83CD9340 # lwz r30, lbl_8053AF00@sda21(r0)
    lbz 29, 0x30(30)
    or 28, 29, 28
    stb 28, 0x30(30)
    lwz 24, 0x260(8)
    .4byte 0x83AD9340 # lwz r29, lbl_8053AF00@sda21(r0)
    mulhw 28, 6, 24
    add 30, 28, 24
    srawi 30, 30, 5
    srwi 28, 30, 31
    add 25, 30, 28
    mulli 30, 25, 0x3c
    stbx 25, 29, 12
    .4byte 0x818D9340 # lwz r12, lbl_8053AF00@sda21(r0)
    subf 29, 30, 24
    xoris 29, 29, 0x8000
    stw 29, 0x64(1)
    lfd 1, 0x60(1)
    fsubs 1, 1, 0
    fdivs 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x68(1)
    lwz 24, 0x6c(1)
    stbx 24, 12, 11
    .4byte 0x818D9340 # lwz r12, lbl_8053AF00@sda21(r0)
    lbz 11, 0x30(12)
    or 10, 11, 10
    stb 10, 0x30(12)
    lwz 24, 0x264(8)
    mulhw 10, 6, 24
    add 10, 10, 24
    srawi 10, 10, 5
    srwi 11, 10, 31
    add 25, 10, 11
    mulli 12, 25, 0x3c
    addi 11, 9, 0x6
    addi 10, 9, 0x7
    stw 0, 0x70(1)
    slw 11, 7, 11
    .4byte 0x83AD9340 # lwz r29, lbl_8053AF00@sda21(r0)
    subf 30, 12, 24
    slw 7, 7, 10
    xoris 30, 30, 0x8000
    addi 12, 5, 0x5
    stw 30, 0x74(1)
    addi 10, 4, 0x6
    clrlwi 7, 7, 24
    addi 9, 9, 0x8
    lfd 1, 0x70(1)
    stbx 25, 29, 12
    addi 29, 4, 0x5
    fsubs 1, 1, 0
    clrlwi 12, 11, 24
    addi 11, 5, 0x6
    .4byte 0x83CD9340 # lwz r30, lbl_8053AF00@sda21(r0)
    stw 0, 0x80(1)
    addi 5, 5, 0x7
    fdivs 1, 1, 2
    stw 0, 0x90(1)
    addi 4, 4, 0x7
    fctiwz 1, 1
    stfd 1, 0x78(1)
    lwz 24, 0x7c(1)
    stbx 24, 30, 29
    .4byte 0x83CD9340 # lwz r30, lbl_8053AF00@sda21(r0)
    lbz 29, 0x30(30)
    or 12, 29, 12
    stb 12, 0x30(30)
    lwz 24, 0x268(8)
    .4byte 0x818D9340 # lwz r12, lbl_8053AF00@sda21(r0)
    mulhw 29, 6, 24
    add 30, 29, 24
    srawi 30, 30, 5
    srwi 29, 30, 31
    add 25, 30, 29
    mulli 30, 25, 0x3c
    stbx 25, 12, 11
    .4byte 0x816D9340 # lwz r11, lbl_8053AF00@sda21(r0)
    subf 12, 30, 24
    xoris 12, 12, 0x8000
    stw 12, 0x84(1)
    lfd 1, 0x80(1)
    fsubs 1, 1, 0
    fdivs 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x88(1)
    lwz 12, 0x8c(1)
    stbx 12, 11, 10
    .4byte 0x816D9340 # lwz r11, lbl_8053AF00@sda21(r0)
    lbz 10, 0x30(11)
    or 7, 10, 7
    stb 7, 0x30(11)
    lwz 12, 0x26c(8)
    addi 8, 8, 0x20
    .4byte 0x814D9340 # lwz r10, lbl_8053AF00@sda21(r0)
    mulhw 7, 6, 12
    add 7, 7, 12
    srawi 7, 7, 5
    srwi 11, 7, 31
    add 11, 7, 11
    mulli 7, 11, 0x3c
    stbx 11, 10, 5
    .4byte 0x80AD9340 # lwz r5, lbl_8053AF00@sda21(r0)
    subf 7, 7, 12
    xoris 7, 7, 0x8000
    stw 7, 0x94(1)
    lfd 1, 0x90(1)
    fsubs 1, 1, 0
    fdivs 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x98(1)
    lwz 7, 0x9c(1)
    stbx 7, 5, 4
    .4byte 0x4200FC38 # bdnz .L_800FF140
L_800FF50C:
    slwi 5, 9, 2
    lis 4, 0x8889
    subf 0, 9, 3
    .4byte 0xC8429180 # lfd f2, lbl_8053C120@sda21(r0)
    add 10, 31, 5
    subi 8, 4, 0x7777
    .4byte 0xC0229170 # lfs f1, lbl_8053C110@sda21(r0)
    lis 5, 0x4330
    mtctr 0
    cmpw 9, 3
    .4byte 0x40800088 # bge .L_800FF5BC
L_800FF538:
    .4byte 0x80ED9340 # lwz r7, lbl_8053AF00@sda21(r0)
    li 0, 0x1
    slw 0, 0, 9
    stw 5, 0x98(1)
    lbz 6, 0x30(7)
    clrlwi 4, 0, 24
    addi 3, 9, 0x2c
    addi 0, 9, 0x28
    or 4, 6, 4
    addi 9, 9, 0x1
    stb 4, 0x30(7)
    lwz 11, 0x250(10)
    addi 10, 10, 0x4
    .4byte 0x80CD9340 # lwz r6, lbl_8053AF00@sda21(r0)
    mulhw 4, 8, 11
    add 4, 4, 11
    srawi 4, 4, 5
    srwi 7, 4, 31
    add 7, 4, 7
    mulli 4, 7, 0x3c
    stbx 7, 6, 3
    .4byte 0x806D9340 # lwz r3, lbl_8053AF00@sda21(r0)
    subf 4, 4, 11
    xoris 4, 4, 0x8000
    stw 4, 0x9c(1)
    lfd 0, 0x98(1)
    fsubs 0, 0, 2
    fdivs 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 4, 0x94(1)
    stbx 4, 3, 0
    .4byte 0x4200FF80 # bdnz .L_800FF538
L_800FF5BC:
    lwz 3, 0x240(31)
    li 4, 0x1
    .4byte 0x80AD9340 # lwz r5, lbl_8053AF00@sda21(r0)
    addi 0, 3, 0x4
    slw 0, 4, 0
    lbz 3, 0x30(5)
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x30(5)
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x408200C8 # bne .L_800FF6B0
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x10(1), 0, 0
    lwz 3, 0x240(31)
    stfs 0, 0x18(1)
    bl fn_8023E724
    lfs 0, 0x0(3)
    lis 4, lbl_80463B78@ha
    .4byte 0xC0229178 # lfs f1, lbl_8053C118@sda21(r0)
    addi 4, 4, lbl_80463B78@l
    stfs 0, 0xc(31)
    li 5, 0x314
    .4byte 0xC0029174 # lfs f0, lbl_8053C114@sda21(r0)
    fmr 2, 1
    lfs 3, 0x4(3)
    li 6, 0x0
    li 7, -0x1
    stfs 3, 0x10(31)
    lfs 3, 0x8(3)
    mr 3, 31
    stfs 3, 0x14(31)
    lfs 3, 0x10(31)
    fsubs 0, 3, 0
    stfs 0, 0x10(31)
    bl fn_801F06F0
    lwz 3, 0x240(31)
    bl fn_8023DE58
    cmpwi 3, 0x0
    .4byte 0x4182003C # beq .L_800FF698
    lwz 3, 0x240(31)
    bl fn_8023DE58
    li 0, 0x0
    mr 4, 3
    stw 0, 0x8(1)
    addi 5, 31, 0xc
    li 6, 0x314
    li 7, 0x0
    stw 0, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    bl fn_803075AC
L_800FF698:
    lfs 0, 0x10(1)
    lfs 1, 0x14(1)
    stfs 0, 0xc(31)
    lfs 0, 0x18(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
L_800FF6B0:
    lbz 0, 0x235(31)
    lis 3, lbl_80463B8C@ha
    .4byte 0xC0229178 # lfs f1, lbl_8053C118@sda21(r0)
    addi 4, 3, lbl_80463B8C@l
    lwz 5, 0x23c(31)
    slwi 0, 0, 1
    fmr 2, 1
    mr 3, 31
    add 5, 0, 5
    li 6, 0x0
    li 7, 0x0
    addi 5, 5, 0x311
    bl fn_801F06F0
    lmw 24, 0xa0(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

