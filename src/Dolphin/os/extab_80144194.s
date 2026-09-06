.section extab, "a"
.balign 4
.global etb_80006CC4
etb_80006CC4:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_80006CC4, 8

.section extabindex, "a"
.balign 4
.global eti_800136B4
eti_800136B4:
    .4byte fn_80144194
    .4byte 0x00000498
    .4byte etb_80006CC4
.size eti_800136B4, 12

# fn_80144194 - BZBR's ("Buzz Blob") real draw(), fully traced. Builds a
# local render-config buffer, then branches on this->0x230: state 4
# (the "triggered/attacking" state update() transitions into) draws via
# fn_802F86CC - the SAME compressed pre-authored-geometry renderer
# confirmed for the light-probe-grid system (project_fsa_shared_effect_
# subsystem_crossref.md) - reused here as a generic small-mesh renderer,
# not literally a light probe. State 3 and the default case both draw
# via the CONFIRMED fn_801F06F0 shared effect-spawn primitive, but index
# into DIFFERENT per-variant lookup tables (lbl_8049F408 for default,
# lbl_8049F418 for state 3) using this->0x244 - the RANDOMIZED "visual
# variant" field setParams() picks (see extab_80144f9c.s) - confirming
# that field really does select between several distinct Buzz Blob
# model/effect variants. Computes a full 3-axis rotation matrix from 3
# INDEPENDENT angle sources (this->0x14, this->0x250/0x254, all via real
# sin/cos calls) for the idle wobble animation, the same idiom used by
# every other actor's draw() this session.
.text
.balign 4
.global fn_80144194

fn_80144194:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stfd 31, 0x140(1)
    psq_st 31, 0x148(1), 0, 0
    stfd 30, 0x130(1)
    psq_st 30, 0x138(1), 0, 0
    stfd 29, 0x120(1)
    psq_st 29, 0x128(1), 0, 0
    stfd 28, 0x110(1)
    psq_st 28, 0x118(1), 0, 0
    stfd 27, 0x100(1)
    psq_st 27, 0x108(1), 0, 0
    stfd 26, 0xf0(1)
    psq_st 26, 0xf8(1), 0, 0
    stw 31, 0xec(1)
    stw 30, 0xe8(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0xb4(1)
    addi 9, 1, 0xa4
    li 10, 0x0
    stw 0, 0xb8(1)
    .4byte 0x48000064 # b .L_80144254
L_801441F4:
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
L_80144254:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801441F4
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
    li 10, 0x0
    li 4, 0x1
    li 5, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0xb4(1)
    stw 10, 0xb8(1)
    stw 10, 0xbc(1)
    stb 10, 0xc0(1)
    stb 10, 0xc1(1)
    stb 10, 0xc2(1)
    stb 4, 0xc3(1)
    stb 4, 0xc4(1)
    stb 10, 0xc5(1)
    stb 10, 0xc6(1)
    stb 10, 0xc7(1)
    stb 10, 0xc8(1)
    stb 10, 0xc9(1)
    stb 4, 0xca(1)
    stw 3, 0xcc(1)
    stb 4, 0xd0(1)
    stb 10, 0xd1(1)
    stb 10, 0xd2(1)
    stw 5, 0xd4(1)
    stw 10, 0xd8(1)
    stw 0, 0xdc(1)
    stfs 1, 0x80(1)
    stfs 1, 0x90(1)
    stfs 1, 0xa0(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x40820240 # bne .L_80144520
    stw 5, 0x48(1)
    addi 9, 1, 0x38
    stw 5, 0x4c(1)
    .4byte 0x48000064 # b .L_80144354
L_801442F4:
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
L_80144354:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801442F4
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
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
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lfs 30, 0x254(31)
    lfs 29, 0x250(31)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    fmuls 7, 30, 26
    lis 3, lbl_8049F408@ha
    fneg 6, 27
    stw 0, 0x50(1)
    fmuls 10, 31, 3
    addi 3, 3, lbl_8049F408@l
    fmuls 2, 28, 27
    fmuls 9, 31, 26
    fmuls 1, 28, 26
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x8(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x18(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x28(1)
    fmuls 0, 29, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 4, 0x244(31)
    lwz 0, 0x4(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    cmpwi 0, 0x8
    addi 30, 3, 0x10
    .4byte 0x40800118 # bge .L_801445E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80465B80@ha
    addi 5, 3, lbl_80465B80@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x38
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x480000C8 # b .L_801445E4
L_80144520:
    cmpwi 0, 0x3
    .4byte 0x41820088 # beq .L_801445AC
    lfs 2, 0x25c(31)
    addi 0, 1, 0x74
    lfs 0, 0x258(31)
    stfs 0, 0x74(1)
    stfs 1, 0x78(1)
    stfs 1, 0x7c(1)
    stfs 1, 0x84(1)
    stfs 2, 0x88(1)
    stfs 1, 0x8c(1)
    stfs 1, 0x94(1)
    stfs 1, 0x98(1)
    stfs 2, 0x9c(1)
    stw 0, 0xbc(1)
    lfs 0, 0x14(31)
    fcmpu cr0, 0, 1
    .4byte 0x4182000C # beq .L_80144570
    li 0, 0x11
    stw 0, 0xd4(1)
L_80144570:
    lwz 0, 0x244(31)
    lis 3, lbl_8049F408@ha
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    lis 4, lbl_80465B80@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_8049F408@l
    lwzx 5, 3, 0
    fmr 2, 1
    addi 4, 4, lbl_80465B80@l
    mr 3, 31
    addi 5, 5, 0x10
    addi 6, 1, 0xa4
    li 7, 0x0
    bl fn_801F06F0
    .4byte 0x4800003C # b .L_801445E4
L_801445AC:
    lwz 0, 0x244(31)
    lis 3, lbl_8049F418@ha
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    lis 4, lbl_80465B80@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_8049F418@l
    lwzx 5, 3, 0
    fmr 2, 1
    addi 4, 4, lbl_80465B80@l
    mr 3, 31
    addi 5, 5, 0x10
    li 6, 0x0
    li 7, 0x0
    bl fn_801F06F0
L_801445E4:
    psq_l 31, 0x148(1), 0, 0
    lfd 31, 0x140(1)
    psq_l 30, 0x138(1), 0, 0
    lfd 30, 0x130(1)
    psq_l 29, 0x128(1), 0, 0
    lfd 29, 0x120(1)
    psq_l 28, 0x118(1), 0, 0
    lfd 28, 0x110(1)
    psq_l 27, 0x108(1), 0, 0
    lfd 27, 0x100(1)
    psq_l 26, 0xf8(1), 0, 0
    lfd 26, 0xf0(1)
    lwz 31, 0xec(1)
    lwz 0, 0x154(1)
    lwz 30, 0xe8(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

