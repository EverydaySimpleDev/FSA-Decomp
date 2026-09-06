.section extab, "a"
.balign 4
.global etb_80008320
etb_80008320:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008320, 8

.section extabindex, "a"
.balign 4
.global eti_800155D4
eti_800155D4:
    .4byte fn_801CD664
    .4byte 0x00000074
    .4byte etb_80008320
.size eti_800155D4, 12

# fn_801CD664 - returns a random integer, cast down from a float in
# roughly [0,1) (the same bit-trick documented in
# reference_fsa_global_prng.md) scaled by an input value (passed as an
# int in r3, converted to float via the classic xoris/lis-0x4330
# int-to-double trick) and multiplied through. Uses the CONFIRMED
# global "Numerical Recipes" LCG at lbl_8053AAF8->0xb4 (1664525/
# 1013904223, see reference_fsa_global_prng.md) to advance the PRNG
# state - i.e. `pick a random int in [0, N)` where N is the caller's
# argument. Used by ZSLJ's constructor to pick a randomized field.
.text
.balign 4
.global fn_801CD664

fn_801CD664:
    stwu 1, -0x20(1)
    lis 4, 0x19
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x660d
    stw 3, 0x14(1)
    lwz 5, 0xb4(6)
    stw 0, 0x10(1)
    mullw 3, 5, 4
    .4byte 0xC842BFC8 # lfd f2, lbl_8053EF68@sda21(r0)
    lfd 1, 0x10(1)
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    fsubs 2, 1, 2
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 3, 0x1c(1)
    addi 1, 1, 0x20
    blr

