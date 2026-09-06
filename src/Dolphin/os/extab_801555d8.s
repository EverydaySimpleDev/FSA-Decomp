.section extab, "a"
.balign 4
.global etb_80006EEC
etb_80006EEC:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_80006EEC, 8

.section extabindex, "a"
.balign 4
.global eti_800139F0
eti_800139F0:
    .4byte fn_801555D8
    .4byte 0x0000056C
    .4byte etb_80006EEC
.size eti_800139F0, 12

# fn_801555D8 - SLR2's ("Bow Soldier") real draw(). Survey-level (0x56C
# bytes, ~347 instructions - unusually large for a draw()). When
# this->0x230 (state) == 0xd ("commit to attack," see the slot-21
# override), computes a full live 2D rotation via sin/cos of two stored
# angles (this->0x29c/0x2a0) to build a 9-value transform matrix, then
# branches on the "Type" (weapon) field: Type==2 (Bomb) renders via the
# confirmed shared fn_801F06F0 primitive with model table lbl_80465E00;
# any other type instead makes a REAL VIRTUAL CALL through a global
# manager object (`lbl_8053AAF8`'s own vtable slot 6, reached via
# `lwz r12,0xa4(r6); ...; bctrl`) before feeding the result into
# fn_802F86CC (the confirmed compressed-geometry/small-mesh renderer).
# Outside state 0xd, dispatches similarly by Type (2=bow table index
# 0x114 or 0x4f depending on sub-state; 3="hidden" gets its own float
# defaults) - the same "manager vtable call feeding fn_802F86CC" pattern
# repeats twice more for different literal indices (0x8f, 0x6f). Not
# traced instruction-by-instruction given the size; the Type-dependent
# dual rendering path (simple primitive vs. compressed-geometry via a
# global manager's virtual call) is the load-bearing structure.
.text
.balign 4
.global fn_801555D8

fn_801555D8:
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
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    mr 31, 3
    lhz 0, 0x94(3)
    cmplwi 0, 0x2
    .4byte 0x418204D4 # beq .L_80155AFC
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x408204C8 # bne .L_80155AFC
    li 0, -0x1
    addi 9, 1, 0x44
    stw 0, 0x54(1)
    li 10, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_801556B0
L_80155650:
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
L_801556B0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80155650
    lis 3, lbl_80529DEC@ha
    li 7, 0x0
    addi 3, 3, lbl_80529DEC@l
    li 6, 0x1
    lwz 0, 0x118(3)
    li 8, -0x1
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 5, 0x3
    li 4, 0x2
    cmpwi 0, 0x0
    stw 8, 0x54(1)
    stw 7, 0x58(1)
    stw 7, 0x5c(1)
    stb 7, 0x60(1)
    stb 7, 0x61(1)
    stb 7, 0x62(1)
    stb 6, 0x63(1)
    stb 6, 0x64(1)
    stb 7, 0x65(1)
    stb 7, 0x66(1)
    stb 7, 0x67(1)
    stb 7, 0x68(1)
    stb 7, 0x69(1)
    stb 6, 0x6a(1)
    stw 5, 0x6c(1)
    stb 6, 0x70(1)
    stb 7, 0x71(1)
    stb 7, 0x72(1)
    stw 8, 0x74(1)
    stw 7, 0x78(1)
    stw 4, 0x7c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x30(1)
    stfs 0, 0x40(1)
    .4byte 0x40820024 # bne .L_80155768
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_80155768
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_80155768
    li 0, 0x4
    stb 0, 0x46(1)
L_80155768:
    lwz 0, 0x230(31)
    cmpwi 0, 0xd
    .4byte 0x408201EC # bne .L_8015595C
    lfs 30, 0x29c(31)
    lfs 29, 0x2a0(31)
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x14
    fmuls 7, 30, 26
    stw 0, 0x5c(1)
    fneg 6, 27
    fmuls 10, 31, 3
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
    stfs 8, 0x14(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x24(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x34(1)
    fmuls 0, 29, 0
    stfs 5, 0x18(1)
    stfs 4, 0x28(1)
    stfs 3, 0x38(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x3c(1)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x40820030 # bne .L_80155884
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    lis 3, lbl_80465E00@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465E00@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x114
    addi 6, 1, 0x44
    li 7, 0x0
    bl fn_801F06F0
    .4byte 0x4800027C # b .L_80155AFC
L_80155884:
    lfs 1, 0x29c(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x40820068 # bne .L_801558F8
    lwz 0, 0x4(31)
    lwz 3, 0x274(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x4f
    .4byte 0x40800258 # bge .L_80155AFC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80465E00@ha
    addi 5, 3, lbl_80465E00@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x44
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x48000208 # b .L_80155AFC
L_801558F8:
    lwz 0, 0x4(31)
    lwz 3, 0x274(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x8f
    .4byte 0x408001F4 # bge .L_80155AFC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80465E14@ha
    addi 5, 3, lbl_80465E14@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x44
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x480001A4 # b .L_80155AFC
L_8015595C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x40820038 # bne .L_8015599C
    lfs 1, 0x298(31)
    addi 0, 1, 0x14
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x34(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stw 0, 0x5c(1)
L_8015599C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x40820030 # bne .L_801559D4
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    lis 3, lbl_80465E00@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465E00@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x114
    addi 6, 1, 0x44
    li 7, 0x0
    bl fn_801F06F0
    .4byte 0x48000034 # b .L_80155A04
L_801559D4:
    cmplwi 0, 0x3
    .4byte 0x4182002C # beq .L_80155A04
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    lis 3, lbl_80465E00@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465E00@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x4f
    addi 6, 1, 0x44
    li 7, 0x0
    bl fn_801F06F0
L_80155A04:
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x408200F0 # bne .L_80155AFC
    lfs 1, 0x10(31)
    lis 3, lbl_80465E00@ha
    .4byte 0xC002A3E0 # lfs f0, lbl_8053D380@sda21(r0)
    addi 4, 3, lbl_80465E00@l
    psq_l 2, 0xc(31), 0, 0
    mr 3, 31
    fsubs 0, 1, 0
    lfs 3, 0x14(31)
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    addi 6, 1, 0x44
    psq_st 2, 0x8(1), 0, 0
    li 7, -0x1
    stfs 0, 0x10(31)
    fmr 2, 1
    lwz 5, 0x274(31)
    stfs 3, 0x10(1)
    addi 5, 5, 0x4f
    bl fn_801F06F0
    lfs 0, 0x8(1)
    addi 0, 1, 0x14
    lfs 1, 0xc(1)
    stfs 0, 0xc(31)
    lfs 0, 0x10(1)
    stfs 1, 0x10(31)
    .4byte 0xC022A3E4 # lfs f1, lbl_8053D384@sda21(r0)
    stfs 0, 0x14(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x34(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stw 0, 0x5c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80155AFC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80465E00@ha
    addi 5, 3, lbl_80465E00@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x44
    fmr 2, 1
    li 6, 0x6f
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80155AFC:
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
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 0, 0xf4(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

