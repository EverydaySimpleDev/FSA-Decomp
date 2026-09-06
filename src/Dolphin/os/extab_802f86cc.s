.section extab, "a"
.balign 4
.global etb_8000D414
etb_8000D414:
    .4byte 0x8C4A0000
    .4byte 0x00000000
.size etb_8000D414, 8

.section extabindex, "a"
.balign 4
.global eti_8001C708
eti_8001C708:
    .4byte fn_802F86CC
    .4byte 0x00000840
    .4byte etb_8000D414
.size eti_8001C708, 12

.text
.balign 4
.global fn_802F86CC

# fn_802F86CC(handleGroup, configPtr, ..., outParams?) - the THIRD and
# final member of the "spatial triad" flagged undecompiled in
# [[project_fsa_shared_effect_subsystem_crossref]] (2112 bytes). Genuinely
# understood at the architectural level, though several callees remain
# unexplored (flagged below rather than guessed at, per this project's
# "don't invent semantics for untraced callees" convention).
#
# Opens with the SAME 2 validity checks fn_802F745C uses
# (`fn_802F654C`/`fn_802F6298` against a handle argument) - confirms this
# is a genuine sibling of that function, sharing the same handle-validity
# contract.
#
# Where fn_802F745C renders a dynamic patch of the probe grid around a
# moving position (reading the grid's plain float-array probe format),
# THIS function instead calls `fn_802F5570` (unexplored) to fetch a
# COMPRESSED, BIT-PACKED per-vertex probe/light record (unpacked here via
# an extensive `rlwimi`/`extrwi` bitfield-extraction sequence into
# position deltas, a palette/table index, and several 1-2 bit flags),
# looks up float values from 3 small tables at fixed offsets off a shared
# base (`lbl_8046F940 + 0x1620/0x1640/0x1680` - not yet confirmed as
# authored data vs. code-adjacent constants), and calls
# `fn_802F91AC`/`fn_802F8F0C` (both unexplored) plus the SAME
# `fn_8005XXXX` GX-state-setter family and `fn_8005DD00`/`fn_8005DC74`
# (2 more unexplored GX wrapper calls) before writing computed vertex
# floats DIRECTLY into the GX CPU write-gather-pipe FIFO (0xCC008000 -
# same fixed address `fn_802F745C`/`fn_8013B004`/`fn_8013CC50` write to).
# As with `fn_802F745C`, every emission burst is preceded by
# `bl fn_8005C24C` with `r3=0x80 (GX_QUADS), r4=0x0, r5=nverts` - the real
# GX SDK's `GXBegin()` - and every per-vertex write observed is `stfs`
# (float), never `stb` (packed byte color) - so "position+color floats" is
# accurate here in spirit but the color channel, if present, is submitted
# as GX_F32 too, not RGBA8.
#
# Also reads a "near/settings-override" byte off the probe registry
# itself (`lbl_8053AB10->0x20 + 0xe461`) and applies the SAME
# grid-boundary-wrap + `slwi 10`/`slwi 7` cell-hash adjustment used
# throughout the camera-manager's lighting cluster, confirming this
# function operates on the SAME probe grid as `fn_802F5E9C`/`fn_802F745C`,
# just against pre-authored/compressed light data rather than the live
# per-frame array.
#
# **Net conclusion**: all 3 "spatial triad" functions are confirmed parts
# of ONE ambient light-probe-grid rendering system attached to
# `lbl_8053AB10->0x20` - `fn_802F5E9C` samples a single point, `fn_802F745C`
# renders a dynamic grid patch around a moving position, and this function
# renders pre-authored/compressed probe geometry. `fn_802F5570`/
# `fn_802F8F0C`/`fn_802F91AC` (this function's own unexplored callees) and
# `fn_802F654C`/`fn_802F6298` (the shared validity checks) are the natural
# next targets if this subsystem is revisited.
fn_802F86CC:
    stwu 1, -0x210(1)
    mflr 0
    stw 0, 0x214(1)
    stfd 31, 0x200(1)
    psq_st 31, 0x208(1), 0, 0
    stfd 30, 0x1f0(1)
    psq_st 30, 0x1f8(1), 0, 0
    stfd 29, 0x1e0(1)
    psq_st 29, 0x1e8(1), 0, 0
    stfd 28, 0x1d0(1)
    psq_st 28, 0x1d8(1), 0, 0
    stfd 27, 0x1c0(1)
    psq_st 27, 0x1c8(1), 0, 0
    stfd 26, 0x1b0(1)
    psq_st 26, 0x1b8(1), 0, 0
    stfd 25, 0x1a0(1)
    psq_st 25, 0x1a8(1), 0, 0
    stfd 24, 0x190(1)
    psq_st 24, 0x198(1), 0, 0
    stfd 23, 0x180(1)
    psq_st 23, 0x188(1), 0, 0
    stfd 22, 0x170(1)
    psq_st 22, 0x178(1), 0, 0
    stfd 21, 0x160(1)
    psq_st 21, 0x168(1), 0, 0
    stfd 20, 0x150(1)
    psq_st 20, 0x158(1), 0, 0
    stfd 19, 0x140(1)
    psq_st 19, 0x148(1), 0, 0
    stfd 18, 0x130(1)
    psq_st 18, 0x138(1), 0, 0
    stfd 17, 0x120(1)
    psq_st 17, 0x128(1), 0, 0
    stfd 16, 0x110(1)
    psq_st 16, 0x118(1), 0, 0
    stfd 15, 0x100(1)
    psq_st 15, 0x108(1), 0, 0
    stmw 15, 0xbc(1)
    mr 26, 3
    lis 8, lbl_8046F940@ha
    lbz 0, 0x2364(3)
    fmr 15, 1
    fmr 16, 2
    mr 27, 4
    cmplwi 0, 0x0
    mr 28, 5
    mr 17, 6
    mr 29, 7
    addi 22, 8, lbl_8046F940@l
    .4byte 0x418206E0 # beq .L_802F8E70
    cmplwi 29, 0x0
    .4byte 0x41820028 # beq .L_802F87C0
    lbz 0, 0x21(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802F87C0
    mr 9, 29
    li 7, 0x0
    li 8, 0x0
    bl fn_802F654C
    clrlwi. 0, 3, 24
    .4byte 0x408206B4 # bne .L_802F8E70
L_802F87C0:
    cmplwi 29, 0x0
    .4byte 0x41820038 # beq .L_802F87FC
    lbz 0, 0x22(29)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_802F87FC
    mr 3, 26
    mr 4, 27
    mr 5, 28
    mr 6, 17
    mr 9, 29
    li 7, 0x0
    li 8, 0x0
    bl fn_802F6298
    clrlwi. 0, 3, 24
    .4byte 0x40820678 # bne .L_802F8E70
L_802F87FC:
    slwi 3, 17, 1
    li 0, -0x1
    add 8, 28, 3
    stw 0, 0x34(1)
    lis 3, 0x2aab
    lbz 6, 0x3(8)
    subi 5, 3, 0x5555
    lbz 15, 0x2(8)
    lbz 3, 0x5(8)
    rlwimi 15, 6, 8, 16, 23
    lbz 4, 0x4(8)
    addi 10, 1, 0x24
    rlwimi 4, 3, 8, 16, 23
    stw 0, 0x38(1)
    subf 3, 15, 4
    mulhw 4, 5, 3
    li 3, 0x0
    srwi 0, 4, 31
    add 16, 4, 0
    .4byte 0x48000064 # b .L_802F88AC
L_802F884C:
    clrlwi 0, 3, 24
    addi 8, 3, 0x5
    addi 6, 3, 0x1
    stbx 3, 10, 0
    clrlwi 0, 6, 24
    addi 4, 3, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 3, 0x3
    addi 9, 3, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 3, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 3, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 3, 3, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_802F88AC:
    clrlwi 0, 3, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802F884C
    li 12, 0x0
    li 11, 0x1
    li 18, -0x1
    li 10, 0x3
    li 0, 0x2
    stw 18, 0x34(1)
    mr 3, 26
    mr 4, 27
    stw 12, 0x38(1)
    mr 5, 29
    addi 6, 1, 0x18
    addi 7, 1, 0xc
    stw 12, 0x3c(1)
    addi 8, 1, 0x60
    addi 9, 1, 0x24
    li 31, -0x1
    stb 12, 0x40(1)
    li 30, -0x1
    stb 12, 0x41(1)
    stb 12, 0x42(1)
    stb 11, 0x43(1)
    stb 11, 0x44(1)
    stb 12, 0x45(1)
    stb 12, 0x46(1)
    stb 12, 0x47(1)
    stb 12, 0x48(1)
    stb 12, 0x49(1)
    stb 11, 0x4a(1)
    stw 10, 0x4c(1)
    stb 11, 0x50(1)
    stb 12, 0x51(1)
    stb 12, 0x52(1)
    stw 18, 0x54(1)
    stw 12, 0x58(1)
    stw 0, 0x5c(1)
    bl fn_802F5570
    lwz 5, 0xc(1)
    cmplwi 5, 0x0
    .4byte 0x41820090 # beq .L_802F89E0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    addis 3, 3, 0x1
    lbz 3, -0x1b9f(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802F8970
    lbz 3, 0x20(5)
L_802F8970:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802F898C
    lfs 1, 0x20(1)
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    fcmpo cr0, 1, 0
    mfcr 0
    extrwi 3, 0, 1, 1
L_802F898C:
    clrlwi. 0, 3, 24
    lbz 3, 0x1c(5)
    lbz 4, 0x1d(5)
    extsb 3, 3
    extsb 4, 4
    .4byte 0x41820014 # beq .L_802F89B4
    cmpwi 3, 0x1
    .4byte 0x4080000C # bge .L_802F89B4
    addi 3, 3, 0x1
    subi 4, 4, 0x1
L_802F89B4:
    slwi 3, 3, 10
    slwi 0, 4, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x90(1)
    .4byte 0xC822E568 # lfd f1, lbl_80541508@sda21(r0)
    stw 3, 0x94(1)
    lfd 0, 0x90(1)
    fsubs 26, 0, 1
    .4byte 0x48000008 # b .L_802F89E4
L_802F89E0:
    .4byte 0xC342E558 # lfs f26, lbl_805414F8@sda21(r0)
L_802F89E4:
    fmr 1, 26
    mr 3, 26
    addi 4, 1, 0x18
    addi 6, 1, 0x8
    bl fn_802F91AC
    lwz 4, 0xc(1)
    mr 3, 26
    bl fn_802F8F0C
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    subi 18, 16, 0x1
    mulli 0, 18, 0x6
    .4byte 0xC042E5A8 # lfs f2, lbl_80541548@sda21(r0)
    fsubs 1, 0, 16
    .4byte 0xCB62E568 # lfd f27, lbl_80541508@sda21(r0)
    fsubs 0, 0, 15
    .4byte 0xC382E570 # lfs f28, lbl_80541510@sda21(r0)
    fmuls 1, 2, 1
    add 21, 15, 0
    fmuls 0, 2, 0
    .4byte 0xC3A2E580 # lfs f29, lbl_80541520@sda21(r0)
    .4byte 0xC3C2E5AC # lfs f30, lbl_8054154C@sda21(r0)
    add 21, 28, 21
    fctiwz 1, 1
    .4byte 0xC3E2E5B0 # lfs f31, lbl_80541550@sda21(r0)
    fctiwz 0, 0
    addi 23, 22, 0x1680
    lis 24, 0x4330
    lis 25, 0xcc01
    stfd 1, 0x90(1)
    stfd 0, 0x98(1)
    lwz 20, 0x94(1)
    lwz 19, 0x9c(1)
    .4byte 0x480003D0 # b .L_802F8E34
L_802F8A68:
    lbz 5, 0x1(21)
    cmpwi 18, 0x0
    lbz 3, 0x11(1)
    rlwimi 3, 5, 6, 24, 25
    lbz 7, 0x2(21)
    stb 3, 0x11(1)
    clrlwi 3, 3, 24
    rlwimi 3, 5, 2, 26, 27
    lbz 6, 0x0(21)
    stb 3, 0x11(1)
    clrlwi 4, 3, 24
    rlwimi 4, 5, 31, 28, 28
    rlwimi 7, 7, 1, 23, 23
    stb 4, 0x11(1)
    clrlwi 0, 4, 24
    rlwimi 0, 5, 29, 29, 29
    lhz 3, 0x12(1)
    stb 0, 0x11(1)
    clrlwi 4, 0, 24
    rlwimi 4, 5, 26, 30, 31
    rlwimi 3, 7, 7, 16, 24
    stb 6, 0x10(1)
    stb 4, 0x11(1)
    sth 3, 0x12(1)
    .4byte 0x41820020 # beq .L_802F8AE8
    extrwi 0, 3, 9, 16
    add 4, 6, 20
    add 0, 0, 19
    clrlwi 3, 3, 16
    rlwimi 3, 0, 7, 16, 24
    stb 4, 0x10(1)
    sth 3, 0x12(1)
L_802F8AE8:
    lbz 7, 0x3(21)
    lbz 4, 0x13(1)
    rlwimi 4, 7, 3, 25, 27
    lbz 5, 0x5(21)
    lbz 0, 0x4(21)
    clrlwi 6, 4, 24
    rlwimi 6, 7, 31, 28, 28
    stb 4, 0x13(1)
    rlwimi 0, 5, 8, 22, 23
    lwz 3, 0xc(1)
    clrlwi 4, 0, 16
    lhz 0, 0x14(1)
    rlwimi 0, 4, 6, 16, 25
    clrlwi 8, 6, 24
    sth 0, 0x14(1)
    rlwimi 8, 7, 29, 29, 29
    cmplwi 3, 0x0
    stb 6, 0x13(1)
    clrlwi 6, 8, 24
    lbz 0, 0x15(1)
    rlwimi 0, 5, 2, 26, 27
    stb 8, 0x13(1)
    rlwimi 6, 7, 26, 30, 31
    stb 6, 0x13(1)
    stb 0, 0x15(1)
    .4byte 0x4182001C # beq .L_802F8B68
    extrwi 4, 5, 4, 24
    clrlwi 0, 0, 24
    lbzx 3, 3, 4
    rlwimi 0, 3, 0, 28, 31
    stb 0, 0x15(1)
    .4byte 0x48000010 # b .L_802F8B74
L_802F8B68:
    clrlwi 0, 0, 24
    rlwimi 0, 5, 28, 28, 31
    stb 0, 0x15(1)
L_802F8B74:
    lbz 0, 0x15(1)
    li 3, 0x0
    sth 3, 0x16(1)
    extrwi 15, 0, 2, 26
    cmpw 31, 15
    .4byte 0x40820010 # bne .L_802F8B98
    clrlwi 0, 0, 28
    cmpw 30, 0
    .4byte 0x41820098 # beq .L_802F8C2C
L_802F8B98:
    lwz 3, 0xc(1)
    mr 31, 15
    lbz 0, 0x15(1)
    li 16, 0x0
    cmplwi 3, 0x0
    clrlwi 30, 0, 28
    .4byte 0x41820008 # beq .L_802F8BB8
    lbz 16, 0x1e(3)
L_802F8BB8:
    mulli 5, 16, 0x300
    slwi 0, 30, 2
    addi 3, 22, 0x1640
    lwzx 4, 3, 0
    mulli 3, 15, 0xc0
    mulli 0, 30, 0xc
    add 3, 5, 3
    add 3, 3, 0
    addi 3, 3, 0x25c
    add 3, 26, 3
    bl fn_8005DD00
    clrlslwi 0, 30, 31, 2
    slwi 5, 16, 11
    slwi 4, 15, 9
    slwi 3, 30, 5
    or 0, 0, 15
    addi 15, 22, 0x1620
    add 4, 5, 4
    add 3, 4, 3
    slwi 16, 0, 2
    addi 3, 3, 0xb5c
    lwzx 4, 15, 16
    add 3, 26, 3
    bl fn_8005DC74
    lwzx 5, 15, 16
    li 3, 0x0
    li 4, 0x0
    li 6, 0xff
    bl fn_8005EF80
L_802F8C2C:
    lbz 3, 0x11(1)
    lbz 0, 0x13(1)
    clrlslwi 4, 3, 30, 5
    lhz 3, 0x12(1)
    clrlslwi 0, 0, 30, 3
    stw 24, 0x98(1)
    add 5, 4, 0
    add 5, 23, 5
    rlwinm. 0, 3, 25, 23, 23
    lwz 4, 0x0(5)
    lwz 0, 0x4(5)
    slwi 5, 4, 3
    stw 24, 0x90(1)
    slwi 4, 0, 3
    extrwi 0, 3, 9, 16
    xoris 5, 5, 0x8000
    xoris 4, 4, 0x8000
    stw 5, 0x9c(1)
    stw 4, 0x94(1)
    lfd 1, 0x98(1)
    lfd 0, 0x90(1)
    fsubs 18, 1, 27
    fsubs 17, 0, 27
    .4byte 0x41820028 # beq .L_802F8CB0
    ori 3, 0, 0xfe00
    lis 0, 0x4330
    extsh 3, 3
    stw 0, 0xa0(1)
    xoris 0, 3, 0x8000
    stw 0, 0xa4(1)
    lfd 0, 0xa0(1)
    fsubs 25, 0, 27
    .4byte 0x48000020 # b .L_802F8CCC
L_802F8CB0:
    extrwi 3, 3, 8, 17
    lis 0, 0x4330
    stw 3, 0xac(1)
    .4byte 0xC822E5B8 # lfd f1, lbl_80541558@sda21(r0)
    stw 0, 0xa8(1)
    lfd 0, 0xa8(1)
    fsubs 25, 0, 1
L_802F8CCC:
    lbz 3, 0x10(1)
    lbz 0, 0x8(1)
    extsb 3, 3
    stw 24, 0xb0(1)
    xoris 3, 3, 0x8000
    cmplwi 0, 0x0
    stw 3, 0xb4(1)
    .4byte 0xC302E558 # lfs f24, lbl_805414F8@sda21(r0)
    lfd 0, 0xb0(1)
    fsubs 0, 0, 27
    fneg 23, 0
    .4byte 0x40820024 # bne .L_802F8D1C
    lfs 1, 0x1c(1)
    lfs 0, 0x20(1)
    fadds 1, 1, 26
    lfs 2, 0x18(1)
    fadds 0, 0, 26
    fadds 25, 25, 2
    fadds 24, 24, 1
    fadds 23, 23, 0
L_802F8D1C:
    lhz 4, 0x14(1)
    lbz 0, 0x13(1)
    rlwinm 3, 4, 26, 22, 26
    stw 24, 0xa8(1)
    xoris 3, 3, 0x8000
    extrwi 4, 4, 5, 21
    stw 3, 0xac(1)
    xoris 3, 4, 0x8000
    extrwi. 0, 0, 1, 28
    lfd 0, 0xa8(1)
    stw 3, 0xb4(1)
    fsubs 0, 0, 27
    stw 24, 0xb0(1)
    lfd 1, 0xb0(1)
    fmuls 0, 28, 0
    fsubs 1, 1, 27
    fmadds 0, 0, 31, 29
    fmadds 1, 28, 1, 29
    fmuls 21, 0, 30
    fmuls 22, 1, 30
    .4byte 0x41820018 # beq .L_802F8D84
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    fmr 20, 22
    fsubs 0, 18, 0
    fmadds 22, 0, 30, 22
    .4byte 0x48000010 # b .L_802F8D90
L_802F8D84:
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    fsubs 0, 18, 0
    fmadds 20, 0, 30, 22
L_802F8D90:
    lbz 0, 0x13(1)
    extrwi. 0, 0, 1, 29
    .4byte 0x4182001C # beq .L_802F8DB4
    .4byte 0xC022E578 # lfs f1, lbl_80541518@sda21(r0)
    fmr 19, 21
    .4byte 0xC002E5AC # lfs f0, lbl_8054154C@sda21(r0)
    fsubs 1, 17, 1
    fmadds 21, 1, 0, 21
    .4byte 0x48000014 # b .L_802F8DC4
L_802F8DB4:
    .4byte 0xC022E578 # lfs f1, lbl_80541518@sda21(r0)
    .4byte 0xC002E5AC # lfs f0, lbl_8054154C@sda21(r0)
    fsubs 1, 17, 1
    fmadds 19, 1, 0, 21
L_802F8DC4:
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    stfs 25, -0x8000(25)
    fmadds 0, 18, 15, 25
    fnmsubs 1, 17, 16, 23
    subi 18, 18, 0x1
    stfs 24, -0x8000(25)
    subi 21, 21, 0x6
    stfs 23, -0x8000(25)
    stfs 22, -0x8000(25)
    stfs 21, -0x8000(25)
    stfs 0, -0x8000(25)
    stfs 24, -0x8000(25)
    stfs 23, -0x8000(25)
    stfs 20, -0x8000(25)
    stfs 21, -0x8000(25)
    stfs 0, -0x8000(25)
    stfs 24, -0x8000(25)
    stfs 1, -0x8000(25)
    stfs 20, -0x8000(25)
    stfs 19, -0x8000(25)
    stfs 25, -0x8000(25)
    stfs 24, -0x8000(25)
    stfs 1, -0x8000(25)
    stfs 22, -0x8000(25)
    stfs 19, -0x8000(25)
L_802F8E34:
    cmpwi 18, 0x0
    .4byte 0x4080FC30 # bge .L_802F8A68
    cmplwi 29, 0x0
    .4byte 0x41820030 # beq .L_802F8E70
    lwz 0, 0x30(29)
    cmpwi 0, -0x1
    .4byte 0x41820024 # beq .L_802F8E70
    mr 3, 26
    mr 4, 27
    mr 5, 28
    mr 6, 17
    mr 9, 29
    li 7, 0x0
    li 8, 0x0
    bl fn_802F6800
L_802F8E70:
    psq_l 31, 0x208(1), 0, 0
    lfd 31, 0x200(1)
    psq_l 30, 0x1f8(1), 0, 0
    lfd 30, 0x1f0(1)
    psq_l 29, 0x1e8(1), 0, 0
    lfd 29, 0x1e0(1)
    psq_l 28, 0x1d8(1), 0, 0
    lfd 28, 0x1d0(1)
    psq_l 27, 0x1c8(1), 0, 0
    lfd 27, 0x1c0(1)
    psq_l 26, 0x1b8(1), 0, 0
    lfd 26, 0x1b0(1)
    psq_l 25, 0x1a8(1), 0, 0
    lfd 25, 0x1a0(1)
    psq_l 24, 0x198(1), 0, 0
    lfd 24, 0x190(1)
    psq_l 23, 0x188(1), 0, 0
    lfd 23, 0x180(1)
    psq_l 22, 0x178(1), 0, 0
    lfd 22, 0x170(1)
    psq_l 21, 0x168(1), 0, 0
    lfd 21, 0x160(1)
    psq_l 20, 0x158(1), 0, 0
    lfd 20, 0x150(1)
    psq_l 19, 0x148(1), 0, 0
    lfd 19, 0x140(1)
    psq_l 18, 0x138(1), 0, 0
    lfd 18, 0x130(1)
    psq_l 17, 0x128(1), 0, 0
    lfd 17, 0x120(1)
    psq_l 16, 0x118(1), 0, 0
    lfd 16, 0x110(1)
    psq_l 15, 0x108(1), 0, 0
    lfd 15, 0x100(1)
    lmw 15, 0xbc(1)
    lwz 0, 0x214(1)
    mtlr 0
    addi 1, 1, 0x210
    blr

