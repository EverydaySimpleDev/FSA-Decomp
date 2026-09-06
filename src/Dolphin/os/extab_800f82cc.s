# fn_800F82CC: a GENERIC math utility, NOT a method of the surrounding
# actor class - it never touches a `this` pointer, only two raw
# position pointers and a step size: `MoveTowardGridSnappedTarget(
# posPtr=r3, targetPtr=r4, stepSize=f1)`. For each of X/Y/Z: rounds
# `targetPtr[axis]` to the nearest multiple of a fixed grid size (via
# the classic PowerPC fast float->int rounding trick: scale by
# lbl_8053BFD4, fctiwz, then recover as a double by XOR-ing in the
# 0x80000000 sign bit against the 0x4330... exponent bias and
# subtracting the matching bias constant lbl_8053BFD8, then rescale by
# lbl_8053BFD0 - this is a well-known idiom for avoiding the slow
# software float-to-int path), then moves `posPtr[axis]` by up to
# `stepSize` toward that snapped value (add if below, subtract if
# above, clamping exactly onto the target if the step would overshoot).
# Each axis contributes a 0/1 "reached target" flag; the 3 flags are
# summed and the final return value is a boolean "all 3 axes arrived"
# via the standard `cntlzw(N-count)>>5` equality-to-N trick. Read as a
# reusable grid-snap homing/lerp helper, likely shared across multiple
# actors rather than specific to the class at fn_800F7FCC/802C/8210.
.section extab, "a"
.balign 4
.global etb_80005768
etb_80005768:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80005768, 8

.section extabindex, "a"
.balign 4
.global eti_80011A4C
eti_80011A4C:
    .4byte fn_800F82CC
    .4byte 0x0000027C
    .4byte etb_80005768
.size eti_80011A4C, 12

.text
.balign 4
.global fn_800F82CC

fn_800F82CC:
    stwu 1, -0x30(1)
    lis 0, 0x4330
    .4byte 0xC0629034 # lfs f3, lbl_8053BFD4@sda21(r0)
    lfs 0, 0x0(3)
    lfs 4, 0x0(4)
    fmuls 2, 3, 0
    stw 0, 0x10(1)
    fmuls 0, 3, 4
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    stw 0, 0x20(1)
    fctiwz 2, 2
    fctiwz 0, 0
    .4byte 0xC0829030 # lfs f4, lbl_8053BFD0@sda21(r0)
    stfd 2, 0x8(1)
    lwz 0, 0xc(1)
    stfd 0, 0x18(1)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lwz 0, 0x1c(1)
    lfd 0, 0x10(1)
    xoris 0, 0, 0x8000
    fsubs 2, 0, 3
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fmuls 2, 4, 2
    fsubs 0, 0, 3
    stfs 2, 0x0(3)
    fmuls 2, 4, 0
    lfs 0, 0x0(3)
    fcmpo cr0, 0, 2
    .4byte 0x40810028 # ble .L_800F836C
    fsubs 0, 0, 1
    stfs 0, 0x0(3)
    lfs 0, 0x0(3)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820034 # bne .L_800F8390
    stfs 2, 0x0(3)
    li 5, 0x1
    .4byte 0x4800002C # b .L_800F8394
L_800F836C:
    fadds 0, 0, 1
    stfs 0, 0x0(3)
    lfs 0, 0x0(3)
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_800F8390
    stfs 2, 0x0(3)
    li 5, 0x1
    .4byte 0x48000008 # b .L_800F8394
L_800F8390:
    li 5, 0x0
L_800F8394:
    .4byte 0xC0629034 # lfs f3, lbl_8053BFD4@sda21(r0)
    lis 0, 0x4330
    lfs 0, 0x4(3)
    clrlwi 6, 5, 24
    lfs 4, 0x4(4)
    fmuls 2, 3, 0
    stw 0, 0x18(1)
    fmuls 0, 3, 4
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    stw 0, 0x8(1)
    fctiwz 2, 2
    fctiwz 0, 0
    .4byte 0xC0829030 # lfs f4, lbl_8053BFD0@sda21(r0)
    stfd 2, 0x20(1)
    lwz 0, 0x24(1)
    stfd 0, 0x10(1)
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lwz 0, 0x14(1)
    lfd 0, 0x18(1)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    fsubs 2, 0, 3
    lfd 0, 0x8(1)
    fmuls 2, 4, 2
    fsubs 0, 0, 3
    stfs 2, 0x4(3)
    fmuls 2, 4, 0
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 2
    .4byte 0x40810028 # ble .L_800F8434
    fsubs 0, 0, 1
    stfs 0, 0x4(3)
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820034 # bne .L_800F8458
    stfs 2, 0x4(3)
    li 5, 0x1
    .4byte 0x4800002C # b .L_800F845C
L_800F8434:
    fadds 0, 0, 1
    stfs 0, 0x4(3)
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_800F8458
    stfs 2, 0x4(3)
    li 5, 0x1
    .4byte 0x48000008 # b .L_800F845C
L_800F8458:
    li 5, 0x0
L_800F845C:
    .4byte 0xC0629034 # lfs f3, lbl_8053BFD4@sda21(r0)
    lis 0, 0x4330
    lfs 0, 0x8(3)
    add 5, 6, 5
    lfs 4, 0x8(4)
    clrlwi 6, 5, 24
    fmuls 2, 3, 0
    stw 0, 0x18(1)
    fmuls 0, 3, 4
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    stw 0, 0x8(1)
    fctiwz 2, 2
    fctiwz 0, 0
    .4byte 0xC0829030 # lfs f4, lbl_8053BFD0@sda21(r0)
    stfd 2, 0x20(1)
    lwz 0, 0x24(1)
    stfd 0, 0x10(1)
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lwz 0, 0x14(1)
    lfd 0, 0x18(1)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    fsubs 2, 0, 3
    lfd 0, 0x8(1)
    fmuls 2, 4, 2
    fsubs 0, 0, 3
    stfs 2, 0x8(3)
    fmuls 2, 4, 0
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 2
    .4byte 0x40810028 # ble .L_800F8500
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820034 # bne .L_800F8524
    stfs 2, 0x8(3)
    li 0, 0x1
    .4byte 0x4800002C # b .L_800F8528
L_800F8500:
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_800F8524
    stfs 2, 0x8(3)
    li 0, 0x1
    .4byte 0x48000008 # b .L_800F8528
L_800F8524:
    li 0, 0x0
L_800F8528:
    add 0, 6, 0
    clrlwi 6, 0, 24
    subfic 0, 6, 0x3
    cntlzw 0, 0
    srwi 0, 0, 5
    extsb 3, 0
    addi 1, 1, 0x30
    blr

