.section extab, "a"
.balign 4
.global etb_8000A270
etb_8000A270:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A270, 8

.section extabindex, "a"
.balign 4
.global eti_80017EF0
eti_80017EF0:
    .4byte fn_80217484
    .4byte 0x000000B4
    .4byte etb_8000A270
.size eti_80017EF0, 12

# fn_80217484 - a randomized-value initializer, same "construct at
# explicit address" calling convention as fn_801D267C/fn_801EB950 - zeroes
# +0x0/+0x4, then computes a randomized value at +0x8 by combining TWO
# independent draws from the CONFIRMED global PRNG (see
# reference_fsa_global_prng.md): one via a fn_801CD664(1) call (added to
# a base constant 0xb4), and a SECOND, hand-inlined copy of the SAME
# Numerical-Recipes LCG advance sequence, combined via floating-point
# subtraction/multiplication against two small-data double/float
# constants. The exact closed-form formula was not fully reduced, but
# both PRNG draws and the overall "randomize a timer/delay-like field"
# shape are confirmed. Used by TZOK (embedded at its own +0x368).
.text
.balign 4
.global fn_80217484

fn_80217484:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    stw 0, 0x0(3)
    li 3, 0x1
    stw 0, 0x4(31)
    bl fn_801CD664
    addi 0, 3, 0xb4
    lis 3, 0x19
    stw 0, 0x8(31)
    lis 0, 0x4330
    addi 3, 3, 0x660d
    .4byte 0xC862CC90 # lfd f3, lbl_8053FC30@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stw 0, 0x10(1)
    lwz 0, 0xb4(4)
    .4byte 0xC002CC88 # lfs f0, lbl_8053FC28@sda21(r0)
    mullw 3, 0, 3
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 3, 0xb4(4)
    lwz 0, 0x8(31)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    xoris 0, 0, 0x8000
    stw 3, 0x8(1)
    stw 0, 0x14(1)
    lfs 1, 0x8(1)
    lfd 2, 0x10(1)
    fsubs 0, 1, 0
    fsubs 1, 2, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x8(31)
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

