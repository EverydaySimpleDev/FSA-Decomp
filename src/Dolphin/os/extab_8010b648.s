/*
 * fn_8010B648 (0x8010B648-0x8010B8AC, 0x268/616 bytes) - the "spawn/trigger effect" method
 * for the same class as fn_8010B40C's setState (confirmed by reading/writing the SAME
 * this->0x230 state field). Matches the established fn_801F5778 + 16-byte identity-index
 * array + ~40-byte config struct shape confirmed for the 3rd/4th classes' spawn methods that
 * embed the "timed-cue lookup table" shared component (see
 * project_fsa_multiple_inheritance_pattern.md) and the fn_80109534-class's fn_80109D78.
 *
 * Computes a squared-distance check 3 times against a fixed reference vector at
 * this->0x54/0x58/0x5c (via ps_mul/ps_madd/ps_sum0, compared against a radius-squared
 * constant lbl_8053C480*lbl_80539D44) - the classic "is this point within radius R" idiom
 * using paired-singles instead of a real sqrt. All three checks read the exact same source
 * fields, so all three evaluate the same "inside/outside radius" condition each time:
 *   - 1st check (gated on this->0x230==5): if OUTSIDE the radius, populates the config
 *     struct's position/rotation sub-fields from this->0x54/0x58/0x5c.
 *   - 2nd check: if INSIDE (<=) the radius, clears this->0x11d (the confirmed "active" flag).
 *   - Unconditionally calls fn_801F02BC (confirmed spawn wrapper) with
 *     lbl_804642F0+0x19c and this->0x254+0x19c.
 *   - 3rd check: if INSIDE (<=) the radius, sets this->0x11d=1 - since nothing between the
 *     2nd and 3rd checks can change the distance, this effectively overrides the 2nd check's
 *     clear whenever inside the radius (net: 0x11d ends up 1 if inside, unchanged if
 *     outside). Transcribed faithfully as-is; the redundancy is likely an artifact of
 *     compiler-duplicated inlined helper code, not re-derived from first principles.
 */

.section extab, "a"
.balign 4
.global etb_80005C00
etb_80005C00:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_80005C00, 8

.section extabindex, "a"
.balign 4
.global eti_80012064
eti_80012064:
    .4byte fn_8010B648
    .4byte 0x00000268
    .4byte etb_80005C00
.size eti_80012064, 12

.text
.balign 4
.global fn_8010B648

fn_8010B648:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8010B6F0
L_8010B690:
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
L_8010B6F0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8010B690
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x40820078 # bne .L_8010B7E4
    psq_l 3, 0x54(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x5c(31)
    ps_mul 3, 3, 3
    .4byte 0xC02294E0 # lfs f1, lbl_8053C480@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x41820048 # beq .L_8010B7E4
    .4byte 0xC02294D0 # lfs f1, lbl_8053C470@sda21(r0)
    addi 0, 1, 0x8
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lfs 2, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 31, 0x30(1)
    stw 0, 0x50(1)
L_8010B7E4:
    psq_l 3, 0x54(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 30, 0x5c(31)
    ps_mul 3, 3, 3
    .4byte 0xC02294E0 # lfs f1, lbl_8053C480@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 30, 30, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8010B81C
    li 0, 0x0
    stb 0, 0x11d(31)
L_8010B81C:
    .4byte 0xC02294D8 # lfs f1, lbl_8053C478@sda21(r0)
    lis 3, lbl_804642F0@ha
    lwz 5, 0x254(31)
    addi 4, 3, lbl_804642F0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x19c
    addi 6, 1, 0x38
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    psq_l 3, 0x54(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x5c(31)
    ps_mul 3, 3, 3
    .4byte 0xC02294E0 # lfs f1, lbl_8053C480@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 29, 29, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8010B884
    li 0, 0x1
    stb 0, 0x11d(31)
L_8010B884:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    lwz 0, 0xb4(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

