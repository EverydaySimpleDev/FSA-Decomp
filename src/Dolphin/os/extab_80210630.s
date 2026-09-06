.section extab, "a"
.balign 4
.global etb_8000A010
etb_8000A010:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000A010, 8

.section extabindex, "a"
.balign 4
.global eti_80017B60
eti_80017B60:
    .4byte fn_80210630
    .4byte 0x00000268
    .4byte etb_8000A010
.size eti_80017B60, 12

.text
.balign 4
.global fn_80210630

# fn_80210630(this, arg2, arg3, arg4) - option B follow-up: IBBM's
# REAL draw work, delegated to from the visibility-gate fn_8020FE50
# (see project_fsa_final_6_actors_batch.md). Looks up a per-variant
# entry in `lbl_804A61A8` (indexed by `this->0x98` plus a masked
# arg2-derived offset) and passes it to `fn_804032E8(entry, 'TIME')`
# (new - a generic "find resource by FourCC tag" lookup, the literal
# ASCII tag 0x54494D47 decodes to "TIME") - fetching a TIME-KEYED
# animation-curve/keyframe resource for this variant.
#
# Builds the standard shared material struct plus a large secondary
# "trail/wake" effect struct (~30 fields, the same convention as
# TINK/FLOR/ARIJ's draw functions). Computes a genuine WAVE/BOB offset
# using the fetched TIME resource's stored keyframe floats blended via
# `fmsubs`/`fmadds` against the current position (this->0xc/0x10/0x14)
# - a real animated sway/bob effect, fitting IBBM's likely role as a
# suspended/mounted decorative object (a hanging lamp, sign, or
# similar) alongside IPOT under their shared `fn_80210AB4` base (see
# project_fsa_shared_base_actor_family.md).
#
# Finishes (when a computed time-offset comparison holds) by drawing
# via the CONFIRMED spatial-triad helper `fn_802F745C` using the
# camera manager's ambient light-probe grid - confirming IBBM DOES
# render through the normal spatial-effect pipeline, just via this
# dedicated per-variant animated-position wrapper rather than a direct
# universal-primitive call.
fn_80210630:
    stwu 1, -0xb0(1)
    mflr 0
    clrlwi 4, 4, 24
    lis 9, 0x5449
    stw 0, 0xb4(1)
    neg 0, 4
    or 0, 0, 4
    li 4, 0x4
    stmw 26, 0x98(1)
    mr 28, 3
    srawi 8, 0, 31
    lis 3, lbl_804A61A8@ha
    lwz 0, 0x98(28)
    and 4, 4, 8
    addi 3, 3, lbl_804A61A8@l
    mr 29, 5
    add 0, 4, 0
    mr 30, 6
    slwi 0, 0, 2
    mr 31, 7
    lwzx 4, 3, 0
    addi 3, 9, 0x4d47
    bl fn_804032E8
    li 0, -0x1
    addi 10, 1, 0x44
    stw 0, 0x54(1)
    li 11, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_80210704
L_802106A4:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_80210704:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802106A4
    .4byte 0xC042CB24 # lfs f2, lbl_8053FAC4@sda21(r0)
    li 27, 0x0
    lfs 0, 0x5c(28)
    li 12, 0x1
    lfs 1, 0x58(28)
    li 26, -0x1
    fmuls 9, 2, 0
    lfs 0, 0x54(28)
    fmuls 8, 2, 1
    .4byte 0xC082CB20 # lfs f4, lbl_8053FAC0@sda21(r0)
    fmuls 7, 2, 0
    stw 27, 0x58(1)
    stb 27, 0x60(1)
    li 11, 0x3
    lfs 10, 0x14(28)
    li 10, 0x2
    stb 27, 0x61(1)
    addi 4, 1, 0x8
    lis 8, 0x4330
    psq_l 0, 0xc(28), 0, 0
    lwz 0, 0x98(28)
    addi 9, 1, 0x14
    psq_st 0, 0x0(4), 0, 0
    lis 5, lbl_8046A470@ha
    slwi 7, 0, 2
    lwz 0, 0x4(28)
    stw 27, 0x5c(1)
    addi 6, 5, lbl_8046A470@l
    cmpwi 0, 0x8
    .4byte 0xC8A2CB30 # lfd f5, lbl_8053FAD0@sda21(r0)
    stw 26, 0x54(1)
    lis 5, lbl_8046A480@ha
    .4byte 0xC0C2CB28 # lfs f6, lbl_8053FAC8@sda21(r0)
    addi 5, 5, lbl_8046A480@l
    stb 27, 0x62(1)
    lfsx 3, 6, 7
    stb 12, 0x63(1)
    lfs 2, 0x8(1)
    stb 12, 0x64(1)
    lfsx 1, 5, 7
    stb 27, 0x65(1)
    lfs 0, 0xc(1)
    stb 27, 0x66(1)
    stb 27, 0x67(1)
    stb 27, 0x68(1)
    stb 27, 0x69(1)
    stb 12, 0x6a(1)
    stw 11, 0x6c(1)
    stb 12, 0x70(1)
    stb 27, 0x71(1)
    stb 27, 0x72(1)
    stw 26, 0x74(1)
    stw 27, 0x78(1)
    stw 10, 0x7c(1)
    stb 29, 0x60(1)
    stb 30, 0x61(1)
    stb 31, 0x58(1)
    stfs 4, 0x20(1)
    stfs 4, 0x30(1)
    stfs 4, 0x40(1)
    stfs 7, 0x14(1)
    stfs 4, 0x18(1)
    stfs 4, 0x1c(1)
    stfs 4, 0x24(1)
    stfs 8, 0x28(1)
    stfs 4, 0x2c(1)
    stfs 4, 0x34(1)
    stfs 4, 0x38(1)
    stfs 9, 0x3c(1)
    stw 9, 0x5c(1)
    stfs 10, 0x10(1)
    lhz 0, 0x2(3)
    stw 8, 0x80(1)
    stw 0, 0x84(1)
    lfd 4, 0x80(1)
    stw 8, 0x88(1)
    fsubs 4, 4, 5
    fmsubs 3, 6, 4, 3
    fmadds 2, 7, 3, 2
    stfs 2, 0x8(1)
    lhz 0, 0x4(3)
    stw 0, 0x8c(1)
    lfd 2, 0x88(1)
    fsubs 2, 2, 5
    fmsubs 1, 6, 2, 1
    fmadds 0, 8, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x40800018 # bge .L_80210884
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 6, 1, 0x44
    lwz 3, 0x20(7)
    bl fn_802F745C
L_80210884:
    lmw 26, 0x98(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

