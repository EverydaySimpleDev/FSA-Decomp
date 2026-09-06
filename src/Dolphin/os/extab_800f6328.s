# fn_800F6328: a fuller constructor/reset for the same OIWA (falling-
# boulder) scheduler class as fn_800F3C70/etc (see
# project_fsa_extab_bug_resolved.md). More comprehensive than fn_800F43D0
# (the earlier-landed initializer): zeroes this->0x231/0x238/0x23c/0x240/
# 0x244/0x248/0x24c/0x250, sets this->0x232=-1 and this->0x254/0x258/0x25c
# to the shared lbl_8053BE94 constant, THEN reads the phase dynamically
# from this->0x90 (the universal spawn-parameter field) into this->0x230 -
# unlike fn_800F43D0, which always hardcoded phase=1. Dispatches on that
# phase (0/1/3/5, the same phase set used throughout this cluster) into
# blocks setting the SAME float-pair fields fn_800F43D0 also sets
# (this->0x60/64/68/6c/80/84/88/8c) from different table constants per
# phase, plus velocity fields (this->0x3c/40/44) and, for phase 5, a
# PRNG-driven (see reference_fsa_global_prng.md) initial countdown
# (this->0x240/0x244/0x248) using a NEW cap constant (0x300=768) not seen
# in the other phase-duration calculations in this cluster. Not confirmed
# whether this function or fn_800F43D0 is the "real" constructor and the
# other a secondary/simplified path - both exist and both are now landed.
.section extab, "a"
.balign 4
.global etb_80005708
etb_80005708:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80005708, 8

.section extabindex, "a"
.balign 4
.global eti_800119BC
eti_800119BC:
    .4byte fn_800F6328
    .4byte 0x00000274
    .4byte etb_80005708
.size eti_800119BC, 12

.text
.balign 4
.global fn_800F6328

fn_800F6328:
    stwu 1, -0x30(1)
    li 6, 0x0
    li 0, -0x1
    .4byte 0xC0A28EF4 # lfs f5, lbl_8053BE94@sda21(r0)
    stw 6, 0x23c(3)
    stb 6, 0x231(3)
    stw 6, 0x238(3)
    stw 6, 0x240(3)
    stb 0, 0x232(3)
    stfs 5, 0x254(3)
    stfs 5, 0x258(3)
    stfs 5, 0x25c(3)
    lwz 0, 0x90(3)
    stb 0, 0x230(3)
    stw 6, 0x250(3)
    stw 6, 0x24c(3)
    stw 6, 0x248(3)
    stw 6, 0x244(3)
    lbz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x4182010C # beq .L_800F6484
    .4byte 0x4080001C # bge .L_800F6398
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_800F6424
    .4byte 0x408000C8 # bge .L_800F6450
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_800F63A4
    .4byte 0x48000200 # b .L_800F6594
L_800F6398:
    cmpwi 0, 0x5
    .4byte 0x41820120 # beq .L_800F64BC
    .4byte 0x408001F4 # bge .L_800F6594
L_800F63A4:
    .4byte 0xC0828F78 # lfs f4, lbl_8053BF18@sda21(r0)
    lis 4, 0x19
    .4byte 0xC0628F34 # lfs f3, lbl_8053BED4@sda21(r0)
    addi 0, 4, 0x660d
    stfs 4, 0x60(3)
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    stfs 4, 0x64(3)
    .4byte 0xC0228EEC # lfs f1, lbl_8053BE8C@sda21(r0)
    stfs 3, 0x68(3)
    .4byte 0xC0428F30 # lfs f2, lbl_8053BED0@sda21(r0)
    stfs 3, 0x6c(3)
    stfs 4, 0x80(3)
    stfs 4, 0x84(3)
    stfs 3, 0x88(3)
    stfs 3, 0x8c(3)
    stfs 0, 0x3c(3)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x40(3)
    stfs 1, 0x44(3)
    .4byte 0x48000174 # b .L_800F6594
L_800F6424:
    .4byte 0xC0228F7C # lfs f1, lbl_8053BF1C@sda21(r0)
    .4byte 0xC0028F00 # lfs f0, lbl_8053BEA0@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    .4byte 0x48000148 # b .L_800F6594
L_800F6450:
    .4byte 0xC0428F80 # lfs f2, lbl_8053BF20@sda21(r0)
    .4byte 0xC0228F84 # lfs f1, lbl_8053BF24@sda21(r0)
    stfs 2, 0x60(3)
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 2, 0x80(3)
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    stfs 0, 0x14(3)
    .4byte 0x48000114 # b .L_800F6594
L_800F6484:
    .4byte 0xC0228F78 # lfs f1, lbl_8053BF18@sda21(r0)
    .4byte 0xC0028F34 # lfs f0, lbl_8053BED4@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stfs 5, 0x3c(3)
    stfs 5, 0x40(3)
    stfs 5, 0x44(3)
    .4byte 0x480000DC # b .L_800F6594
L_800F64BC:
    .4byte 0xC0828F78 # lfs f4, lbl_8053BF18@sda21(r0)
    lis 4, 0x19
    .4byte 0xC0028F34 # lfs f0, lbl_8053BED4@sda21(r0)
    addi 5, 4, 0x660d
    stfs 4, 0x60(3)
    .4byte 0xC0428EEC # lfs f2, lbl_8053BE8C@sda21(r0)
    stfs 4, 0x64(3)
    .4byte 0xC0628F88 # lfs f3, lbl_8053BF28@sda21(r0)
    stfs 0, 0x68(3)
    .4byte 0xC0228F8C # lfs f1, lbl_8053BF2C@sda21(r0)
    stfs 0, 0x6c(3)
    stfs 4, 0x80(3)
    stfs 4, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(7)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x240(3)
    stw 6, 0x244(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    subfic 0, 0, 0x300
    stw 0, 0x248(3)
    stfs 5, 0x3c(3)
    stfs 5, 0x40(3)
    stfs 5, 0x44(3)
L_800F6594:
    addi 1, 1, 0x30
    blr

