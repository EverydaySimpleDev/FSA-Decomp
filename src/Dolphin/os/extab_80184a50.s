.section extab, "a"
.balign 4
.global etb_80007634
etb_80007634:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007634, 8

.section extabindex, "a"
.balign 4
.global eti_80014374
eti_80014374:
    .4byte fn_80184A50
    .4byte 0x000000F0
    .4byte etb_80007634
.size eti_80014374, 12

.text
.balign 4
.global fn_80184A50

# fn_80184A50(this) - FAGN's real setParams (see
# project_fsa_rivr_gdmn_fagn_actor_progress.md). No shared-base
# setParams call (matches the whole family's raw-base-ctor lineage).
# Zero-sizes the 2 tracked rects (`0x60-0x6c`/`0x80-0x8c`) from
# constants, clears `0x240/0x244/0x248/0x234/0x238/0x23c`.
#
# Rolls the CONFIRMED global PRNG directly (the Numerical Recipes LCG
# at `lbl_8053AAF8->0xb4`, see reference_fsa_global_prng.md - inlined
# rather than called via the accessor) to pick a random integer 0-3ish
# into `this->0x98` (a variant index), then derives
# `this->0x24c = this->0x98 * 4` (a byte-stride table offset,
# presumably indexing the same kind of resource table RIVR/GDMN's
# draw() uses).
#
# Unlike RIVR/GDMN (which need their own vtable-0x44 hook to activate),
# FAGN sets `this->0xb0 = 0x11101` (the SAME activation code) and
# `this->0xb8 = 1`, `this->0x195 = 1` UNCONDITIONALLY here - FAGN
# starts active immediately at spawn rather than waiting for an
# external trigger. Finishes with the standard reset:
# `0x260/0x25c/0x258/0x44/0x40/0x3c = 0`, `0x254 = 0`, `0x250` = a
# constant, `0x230 = 0`.
fn_80184A50:
    stwu 1, -0x20(1)
    lis 5, 0x19
    .4byte 0xC082AF94 # lfs f4, lbl_8053DF34@sda21(r0)
    lis 4, 0x1
    .4byte 0xC022AF98 # lfs f1, lbl_8053DF38@sda21(r0)
    li 7, 0x0
    stfs 4, 0x60(3)
    addi 5, 5, 0x660d
    .4byte 0xC042AF60 # lfs f2, lbl_8053DF00@sda21(r0)
    addi 4, 4, 0x1101
    stfs 4, 0x64(3)
    li 0, 0x1
    .4byte 0xC062AF9C # lfs f3, lbl_8053DF3C@sda21(r0)
    stfs 1, 0x68(3)
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    stfs 1, 0x6c(3)
    stfs 4, 0x80(3)
    stfs 4, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    stw 7, 0x240(3)
    stw 7, 0x244(3)
    stw 7, 0x248(3)
    stw 7, 0x234(3)
    stw 7, 0x238(3)
    stw 7, 0x23c(3)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 6, 0xb4(8)
    mullw 5, 6, 5
    addis 5, 5, 0x3c6f
    subi 5, 5, 0xca1
    stw 5, 0xb4(8)
    lwz 5, 0xb4(8)
    srwi 5, 5, 9
    oris 5, 5, 0x3f80
    stw 5, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 5, 0x14(1)
    stw 5, 0x98(3)
    lwz 5, 0x98(3)
    slwi 5, 5, 2
    stw 5, 0x24c(3)
    stfs 0, 0x260(3)
    stfs 0, 0x25c(3)
    stfs 0, 0x258(3)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    stw 4, 0xb0(3)
    stw 0, 0xb8(3)
    stb 0, 0x195(3)
    stfs 0, 0x254(3)
    stfs 2, 0x250(3)
    stw 7, 0x230(3)
    addi 1, 1, 0x20
    blr
