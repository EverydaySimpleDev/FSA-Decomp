/*
 * fn_801042D0(this): a NEW class's method, first function past the
 * fn_801040AC __sinit boundary. Builds a stack config struct (table
 * lbl_8049CA98, indexed by this->0x238*4 - a per-variant config table,
 * not the fixed 16-slot byte array seen elsewhere), calls fn_804032E8
 * (confirmed "phase/time" getter) then fn_801EFD34 (confirmed effect/
 * param builder) - the SAME two-call idiom used throughout the
 * fn_80103F28-class's methods. Branches on this->0x234:
 *  - !=1: computes a smoothed value into this->0x10 using a per-variant
 *    lookup (lbl_80463E50, indexed by this->0x238) and constants
 *    lbl_8049C3B8/lbl_8053C1FC/lbl_8053C200/lbl_8053C208, comparing
 *    this->0x240 against a threshold to set a stack flag byte, then
 *    spawns a SECOND effect via the same fn_804032E8/fn_801EFD34 pair.
 *  - if this->0x238==5 and this->0x234==0: clears the stack flag byte;
 *    otherwise sets it to 2.
 * Tail (all paths): applies a second per-variant lookup (lbl_80463E74)
 * to further adjust this->0x10, then spawns a THIRD effect via the same
 * fn_804032E8/fn_801EFD34 pair. Reads as a per-variant smoothed-value
 * updater that spawns up to 3 effects depending on branch taken - class
 * identity and this->0x238's "variant" meaning not yet resolved.
 */

.section extab, "a"
.balign 4
.global etb_80005988
etb_80005988:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005988, 8

.section extabindex, "a"
.balign 4
.global eti_80011D7C
eti_80011D7C:
    .4byte fn_801042D0
    .4byte 0x00000308
    .4byte etb_80005988
.size eti_80011D7C, 12

.text
.balign 4
.global fn_801042D0

fn_801042D0:
    stwu 1, -0x60(1)
    mflr 0
    lis 4, lbl_8049CA98@ha
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x14
    stw 31, 0x5c(1)
    addi 31, 4, lbl_8049CA98@l
    stw 30, 0x58(1)
    mr 30, 3
    stw 0, 0x24(1)
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_80104368
L_80104308:
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
L_80104368:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80104308
    li 7, 0x0
    li 6, 0x1
    li 8, -0x1
    li 5, 0x3
    li 0, 0x2
    stw 8, 0x24(1)
    lis 3, 0x5449
    addi 4, 31, 0x0
    stw 7, 0x28(1)
    addi 3, 3, 0x4d47
    stw 7, 0x2c(1)
    stb 7, 0x30(1)
    stb 7, 0x31(1)
    stb 7, 0x32(1)
    stb 6, 0x33(1)
    stb 6, 0x34(1)
    stb 7, 0x35(1)
    stb 7, 0x36(1)
    stb 7, 0x37(1)
    stb 7, 0x38(1)
    stb 7, 0x39(1)
    stb 6, 0x3a(1)
    stw 5, 0x3c(1)
    stb 6, 0x40(1)
    stb 7, 0x41(1)
    stb 7, 0x42(1)
    stw 8, 0x44(1)
    stw 7, 0x48(1)
    stw 0, 0x4c(1)
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x8(1), 0, 0
    stb 8, 0x31(1)
    stb 6, 0x38(1)
    stb 6, 0x35(1)
    lwz 0, 0x238(30)
    stfs 0, 0x10(1)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC0229258 # lfs f1, lbl_8053C1F8@sda21(r0)
    mr 4, 3
    mr 3, 30
    addi 5, 1, 0x14
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lwz 0, 0x234(30)
    cmpwi 0, 0x1
    .4byte 0x418200C4 # beq .L_80104500
    lwz 4, 0x238(30)
    lis 5, lbl_8049C3B8@ha
    lis 3, lbl_80463E50@ha
    lis 0, 0x4330
    addi 5, 5, lbl_8049C3B8@l
    slwi 4, 4, 2
    addi 3, 3, lbl_80463E50@l
    lha 5, 0x0(5)
    lwzx 3, 3, 4
    stw 0, 0x50(1)
    add 0, 5, 3
    .4byte 0xC8429268 # lfd f2, lbl_8053C208@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC062925C # lfs f3, lbl_8053C1FC@sda21(r0)
    stw 0, 0x54(1)
    lfs 1, 0x240(30)
    lfd 0, 0x50(1)
    lfs 4, 0x10(30)
    fsubs 2, 0, 2
    .4byte 0xC8029260 # lfd f0, lbl_8053C200@sda21(r0)
    fmadds 1, 3, 2, 1
    fadds 1, 4, 1
    stfs 1, 0x10(30)
    lfs 1, 0x240(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801044B4
    li 0, 0x1
    stb 0, 0x31(1)
    .4byte 0x4800000C # b .L_801044BC
L_801044B4:
    li 0, 0x0
    stb 0, 0x31(1)
L_801044BC:
    lwz 0, 0x238(30)
    lis 3, 0x5449
    addi 4, 31, 0x48
    slwi 0, 0, 2
    addi 3, 3, 0x4d47
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC0229258 # lfs f1, lbl_8053C1F8@sda21(r0)
    mr 4, 3
    mr 3, 30
    addi 5, 1, 0x14
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lfs 0, 0xc(1)
    stfs 0, 0x10(30)
L_80104500:
    lwz 0, 0x238(30)
    cmpwi 0, 0x5
    .4byte 0x4082001C # bne .L_80104524
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80104524
    li 0, 0x0
    stb 0, 0x31(1)
    .4byte 0x4800000C # b .L_8010452C
L_80104524:
    li 0, 0x2
    stb 0, 0x31(1)
L_8010452C:
    lis 3, lbl_8049C3B8@ha
    lis 5, 0x4330
    addi 3, 3, lbl_8049C3B8@l
    lwz 0, 0x238(30)
    lha 6, 0x2(3)
    lis 4, lbl_80463E74@ha
    lis 3, 0x5449
    stw 5, 0x50(1)
    xoris 5, 6, 0x8000
    .4byte 0xC8429268 # lfd f2, lbl_8053C208@sda21(r0)
    stw 5, 0x54(1)
    slwi 0, 0, 2
    addi 5, 4, lbl_80463E74@l
    .4byte 0xC062925C # lfs f3, lbl_8053C1FC@sda21(r0)
    lfd 0, 0x50(1)
    addi 4, 31, 0x24
    lfsx 1, 5, 0
    addi 3, 3, 0x4d47
    fsubs 2, 0, 2
    lfs 0, 0x10(30)
    fadds 1, 2, 1
    fmadds 0, 3, 1, 0
    stfs 0, 0x10(30)
    lwz 0, 0x238(30)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC0229258 # lfs f1, lbl_8053C1F8@sda21(r0)
    mr 4, 3
    mr 3, 30
    addi 5, 1, 0x14
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lfs 0, 0xc(1)
    stfs 0, 0x10(30)
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

