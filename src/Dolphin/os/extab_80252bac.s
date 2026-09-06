# Companion-fairy internal accumulator/accessor cluster (leading slice).
# fn_80252BAC/BD0/CF0/F14 - all use paired-single (psq_l/ps_add/psq_st)
# vector accumulation, several combined with real loops. Kept as raw
# asm: this project's own landed SDK code confirms MWCC never auto-
# vectorizes scalar C++ into paired-single instructions (see
# src/Dolphin/mtx/psvecsubtract.c) - there is no natural-C++ path for
# genuine PS-using retail code. Split out of the original 12-function
# fn_80252BAC..EmptyHook_80252FBC dtk cluster; the trivial sibling accessors
# are real C++ in Game/stub_80252f40.cpp and Game/stub_80252fbc.cpp.
.text
.balign 4
.global fn_80252BAC
.global fn_80252BD0
.global fn_80252CF0
.global fn_80252F14

fn_80252BAC:
    psq_l 2, 0x2e8(3), 0, 0
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2e8(3), 0, 0
    psq_l 1, 0x2f0(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2f0(3), 1, 0
    blr

fn_80252BD0:
    psq_l 1, 0x0(4), 0, 0
    li 5, 0x1
    psq_l 2, 0x2dc(3), 0, 0
    li 0, 0x7
    psq_l 0, 0x8(4), 1, 0
    mr 4, 3
    ps_add 1, 2, 1
    psq_st 1, 0x2dc(3), 0, 0
    psq_l 1, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2e4(3), 1, 0
    stb 5, 0x435(3)
    mtctr 0
L_80252C04:
    psq_l 1, 0x38(4), 0, 0
    psq_l 0, 0x2dc(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x38(4), 0, 0
    psq_l 1, 0x40(4), 1, 0
    psq_l 0, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x40(4), 1, 0
    psq_l 1, 0x44(4), 0, 0
    psq_l 0, 0x2dc(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x44(4), 0, 0
    psq_l 1, 0x4c(4), 1, 0
    psq_l 0, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x4c(4), 1, 0
    psq_l 1, 0x50(4), 0, 0
    psq_l 0, 0x2dc(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x50(4), 0, 0
    psq_l 1, 0x58(4), 1, 0
    psq_l 0, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x58(4), 1, 0
    psq_l 1, 0x5c(4), 0, 0
    psq_l 0, 0x2dc(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x5c(4), 0, 0
    psq_l 1, 0x64(4), 1, 0
    psq_l 0, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x64(4), 1, 0
    psq_l 1, 0x68(4), 0, 0
    psq_l 0, 0x2dc(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x68(4), 0, 0
    psq_l 1, 0x70(4), 1, 0
    psq_l 0, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x70(4), 1, 0
    psq_l 1, 0x74(4), 0, 0
    psq_l 0, 0x2dc(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x74(4), 0, 0
    psq_l 1, 0x7c(4), 1, 0
    psq_l 0, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x7c(4), 1, 0
    psq_l 1, 0x80(4), 0, 0
    psq_l 0, 0x2dc(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x80(4), 0, 0
    psq_l 1, 0x88(4), 1, 0
    psq_l 0, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x88(4), 1, 0
    addi 4, 4, 0x54
    .4byte 0x4200FF1C # bdnz .L_80252C04
    blr

fn_80252CF0:
    psq_l 2, 0x2dc(3), 0, 0
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2dc(3), 0, 0
    psq_l 1, 0x2e4(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2e4(3), 1, 0
    lbz 0, 0x1216(3)
    cmplwi 0, 0x0
    .4byte 0x408200F8 # bne .L_80252E10
    li 0, 0xc
    addi 7, 3, 0x240
    li 5, 0x30
    mtctr 0
L_80252D2C:
    subi 0, 5, 0x1
    add 8, 3, 5
    mulli 4, 0, 0xc
    subi 0, 5, 0x2
    addi 6, 4, 0x38
    add 6, 3, 6
    psq_l 1, 0x0(6), 0, 0
    mulli 4, 0, 0xc
    lfs 0, 0x8(6)
    subi 0, 5, 0x3
    subi 5, 5, 0x1
    psq_st 1, 0x38(7), 0, 0
    addi 6, 4, 0x38
    mulli 4, 0, 0xc
    stfs 0, 0x40(7)
    add 6, 3, 6
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    add 8, 3, 5
    subi 0, 5, 0x3
    subi 5, 5, 0x1
    psq_l 1, 0x0(6), 0, 0
    lfs 0, 0x8(6)
    addi 6, 4, 0x38
    mulli 4, 0, 0xc
    psq_st 1, 0x2c(7), 0, 0
    add 6, 3, 6
    stfs 0, 0x34(7)
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    add 8, 3, 5
    subi 5, 5, 0x1
    psq_l 1, 0x0(6), 0, 0
    lfs 0, 0x8(6)
    addi 6, 4, 0x38
    add 6, 3, 6
    psq_st 1, 0x20(7), 0, 0
    stfs 0, 0x28(7)
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    add 8, 3, 5
    subi 5, 5, 0x1
    psq_l 1, 0x0(6), 0, 0
    lfs 0, 0x8(6)
    psq_st 1, 0x14(7), 0, 0
    stfs 0, 0x1c(7)
    subi 7, 7, 0x30
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    .4byte 0x4200FF3C # bdnz .L_80252D2C
    psq_l 1, 0x8(3), 0, 0
    lfs 0, 0x10(3)
    psq_st 1, 0x38(3), 0, 0
    stfs 0, 0x40(3)
    lwz 4, 0xbf0(3)
    lbz 0, 0xb4(4)
    stb 0, 0x284(3)
L_80252E10:
    lbz 0, 0x1216(3)
    cmplwi 0, 0x0
    bnelr
    li 0, 0xc
    addi 7, 3, 0x240
    li 5, 0x30
    mtctr 0
L_80252E2C:
    subi 0, 5, 0x1
    add 8, 3, 5
    mulli 4, 0, 0xc
    subi 0, 5, 0x2
    addi 6, 4, 0x38
    add 6, 3, 6
    psq_l 1, 0x0(6), 0, 0
    mulli 4, 0, 0xc
    lfs 0, 0x8(6)
    subi 0, 5, 0x3
    subi 5, 5, 0x1
    psq_st 1, 0x38(7), 0, 0
    addi 6, 4, 0x38
    mulli 4, 0, 0xc
    stfs 0, 0x40(7)
    add 6, 3, 6
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    add 8, 3, 5
    subi 0, 5, 0x3
    subi 5, 5, 0x1
    psq_l 1, 0x0(6), 0, 0
    lfs 0, 0x8(6)
    addi 6, 4, 0x38
    mulli 4, 0, 0xc
    psq_st 1, 0x2c(7), 0, 0
    add 6, 3, 6
    stfs 0, 0x34(7)
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    add 8, 3, 5
    subi 5, 5, 0x1
    psq_l 1, 0x0(6), 0, 0
    lfs 0, 0x8(6)
    addi 6, 4, 0x38
    add 6, 3, 6
    psq_st 1, 0x20(7), 0, 0
    stfs 0, 0x28(7)
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    add 8, 3, 5
    subi 5, 5, 0x1
    psq_l 1, 0x0(6), 0, 0
    lfs 0, 0x8(6)
    psq_st 1, 0x14(7), 0, 0
    stfs 0, 0x1c(7)
    subi 7, 7, 0x30
    lbz 0, 0x283(8)
    stb 0, 0x284(8)
    .4byte 0x4200FF3C # bdnz .L_80252E2C
    psq_l 1, 0x8(3), 0, 0
    lfs 0, 0x10(3)
    psq_st 1, 0x38(3), 0, 0
    stfs 0, 0x40(3)
    lwz 4, 0xbf0(3)
    lbz 0, 0xb4(4)
    stb 0, 0x284(3)
    blr

fn_80252F14:
    psq_l 2, 0x2d0(3), 0, 0
    li 0, 0x1
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2d0(3), 0, 0
    psq_l 1, 0x2d8(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2d8(3), 1, 0
    stb 0, 0x434(3)
    blr
