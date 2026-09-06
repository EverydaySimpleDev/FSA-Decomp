.section extab, "a"
.balign 4
.global etb_80008D9C
etb_80008D9C:
    .4byte 0x908A0000
    .4byte 0x00000000
.size etb_80008D9C, 8

.section extabindex, "a"
.balign 4
.global eti_80016444
eti_80016444:
    .4byte fn_801F06F0
    .4byte 0x00000630
    .4byte etb_80008D9C
.size eti_80016444, 12

# fn_801F06F0(this, tableAddr, count, dataPtr, f1, f2, mode) - the
# "universal actor effect/model draw" primitive called from DOZENS of
# actors' draw() methods project-wide (BZBR, HINO, DDRK, SLR1/SLR2, and
# many more). THIS IS THE REAL BRIDGE from generic actor draw() calls
# into the confirmed 3D renderer - the "hunt for the rendering pipeline"
# target (see [[project_fsa_rendering_pipeline_foothold]] and
# [[project_fsa_shared_effect_subsystem_crossref]]).
#
# Survey-level for the interior color/blend math (large - builds a local
# material/color-descriptor struct, optionally copying one wholesale from
# `dataPtr` when non-null, then applies a fade/blend ramp to its RGBA
# bytes over `this->0xd8`/`this->0xdc` frame counters, with two distinct
# blend modes selected by `this->0xf8`/`this->0xfc`: alpha-modulate via
# `this->0x14` as a factor, or additive RGB offset).
#
# The load-bearing, CONFIRMED architecture: branches on `this->0x4` (a
# render-path/type selector, 0-8):
# - Type < 8: gets a model/mesh HANDLE via a REAL VIRTUAL CALL on the
#   object at `lbl_8053AAF8->0xa4` (the SAME global struct that holds the
#   confirmed PRNG state and the per-player enable bitmask - now also a
#   MODEL/RESOURCE MANAGER, vtable slot 0x18 = "resolve a table entry to
#   a drawable handle"), then calls `fn_802F86CC` - the ALREADY-CONFIRMED
#   compressed-geometry/ambient-light-probe renderer - passing
#   `lbl_8053AB10->0x20` (the scene manager's light-probe sub-object,
#   see [[project_fsa_shared_effect_subsystem_crossref]]) as its `this`,
#   plus the built material struct, the two scale floats, and the
#   resolved model handle. **This is the actual GX-level 3D model/effect
#   draw call every one of these actors ultimately triggers.**
# - Type == 8: a completely different path - skips if a tag byte at
#   `dataPtr->0x6` equals `0x67`, otherwise gates on the confirmed real-
#   time helper `GetRoomConfigRecord` and calls `fn_801EF574` with a position
#   offset from `dataPtr`'s own table (`+0xcc`/`+0xd0`) - likely a sound-
#   cue or particle-spawn variant rather than a mesh draw.
# - Type 9+: does nothing (falls straight through to the epilogue).
.text
.balign 4
.global fn_801F06F0

fn_801F06F0:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stmw 14, 0xc8(1)
    mr 29, 3
    lwz 3, 0x4(3)
    fmr 30, 1
    stw 5, 0x8(1)
    fmr 31, 2
    cmpwi 3, 0x8
    mr 30, 4
    mr 31, 6
    .4byte 0x418105CC # bgt .L_801F0CFC
    lwz 0, 0x138(29)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801F075C
    lwz 8, 0x8(1)
    mr 6, 7
    mr 5, 31
    mr 7, 30
    addi 4, 29, 0xc
    li 9, 0x0
    bl fn_801EF830
L_801F075C:
    li 0, -0x1
    addi 9, 1, 0x48
    stw 0, 0x58(1)
    li 10, 0x0
    stw 0, 0x5c(1)
    .4byte 0x48000064 # b .L_801F07D4
L_801F0774:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801F07D4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801F0774
    lwz 0, 0xd8(29)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    cmpwi 0, 0x0
    stw 7, 0x58(1)
    stw 6, 0x5c(1)
    stw 6, 0x60(1)
    stb 6, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stb 5, 0x67(1)
    stb 5, 0x68(1)
    stb 6, 0x69(1)
    stb 6, 0x6a(1)
    stb 6, 0x6b(1)
    stb 6, 0x6c(1)
    stb 6, 0x6d(1)
    stb 5, 0x6e(1)
    stw 4, 0x70(1)
    stb 5, 0x74(1)
    stb 6, 0x75(1)
    stb 6, 0x76(1)
    stw 7, 0x78(1)
    stw 6, 0x7c(1)
    stw 3, 0x80(1)
    .4byte 0x40810220 # ble .L_801F0A70
    cmplwi 31, 0x0
    .4byte 0x41820124 # beq .L_801F097C
    lbz 15, 0x2c(31)
    lbz 0, 0x26(31)
    stw 15, 0xbc(1)
    lbz 15, 0x2d(31)
    stb 0, 0x6e(1)
    lwz 0, 0xbc(1)
    stw 15, 0x98(1)
    lbz 15, 0x2e(31)
    stb 0, 0x74(1)
    lwz 0, 0x98(1)
    stw 15, 0x9c(1)
    lwz 15, 0x30(31)
    stb 0, 0x75(1)
    lwz 0, 0x9c(1)
    stw 15, 0xa0(1)
    lwz 15, 0x34(31)
    stb 0, 0x76(1)
    lwz 0, 0xa0(1)
    stw 15, 0xa4(1)
    lwz 16, 0x0(31)
    lwz 17, 0x4(31)
    lwz 18, 0x8(31)
    lwz 19, 0xc(31)
    lbz 20, 0x10(31)
    lbz 21, 0x11(31)
    lbz 22, 0x12(31)
    lbz 23, 0x13(31)
    lbz 24, 0x14(31)
    lbz 25, 0x15(31)
    lbz 26, 0x16(31)
    lbz 27, 0x17(31)
    lwz 28, 0x18(31)
    lbz 12, 0x1c(31)
    lbz 11, 0x1d(31)
    lbz 10, 0x1e(31)
    lbz 9, 0x1f(31)
    lbz 8, 0x20(31)
    lbz 7, 0x21(31)
    lbz 6, 0x22(31)
    lbz 5, 0x23(31)
    lbz 4, 0x24(31)
    lbz 3, 0x25(31)
    lwz 14, 0x28(31)
    lwz 15, 0x38(31)
    stw 0, 0x78(1)
    lwz 0, 0xa4(1)
    stw 16, 0x48(1)
    stw 17, 0x4c(1)
    stw 18, 0x50(1)
    stw 19, 0x54(1)
    stb 20, 0x58(1)
    stb 21, 0x59(1)
    stb 22, 0x5a(1)
    stb 23, 0x5b(1)
    stb 24, 0x5c(1)
    stb 25, 0x5d(1)
    stb 26, 0x5e(1)
    stb 27, 0x5f(1)
    stw 28, 0x60(1)
    stb 12, 0x64(1)
    stb 11, 0x65(1)
    stb 10, 0x66(1)
    stb 9, 0x67(1)
    stb 8, 0x68(1)
    stb 7, 0x69(1)
    stb 6, 0x6a(1)
    stb 5, 0x6b(1)
    stb 4, 0x6c(1)
    stb 3, 0x6d(1)
    stw 14, 0x70(1)
    stw 0, 0x7c(1)
    stw 15, 0x80(1)
L_801F097C:
    lwz 3, 0xdc(29)
    lwz 0, 0xd8(29)
    subi 4, 3, 0x19
    cmpw 0, 4
    .4byte 0x4181000C # bgt .L_801F0998
    cmpwi 3, 0x19
    .4byte 0x408002B4 # bge .L_801F0C48
L_801F0998:
    cmpwi 3, 0x19
    .4byte 0x40800010 # bge .L_801F09AC
    mulli 0, 0, 0xff
    divw 5, 0, 3
    .4byte 0x48000024 # b .L_801F09CC
L_801F09AC:
    subf 0, 4, 0
    lis 3, 0x51ec
    mulli 0, 0, 0xff
    subi 3, 3, 0x7ae1
    mulhw 0, 3, 0
    srawi 0, 0, 3
    srwi 3, 0, 31
    add 5, 0, 3
L_801F09CC:
    lwz 0, 0xf8(29)
    cmpwi 0, 0x2
    .4byte 0x40820048 # bne .L_801F0A1C
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    stw 3, 0x8c(1)
    .4byte 0xC822C7F8 # lfd f1, lbl_8053F798@sda21(r0)
    stw 0, 0x88(1)
    .4byte 0xC062C7F0 # lfs f3, lbl_8053F790@sda21(r0)
    lfd 0, 0x88(1)
    lfs 2, 0x14(29)
    fsubs 0, 0, 1
    fnmsubs 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 3, 0x94(1)
    neg 0, 3
    orc 0, 3, 0
    srawi 0, 0, 31
    andc 5, 3, 0
L_801F0A1C:
    lwz 0, 0xfc(29)
    cmpwi 0, 0x5
    .4byte 0x40820024 # bne .L_801F0A48
    lbz 4, 0x5c(1)
    srawi 0, 5, 1
    lbz 3, 0x5d(1)
    add 4, 4, 5
    add 0, 3, 0
    stb 4, 0x5c(1)
    stb 0, 0x5d(1)
    .4byte 0x48000204 # b .L_801F0C48
L_801F0A48:
    lbz 0, 0x5c(1)
    lbz 3, 0x5d(1)
    add 4, 0, 5
    lbz 0, 0x5e(1)
    add 3, 3, 5
    stb 4, 0x5c(1)
    add 0, 0, 5
    stb 3, 0x5d(1)
    stb 0, 0x5e(1)
    .4byte 0x480001DC # b .L_801F0C48
L_801F0A70:
    cmplwi 31, 0x0
    .4byte 0x41820128 # beq .L_801F0B9C
    lbz 27, 0x2c(31)
    lbz 0, 0x26(31)
    stw 27, 0xa8(1)
    lbz 27, 0x2d(31)
    stb 0, 0x6e(1)
    lwz 0, 0xa8(1)
    stw 27, 0xac(1)
    lbz 27, 0x2e(31)
    stb 0, 0x74(1)
    lwz 0, 0xac(1)
    stw 27, 0xb0(1)
    lwz 27, 0x30(31)
    stb 0, 0x75(1)
    lwz 0, 0xb0(1)
    stw 27, 0xb4(1)
    lwz 27, 0x34(31)
    stb 0, 0x76(1)
    lwz 0, 0xb4(1)
    stw 27, 0xb8(1)
    lwz 26, 0x0(31)
    lwz 25, 0x4(31)
    lwz 24, 0x8(31)
    lwz 23, 0xc(31)
    lbz 22, 0x10(31)
    lbz 21, 0x11(31)
    lbz 20, 0x12(31)
    lbz 19, 0x13(31)
    lbz 18, 0x14(31)
    lbz 17, 0x15(31)
    lbz 16, 0x16(31)
    lbz 15, 0x17(31)
    lwz 14, 0x18(31)
    lbz 12, 0x1c(31)
    lbz 11, 0x1d(31)
    lbz 10, 0x1e(31)
    lbz 9, 0x1f(31)
    lbz 8, 0x20(31)
    lbz 7, 0x21(31)
    lbz 6, 0x22(31)
    lbz 5, 0x23(31)
    lbz 4, 0x24(31)
    lbz 3, 0x25(31)
    lwz 28, 0x28(31)
    lwz 27, 0x38(31)
    stw 0, 0x78(1)
    lwz 0, 0xb8(1)
    stw 26, 0x48(1)
    stw 25, 0x4c(1)
    stw 24, 0x50(1)
    stw 23, 0x54(1)
    stb 22, 0x58(1)
    stb 21, 0x59(1)
    stb 20, 0x5a(1)
    stb 19, 0x5b(1)
    stb 18, 0x5c(1)
    stb 17, 0x5d(1)
    stb 16, 0x5e(1)
    stb 15, 0x5f(1)
    stw 14, 0x60(1)
    stb 12, 0x64(1)
    stb 11, 0x65(1)
    stb 10, 0x66(1)
    stb 9, 0x67(1)
    stb 8, 0x68(1)
    stb 7, 0x69(1)
    stb 6, 0x6a(1)
    stb 5, 0x6b(1)
    stb 4, 0x6c(1)
    stb 3, 0x6d(1)
    stw 28, 0x70(1)
    stw 0, 0x7c(1)
    stw 27, 0x80(1)
    .4byte 0x4800000C # b .L_801F0BA4
L_801F0B9C:
    lwz 0, 0x150(29)
    stw 0, 0x78(1)
L_801F0BA4:
    lwz 3, 0x138(29)
    cmplwi 3, 0x0
    .4byte 0x4182009C # beq .L_801F0C48
    lwz 0, 0x60(1)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_801F0C44
    addi 3, 1, 0x18
    bl PSMTXIdentity
    lwz 7, 0x60(1)
    addi 3, 1, 0x18
    lwz 4, 0x138(29)
    mr 5, 3
    lwz 6, 0x0(7)
    lwz 0, 0x4(7)
    stw 6, 0x18(1)
    stw 0, 0x1c(1)
    lwz 6, 0x8(7)
    lwz 0, 0xc(7)
    stw 6, 0x20(1)
    stw 0, 0x24(1)
    lwz 6, 0x10(7)
    lwz 0, 0x14(7)
    stw 6, 0x28(1)
    stw 0, 0x2c(1)
    lwz 6, 0x18(7)
    lwz 0, 0x1c(7)
    stw 6, 0x30(1)
    stw 0, 0x34(1)
    lwz 6, 0x20(7)
    lwz 0, 0x24(7)
    stw 6, 0x38(1)
    stw 0, 0x3c(1)
    lwz 6, 0x28(7)
    lwz 0, 0x2c(7)
    stw 6, 0x40(1)
    stw 0, 0x44(1)
    bl PSMTXConcat
    addi 0, 1, 0x18
    stw 0, 0x60(1)
    .4byte 0x48000008 # b .L_801F0C48
L_801F0C44:
    stw 3, 0x60(1)
L_801F0C48:
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x40800054 # bge .L_801F0CA4
    .4byte 0x408000A8 # bge .L_801F0CFC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534f
    mr 5, 30
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 5, 3
    fmr 1, 30
    lwz 6, 0x8(1)
    lwz 3, 0x20(4)
    fmr 2, 31
    addi 4, 29, 0xc
    addi 7, 1, 0x48
    bl fn_802F86CC
    .4byte 0x4800005C # b .L_801F0CFC
L_801F0CA4:
    .4byte 0x40820058 # bne .L_801F0CFC
    lbz 0, 0x6(30)
    cmpwi 0, 0x67
    .4byte 0x4182004C # beq .L_801F0CFC
    bl GetRoomConfigRecord
    lfs 0, 0x14(29)
    addi 5, 1, 0xc
    psq_l 1, 0xc(29), 0, 0
    addi 6, 1, 0x48
    stfs 0, 0x14(1)
    lwz 4, 0x8(1)
    psq_st 1, 0x0(5), 0, 0
    lfs 2, 0xc(1)
    lfs 0, 0xcc(3)
    lfs 1, 0x10(1)
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lfs 0, 0xd0(3)
    mr 3, 30
    fadds 0, 1, 0
    stfs 0, 0x10(1)
    bl fn_801EF574
L_801F0CFC:
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    lmw 14, 0xc8(1)
    lwz 0, 0x134(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

