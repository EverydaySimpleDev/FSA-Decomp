# NOTE: attempted real-C++ promotion twice (32nd Phase 4 batch) using
# the declare-separately/assign-in-schedule-order technique that
# solved Yasi_SetParams's similar 4-float case - both natural (a,b,c,d)
# and reversed (d,c,b,a) declaration order produced the SAME wrong
# register mapping (a->f0 always) instead of retail's a->f3/b->f2/
# c->f1/d->f0 (descending, but NOT simply "most-used gets extreme
# register" - c has the most uses of any of the 4 yet lands in the
# middle, f1). Declaration order alone doesn't control this case,
# unlike Yasi_SetParams's. Left as raw asm.
# SAFU cluster, part 4/4 (128B, no extab - leaf). setParams - pure
# numeric default-field initialization (position/hitbox/timer fields
# across 0x234-0x26c, 0x230, 0x11f), no calls.
.text
.balign 4
.global fn_801B69AC

fn_801B69AC:
    .4byte 0xC062BB18 # lfs f3, lbl_8053EAB8@sda21(r0)
    li 4, 0x0
    .4byte 0xC042BB1C # lfs f2, lbl_8053EABC@sda21(r0)
    li 0, 0x1
    stfs 3, 0x60(3)
    .4byte 0xC022BAFC # lfs f1, lbl_8053EA9C@sda21(r0)
    stfs 3, 0x64(3)
    .4byte 0xC002BAF8 # lfs f0, lbl_8053EA98@sda21(r0)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 2, 0x88(3)
    stfs 2, 0x8c(3)
    stw 4, 0x240(3)
    stw 4, 0x244(3)
    stw 4, 0x248(3)
    stw 4, 0x234(3)
    stw 4, 0x238(3)
    stw 4, 0x23c(3)
    stfs 1, 0x258(3)
    stfs 1, 0x25c(3)
    stfs 1, 0x260(3)
    stfs 1, 0x264(3)
    stfs 1, 0x268(3)
    stfs 1, 0x26c(3)
    stfs 0, 0x254(3)
    stfs 0, 0x250(3)
    stfs 0, 0x24c(3)
    stw 4, 0x230(3)
    stb 0, 0x11f(3)
    blr

