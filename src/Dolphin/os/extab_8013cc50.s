.section extab, "a"
.balign 4
.global etb_80006B9C
etb_80006B9C:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80006B9C, 8

.section extabindex, "a"
.balign 4
.global eti_800134F8
eti_800134F8:
    .4byte fn_8013CC50
    .4byte 0x00000960
    .4byte etb_80006B9C
.size eti_800134F8, 12

# fn_8013CC50(flagOrThis4=r3, positionPtr=r4, id=r5, gridX=r6, gridZ=r7,
# boundsFlag=r10, fallbackObj=r8, timeArg=f1, secondaryFlag=r9) - the sound/
# effect-handle "create" primitive, previously fully architecturally
# understood via [[project_fsa_effect_playback_primitive]] (that memory's
# pseudocode is confirmed accurate against these actual bytes). This is
# its real byte-level landing.
#
# Early-outs (returns 0/NULL) if `timeArg <= lbl_8053CE00`. Otherwise, if
# `flagOrThis4 == 0`: computes a time-biased 3D position from `positionPtr`
# (same grid-cell-hash + int-to-float idiom as fn_8013CB44/AC90/B004),
# registers it via `fn_802F5E9C(lbl_8053AB10->0x20, ...)` (the spatial
# triad), then classifies `id` into one of ~10 numbered categories via a
# dense range-comparison chain (this IS the SFX/voice-clip-ID classifier
# [[project_fsa_effect_playback_primitive]] identified). Cross-references
# the category against the SAME scene-type whitelist used throughout this
# region, and if matched, checks a language/region settings byte
# (`GetRoomConfigRecord()->0x31f1` or `->0x31f2`) to remap `id` to a localized
# variant (voice-clip localization). Then, depending on the (possibly
# remapped) `id`: either plays a raw sound via
# `fn_800EBE1C(<audio registry>, id, position, 6, 0)` (after 2 pre-checks
# via `fn_800F38C4` that can override `fallbackObj` to `lbl_8053AB18` and
# force `secondaryFlag=1`), or spawns an actor via
# `fn_801F9484(SpatialRegistry_GetBase(), code, fallbackObj, id, param, -1, ...)` for
# one of: `'DMGE'` (damage-popup, generic-fallback code per
# [[project_fsa_effect_playback_primitive]]), `'PEFF'` (a catalogued
# actor, params 0x2c/0x34), or **`'KMRI'`** (0x4B4D5249) - a code NOT
# previously catalogued or flagged; left unconfirmed pending the same
# beq-vs-pivot verification [[project_fsa_effect_playback_primitive]]
# applied to `'DMGE'` before adding it to
# [[reference_fsa_actor_dispatch_table]].
#
# If `flagOrThis4 != 0`: skips straight to a SEPARATE classification chain
# keyed on `id` alone (no position/spatial-registration step), dispatching
# to the same `'DMGE'`/`'PEFF'`/`'KMRI'` spawn calls or a direct
# `fn_800EBE1C(..., 6, 0)` sound call (case `0x116`/`0x24e`/`0x3d3`, no
# fallbackObj lookup needed here). On a successful non-NULL handle, applies
# a position/velocity update to the handle's own sub-fields (`->0x68/0x98/
# 0xa4` etc, via `fn_800EF0CC`) unless `secondaryFlag` is one of several
# specific values (2,4,5,8,0xa), in which case it just zeroes those fields
# instead.
.text
.balign 4
.global fn_8013CC50

fn_8013CC50:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stmw 26, 0x58(1)
    fmr 31, 1
    .4byte 0xC0229E60 # lfs f1, lbl_8053CE00@sda21(r0)
    mr 28, 3
    mr 29, 4
    mr 26, 5
    mr 27, 9
    fcmpo cr0, 31, 1
    li 30, 0x0
    .4byte 0x40810908 # ble .L_8013D590
    cmpwi 28, 0x0
    .4byte 0x408206F8 # bne .L_8013D388
    clrlwi. 0, 10, 24
    mr 28, 8
    .4byte 0x41820014 # beq .L_8013CCB0
    lfs 0, 0x8(29)
    fcmpo cr0, 0, 1
    mfcr 0
    extrwi 10, 0, 1, 1
L_8013CCB0:
    clrlwi. 0, 10, 24
    .4byte 0x41820014 # beq .L_8013CCC8
    cmpwi 6, 0x1
    .4byte 0x4080000C # bge .L_8013CCC8
    addi 6, 6, 0x1
    subi 7, 7, 0x1
L_8013CCC8:
    slwi 3, 6, 10
    slwi 0, 7, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lfs 0, 0x0(29)
    stw 3, 0x4c(1)
    mr 4, 29
    .4byte 0xC8829E78 # lfd f4, lbl_8053CE18@sda21(r0)
    stw 0, 0x48(1)
    lfs 2, 0x8(29)
    lfd 3, 0x48(1)
    lfs 1, 0x4(29)
    fsubs 3, 3, 4
    stfs 0, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fadds 2, 2, 3
    fadds 0, 1, 3
    stfs 2, 0x10(1)
    stfs 0, 0xc(1)
    lwz 3, 0x20(3)
    bl fn_802F5E9C
    lfs 0, 0x8(29)
    clrlwi 31, 26, 16
    lfs 2, 0x10(1)
    cmpwi 31, 0x3b4
    fsubs 0, 1, 0
    fadds 0, 2, 0
    stfs 0, 0x10(1)
    .4byte 0x408000B4 # bge .L_8013CDF0
    cmpwi 31, 0x26a
    .4byte 0x41820184 # beq .L_8013CEC8
    .4byte 0x4080005C # bge .L_8013CDA4
    cmpwi 31, 0x18e
    .4byte 0x40800034 # bge .L_8013CD84
    cmpwi 31, 0x127
    .4byte 0x40800018 # bge .L_8013CD70
    cmpwi 31, 0xea
    .4byte 0x40800190 # bge .L_8013CEF0
    cmpwi 31, 0xd8
    .4byte 0x40800178 # bge .L_8013CEE0
    .4byte 0x48000184 # b .L_8013CEF0
L_8013CD70:
    cmpwi 31, 0x188
    .4byte 0x4080013C # bge .L_8013CEB0
    cmpwi 31, 0x12c
    .4byte 0x40800174 # bge .L_8013CEF0
    .4byte 0x48000130 # b .L_8013CEB0
L_8013CD84:
    cmpwi 31, 0x241
    .4byte 0x41820130 # beq .L_8013CEB8
    .4byte 0x40800164 # bge .L_8013CEF0
    cmpwi 31, 0x1fd
    .4byte 0x4080015C # bge .L_8013CEF0
    cmpwi 31, 0x1dc
    .4byte 0x40800144 # bge .L_8013CEE0
    .4byte 0x48000150 # b .L_8013CEF0
L_8013CDA4:
    cmpwi 31, 0x345
    .4byte 0x40800024 # bge .L_8013CDCC
    cmpwi 31, 0x2a8
    .4byte 0x41820100 # beq .L_8013CEB0
    .4byte 0x4080013C # bge .L_8013CEF0
    cmpwi 31, 0x27e
    .4byte 0x40800134 # bge .L_8013CEF0
    cmpwi 31, 0x277
    .4byte 0x40800104 # bge .L_8013CEC8
    .4byte 0x48000128 # b .L_8013CEF0
L_8013CDCC:
    cmpwi 31, 0x385
    .4byte 0x41820108 # beq .L_8013CED8
    .4byte 0x40800010 # bge .L_8013CDE4
    cmpwi 31, 0x35d
    .4byte 0x40800114 # bge .L_8013CEF0
    .4byte 0x48000108 # b .L_8013CEE8
L_8013CDE4:
    cmpwi 31, 0x3a7
    .4byte 0x408000E0 # bge .L_8013CEC8
    .4byte 0x48000104 # b .L_8013CEF0
L_8013CDF0:
    cmpwi 31, 0x543
    .4byte 0x4080005C # bge .L_8013CE50
    cmpwi 31, 0x496
    .4byte 0x4080002C # bge .L_8013CE28
    cmpwi 31, 0x3ec
    .4byte 0x40800010 # bge .L_8013CE14
    cmpwi 31, 0x3dd
    .4byte 0x418200AC # beq .L_8013CEB8
    .4byte 0x480000E0 # b .L_8013CEF0
L_8013CE14:
    cmpwi 31, 0x48e
    .4byte 0x40800090 # bge .L_8013CEA8
    cmpwi 31, 0x3f4
    .4byte 0x408000D0 # bge .L_8013CEF0
    .4byte 0x480000BC # b .L_8013CEE0
L_8013CE28:
    cmpwi 31, 0x4e0
    .4byte 0x40800018 # bge .L_8013CE44
    cmpwi 31, 0x4d2
    .4byte 0x408000BC # bge .L_8013CEF0
    cmpwi 31, 0x4cf
    .4byte 0x4080007C # bge .L_8013CEB8
    .4byte 0x480000B0 # b .L_8013CEF0
L_8013CE44:
    cmpwi 31, 0x4e2
    .4byte 0x408000A8 # bge .L_8013CEF0
    .4byte 0x48000064 # b .L_8013CEB0
L_8013CE50:
    cmpwi 31, 0x558
    .4byte 0x40800030 # bge .L_8013CE84
    cmpwi 31, 0x54c
    .4byte 0x41820094 # beq .L_8013CEF0
    .4byte 0x40800018 # bge .L_8013CE78
    cmpwi 31, 0x54b
    .4byte 0x40800058 # bge .L_8013CEC0
    cmpwi 31, 0x545
    .4byte 0x40800080 # bge .L_8013CEF0
    .4byte 0x4800004C # b .L_8013CEC0
L_8013CE78:
    cmpwi 31, 0x54e
    .4byte 0x40800074 # bge .L_8013CEF0
    .4byte 0x48000068 # b .L_8013CEE8
L_8013CE84:
    cmpwi 31, 0x569
    .4byte 0x40800018 # bge .L_8013CEA0
    cmpwi 31, 0x566
    .4byte 0x40800040 # bge .L_8013CED0
    cmpwi 31, 0x55f
    .4byte 0x40800058 # bge .L_8013CEF0
    .4byte 0x4800000C # b .L_8013CEA8
L_8013CEA0:
    cmpwi 31, 0x572
    .4byte 0x4080004C # bge .L_8013CEF0
L_8013CEA8:
    li 29, 0x2
    .4byte 0x48000048 # b .L_8013CEF4
L_8013CEB0:
    li 29, 0x3
    .4byte 0x48000040 # b .L_8013CEF4
L_8013CEB8:
    li 29, 0x4
    .4byte 0x48000038 # b .L_8013CEF4
L_8013CEC0:
    li 29, 0x5
    .4byte 0x48000030 # b .L_8013CEF4
L_8013CEC8:
    li 29, 0x7
    .4byte 0x48000028 # b .L_8013CEF4
L_8013CED0:
    li 29, 0x8
    .4byte 0x48000020 # b .L_8013CEF4
L_8013CED8:
    li 29, 0x9
    .4byte 0x48000018 # b .L_8013CEF4
L_8013CEE0:
    li 29, 0xa
    .4byte 0x48000010 # b .L_8013CEF4
L_8013CEE8:
    li 29, 0xff
    .4byte 0x48000008 # b .L_8013CEF4
L_8013CEF0:
    li 29, 0x0
L_8013CEF4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013CF54
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8013CF3C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8013CF3C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8013CF3C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8013CF3C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8013CF3C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8013CF40
L_8013CF3C:
    li 0, 0x1
L_8013CF40:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013CFA8
L_8013CF54:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8013CF94
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8013CF94
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8013CF94
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8013CF94
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8013CF94
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8013CF94
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8013CF98
L_8013CF94:
    li 0, 0x1
L_8013CF98:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013CFA8:
    clrlwi. 0, 0, 24
    .4byte 0x41820244 # beq .L_8013D1F0
    lwz 0, 0x4c(4)
    cmpwi 0, 0xc
    .4byte 0x41820238 # beq .L_8013D1F0
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f1(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013D020
    cmpwi 31, 0x3cf
    .4byte 0x4182002C # beq .L_8013D000
    .4byte 0x4080001C # bge .L_8013CFF4
    cmpwi 31, 0x116
    .4byte 0x41820030 # beq .L_8013D010
    .4byte 0x40800190 # bge .L_8013D174
    cmpwi 31, 0x115
    .4byte 0x4080002C # bge .L_8013D018
    .4byte 0x48000184 # b .L_8013D174
L_8013CFF4:
    cmpwi 31, 0x3d3
    .4byte 0x41820010 # beq .L_8013D008
    .4byte 0x48000178 # b .L_8013D174
L_8013D000:
    li 26, 0x454
    .4byte 0x48000170 # b .L_8013D174
L_8013D008:
    li 26, 0x455
    .4byte 0x48000168 # b .L_8013D174
L_8013D010:
    li 26, 0x44e
    .4byte 0x48000160 # b .L_8013D174
L_8013D018:
    li 26, 0x44d
    .4byte 0x48000158 # b .L_8013D174
L_8013D020:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013D084
    cmpwi 31, 0x3cf
    .4byte 0x41820034 # beq .L_8013D06C
    .4byte 0x4080001C # bge .L_8013D058
    cmpwi 31, 0x24f
    .4byte 0x41820038 # beq .L_8013D07C
    .4byte 0x4080012C # bge .L_8013D174
    cmpwi 31, 0x24e
    .4byte 0x40800024 # bge .L_8013D074
    .4byte 0x48000120 # b .L_8013D174
L_8013D058:
    cmpwi 31, 0x3d3
    .4byte 0x41820008 # beq .L_8013D064
    .4byte 0x48000114 # b .L_8013D174
L_8013D064:
    li 26, 0x3a4
    .4byte 0x4800010C # b .L_8013D174
L_8013D06C:
    li 26, 0x3a3
    .4byte 0x48000104 # b .L_8013D174
L_8013D074:
    li 26, 0x24c
    .4byte 0x480000FC # b .L_8013D174
L_8013D07C:
    li 26, 0x24d
    .4byte 0x480000F4 # b .L_8013D174
L_8013D084:
    bl fn_802DEABC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8013D0B8
    cmpwi 31, 0x3d3
    .4byte 0x41820014 # beq .L_8013D0A8
    .4byte 0x408000DC # bge .L_8013D174
    cmpwi 31, 0x3cf
    .4byte 0x41820010 # beq .L_8013D0B0
    .4byte 0x480000D0 # b .L_8013D174
L_8013D0A8:
    li 26, 0xd6
    .4byte 0x480000C8 # b .L_8013D174
L_8013D0B0:
    li 26, 0xd5
    .4byte 0x480000C0 # b .L_8013D174
L_8013D0B8:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8013D174
    cmpwi 31, 0x4f3
    .4byte 0x41820084 # beq .L_8013D14C
    .4byte 0x4080003C # bge .L_8013D108
    cmpwi 31, 0x2aa
    .4byte 0x41820070 # beq .L_8013D144
    .4byte 0x40800024 # bge .L_8013D0FC
    cmpwi 31, 0x15d
    .4byte 0x40800010 # bge .L_8013D0F0
    cmpwi 31, 0x15b
    .4byte 0x40800084 # bge .L_8013D16C
    .4byte 0x48000088 # b .L_8013D174
L_8013D0F0:
    cmpwi 31, 0x2a9
    .4byte 0x40800048 # bge .L_8013D13C
    .4byte 0x4800007C # b .L_8013D174
L_8013D0FC:
    cmpwi 31, 0x3d0
    .4byte 0x4182006C # beq .L_8013D16C
    .4byte 0x48000070 # b .L_8013D174
L_8013D108:
    cmpwi 31, 0x4f8
    .4byte 0x41820048 # beq .L_8013D154
    .4byte 0x4080001C # bge .L_8013D12C
    cmpwi 31, 0x4f6
    .4byte 0x4182004C # beq .L_8013D164
    .4byte 0x40800030 # bge .L_8013D14C
    cmpwi 31, 0x4f5
    .4byte 0x40800038 # bge .L_8013D15C
    .4byte 0x4800002C # b .L_8013D154
L_8013D12C:
    cmpwi 31, 0x4fa
    .4byte 0x41820034 # beq .L_8013D164
    .4byte 0x40800040 # bge .L_8013D174
    .4byte 0x48000024 # b .L_8013D15C
L_8013D13C:
    li 26, 0x45e
    .4byte 0x48000034 # b .L_8013D174
L_8013D144:
    li 26, 0x45f
    .4byte 0x4800002C # b .L_8013D174
L_8013D14C:
    li 26, 0x4fb
    .4byte 0x48000024 # b .L_8013D174
L_8013D154:
    li 26, 0x4fc
    .4byte 0x4800001C # b .L_8013D174
L_8013D15C:
    li 26, 0x4fd
    .4byte 0x48000014 # b .L_8013D174
L_8013D164:
    li 26, 0x4fe
    .4byte 0x4800000C # b .L_8013D174
L_8013D16C:
    li 3, 0x0
    .4byte 0x48000424 # b .L_8013D594
L_8013D174:
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_8013D1F0
    clrlwi 0, 26, 16
    cmpwi 0, 0x4f7
    .4byte 0x41820048 # beq .L_8013D1D0
    .4byte 0x4080001C # bge .L_8013D1A8
    cmpwi 0, 0x2aa
    .4byte 0x41820034 # beq .L_8013D1C8
    .4byte 0x40800058 # bge .L_8013D1F0
    cmpwi 0, 0x2a9
    .4byte 0x40800020 # bge .L_8013D1C0
    .4byte 0x4800004C # b .L_8013D1F0
L_8013D1A8:
    cmpwi 0, 0x4fa
    .4byte 0x4182003C # beq .L_8013D1E8
    .4byte 0x40800040 # bge .L_8013D1F0
    cmpwi 0, 0x4f9
    .4byte 0x40800028 # bge .L_8013D1E0
    .4byte 0x4800001C # b .L_8013D1D8
L_8013D1C0:
    li 3, 0x0
    .4byte 0x480003D0 # b .L_8013D594
L_8013D1C8:
    li 3, 0x0
    .4byte 0x480003C8 # b .L_8013D594
L_8013D1D0:
    li 3, 0x0
    .4byte 0x480003C0 # b .L_8013D594
L_8013D1D8:
    li 3, 0x0
    .4byte 0x480003B8 # b .L_8013D594
L_8013D1E0:
    li 3, 0x0
    .4byte 0x480003B0 # b .L_8013D594
L_8013D1E8:
    li 3, 0x0
    .4byte 0x480003A8 # b .L_8013D594
L_8013D1F0:
    clrlwi 0, 29, 24
    cmplwi 0, 0xff
    .4byte 0x40820054 # bne .L_8013D24C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x400
    lwz 3, 0x28(3)
    mtctr 0
L_8013D20C:
    lhz 0, 0x12(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8013D240
    lfs 0, 0x8(1)
    li 0, 0x1
    stfs 0, 0x14(3)
    lfs 0, 0xc(1)
    stfs 0, 0x18(3)
    lfs 0, 0x10(1)
    stfs 0, 0x1c(3)
    sth 26, 0x10(3)
    sth 0, 0x12(3)
    .4byte 0x48000088 # b .L_8013D2C4
L_8013D240:
    addi 3, 3, 0x10
    .4byte 0x4200FFC8 # bdnz .L_8013D20C
    .4byte 0x4800007C # b .L_8013D2C4
L_8013D24C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 26
    lwz 3, 0x28(3)
    lwz 3, 0x8(3)
    bl fn_800F38C4
    clrlwi. 0, 3, 31
    .4byte 0x41820008 # beq .L_8013D26C
    .4byte 0x3B8D8F58 # li r28, lbl_8053AB18@sda21
L_8013D26C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 26
    lwz 3, 0x28(3)
    lwz 3, 0x8(3)
    bl fn_800F38C4
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x41820014 # beq .L_8013D298
    clrlwi 0, 29, 24
    cmplwi 0, 0x5
    .4byte 0x41820008 # beq .L_8013D298
    li 29, 0x1
L_8013D298:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 26
    mr 6, 29
    mr 8, 28
    lwz 3, 0x28(3)
    mr 9, 27
    addi 4, 1, 0x8
    li 7, 0x0
    lwz 3, 0xc(3)
    bl fn_800EBE1C
    mr 30, 3
L_8013D2C4:
    cmplwi 30, 0x0
    .4byte 0x418202C8 # beq .L_8013D590
    .4byte 0xC0029E80 # lfs f0, lbl_8053CE20@sda21(r0)
    clrlwi 0, 29, 24
    cmplwi 0, 0x2
    fmuls 4, 0, 31
    .4byte 0x41820094 # beq .L_8013D370
    cmplwi 0, 0x4
    .4byte 0x4182008C # beq .L_8013D370
    cmplwi 0, 0x5
    .4byte 0x41820084 # beq .L_8013D370
    cmplwi 0, 0x8
    .4byte 0x4182007C # beq .L_8013D370
    cmplwi 0, 0xa
    .4byte 0x41820074 # beq .L_8013D370
    .4byte 0xC0629E60 # lfs f3, lbl_8053CE00@sda21(r0)
    addi 3, 1, 0x14
    lfs 2, 0x8(1)
    addi 4, 30, 0x68
    lfs 1, 0xc(1)
    addi 5, 30, 0x98
    lfs 0, 0x10(1)
    addi 6, 30, 0xa4
    stfs 31, 0x14(1)
    stfs 3, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 3, 0x24(1)
    stfs 3, 0x28(1)
    stfs 4, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 3, 0x34(1)
    stfs 4, 0x38(1)
    stfs 3, 0x3c(1)
    stfs 0, 0x40(1)
    bl fn_800EF0CC
    lfs 1, 0x9c(30)
    lfs 0, 0x98(30)
    stfs 0, 0xb0(30)
    stfs 1, 0xb4(30)
    stfs 31, 0xb0(30)
    stfs 31, 0xb4(30)
    .4byte 0x48000224 # b .L_8013D590
L_8013D370:
    stfs 31, 0x98(30)
    stfs 31, 0x9c(30)
    stfs 31, 0xa0(30)
    stfs 31, 0xb0(30)
    stfs 31, 0xb4(30)
    .4byte 0x4800020C # b .L_8013D590
L_8013D388:
    clrlwi 0, 26, 16
    cmpwi 0, 0x19d
    .4byte 0x41820110 # beq .L_8013D4A0
    .4byte 0x40800054 # bge .L_8013D3E8
    cmpwi 0, 0x172
    .4byte 0x418200B4 # beq .L_8013D450
    .4byte 0x40800028 # bge .L_8013D3C8
    cmpwi 0, 0x116
    .4byte 0x41820170 # beq .L_8013D518
    .4byte 0x40800010 # bge .L_8013D3BC
    cmpwi 0, 0xff
    .4byte 0x4182013C # beq .L_8013D4F0
    .4byte 0x480001D8 # b .L_8013D590
L_8013D3BC:
    cmpwi 0, 0x15b
    .4byte 0x41820184 # beq .L_8013D544
    .4byte 0x480001CC # b .L_8013D590
L_8013D3C8:
    cmpwi 0, 0x17c
    .4byte 0x418200FC # beq .L_8013D4C8
    .4byte 0x408001C0 # bge .L_8013D590
    cmpwi 0, 0x17a
    .4byte 0x408001B8 # bge .L_8013D590
    cmpwi 0, 0x174
    .4byte 0x408000E8 # bge .L_8013D4C8
    .4byte 0x480001AC # b .L_8013D590
L_8013D3E8:
    cmpwi 0, 0x3cf
    .4byte 0x41820180 # beq .L_8013D56C
    .4byte 0x40800038 # bge .L_8013D428
    cmpwi 0, 0x252
    .4byte 0x4080001C # bge .L_8013D414
    cmpwi 0, 0x24a
    .4byte 0x418200A0 # beq .L_8013D4A0
    .4byte 0x4180018C # blt .L_8013D590
    cmpwi 0, 0x24e
    .4byte 0x4080010C # bge .L_8013D518
    .4byte 0x48000180 # b .L_8013D590
L_8013D414:
    cmpwi 0, 0x33c
    .4byte 0x40800178 # bge .L_8013D590
    cmpwi 0, 0x33a
    .4byte 0x40800058 # bge .L_8013D478
    .4byte 0x4800016C # b .L_8013D590
L_8013D428:
    cmpwi 0, 0x3d5
    .4byte 0x40800018 # bge .L_8013D444
    cmpwi 0, 0x3d3
    .4byte 0x408000E4 # bge .L_8013D518
    cmpwi 0, 0x3d1
    .4byte 0x40800154 # bge .L_8013D590
    .4byte 0x48000104 # b .L_8013D544
L_8013D444:
    cmpwi 0, 0x473
    .4byte 0x41820080 # beq .L_8013D4C8
    .4byte 0x48000144 # b .L_8013D590
L_8013D450:
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 28
    mr 6, 29
    li 7, 0x0
    addi 4, 4, 0x5249
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800011C # b .L_8013D590
L_8013D478:
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 28
    mr 6, 29
    li 7, 0x2
    addi 4, 4, 0x5249
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000F4 # b .L_8013D590
L_8013D4A0:
    bl SpatialRegistry_GetBase
    lis 4, 0x444d
    mr 5, 28
    mr 6, 29
    li 7, 0x0
    addi 4, 4, 0x4745
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000CC # b .L_8013D590
L_8013D4C8:
    bl SpatialRegistry_GetBase
    lis 4, 0x444d
    mr 5, 28
    mr 6, 29
    li 7, 0x1
    addi 4, 4, 0x4745
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000A4 # b .L_8013D590
L_8013D4F0:
    bl SpatialRegistry_GetBase
    lis 4, 0x444d
    mr 5, 28
    mr 6, 29
    li 7, 0x80
    addi 4, 4, 0x4745
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800007C # b .L_8013D590
L_8013D518:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 26
    mr 9, 27
    lwz 3, 0x28(3)
    li 6, 0x6
    li 7, 0x0
    lwz 3, 0xc(3)
    bl fn_800EBE1C
    mr 30, 3
    .4byte 0x48000050 # b .L_8013D590
L_8013D544:
    bl SpatialRegistry_GetBase
    lis 4, 0x5045
    mr 5, 28
    mr 6, 29
    li 7, 0x2c
    addi 4, 4, 0x4646
    li 8, -0x1
    li 9, 0x0
    bl fn_801F9484
    .4byte 0x48000028 # b .L_8013D590
L_8013D56C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5045
    mr 5, 28
    mr 6, 29
    li 7, 0x34
    addi 4, 4, 0x4646
    li 8, -0x1
    li 9, 0x0
    bl fn_801F9484
L_8013D590:
    mr 3, 30
L_8013D594:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    lmw 26, 0x58(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
