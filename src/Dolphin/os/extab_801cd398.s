.section extab, "a"
.balign 4
.global etb_80008310
etb_80008310:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008310, 8

.section extabindex, "a"
.balign 4
.global eti_800155BC
eti_800155BC:
    .4byte fn_801CD398
    .4byte 0x000001E8
    .4byte etb_80008310
.size eti_800155BC, 12

.text
.balign 4
.global fn_801CD398

# fn_801CD398(excludeA, excludeB) - sibling of fn_801CD580
# (extab_801cd580.s): "pick a random value in [0,4) different from BOTH
# excludeA and excludeB." If excludeA==excludeB, falls through to the
# SAME single-exclusion logic fn_801CD580 uses (inlined here rather
# than calling it) rather than needlessly excluding the same value
# twice. Uses the same CONFIRMED global-PRNG float-conversion idiom.
# Confirmed by its caller fn_802153A8 (extab_802153a8.s): "lbz
# r3,0x1(this); lbz r4,0x2(this); bl fn_801CD398; stb r3,0x1(this)" -
# "reroll my cosmetic-state byte to something different from both my
# current value AND my other tracked value."
fn_801CD398:
    cmpw 3, 4
    stwu 1, -0x40(1)
    .4byte 0x408200E0 # bne .L_801CD480
    li 0, 0x0
    addi 4, 1, 0x18
    cmpw 0, 3
    mr 5, 0
    .4byte 0x41820010 # beq .L_801CD3C4
    stw 0, 0x18(1)
    li 5, 0x1
    addi 4, 4, 0x4
L_801CD3C4:
    li 0, 0x1
    cmpw 0, 3
    .4byte 0x41820010 # beq .L_801CD3DC
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_801CD3DC:
    li 0, 0x2
    cmpw 0, 3
    .4byte 0x41820010 # beq .L_801CD3F4
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_801CD3F4:
    li 0, 0x3
    cmpw 0, 3
    .4byte 0x4182000C # beq .L_801CD408
    stw 0, 0x0(4)
    addi 5, 5, 0x1
L_801CD408:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x2c(1)
    addi 3, 1, 0x18
    mullw 4, 5, 4
    .4byte 0xC842BFC8 # lfd f2, lbl_8053EF68@sda21(r0)
    stw 0, 0x28(1)
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lfd 1, 0x28(1)
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
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    slwi 0, 0, 2
    lwzx 3, 3, 0
    .4byte 0x480000FC # b .L_801CD578
L_801CD480:
    li 0, 0x0
    addi 5, 1, 0x10
    cmpw 0, 3
    li 7, 0x0
    .4byte 0x41820018 # beq .L_801CD4A8
    cmpw 0, 4
    .4byte 0x41820010 # beq .L_801CD4A8
    stw 0, 0x10(1)
    li 7, 0x1
    addi 5, 5, 0x4
L_801CD4A8:
    li 0, 0x1
    cmpw 0, 3
    .4byte 0x41820018 # beq .L_801CD4C8
    cmpw 0, 4
    .4byte 0x41820010 # beq .L_801CD4C8
    stw 0, 0x0(5)
    addi 5, 5, 0x4
    addi 7, 7, 0x1
L_801CD4C8:
    li 0, 0x2
    cmpw 0, 3
    .4byte 0x41820018 # beq .L_801CD4E8
    cmpw 0, 4
    .4byte 0x41820010 # beq .L_801CD4E8
    stw 0, 0x0(5)
    addi 5, 5, 0x4
    addi 7, 7, 0x1
L_801CD4E8:
    li 0, 0x3
    cmpw 0, 3
    .4byte 0x41820014 # beq .L_801CD504
    cmpw 0, 4
    .4byte 0x4182000C # beq .L_801CD504
    stw 0, 0x0(5)
    addi 7, 7, 0x1
L_801CD504:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 7, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x34(1)
    addi 3, 1, 0x10
    mullw 4, 5, 4
    .4byte 0xC842BFC8 # lfd f2, lbl_8053EF68@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lfd 1, 0x30(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 2, 1, 2
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    slwi 0, 0, 2
    lwzx 3, 3, 0
L_801CD578:
    addi 1, 1, 0x40
    blr
