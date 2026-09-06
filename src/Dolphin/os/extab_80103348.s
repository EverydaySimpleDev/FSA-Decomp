/*
 * fn_80103348(this): a genuine 3D-orientation math function using real
 * libm sin/cos calls (saves fp27-fp31 across the whole body). Builds a
 * ~0x60-byte stack config struct (16-slot byte array + defaults, same
 * shape family as fn_80101B48's stack struct, using table lbl_80463BD0)
 * once, then repeats an identical block 3 times for 3 field groups on
 * `this` (0x238/0x23c/0x240, then 0x244/0x248/0x24c, then 0x250/0x254/
 * 0x258):
 *  - calls fn_804032E8 (returns some current-time/phase value)
 *  - calls fn_801EFD34(this, phase, &configStruct, -1) - an effect/param
 *    builder, storing a result into this->0xc/0x10/0x14
 *  - computes an elapsed-angle ratio from a per-field-group count
 *    (this->0x264/0x268/0x26c respectively) via a fixed divisor, then
 *    takes sin/cos of BOTH that ratio-derived angle AND a second fixed
 *    angle constant, composing them into a 3x3-style rotation via
 *    fmuls/fmadds/fmsubs (the classic yaw-then-pitch composite-rotation
 *    formula) to produce 3 basis-vector components stored into a stack
 *    buffer at 0x14/0x18/... /0x3c.
 *  - calls fn_804032E8 again, then fn_801EFD34 again with the same
 *    stack struct - spawning an oriented effect using the computed basis.
 * Final block writes the last computed position back into this->0xc/
 * 0x10/0x14. This looks like "spawn 3 oriented particle/marker effects,
 * one per tracked field-group, each rotated by its own elapsed-time
 * angle" - consistent with a per-slot visual indicator for the shared-
 * base minigame family (though this function's own class/vtable has not
 * been identified against the 195-entry actor dispatch table).
 */

.section extab, "a"
.balign 4
.global etb_80005958
etb_80005958:
    .4byte 0x114A0000
    .4byte 0x00000000
.size etb_80005958, 8

.section extabindex, "a"
.balign 4
.global eti_80011D34
eti_80011D34:
    .4byte fn_80103348
    .4byte 0x000005CC
    .4byte etb_80005958
.size eti_80011D34, 12

.text
.balign 4
.global fn_80103348

fn_80103348:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    li 0, -0x1
    lis 4, lbl_80463BD0@ha
    stw 0, 0x54(1)
    mr 30, 3
    addi 31, 4, lbl_80463BD0@l
    addi 9, 1, 0x44
    stw 0, 0x58(1)
    li 10, 0x0
    .4byte 0x48000064 # b .L_80103408
L_801033A8:
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
L_80103408:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801033A8
    li 8, 0x0
    li 7, 0x1
    li 9, -0x1
    li 6, 0x3
    li 5, 0x2
    stw 9, 0x54(1)
    lis 3, 0x5449
    li 0, -0x3
    stw 8, 0x58(1)
    addi 3, 3, 0x4d47
    addi 4, 31, 0xc
    stw 8, 0x5c(1)
    stb 8, 0x60(1)
    stb 8, 0x61(1)
    stb 8, 0x62(1)
    stb 7, 0x63(1)
    stb 7, 0x64(1)
    stb 8, 0x65(1)
    stb 8, 0x66(1)
    stb 8, 0x67(1)
    stb 8, 0x68(1)
    stb 8, 0x69(1)
    stb 7, 0x6a(1)
    stw 6, 0x6c(1)
    stb 7, 0x70(1)
    stb 8, 0x71(1)
    stb 8, 0x72(1)
    stw 9, 0x74(1)
    stw 8, 0x78(1)
    stw 5, 0x7c(1)
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    stb 0, 0x61(1)
    bl fn_804032E8
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    mr 4, 3
    mr 3, 30
    addi 5, 1, 0x44
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lfs 0, 0x238(30)
    lis 0, 0x4330
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    stfs 0, 0xc(30)
    .4byte 0xC8629240 # lfd f3, lbl_8053C1E0@sda21(r0)
    lfs 2, 0x23c(30)
    stw 0, 0x80(1)
    .4byte 0xC0029234 # lfs f0, lbl_8053C1D4@sda21(r0)
    stfs 2, 0x10(30)
    lfs 2, 0x240(30)
    stfs 2, 0x14(30)
    stfs 1, 0x20(1)
    stfs 1, 0x30(1)
    stfs 1, 0x40(1)
    lwz 0, 0x264(30)
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fdivs 30, 2, 0
    bl sin
    frsp 29, 1
    fmr 1, 30
    bl sin
    frsp 28, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl cos
    frsp 3, 1
    addi 4, 1, 0x14
    li 0, 0x1
    lis 3, 0x5449
    fmuls 2, 29, 28
    .4byte 0xC1229238 # lfs f9, lbl_8053C1D8@sda21(r0)
    fmuls 11, 31, 3
    stw 4, 0x5c(1)
    fmuls 10, 31, 27
    addi 3, 3, 0x4d47
    fmuls 1, 29, 27
    stb 0, 0x61(1)
    fmuls 0, 29, 3
    addi 4, 31, 0x20
    fmuls 8, 30, 3
    fmuls 7, 30, 27
    fneg 6, 28
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 27, 11
    fmuls 3, 29, 30
    fmadds 2, 11, 28, 1
    fmsubs 1, 10, 28, 0
    fmuls 0, 31, 30
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x14(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x24(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x34(1)
    fmuls 0, 9, 0
    stfs 5, 0x18(1)
    stfs 4, 0x28(1)
    stfs 3, 0x38(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x3c(1)
    bl fn_804032E8
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    mr 4, 3
    mr 3, 30
    addi 5, 1, 0x44
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lfs 0, 0x244(30)
    lis 0, 0x4330
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    stfs 0, 0xc(30)
    .4byte 0xC8629240 # lfd f3, lbl_8053C1E0@sda21(r0)
    lfs 2, 0x248(30)
    stw 0, 0x88(1)
    .4byte 0xC0029234 # lfs f0, lbl_8053C1D4@sda21(r0)
    stfs 2, 0x10(30)
    lfs 2, 0x24c(30)
    stfs 2, 0x14(30)
    stfs 1, 0x20(1)
    stfs 1, 0x30(1)
    stfs 1, 0x40(1)
    lwz 0, 0x268(30)
    xoris 0, 0, 0x8000
    stw 0, 0x8c(1)
    lfd 2, 0x88(1)
    fsubs 2, 2, 3
    fdivs 31, 2, 0
    bl sin
    frsp 27, 1
    fmr 1, 31
    bl sin
    frsp 28, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x14
    lis 3, 0x5449
    fmuls 2, 27, 28
    fmuls 10, 30, 29
    .4byte 0xC1229238 # lfs f9, lbl_8053C1D8@sda21(r0)
    fmuls 11, 30, 3
    stw 0, 0x5c(1)
    fmuls 1, 27, 29
    addi 3, 3, 0x4d47
    fmuls 0, 27, 3
    addi 4, 31, 0x34
    fmuls 8, 31, 3
    fmuls 7, 31, 29
    fneg 6, 28
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 29, 11
    fmuls 3, 27, 31
    fmadds 2, 11, 28, 1
    fmsubs 1, 10, 28, 0
    fmuls 0, 30, 31
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x14(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x24(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x34(1)
    fmuls 0, 9, 0
    stfs 5, 0x18(1)
    stfs 4, 0x28(1)
    stfs 3, 0x38(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x3c(1)
    bl fn_804032E8
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    mr 4, 3
    mr 3, 30
    addi 5, 1, 0x44
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lfs 0, 0x250(30)
    lis 0, 0x4330
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    stfs 0, 0xc(30)
    .4byte 0xC8629240 # lfd f3, lbl_8053C1E0@sda21(r0)
    lfs 2, 0x254(30)
    stw 0, 0x90(1)
    .4byte 0xC0029234 # lfs f0, lbl_8053C1D4@sda21(r0)
    stfs 2, 0x10(30)
    lfs 2, 0x258(30)
    stfs 2, 0x14(30)
    stfs 1, 0x20(1)
    stfs 1, 0x30(1)
    stfs 1, 0x40(1)
    lwz 0, 0x26c(30)
    xoris 0, 0, 0x8000
    stw 0, 0x94(1)
    lfd 2, 0x90(1)
    fsubs 2, 2, 3
    fdivs 31, 2, 0
    bl sin
    frsp 27, 1
    fmr 1, 31
    bl sin
    frsp 28, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x14
    lis 3, 0x5449
    fmuls 2, 27, 28
    fmuls 10, 30, 29
    .4byte 0xC1229238 # lfs f9, lbl_8053C1D8@sda21(r0)
    fmuls 11, 30, 3
    stw 0, 0x5c(1)
    fmuls 1, 27, 29
    addi 3, 3, 0x4d47
    fmuls 0, 27, 3
    addi 4, 31, 0x48
    fmuls 8, 31, 3
    fmuls 7, 31, 29
    fneg 6, 28
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 29, 11
    fmuls 3, 27, 31
    fmadds 2, 11, 28, 1
    fmsubs 1, 10, 28, 0
    fmuls 0, 30, 31
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x14(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x24(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x34(1)
    fmuls 0, 9, 0
    stfs 5, 0x18(1)
    stfs 4, 0x28(1)
    stfs 3, 0x38(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x3c(1)
    bl fn_804032E8
    .4byte 0xC0229230 # lfs f1, lbl_8053C1D0@sda21(r0)
    mr 4, 3
    mr 3, 30
    addi 5, 1, 0x44
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    stfs 0, 0xc(30)
    lfs 0, 0x10(1)
    stfs 1, 0x10(30)
    stfs 0, 0x14(30)
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 0, 0xf4(1)
    lwz 30, 0x98(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

