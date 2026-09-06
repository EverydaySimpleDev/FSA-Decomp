/*
 * WARP-portal-actor cluster, part 4/12. Track A (byte-exact asm) +
 * structural overview - large stack-heavy setup function.
 *
 * fn_801EDD0C(this): looks up a resource by 4CC tag "TIMG" (0x54494D47)
 * via fn_804032E8(this->0x280[this->0x280-index]) - a texture/icon
 * lookup, matching this actor's off-screen map/HUD-marker path. Builds a
 * 16-byte index table (0..15) on the stack via an unrolled byte-store
 * loop, then a second block sets up ~40 bytes of flag/config fields on
 * the stack (colors, small integer codes) used as a draw-call parameter
 * block.
 *
 * Picks one of two float constants (lbl_8053F71C low / lbl_8053F720 high,
 * selected via fsel against this->0x554) depending on whether
 * this->0x248==5, filling a 3x lfs-broadcast pattern into the parameter
 * block. If this->0x138 is unset, calls fn_801EF830(this, this->0xc,
 * &stackBuf, 0, 0) - an animation/matrix setup call (unconfirmed itself).
 *
 * Computes a scale factor via fn_802F5FF4 (confirmed elsewhere as a
 * trig/scale helper) applied to this->0x10/0x14, scales an entire 3x3
 * block of stack floats by it, and finally calls fn_801EFD34(this,
 * otherPtr, &stackBuf, -1) OR (if this->0x248==5) a slightly different
 * variant of the same call - the actual icon/marker draw call.
 */
.section extab, "a"
.balign 4
.global etb_80008D34
etb_80008D34:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80008D34, 8

.section extabindex, "a"
.balign 4
.global eti_800163A8
eti_800163A8:
    .4byte fn_801EDD0C
    .4byte 0x0000031C
    .4byte etb_80008D34
.size eti_800163A8, 12

.text
.balign 4
.global fn_801EDD0C

fn_801EDD0C:
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
    stw 30, 0x78(1)
    mr 30, 3
    lis 3, lbl_804A5760@ha
    lwz 0, 0x280(30)
    lis 5, 0x5449
    addi 4, 3, lbl_804A5760@l
    slwi 0, 0, 2
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804032E8
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801EDDD8
L_801EDD78:
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
L_801EDDD8:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801EDD78
    li 7, 0x0
    li 5, 0x1
    lbz 0, 0x5d1(30)
    li 8, -0x1
    stb 7, 0x54(1)
    li 4, 0x3
    li 3, 0x2
    cmplwi 0, 0x0
    stb 7, 0x55(1)
    li 6, 0x7
    stb 5, 0x57(1)
    stw 8, 0x48(1)
    stw 7, 0x4c(1)
    stw 7, 0x50(1)
    stb 7, 0x56(1)
    stb 5, 0x58(1)
    stb 7, 0x59(1)
    stb 7, 0x5a(1)
    stb 7, 0x5b(1)
    stb 7, 0x5c(1)
    stb 7, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 7, 0x65(1)
    stb 7, 0x66(1)
    stw 8, 0x68(1)
    stw 7, 0x6c(1)
    stw 3, 0x70(1)
    stb 7, 0x57(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    .4byte 0x4182000C # beq .L_801EDE70
    li 6, 0x407
    stb 7, 0x4b(1)
L_801EDE70:
    .4byte 0xC042C778 # lfs f2, lbl_8053F718@sda21(r0)
    addi 3, 1, 0x8
    lfs 0, 0x554(30)
    .4byte 0xC022C77C # lfs f1, lbl_8053F71C@sda21(r0)
    fadds 4, 2, 0
    .4byte 0xC062C780 # lfs f3, lbl_8053F720@sda21(r0)
    lwz 0, 0x248(30)
    stfs 1, 0x14(1)
    fsubs 0, 3, 4
    cmpwi 0, 0x5
    stfs 1, 0x24(1)
    fsel 0, 0, 3, 4
    stfs 1, 0x34(1)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stw 3, 0x50(1)
    .4byte 0x4082010C # bne .L_801EDFD8
    lwz 0, 0x138(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801EDEF8
    lwz 3, 0x4(30)
    mr 9, 31
    addi 4, 30, 0xc
    addi 5, 1, 0x38
    li 7, 0x0
    li 8, 0x0
    bl fn_801EF830
L_801EDEF8:
    .4byte 0xC022C118 # lfs f1, lbl_8053F0B8@sda21(r0)
    bl fn_802F5FF4
    .4byte 0xC002C778 # lfs f0, lbl_8053F718@sda21(r0)
    fdivs 30, 0, 1
    lfs 1, 0x14(30)
    bl fn_802F5FF4
    fmuls 29, 1, 30
    lfs 3, 0x8(1)
    lfs 0, 0x18(1)
    addi 0, 1, 0x8
    lfs 1, 0x28(1)
    mr 3, 30
    lfs 2, 0xc(1)
    fmuls 30, 3, 29
    lfs 3, 0x1c(1)
    fmuls 31, 0, 29
    lfs 0, 0x2c(1)
    fmuls 13, 1, 29
    lfs 5, 0x10(1)
    lfs 1, 0x20(1)
    fmuls 12, 2, 29
    lfs 2, 0x30(1)
    fmuls 11, 3, 29
    lfs 4, 0x14(1)
    fmuls 10, 0, 29
    lfs 3, 0x24(1)
    lfs 0, 0x34(1)
    fmuls 9, 5, 29
    fmuls 8, 1, 29
    .4byte 0xC022C77C # lfs f1, lbl_8053F71C@sda21(r0)
    fmuls 7, 2, 29
    .4byte 0xC042C784 # lfs f2, lbl_8053F724@sda21(r0)
    fmuls 6, 4, 29
    fmuls 5, 3, 29
    fmuls 4, 0, 29
    .4byte 0xC002C11C # lfs f0, lbl_8053F0BC@sda21(r0)
    fmr 3, 1
    stfs 30, 0x8(1)
    fmuls 2, 2, 0
    stfs 31, 0x18(1)
    mr 4, 31
    addi 5, 1, 0x38
    stfs 13, 0x28(1)
    li 6, -0x1
    stfs 12, 0xc(1)
    stfs 11, 0x1c(1)
    stfs 10, 0x2c(1)
    stfs 9, 0x10(1)
    stfs 8, 0x20(1)
    stfs 7, 0x30(1)
    stfs 6, 0x14(1)
    stfs 5, 0x24(1)
    stfs 4, 0x34(1)
    stw 0, 0x50(1)
    bl fn_801EFD34
    .4byte 0x48000024 # b .L_801EDFF8
L_801EDFD8:
    .4byte 0xC042C784 # lfs f2, lbl_8053F724@sda21(r0)
    fmr 3, 1
    .4byte 0xC002C11C # lfs f0, lbl_8053F0BC@sda21(r0)
    mr 3, 30
    mr 4, 31
    addi 5, 1, 0x38
    fmuls 2, 2, 0
    bl fn_801EFD34
L_801EDFF8:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 0, 0xb4(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

