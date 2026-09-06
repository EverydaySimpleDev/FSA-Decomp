/*
 * fn_80103914(this): a dispatcher, confirms fn_80103348 is called from
 * here. Branches on this->0x234:
 *  - ==0: directly calls fn_80103348 (the 3D-orientation/effect-spawn
 *    function landed above).
 *  - ==1 AND this->0x230==2: builds another stack config struct (same
 *    shape/table lbl_80463BD0 as fn_80103348's) and calls fn_801EFD34
 *    directly - a fourth, standalone oriented-effect spawn, independent
 *    of the 3 field-group loop in fn_80103348.
 *  - other values: no-op.
 */

.section extab, "a"
.balign 4
.global etb_80005960
etb_80005960:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005960, 8

.section extabindex, "a"
.balign 4
.global eti_80011D40
eti_80011D40:
    .4byte fn_80103914
    .4byte 0x0000017C
    .4byte etb_80005960
.size eti_80011D40, 12

.text
.balign 4
.global fn_80103914

fn_80103914:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_80103950
    .4byte 0x40800148 # bge .L_80103A7C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80103948
    .4byte 0x4800013C # b .L_80103A7C
    .4byte 0x48000138 # b .L_80103A7C
L_80103948:
    bl fn_80103348
    .4byte 0x48000130 # b .L_80103A7C
L_80103950:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x40820124 # bne .L_80103A7C
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801039D4
L_80103974:
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
L_801039D4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80103974
    li 7, 0x0
    li 6, 0x1
    li 8, -0x1
    li 5, 0x3
    li 0, 0x2
    lis 3, lbl_80463BD0@ha
    addi 4, 3, lbl_80463BD0@l
    stw 8, 0x18(1)
    lis 3, 0x5449
    stw 7, 0x1c(1)
    addi 3, 3, 0x4d47
    stw 7, 0x20(1)
    stb 7, 0x24(1)
    stb 7, 0x25(1)
    stb 7, 0x26(1)
    stb 6, 0x27(1)
    stb 6, 0x28(1)
    stb 7, 0x29(1)
    stb 7, 0x2a(1)
    stb 7, 0x2b(1)
    stb 7, 0x2c(1)
    stb 7, 0x2d(1)
    stb 6, 0x2e(1)
    stw 5, 0x30(1)
    stb 6, 0x34(1)
    stb 7, 0x35(1)
    stb 7, 0x36(1)
    stw 8, 0x38(1)
    stw 7, 0x3c(1)
    stw 0, 0x40(1)
    bl fn_804032E8
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
L_80103A7C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

