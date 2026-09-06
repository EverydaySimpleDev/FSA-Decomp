.section extab, "a"
.balign 4
.global etb_80008D84
etb_80008D84:
    .4byte 0x58CA0000
    .4byte 0x00000000
.size etb_80008D84, 8

.section extabindex, "a"
.balign 4
.global eti_80016420
eti_80016420:
    .4byte fn_801EF830
    .4byte 0x00000504
    .4byte etb_80008D84
.size eti_80016420, 12

# fn_801EF830(actorTypeCode, materialPtr, ..., modeArg, dataPtr, ...) -
# survey-level (0x504 bytes, ~323 instructions) - the richest of the 3
# render-dispatch siblings found alongside `fn_801F06F0`/`fn_801EF574`
# (see [[project_fsa_rendering_pipeline_foothold]]). Gates on the
# confirmed real-time helper `GetRoomConfigRecord`, then reduces `modeArg` to its
# low 10 bits via the unexplored `fn_802265FC`, and checks that reduced
# value against a REJECTION LIST loaded from table `lbl_8053F730` (skip
# entirely if it matches, via the unexplored bool-check `fn_802DEB58`).
# If not rejected, builds the same default material struct as its
# siblings (optionally overwritten from a caller struct), then branches
# on the reduced mode value into (at least) 3 distinct sub-paths:
# - the general/default path: resolves a model handle via the confirmed
#   resource-manager call and renders via `fn_802F86CC`, same as
#   `fn_801EF574`.
# - mode == 7: builds a REAL 3D SCALE+CONCAT TRANSFORM MATRIX
#   (`PSMTXScale`/`PSMTXConcat`, genuine GX math library calls, not
#   wrappers) from caller-supplied scale/position data, then either
#   resolves-and-renders via `fn_802F86CC` (compressed geometry) OR,
#   depending on a sub-flag, instead calls `fn_802F745C` - **the OTHER
#   confirmed spatial-triad function, the LIVE dynamic light-probe-grid
#   renderer** - meaning this mode can choose between pre-authored and
#   dynamically-computed lighting for the same draw call.
# - other mode values: looks up a per-mode float SCALE FACTOR from table
#   `lbl_80469FA8`, then resolves-and-renders via `fn_802F86CC` same as
#   the default path, just with a different scale.
# Not traced instruction-by-instruction given the size and the 2
# unexplored callees (`fn_802265FC`, `fn_802DEB58`) gating the whole
# function; the 3-way mode dispatch and the confirmed choice between the
# compressed vs. live renderer backends are the load-bearing facts.
.text
.balign 4
.global fn_801EF830

fn_801EF830:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stfd 30, 0xf0(1)
    psq_st 30, 0xf8(1), 0, 0
    stfd 29, 0xe0(1)
    psq_st 29, 0xe8(1), 0, 0
    stmw 21, 0xb4(1)
    mr 26, 6
    mr 23, 3
    cmpwi 26, -0x1
    mr 24, 4
    mr 25, 5
    mr 27, 7
    mr 28, 8
    mr 29, 9
    .4byte 0x41820490 # beq .L_801EFD08
    cmpwi 23, 0x8
    .4byte 0x40800488 # bge .L_801EFD08
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 23
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820470 # bne .L_801EFD08
    mr 3, 24
    clrlwi 30, 26, 22
    li 4, 0x0
    bl fn_802265FC
    mr 31, 3
    li 22, 0x1
    li 21, 0x3
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801EF8C8
    li 21, 0x2
L_801EF8C8:
    clrlwi 3, 31, 16
    .4byte 0x3882C790 # li r4, lbl_8053F730@sda21
    mtctr 21
    cmpwi 21, 0x0
    .4byte 0x40810020 # ble .L_801EF8F8
L_801EF8DC:
    lhz 0, 0x0(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_801EF8F0
    li 22, 0x0
    .4byte 0x4800000C # b .L_801EF8F8
L_801EF8F0:
    addi 4, 4, 0x2
    .4byte 0x4200FFE8 # bdnz .L_801EF8DC
L_801EF8F8:
    clrlwi. 0, 22, 24
    .4byte 0x4182040C # beq .L_801EFD08
    li 0, -0x1
    addi 10, 1, 0x5c
    stw 0, 0x6c(1)
    li 3, 0x0
    stw 0, 0x70(1)
    .4byte 0x48000064 # b .L_801EF978
L_801EF918:
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
L_801EF978:
    clrlwi 0, 3, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801EF918
    li 7, -0x1
    lfs 4, 0x8(24)
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x6c(1)
    li 3, 0xdf
    fcmpo cr0, 4, 0
    stw 6, 0x70(1)
    stw 6, 0x74(1)
    stb 6, 0x78(1)
    stb 6, 0x79(1)
    stb 6, 0x7a(1)
    stb 5, 0x7b(1)
    stb 5, 0x7c(1)
    stb 6, 0x7d(1)
    stb 6, 0x7e(1)
    stb 6, 0x7f(1)
    stb 6, 0x80(1)
    stb 6, 0x81(1)
    stb 5, 0x82(1)
    stw 4, 0x84(1)
    stb 5, 0x88(1)
    stb 6, 0x89(1)
    stb 6, 0x8a(1)
    stw 7, 0x8c(1)
    stw 6, 0x90(1)
    stw 0, 0x94(1)
    stb 3, 0x6f(1)
    .4byte 0x4081004C # ble .L_801EFA4C
    lis 0, 0x4330
    stw 3, 0x9c(1)
    .4byte 0xC842C7E8 # lfd f2, lbl_8053F788@sda21(r0)
    stw 0, 0x98(1)
    .4byte 0xC062C7AC # lfs f3, lbl_8053F74C@sda21(r0)
    lfd 1, 0x98(1)
    .4byte 0xC002C7D8 # lfs f0, lbl_8053F778@sda21(r0)
    fsubs 1, 1, 2
    fnmsubs 1, 3, 4, 1
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801EFA38
    .4byte 0x48000008 # b .L_801EFA3C
L_801EFA38:
    fmr 0, 1
L_801EFA3C:
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    stb 0, 0x6f(1)
L_801EFA4C:
    cmplwi 25, 0x0
    .4byte 0x41820048 # beq .L_801EFA98
    rlwinm. 0, 26, 0, 21, 21
    .4byte 0x41820030 # beq .L_801EFA88
    lbz 4, 0x6f(1)
    lis 3, 0x8081
    lbz 0, 0x13(25)
    subi 3, 3, 0x7f7f
    mullw 0, 4, 0
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 7
    srwi 3, 0, 31
    add 0, 0, 3
    stb 0, 0x6f(1)
L_801EFA88:
    lbz 3, 0x1c(25)
    lbz 0, 0x1d(25)
    stb 3, 0x78(1)
    stb 0, 0x79(1)
L_801EFA98:
    lbz 5, 0x79(1)
    clrlwi 0, 31, 16
    lbz 3, 0x6f(1)
    li 4, 0x1
    subi 5, 5, 0x1
    cmplwi 0, 0x39
    srawi 0, 3, 1
    stb 5, 0x79(1)
    stw 4, 0x84(1)
    stb 0, 0x8a(1)
    .4byte 0x408200B4 # bne .L_801EFB74
    cmpwi 30, 0x0
    .4byte 0x408200AC # bne .L_801EFB74
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    lfs 2, 0x8(24)
    fcmpu cr0, 0, 2
    .4byte 0x4082009C # bne .L_801EFB74
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    clrlwi 4, 5, 24
    .4byte 0xC022C7DC # lfs f1, lbl_8053F77C@sda21(r0)
    .4byte 0x3862C798 # li r3, lbl_8053F738@sda21
    lwz 5, 0x4(6)
    cmpwi 23, 0x8
    lfs 0, 0x4(24)
    addi 4, 4, 0x1
    lwz 0, 0x34(5)
    fadds 1, 1, 0
    lfs 0, 0x0(24)
    extrwi 0, 0, 2, 28
    stb 4, 0x79(1)
    lbzx 3, 3, 0
    stfs 0, 0x14(1)
    addi 23, 3, 0x18f
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    .4byte 0x408001E4 # bge .L_801EFD08
    lwz 3, 0xa4(6)
    lis 4, lbl_8046A020@ha
    addi 5, 4, lbl_8046A020@l
    lwz 12, 0x0(3)
    lis 4, 0x534f
    addi 4, 4, 0x4220
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 23
    fmr 2, 1
    addi 7, 1, 0x5c
    lwz 3, 0x20(4)
    addi 4, 1, 0x14
    bl fn_802F86CC
    .4byte 0x48000198 # b .L_801EFD08
L_801EFB74:
    cmpwi 30, 0x7
    .4byte 0x40820114 # bne .L_801EFC8C
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    addi 3, 1, 0x2c
    lfs 4, 0x4(24)
    lfs 1, 0x0(24)
    fmr 3, 2
    .4byte 0xC002C7E0 # lfs f0, lbl_8053F780@sda21(r0)
    stfs 1, 0x20(1)
    .4byte 0xC022C7E4 # lfs f1, lbl_8053F784@sda21(r0)
    stfs 4, 0x24(1)
    stfs 0, 0x28(1)
    bl PSMTXScale
    cmplwi 25, 0x0
    .4byte 0x41820034 # beq .L_801EFBE0
    lwz 4, 0x18(25)
    cmplwi 4, 0x0
    .4byte 0x41820028 # beq .L_801EFBE0
    addi 3, 1, 0x2c
    lfs 31, 0xc(4)
    lfs 30, 0x1c(4)
    mr 5, 3
    lfs 29, 0x2c(4)
    bl PSMTXConcat
    stfs 31, 0x38(1)
    stfs 30, 0x48(1)
    stfs 29, 0x58(1)
L_801EFBE0:
    li 4, 0x0
    li 3, 0x28
    addi 0, 1, 0x2c
    cmplwi 27, 0x0
    stb 4, 0x6c(1)
    stb 4, 0x6d(1)
    stb 4, 0x6e(1)
    stb 3, 0x70(1)
    stb 3, 0x71(1)
    stb 3, 0x72(1)
    stb 4, 0x73(1)
    stw 0, 0x74(1)
    .4byte 0x41820058 # beq .L_801EFC68
    cmpwi 23, 0x8
    .4byte 0x408000F0 # bge .L_801EFD08
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534f
    mr 5, 27
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 28
    fmr 2, 1
    addi 7, 1, 0x5c
    lwz 3, 0x20(4)
    addi 4, 1, 0x20
    bl fn_802F86CC
    .4byte 0x480000A4 # b .L_801EFD08
L_801EFC68:
    cmpwi 23, 0x8
    .4byte 0x4080009C # bge .L_801EFD08
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 29
    addi 4, 1, 0x20
    addi 6, 1, 0x5c
    lwz 3, 0x20(3)
    bl fn_802F745C
    .4byte 0x48000080 # b .L_801EFD08
L_801EFC8C:
    lfs 2, 0x4(24)
    lis 3, lbl_80469FA8@ha
    lfs 1, 0x0(24)
    cmpwi 23, 0x8
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    slwi 0, 30, 2
    addi 3, 3, lbl_80469FA8@l
    stfs 1, 0x8(1)
    lfsx 31, 3, 0
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    .4byte 0x40800050 # bge .L_801EFD08
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046A034@ha
    addi 5, 3, lbl_8046A034@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 5, 3
    fmr 1, 31
    .4byte 0xC042C7D4 # lfs f2, lbl_8053F774@sda21(r0)
    lwz 3, 0x20(4)
    mr 6, 30
    addi 4, 1, 0x8
    addi 7, 1, 0x5c
    bl fn_802F86CC
L_801EFD08:
    psq_l 31, 0x108(1), 0, 0
    lfd 31, 0x100(1)
    psq_l 30, 0xf8(1), 0, 0
    lfd 30, 0xf0(1)
    psq_l 29, 0xe8(1), 0, 0
    lfd 29, 0xe0(1)
    lmw 21, 0xb4(1)
    lwz 0, 0x114(1)
    mtlr 0
    addi 1, 1, 0x110
    blr

