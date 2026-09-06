.section extab, "a"
.balign 4
.global etb_80008318
etb_80008318:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008318, 8

.section extabindex, "a"
.balign 4
.global eti_800155C8
eti_800155C8:
    .4byte fn_801CD580
    .4byte 0x000000E4
    .4byte etb_80008318
.size eti_800155C8, 12

.text
.balign 4
.global fn_801CD580

# fn_801CD580(exclude) - "pick a random value in [0,4) different from
# `exclude`." Builds a 3-entry array of the values 0-3 skipping
# `exclude`, then picks one uniformly via the CONFIRMED global PRNG
# (lbl_8053AAF8->0xb4, reference_fsa_global_prng.md) using the same
# LCG-then-float-via-mantissa-injection trick used throughout the
# project. Confirmed by its caller fn_802153A8 (extab_802153a8.s):
# "lbz r3,0x1(this); bl fn_801CD580; stb r3,0x1(this)" - "reroll my
# cosmetic-state byte to something different from what it currently is."
fn_801CD580:
    li 0, 0x0
    stwu 1, -0x30(1)
    cmpw 0, 3
    li 5, 0x0
    addi 4, 1, 0xc
    .4byte 0x41820010 # beq .L_801CD5A4
    stw 0, 0xc(1)
    li 5, 0x1
    addi 4, 4, 0x4
L_801CD5A4:
    li 0, 0x1
    cmpw 0, 3
    .4byte 0x41820010 # beq .L_801CD5BC
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_801CD5BC:
    li 0, 0x2
    cmpw 0, 3
    .4byte 0x41820010 # beq .L_801CD5D4
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_801CD5D4:
    li 0, 0x3
    cmpw 0, 3
    .4byte 0x4182000C # beq .L_801CD5E8
    stw 0, 0x0(4)
    addi 5, 5, 0x1
L_801CD5E8:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x1c(1)
    addi 3, 1, 0xc
    mullw 4, 5, 4
    .4byte 0xC842BFC8 # lfd f2, lbl_8053EF68@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lfd 1, 0x18(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 2, 1, 2
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    slwi 0, 0, 2
    lwzx 3, 3, 0
    addi 1, 1, 0x30
    blr
