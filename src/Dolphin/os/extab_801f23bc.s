.section extab, "a"
.balign 4
.global etb_80008DE4
etb_80008DE4:
    .4byte 0x490A0000
    .4byte 0x00000000
.size etb_80008DE4, 8

.section extabindex, "a"
.balign 4
.global eti_800164B0
eti_800164B0:
    .4byte fn_801F23BC
    .4byte 0x0000025C
    .4byte etb_80008DE4
.size eti_800164B0, 12

.text
.balign 4
.global fn_801F23BC

# fn_801F23BC(this, roomID, currentPos, searchExtent, boundsRect,
# outFoundPos, unused) - random-point-in-rectangle picker with
# validation and retry, CONFIRMED as the shared core both
# `fn_801F2618` (below) and "Class C" of the RUSA-repel movement family
# (`fn_801840E0`, extab_801840e0.s) call: `boundsRect` is the SAME
# 4-float min/max-corner rectangle Class C caches at `this->0x80/0x84`
# (min corner) / `this->0x88/0x8c` (max corner).
#
# 1. Computes the rect's width/height, fails immediately (returns
#    false) if either is smaller than a tiny epsilon constant
#    (`lbl_8053F7A8`).
# 2. Derives a symmetric "safety margin" (`+-f28`) from the SMALLER of
#    the two dimensions, clamped to a max (`lbl_8053F7A4`) and scaled
#    down (`lbl_8053F74C`) - this keeps randomly-picked points away
#    from the rect's edges.
# 3. Loop: starting from `currentPos` (`this->0xc`-style), add a
#    caller-supplied delta vector (`searchExtent`, i.e. a per-iteration
#    step/offset) to build a candidate point, then clamp each axis
#    independently to `+-margin` if it overshoots (via a divide-and-
#    rescale, not a hard clip - preserves direction). If NEITHER axis
#    needed clamping on the first pass, use `currentPos` directly as
#    the candidate instead of the built one (a "already inside bounds,
#    don't bother randomizing" shortcut).
# 4. Validates the candidate via `fn_801F172C(this, roomID, candidate,
#    boundsRect, outFoundPos)` (not decompiled - likely a
#    room/collision validity check, since it's handed the same rect).
#    If invalid, loop again (the delta vector must change between
#    calls at the caller's side, since this function doesn't re-
#    randomize it itself - `fn_801F2618` below re-invokes this
#    function fresh each frame it needs a point, relying on the
#    caller's own per-frame state to vary the search).
# 5. On success, additionally writes the validated point into the
#    optional `outFoundPos` (3 floats) and returns true; loop exits
#    (without success) once `fn_801F172C` never validates - practically
#    this is a single-shot try given the caller always passes a fixed
#    delta, not an actual multi-attempt retry loop in most call
#    patterns observed.
#
# Ties the "RAIL"/waypoint-adjacent movement logic together: this is
# the primitive Class C uses to pick a new random point to walk toward
# within its home rectangle, and `fn_801F2618` uses it to keep an
# actor's position resolved against ITS OWN home rect.
fn_801F23BC:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stmw 23, 0x2c(1)
    mr 26, 7
    psq_l 4, 0x0(6), 0, 0
    lfs 1, 0x8(7)
    mr 23, 3
    lfs 0, 0x0(7)
    mr 24, 4
    lfs 3, 0x8(6)
    mr 25, 5
    fsubs 5, 1, 0
    .4byte 0xC002C808 # lfs f0, lbl_8053F7A8@sda21(r0)
    lfs 2, 0xc(7)
    mr 27, 8
    lfs 1, 0x4(7)
    mr 28, 9
    fcmpo cr0, 5, 0
    psq_st 4, 0x14(1), 0, 0
    fsubs 1, 2, 1
    mr 29, 10
    stfs 3, 0x1c(1)
    li 31, 0x1
    li 30, 0x0
    .4byte 0x408101A0 # ble .L_801F25E0
    fcmpo cr0, 1, 0
    .4byte 0x40810198 # ble .L_801F25E0
    fcmpo cr0, 5, 1
    .4byte 0x40800008 # bge .L_801F2458
    fmr 1, 5
L_801F2458:
    .4byte 0xC002C804 # lfs f0, lbl_8053F7A4@sda21(r0)
    fmr 28, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_801F246C
    fmr 28, 0
L_801F246C:
    .4byte 0xC022C808 # lfs f1, lbl_8053F7A8@sda21(r0)
    .4byte 0xC002C7AC # lfs f0, lbl_8053F74C@sda21(r0)
    fsubs 28, 28, 1
    psq_l 30, 0x0(25), 0, 0
    psq_l 31, 0x8(25), 1, 0
    fmuls 28, 28, 0
    fneg 29, 28
    .4byte 0x48000150 # b .L_801F25D8
L_801F248C:
    psq_l 1, 0x14(1), 0, 0
    li 0, 0x0
    psq_l 0, 0x1c(1), 1, 0
    li 3, 0x0
    ps_sub 1, 30, 1
    ps_sub 0, 31, 0
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0x8(1)
    psq_st 0, 0x10(1), 1, 0
    fcmpo cr0, 1, 28
    .4byte 0x4081001C # ble .L_801F24D0
    fdivs 0, 28, 1
    lfs 1, 0xc(1)
    stfs 28, 0x8(1)
    fmuls 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000028 # b .L_801F24F4
L_801F24D0:
    fcmpo cr0, 1, 29
    .4byte 0x4080001C # bge .L_801F24F0
    fdivs 0, 29, 1
    lfs 1, 0xc(1)
    stfs 29, 0x8(1)
    fmuls 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000008 # b .L_801F24F4
L_801F24F0:
    li 0, 0x1
L_801F24F4:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 28
    .4byte 0x4081001C # ble .L_801F2518
    fdivs 0, 28, 0
    lfs 1, 0x8(1)
    stfs 28, 0xc(1)
    fmuls 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000028 # b .L_801F253C
L_801F2518:
    fcmpo cr0, 0, 29
    .4byte 0x4080001C # bge .L_801F2538
    fdivs 0, 29, 0
    lfs 1, 0x8(1)
    stfs 29, 0xc(1)
    fmuls 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000008 # b .L_801F253C
L_801F2538:
    li 3, 0x1
L_801F253C:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_801F256C
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801F256C
    lfs 2, 0x0(25)
    li 31, 0x0
    lfs 1, 0x4(25)
    lfs 0, 0x8(25)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    .4byte 0x48000024 # b .L_801F258C
L_801F256C:
    psq_l 3, 0x14(1), 0, 0
    psq_l 2, 0x8(1), 0, 0
    psq_l 1, 0x1c(1), 1, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 2, 3, 2
    ps_add 0, 1, 0
    psq_st 2, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_801F258C:
    mr 3, 23
    mr 4, 24
    mr 6, 26
    mr 7, 28
    mr 8, 29
    addi 5, 1, 0x14
    bl fn_801F172C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801F25D8
    cmplwi 27, 0x0
    li 30, 0x1
    li 31, 0x0
    .4byte 0x4182001C # beq .L_801F25D8
    lfs 0, 0x14(1)
    stfs 0, 0x0(27)
    lfs 0, 0x18(1)
    stfs 0, 0x4(27)
    lfs 0, 0x1c(1)
    stfs 0, 0x8(27)
L_801F25D8:
    clrlwi. 0, 31, 24
    .4byte 0x4082FEB0 # bne .L_801F248C
L_801F25E0:
    clrlwi 3, 30, 24
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lmw 23, 0x2c(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr
