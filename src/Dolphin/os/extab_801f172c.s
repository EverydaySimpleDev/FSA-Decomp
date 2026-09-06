.section extab, "a"
.balign 4
.global etb_80008DDC
etb_80008DDC:
    .4byte 0x428A0000
    .4byte 0x00000000
.size etb_80008DDC, 8

.section extabindex, "a"
.balign 4
.global eti_800164A4
eti_800164A4:
    .4byte fn_801F172C
    .4byte 0x00000C90
    .4byte etb_80008DDC
.size eti_800164A4, 12

.text
.balign 4
.global fn_801F172C

# fn_801F172C(this, roomID, candidatePoint, edgeSource, outCorrectedPoint)
# - the position validator `fn_801F23BC` calls (extab_801f23bc.s -
# "pick a random point in my home rectangle, validate it"). By far the
# largest function found in this actor family's call graph (0xC90
# bytes) - landed as Track A (byte-matched) with the following
# overview understanding rather than a full line-by-line trace, given
# its scale:
#
# 1. Runs 4 near-identical loops (one per room-boundary edge). Each
#    loop repeatedly calls a per-actor VIRTUAL function at vtable slot
#    0x50 (`(**this)[0x50](this, roomID, &jitteredOffset)`), where the
#    jittered offset is built from a small lookup table
#    (`lbl_80469F78`/`84`/`90`/`9C`, one per edge) combined with a
#    per-edge running counter stored on the STACK (not on `this` - the
#    counters reset every call) - reads as "sample this edge at K
#    jittered points and count how many report blocked," accumulating
#    a fractional "crossing amount" per edge into `f24`/`f23`/`f22`/`f29`.
# 2. A large nested boolean-combination tree (the bulk of the
#    function) cross-checks all 4 edges' blocked-flags and accumulated
#    amounts against each other, and where two adjacent edges are both
#    "mostly blocked," nudges `candidatePoint`'s X or Z coordinate by a
#    small fixed offset (`lbl_8053F774`/`lbl_8053F754`) away from the
#    corresponding edge - this is a wall-push/corner-correction step,
#    not a hard reject. The exact truth table (which combinations of
#    the 4 edges trigger which specific push) was NOT hand-verified
#    line-by-line - a candidate for a future deep-dive if the precise
#    edge semantics ever matter.
# 3. If any push was applied (tracked via `r30`), accumulates all
#    applied push vectors into one 3-float result, normalizes it (via
#    the standard reciprocal-sqrt-with-Newton-Raphson idiom already
#    seen elsewhere in this project) if its magnitude exceeds a tiny
#    epsilon, scales it by a push-distance constant
#    (`lbl_8053F750`), and writes the FINAL corrected point into
#    `outCorrectedPoint`. Returns whether a push was applied - the
#    caller (`fn_801F23BC`) treats a TRUE return as "point accepted
#    (post-correction)" and a FALSE return as "reject, try again."
fn_801F172C:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stfd 31, 0x140(1)
    psq_st 31, 0x148(1), 0, 0
    stfd 30, 0x130(1)
    psq_st 30, 0x138(1), 0, 0
    stfd 29, 0x120(1)
    psq_st 29, 0x128(1), 0, 0
    stfd 28, 0x110(1)
    psq_st 28, 0x118(1), 0, 0
    stfd 27, 0x100(1)
    psq_st 27, 0x108(1), 0, 0
    stfd 26, 0xf0(1)
    psq_st 26, 0xf8(1), 0, 0
    stfd 25, 0xe0(1)
    psq_st 25, 0xe8(1), 0, 0
    stfd 24, 0xd0(1)
    psq_st 24, 0xd8(1), 0, 0
    stfd 23, 0xc0(1)
    psq_st 23, 0xc8(1), 0, 0
    stfd 22, 0xb0(1)
    psq_st 22, 0xb8(1), 0, 0
    stmw 24, 0x90(1)
    mr 27, 6
    mr 26, 5
    lfs 28, 0x0(6)
    lis 5, lbl_80469F78@ha
    lfs 0, 0x0(26)
    addi 6, 5, lbl_80469F78@l
    .4byte 0xC302C7A0 # lfs f24, lbl_8053F740@sda21(r0)
    mr 24, 3
    fadds 0, 0, 28
    lwz 5, 0x0(6)
    lwz 3, 0x4(6)
    mr 25, 4
    stfs 24, 0x74(1)
    mr 28, 7
    stfs 0, 0x70(1)
    mr 29, 8
    lfs 29, 0x4(27)
    li 30, 0x0
    stfs 24, 0x78(1)
    li 31, 0x0
    lwz 0, 0x8(6)
    lfs 0, 0x4(26)
    lfs 30, 0x8(27)
    fadds 0, 0, 29
    .4byte 0xC022C808 # lfs f1, lbl_8053F7A8@sda21(r0)
    lfs 31, 0xc(27)
    fsubs 30, 30, 1
    stw 5, 0x58(1)
    fsubs 31, 31, 1
    stw 3, 0x5c(1)
    .4byte 0xC2C2C804 # lfs f22, lbl_8053F7A4@sda21(r0)
    stw 0, 0x60(1)
    stfs 0, 0x74(1)
    .4byte 0x48000094 # b .L_801F18A4
L_801F1814:
    mr 3, 24
    mr 4, 25
    lwz 12, 0x0(24)
    addi 5, 1, 0x70
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_801F1894
    lfs 2, 0x70(1)
    neg 0, 31
    .4byte 0xC022C80C # lfs f1, lbl_8053F7AC@sda21(r0)
    or 0, 0, 31
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    lis 3, 0x4330
    rlwinm 5, 0, 3, 29, 29
    addi 4, 1, 0x58
    fmadds 0, 1, 2, 0
    stw 3, 0x88(1)
    lwzx 3, 4, 5
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    fctiwz 0, 0
    addi 0, 3, 0x1
    stwx 0, 4, 5
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x8c(1)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fsubs 24, 0, 2
L_801F1894:
    lfs 0, 0x74(1)
    addi 31, 31, 0x1
    fadds 0, 0, 22
    stfs 0, 0x74(1)
L_801F18A4:
    lfs 0, 0x4(26)
    lfs 1, 0x74(1)
    fadds 0, 0, 31
    fcmpo cr0, 1, 0
    .4byte 0x4180FF60 # blt .L_801F1814
    stfs 0, 0x74(1)
    mr 3, 24
    mr 4, 25
    addi 5, 1, 0x70
    lwz 12, 0x0(24)
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_801F192C
    lfs 2, 0x70(1)
    lis 0, 0x4330
    .4byte 0xC022C80C # lfs f1, lbl_8053F7AC@sda21(r0)
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    lwz 3, 0x60(1)
    fmadds 0, 1, 2, 0
    stw 0, 0x80(1)
    addi 0, 3, 0x1
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    stw 0, 0x60(1)
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fsubs 24, 0, 2
L_801F192C:
    lfs 0, 0x0(26)
    lis 3, lbl_80469F84@ha
    addi 5, 3, lbl_80469F84@l
    .4byte 0xC2E2C7A0 # lfs f23, lbl_8053F740@sda21(r0)
    fadds 0, 0, 30
    lwz 4, 0x0(5)
    lwz 3, 0x4(5)
    li 31, 0x0
    lwz 0, 0x8(5)
    stfs 0, 0x70(1)
    .4byte 0xC2C2C804 # lfs f22, lbl_8053F7A4@sda21(r0)
    stfs 23, 0x74(1)
    stfs 23, 0x78(1)
    lfs 0, 0x4(26)
    stw 4, 0x4c(1)
    fadds 0, 0, 29
    stw 3, 0x50(1)
    stw 0, 0x54(1)
    stfs 0, 0x74(1)
    .4byte 0x4800009C # b .L_801F1A14
L_801F197C:
    mr 3, 24
    mr 4, 25
    lwz 12, 0x0(24)
    addi 5, 1, 0x70
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801F1A04
    .4byte 0xC022C80C # lfs f1, lbl_8053F7AC@sda21(r0)
    neg 0, 31
    lfs 0, 0x70(1)
    or 0, 0, 31
    lis 3, 0x4330
    addi 4, 1, 0x4c
    fmuls 0, 1, 0
    rlwinm 5, 0, 3, 29, 29
    stw 3, 0x80(1)
    lwzx 3, 4, 5
    fctiwz 0, 0
    lfs 3, 0x0(26)
    addi 0, 3, 0x1
    lfs 2, 0x8(27)
    stwx 0, 4, 5
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    stfd 0, 0x88(1)
    fadds 2, 3, 2
    lwz 3, 0x8c(1)
    slwi 0, 3, 3
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fsubs 23, 2, 0
L_801F1A04:
    lfs 0, 0x74(1)
    addi 31, 31, 0x1
    fadds 0, 0, 22
    stfs 0, 0x74(1)
L_801F1A14:
    lfs 0, 0x4(26)
    lfs 1, 0x74(1)
    fadds 0, 0, 31
    fcmpo cr0, 1, 0
    .4byte 0x4180FF58 # blt .L_801F197C
    stfs 0, 0x74(1)
    mr 3, 24
    mr 4, 25
    addi 5, 1, 0x70
    lwz 12, 0x0(24)
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_801F1AA4
    lfs 1, 0x0(26)
    lis 4, 0x4330
    lfs 0, 0x8(27)
    lwz 3, 0x54(1)
    fadds 2, 1, 0
    .4byte 0xC002C80C # lfs f0, lbl_8053F7AC@sda21(r0)
    addi 0, 3, 0x1
    stw 4, 0x80(1)
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    fmuls 0, 0, 2
    stfs 2, 0x70(1)
    fctiwz 0, 0
    stw 0, 0x54(1)
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fsubs 23, 2, 0
L_801F1AA4:
    lfs 0, 0x4(26)
    lis 3, lbl_80469F90@ha
    addi 5, 3, lbl_80469F90@l
    .4byte 0xC2C2C7A0 # lfs f22, lbl_8053F740@sda21(r0)
    fadds 0, 0, 29
    lwz 4, 0x0(5)
    lwz 3, 0x4(5)
    li 31, 0x0
    lwz 0, 0x8(5)
    stfs 22, 0x70(1)
    .4byte 0xC3A2C804 # lfs f29, lbl_8053F7A4@sda21(r0)
    stfs 0, 0x74(1)
    stfs 22, 0x78(1)
    lfs 0, 0x0(26)
    stw 4, 0x40(1)
    fadds 0, 0, 28
    stw 3, 0x44(1)
    stw 0, 0x48(1)
    stfs 0, 0x70(1)
    .4byte 0x48000094 # b .L_801F1B84
L_801F1AF4:
    mr 3, 24
    mr 4, 25
    lwz 12, 0x0(24)
    addi 5, 1, 0x70
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_801F1B74
    lfs 2, 0x74(1)
    neg 0, 31
    .4byte 0xC022C80C # lfs f1, lbl_8053F7AC@sda21(r0)
    or 0, 0, 31
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    lis 3, 0x4330
    rlwinm 5, 0, 3, 29, 29
    addi 4, 1, 0x40
    fmadds 0, 1, 2, 0
    stw 3, 0x80(1)
    lwzx 3, 4, 5
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    fctiwz 0, 0
    addi 0, 3, 0x1
    stwx 0, 4, 5
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fsubs 22, 0, 2
L_801F1B74:
    lfs 0, 0x70(1)
    addi 31, 31, 0x1
    fadds 0, 0, 29
    stfs 0, 0x70(1)
L_801F1B84:
    lfs 0, 0x0(26)
    lfs 1, 0x70(1)
    fadds 0, 0, 30
    fcmpo cr0, 1, 0
    .4byte 0x4180FF60 # blt .L_801F1AF4
    stfs 0, 0x70(1)
    mr 3, 24
    mr 4, 25
    addi 5, 1, 0x70
    lwz 12, 0x0(24)
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_801F1C0C
    lfs 2, 0x74(1)
    lis 0, 0x4330
    .4byte 0xC022C80C # lfs f1, lbl_8053F7AC@sda21(r0)
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    lwz 3, 0x48(1)
    fmadds 0, 1, 2, 0
    stw 0, 0x80(1)
    addi 0, 3, 0x1
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    stw 0, 0x48(1)
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fsubs 22, 0, 2
L_801F1C0C:
    lfs 0, 0x4(26)
    lis 3, lbl_80469F9C@ha
    addi 5, 3, lbl_80469F9C@l
    .4byte 0xC3A2C7A0 # lfs f29, lbl_8053F740@sda21(r0)
    fadds 0, 0, 31
    lwz 4, 0x0(5)
    lwz 3, 0x4(5)
    li 31, 0x0
    lwz 0, 0x8(5)
    stfs 29, 0x70(1)
    .4byte 0xC3E2C804 # lfs f31, lbl_8053F7A4@sda21(r0)
    stfs 0, 0x74(1)
    stfs 29, 0x78(1)
    lfs 0, 0x0(26)
    stw 4, 0x34(1)
    fadds 0, 0, 28
    stw 3, 0x38(1)
    stw 0, 0x3c(1)
    stfs 0, 0x70(1)
    .4byte 0x4800009C # b .L_801F1CF4
L_801F1C5C:
    mr 3, 24
    mr 4, 25
    lwz 12, 0x0(24)
    addi 5, 1, 0x70
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801F1CE4
    .4byte 0xC022C80C # lfs f1, lbl_8053F7AC@sda21(r0)
    neg 0, 31
    lfs 0, 0x74(1)
    or 0, 0, 31
    lis 3, 0x4330
    addi 4, 1, 0x34
    fmuls 0, 1, 0
    rlwinm 5, 0, 3, 29, 29
    stw 3, 0x80(1)
    lwzx 3, 4, 5
    fctiwz 0, 0
    lfs 3, 0x4(26)
    addi 0, 3, 0x1
    lfs 2, 0xc(27)
    stwx 0, 4, 5
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    stfd 0, 0x88(1)
    fadds 2, 3, 2
    lwz 3, 0x8c(1)
    slwi 0, 3, 3
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fsubs 29, 2, 0
L_801F1CE4:
    lfs 0, 0x70(1)
    addi 31, 31, 0x1
    fadds 0, 0, 31
    stfs 0, 0x70(1)
L_801F1CF4:
    lfs 0, 0x0(26)
    lfs 1, 0x70(1)
    fadds 0, 0, 30
    fcmpo cr0, 1, 0
    .4byte 0x4180FF58 # blt .L_801F1C5C
    stfs 0, 0x70(1)
    mr 3, 24
    mr 4, 25
    addi 5, 1, 0x70
    lwz 12, 0x0(24)
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_801F1D84
    lfs 1, 0x4(26)
    lis 4, 0x4330
    lfs 0, 0xc(27)
    lwz 3, 0x3c(1)
    fadds 2, 1, 0
    .4byte 0xC002C80C # lfs f0, lbl_8053F7AC@sda21(r0)
    addi 0, 3, 0x1
    stw 4, 0x80(1)
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    fmuls 0, 0, 2
    stfs 2, 0x74(1)
    fctiwz 0, 0
    stw 0, 0x3c(1)
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fsubs 29, 2, 0
L_801F1D84:
    cmplwi 28, 0x0
    .4byte 0x4182002C # beq .L_801F1DB4
    lfs 0, 0x0(26)
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    stfs 0, 0x70(1)
    lfs 0, 0x4(26)
    stfs 1, 0x6c(1)
    stfs 0, 0x74(1)
    lfs 0, 0x8(26)
    stfs 1, 0x68(1)
    stfs 1, 0x64(1)
    stfs 0, 0x78(1)
L_801F1DB4:
    lwz 3, 0x5c(1)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_801F1DCC
    lwz 0, 0x50(1)
    cmpwi 0, 0x0
    .4byte 0x4182008C # beq .L_801F1E54
L_801F1DCC:
    lwz 0, 0x58(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F1DE4
    lwz 0, 0x60(1)
    cmpwi 0, 0x0
    .4byte 0x40820074 # bne .L_801F1E54
L_801F1DE4:
    lwz 0, 0x58(1)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_801F1E1C
    lwz 0, 0x48(1)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801F1E1C
    fcmpo cr0, 24, 22
    .4byte 0x4080001C # bge .L_801F1E1C
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F1E54
    lwz 0, 0x54(1)
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_801F1E54
L_801F1E1C:
    lwz 0, 0x60(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F1E6C
    lwz 0, 0x3c(1)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_801F1E6C
    fcmpo cr0, 24, 29
    .4byte 0x40800034 # bge .L_801F1E6C
    lwz 0, 0x54(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F1E54
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_801F1E6C
L_801F1E54:
    lfs 1, 0x0(26)
    li 30, 0x1
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    fadds 1, 1, 24
    stfs 0, 0x64(1)
    stfs 1, 0x0(26)
L_801F1E6C:
    lwz 0, 0x50(1)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801F1E80
    cmpwi 3, 0x0
    .4byte 0x4182008C # beq .L_801F1F08
L_801F1E80:
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F1E98
    lwz 0, 0x54(1)
    cmpwi 0, 0x0
    .4byte 0x40820074 # bne .L_801F1F08
L_801F1E98:
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_801F1ED0
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801F1ED0
    fcmpo cr0, 23, 22
    .4byte 0x4080001C # bge .L_801F1ED0
    lwz 0, 0x58(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F1F08
    lwz 0, 0x60(1)
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_801F1F08
L_801F1ED0:
    lwz 0, 0x54(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F1F20
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_801F1F20
    fcmpo cr0, 23, 29
    .4byte 0x40800034 # bge .L_801F1F20
    lwz 0, 0x60(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F1F08
    lwz 0, 0x58(1)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_801F1F20
L_801F1F08:
    lfs 1, 0x0(26)
    li 30, 0x1
    .4byte 0xC002C7B4 # lfs f0, lbl_8053F754@sda21(r0)
    fsubs 1, 1, 23
    stfs 0, 0x64(1)
    stfs 1, 0x0(26)
L_801F1F20:
    lwz 3, 0x44(1)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_801F1F38
    lwz 0, 0x38(1)
    cmpwi 0, 0x0
    .4byte 0x4182008C # beq .L_801F1FC0
L_801F1F38:
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F1F50
    lwz 0, 0x48(1)
    cmpwi 0, 0x0
    .4byte 0x40820074 # bne .L_801F1FC0
L_801F1F50:
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_801F1F88
    lwz 0, 0x60(1)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801F1F88
    fcmpo cr0, 22, 24
    .4byte 0x4080001C # bge .L_801F1F88
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F1FC0
    lwz 0, 0x3c(1)
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_801F1FC0
L_801F1F88:
    lwz 0, 0x48(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F1FD8
    lwz 0, 0x54(1)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_801F1FD8
    fcmpo cr0, 22, 23
    .4byte 0x40800034 # bge .L_801F1FD8
    lwz 0, 0x3c(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F1FC0
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_801F1FD8
L_801F1FC0:
    lfs 1, 0x4(26)
    li 30, 0x1
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    fadds 1, 1, 22
    stfs 0, 0x68(1)
    stfs 1, 0x4(26)
L_801F1FD8:
    lwz 0, 0x38(1)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801F1FEC
    cmpwi 3, 0x0
    .4byte 0x4182008C # beq .L_801F2074
L_801F1FEC:
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F2004
    lwz 0, 0x3c(1)
    cmpwi 0, 0x0
    .4byte 0x40820074 # bne .L_801F2074
L_801F2004:
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_801F203C
    lwz 0, 0x58(1)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801F203C
    fcmpo cr0, 29, 24
    .4byte 0x4080001C # bge .L_801F203C
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F2074
    lwz 0, 0x48(1)
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_801F2074
L_801F203C:
    lwz 0, 0x3c(1)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_801F208C
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_801F208C
    fcmpo cr0, 29, 23
    .4byte 0x40800034 # bge .L_801F208C
    lwz 0, 0x48(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801F2074
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_801F208C
L_801F2074:
    lfs 1, 0x4(26)
    li 30, 0x1
    .4byte 0xC002C7B4 # lfs f0, lbl_8053F754@sda21(r0)
    fsubs 1, 1, 29
    stfs 0, 0x68(1)
    stfs 1, 0x4(26)
L_801F208C:
    clrlwi. 0, 30, 24
    .4byte 0x418202C4 # beq .L_801F2354
    cmplwi 28, 0x0
    .4byte 0x418202BC # beq .L_801F2354
    clrlwi. 0, 29, 24
    .4byte 0x41820218 # beq .L_801F22B8
    lwz 0, 0x58(1)
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    lfs 3, 0x74(1)
    cmpwi 0, 0x0
    lfs 2, 0x4(27)
    lfs 0, 0xc(27)
    lfs 4, 0x70(1)
    fadds 30, 3, 2
    lfs 2, 0x0(27)
    fadds 28, 3, 0
    lfs 0, 0x8(27)
    fadds 31, 4, 2
    stfs 1, 0x28(1)
    fadds 29, 4, 0
    stfs 1, 0x2c(1)
    stfs 1, 0x30(1)
    .4byte 0x41820058 # beq .L_801F213C
    lfs 0, 0x64(1)
    fcmpo cr0, 0, 1
    .4byte 0x41810010 # bgt .L_801F2100
    lfs 0, 0x68(1)
    fcmpo cr0, 0, 1
    .4byte 0x40810040 # ble .L_801F213C
L_801F2100:
    stfs 31, 0x20(1)
    mr 4, 25
    addi 3, 1, 0x20
    stfs 30, 0x24(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0xb
    .4byte 0x40820020 # bne .L_801F213C
    lfs 1, 0x28(1)
    .4byte 0xC042C7D4 # lfs f2, lbl_8053F774@sda21(r0)
    lfs 0, 0x2c(1)
    fadds 1, 1, 2
    fadds 0, 0, 2
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
L_801F213C:
    lwz 0, 0x4c(1)
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_801F21A4
    lfs 0, 0x64(1)
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x41800010 # blt .L_801F2164
    lfs 0, 0x68(1)
    fcmpo cr0, 0, 1
    .4byte 0x40810044 # ble .L_801F21A4
L_801F2164:
    stfs 29, 0x18(1)
    mr 4, 25
    addi 3, 1, 0x18
    stfs 30, 0x1c(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0xa
    .4byte 0x40820024 # bne .L_801F21A4
    lfs 3, 0x28(1)
    .4byte 0xC042C7B4 # lfs f2, lbl_8053F754@sda21(r0)
    lfs 1, 0x2c(1)
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x28(1)
    stfs 0, 0x2c(1)
L_801F21A4:
    lwz 0, 0x60(1)
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_801F220C
    lfs 0, 0x64(1)
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x41810010 # bgt .L_801F21CC
    lfs 0, 0x68(1)
    fcmpo cr0, 0, 1
    .4byte 0x40800044 # bge .L_801F220C
L_801F21CC:
    stfs 31, 0x10(1)
    mr 4, 25
    addi 3, 1, 0x10
    stfs 28, 0x14(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x9
    .4byte 0x40820024 # bne .L_801F220C
    lfs 3, 0x28(1)
    .4byte 0xC042C7D4 # lfs f2, lbl_8053F774@sda21(r0)
    lfs 1, 0x2c(1)
    .4byte 0xC002C7B4 # lfs f0, lbl_8053F754@sda21(r0)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x28(1)
    stfs 0, 0x2c(1)
L_801F220C:
    lwz 0, 0x54(1)
    cmpwi 0, 0x0
    .4byte 0x4182005C # beq .L_801F2270
    lfs 0, 0x64(1)
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x41800010 # blt .L_801F2234
    lfs 0, 0x68(1)
    fcmpo cr0, 0, 1
    .4byte 0x40800040 # bge .L_801F2270
L_801F2234:
    stfs 29, 0x8(1)
    mr 4, 25
    addi 3, 1, 0x8
    stfs 28, 0xc(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x40820020 # bne .L_801F2270
    lfs 1, 0x28(1)
    .4byte 0xC042C7B4 # lfs f2, lbl_8053F754@sda21(r0)
    lfs 0, 0x2c(1)
    fadds 1, 1, 2
    fadds 0, 0, 2
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
L_801F2270:
    psq_l 3, 0x28(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 26, 0x30(1)
    ps_mul 3, 3, 3
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 26, 26, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4182001C # beq .L_801F22B8
    lfs 2, 0x28(1)
    lfs 1, 0x2c(1)
    lfs 0, 0x30(1)
    stfs 2, 0x64(1)
    stfs 1, 0x68(1)
    stfs 0, 0x6c(1)
L_801F22B8:
    psq_l 2, 0x64(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 25, 0x6c(1)
    ps_mul 2, 2, 2
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 25, 25, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_801F233C
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801F2300
    fmr 27, 4
    .4byte 0x48000028 # b .L_801F2324
L_801F2300:
    frsqrte 3, 4
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 27, 0
L_801F2324:
    psq_l 1, 0x64(1), 0, 0
    psq_l 0, 0x6c(1), 1, 0
    ps_muls0 1, 1, 27
    ps_muls0 0, 0, 27
    psq_st 1, 0x64(1), 0, 0
    psq_st 0, 0x6c(1), 1, 0
L_801F233C:
    lfs 0, 0x64(1)
    lfs 1, 0x68(1)
    stfs 0, 0x0(28)
    lfs 0, 0x6c(1)
    stfs 1, 0x4(28)
    stfs 0, 0x8(28)
L_801F2354:
    clrlwi 3, 30, 24
    psq_l 31, 0x148(1), 0, 0
    lfd 31, 0x140(1)
    psq_l 30, 0x138(1), 0, 0
    lfd 30, 0x130(1)
    psq_l 29, 0x128(1), 0, 0
    lfd 29, 0x120(1)
    psq_l 28, 0x118(1), 0, 0
    lfd 28, 0x110(1)
    psq_l 27, 0x108(1), 0, 0
    lfd 27, 0x100(1)
    psq_l 26, 0xf8(1), 0, 0
    lfd 26, 0xf0(1)
    psq_l 25, 0xe8(1), 0, 0
    lfd 25, 0xe0(1)
    psq_l 24, 0xd8(1), 0, 0
    lfd 24, 0xd0(1)
    psq_l 23, 0xc8(1), 0, 0
    lfd 23, 0xc0(1)
    psq_l 22, 0xb8(1), 0, 0
    lfd 22, 0xb0(1)
    lmw 24, 0x90(1)
    lwz 0, 0x154(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

