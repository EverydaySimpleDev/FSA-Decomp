# fn_800F4C70: another method of the same "OIWA" (falling-boulder) scheduler
# class as fn_800F3C70/fn_800F3E08/fn_800F43D0/fn_800F4724/fn_800F4B90 (see
# project_fsa_extab_bug_resolved.md). Builds a local ~0x70-byte parameter
# struct (same 16-byte identity-index buffer pattern seen in fn_800F3C70,
# plus a block of flag/float defaults), then dispatches on the current phase
# (this->0x230, 0-5, one more case than the 0-4 range fn_800F4724 dispatches
# on) into a per-phase setup block that fills in different float fields
# (from lbl_8053BE94/8053BE8C and several phase-specific table constants)
# and sets an output value in r7 (meaning not yet confirmed - looks like a
# status/result code, values seen: 3, 7, -1, or a computed 0x11). One phase
# (this->0x240==2, inside phase 5's branch) additionally computes real
# trigonometry: calls libc sin/cos six times on angle-like values derived
# from this->0x3c/0x40/0x44 and builds what is clearly a 3x3 rotation
# matrix (the fmuls/fmadds/fmsubs combinations match a standard rotation-
# matrix-from-Euler-angles construction), applies it via a table lookup
# (lbl_8049C458, indexed by this->0x240) and calls fn_804032E8 then
# fn_801EFD34. The FALLTHROUGH/default path (no phase-specific r7 set, or
# after most phase blocks) instead does simple paired-single position
# accumulation (this->0xc/0x254 added together via `ps_add`, same for
# this->0x14/0x25c) and calls one of two similar functions depending on
# this->0x4 (fn_801F06F0 - the SAME "matrix/effect setup" function
# fn_800F3C70 calls - or fn_801F02BC, a sibling not yet explored), writing
# the result back into this->0xc/0x10/0x14 (this actor's own position).
# NOT YET UNDERSTOOD: the precise meaning of the r7 status codes, what
# fn_801F02BC/fn_804032E8/fn_801EFD34 do, or the exact geometric meaning of
# the this->0x3c/0x40/0x44 angle values and the rotation matrix's use -
# flagging honestly rather than guessing, per the project's established
# practice (see project_fsa_effect_playback_primitive.md's "DMGE"/"pose
# blend" corrections for why premature semantic claims are avoided here).
# Uses paired-single instructions - needs -mgekko in this Object()'s cflags
# (see the tenth-landing note in project_fsa_extab_bug_resolved.md).
.section extab, "a"
.balign 4
.global etb_800056E0
etb_800056E0:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_800056E0, 8

.section extabindex, "a"
.balign 4
.global eti_80011980
eti_80011980:
    .4byte fn_800F4C70
    .4byte 0x00000568
    .4byte etb_800056E0
.size eti_80011980, 12

.text
.balign 4
.global fn_800F4C70

fn_800F4C70:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x54(1)
    addi 10, 1, 0x44
    li 11, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_800F4D24
L_800F4CC4:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 5, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 5, 24
    addi 3, 11, 0x2
    stbx 5, 10, 0
    clrlwi 0, 3, 24
    addi 4, 11, 0x3
    addi 9, 11, 0x4
    stbx 3, 10, 0
    clrlwi 0, 4, 24
    clrlwi 6, 8, 24
    addi 5, 11, 0x6
    stbx 4, 10, 0
    clrlwi 0, 9, 24
    addi 3, 11, 0x7
    clrlwi 4, 5, 24
    stbx 9, 10, 0
    clrlwi 0, 3, 24
    addi 11, 11, 0x8
    stbx 8, 10, 6
    stbx 5, 10, 4
    stbx 3, 10, 0
L_800F4D24:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_800F4CC4
    li 5, 0x0
    li 4, 0x1
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    li 6, -0x1
    stb 5, 0x60(1)
    li 3, 0x3
    li 0, 0x2
    stb 4, 0x63(1)
    stw 6, 0x54(1)
    stw 5, 0x58(1)
    stw 5, 0x5c(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stb 5, 0x67(1)
    stb 5, 0x68(1)
    stb 5, 0x69(1)
    stb 4, 0x6a(1)
    stw 3, 0x6c(1)
    stb 4, 0x70(1)
    stb 5, 0x71(1)
    stb 5, 0x72(1)
    stw 6, 0x74(1)
    stw 5, 0x78(1)
    stw 0, 0x7c(1)
    stb 4, 0x60(1)
    stb 5, 0x63(1)
    stfs 1, 0x20(1)
    stfs 1, 0x30(1)
    stfs 1, 0x40(1)
    lbz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x418201B0 # beq .L_800F4F68
    .4byte 0x4080001C # bge .L_800F4DD8
    cmpwi 0, 0x1
    .4byte 0x41820110 # beq .L_800F4ED4
    .4byte 0x40800168 # bge .L_800F4F30
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_800F4DE4
    .4byte 0x48000320 # b .L_800F50F4
L_800F4DD8:
    cmpwi 0, 0x5
    .4byte 0x418201D0 # beq .L_800F4FAC
    .4byte 0x40800314 # bge .L_800F50F4
L_800F4DE4:
    .4byte 0xC0628EF4 # lfs f3, lbl_8053BE94@sda21(r0)
    li 7, 0x3
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    stfs 3, 0x18(1)
    stfs 0, 0x14(1)
    stfs 3, 0x1c(1)
    stfs 3, 0x24(1)
    stfs 0, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 3, 0x34(1)
    stfs 3, 0x38(1)
    stfs 0, 0x3c(1)
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_800F4E48
    li 0, 0xc8
    li 4, 0x0
    li 3, -0x1
    stb 4, 0x60(1)
    li 7, -0x1
    stb 3, 0x61(1)
    stb 0, 0x54(1)
    stb 0, 0x55(1)
    stb 0, 0x56(1)
    .4byte 0x480002B0 # b .L_800F50F4
L_800F4E48:
    cmpwi 0, 0x2
    .4byte 0x408202A8 # bne .L_800F50F4
    li 0, 0x0
    li 3, -0x1
    stb 0, 0x60(1)
    lis 0, 0x4330
    .4byte 0xC8428F08 # lfd f2, lbl_8053BEA8@sda21(r0)
    li 7, -0x1
    stb 3, 0x61(1)
    .4byte 0xC0028F18 # lfs f0, lbl_8053BEB8@sda21(r0)
    lwz 4, 0x248(31)
    stw 0, 0x80(1)
    subfic 3, 4, 0x3c
    slwi 0, 4, 1
    xoris 3, 3, 0x8000
    stfs 3, 0x18(1)
    subfic 4, 0, 0xc8
    stw 3, 0x84(1)
    subfic 3, 0, 0xc8
    subfic 0, 0, 0xc8
    lfd 1, 0x80(1)
    stfs 3, 0x1c(1)
    fsubs 1, 1, 2
    stfs 3, 0x24(1)
    fdivs 0, 1, 0
    stfs 3, 0x2c(1)
    stfs 3, 0x34(1)
    stfs 3, 0x38(1)
    stb 4, 0x54(1)
    stb 3, 0x55(1)
    stfs 0, 0x14(1)
    stfs 0, 0x28(1)
    stfs 0, 0x3c(1)
    stb 0, 0x56(1)
    .4byte 0x48000224 # b .L_800F50F4
L_800F4ED4:
    .4byte 0xC0028F1C # lfs f0, lbl_8053BEBC@sda21(r0)
    stfs 1, 0x18(1)
    stfs 0, 0x14(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    lfs 0, 0x3c(31)
    fcmpu cr0, 0, 1
    .4byte 0x4082001C # bne .L_800F4F20
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_800F4F20
    lfs 0, 0x44(31)
    fcmpu cr0, 0, 1
    .4byte 0x4182000C # beq .L_800F4F28
L_800F4F20:
    li 7, 0x3
    .4byte 0x480001D0 # b .L_800F50F4
L_800F4F28:
    li 7, -0x1
    .4byte 0x480001C8 # b .L_800F50F4
L_800F4F30:
    .4byte 0xC0028F20 # lfs f0, lbl_8053BEC0@sda21(r0)
    li 0, 0x11
    stfs 1, 0x18(1)
    li 7, 0x7
    stfs 0, 0x14(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    stw 0, 0x74(1)
    .4byte 0x48000190 # b .L_800F50F4
L_800F4F68:
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    li 7, 0x3
    stfs 1, 0x18(1)
    stfs 0, 0x14(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x40820158 # bne .L_800F50F4
    stb 6, 0x61(1)
    stb 6, 0x60(1)
    .4byte 0x4800014C # b .L_800F50F4
L_800F4FAC:
    stfs 1, 0x20(1)
    lis 0, 0x4330
    .4byte 0xC8628F08 # lfd f3, lbl_8053BEA8@sda21(r0)
    stfs 1, 0x30(1)
    .4byte 0xC0028F24 # lfs f0, lbl_8053BEC4@sda21(r0)
    stfs 1, 0x40(1)
    lwz 3, 0x244(31)
    stw 0, 0x80(1)
    xoris 0, 3, 0x8000
    stw 0, 0x84(1)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fdivs 30, 2, 0
    bl sin
    frsp 29, 1
    fmr 1, 30
    bl sin
    frsp 28, 1
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x14
    lis 3, lbl_8049C458@ha
    lis 5, 0x5449
    fmuls 2, 29, 28
    .4byte 0xC1228EEC # lfs f9, lbl_8053BE8C@sda21(r0)
    fmuls 11, 31, 3
    stw 0, 0x5c(1)
    fmuls 10, 31, 27
    addi 4, 3, lbl_8049C458@l
    fmuls 1, 29, 27
    addi 3, 5, 0x4d47
    fmuls 0, 29, 3
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
    lwz 0, 0x240(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x44
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    .4byte 0x480000AC # b .L_800F519C
L_800F50F4:
    addi 0, 1, 0x14
    stw 0, 0x5c(1)
    psq_l 1, 0xc(31), 0, 0
    psq_l 2, 0x254(31), 0, 0
    lfs 0, 0x14(31)
    ps_add 2, 1, 2
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 2, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x25c(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4181002C # bgt .L_800F515C
    .4byte 0xC0228EEC # lfs f1, lbl_8053BE8C@sda21(r0)
    lis 3, lbl_804636E8@ha
    lwz 5, 0x23c(31)
    addi 4, 3, lbl_804636E8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0xb1
    addi 6, 1, 0x44
    bl fn_801F06F0
    .4byte 0x4800002C # b .L_800F5184
L_800F515C:
    .4byte 0xC0228EEC # lfs f1, lbl_8053BE8C@sda21(r0)
    lis 3, lbl_804636FC@ha
    addi 4, 3, lbl_804636FC@l
    lwz 5, 0x23c(31)
    fmr 2, 1
    mr 3, 31
    addi 6, 1, 0x44
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_800F5184:
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    stfs 0, 0xc(31)
    lfs 0, 0x10(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
L_800F519C:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    lwz 0, 0xe4(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

