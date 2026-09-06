.section extab, "a"
.balign 4
.global etb_80008D94
etb_80008D94:
    .4byte 0x908A0000
    .4byte 0x00000000
.size etb_80008D94, 8

.section extabindex, "a"
.balign 4
.global eti_80016438
eti_80016438:
    .4byte fn_801F02BC
    .4byte 0x00000434
    .4byte etb_80008D94
.size eti_80016438, 12

.text
.balign 4
.global fn_801F02BC

# fn_801F02BC(this, colorTable, jitterScale, materialStruct*, modelOffset,
# mode, bigFlag) - CONFIRMS itself as a 4th member of the "universal actor
# render" family (see [[project_fsa_rendering_pipeline_foothold]]),
# NOT a separate rendering backend: it's a TRANSFORM-MATRIX-BUILDING
# wrapper around the already-confirmed `fn_801F06F0`.
#
# 1. Builds a scale (and, for one mode, non-uniform scale) matrix via the
#    REAL Nintendo SDK `PSMTXScale`.
# 2. If a caller material struct was supplied (`materialStruct*` nonzero),
#    copies it WHOLESALE into a local stack struct (matching
#    `fn_801F06F0`'s own documented "optionally copied wholesale from
#    dataPtr" behavior exactly) and concatenates the caller's own matrix
#    via `PSMTXConcat`; otherwise builds a DEFAULT material struct
#    in-line - the SAME 16-byte identity-index-table + blend-flag pattern
#    `fn_801769D8`=WIZR's draw() builds locally (confirming that pattern
#    is a shared, reusable material-struct convention, not bespoke to
#    Wizzrobe).
# 3. Calls `fn_801F06F0(this, colorTable, jitterScale, materialStruct*,
#    modelOffset, mode, bigFlag)` directly - the transform matrix rides
#    along as a field WITHIN the material struct (stored at its own
#    offset 0x74).
#
# Confirmed used by STAL's draw() (see [[project_fsa_stal_wizr_full_depth]]).
fn_801F02BC:
    stwu 1, -0x140(1)
    mflr 0
    stw 0, 0x144(1)
    stfd 31, 0x130(1)
    psq_st 31, 0x138(1), 0, 0
    stfd 30, 0x120(1)
    psq_st 30, 0x128(1), 0, 0
    stmw 14, 0xd8(1)
    mr. 29, 6
    fmr 30, 1
    fmr 31, 2
    stb 9, 0x10(1)
    mr 26, 3
    mr 27, 4
    mr 28, 5
    mr 30, 7
    mr 31, 8
    .4byte 0x41820010 # beq .L_801F0310
    lbz 0, 0x13(29)
    cmplwi 0, 0x0
    .4byte 0x418203C0 # beq .L_801F06CC
L_801F0310:
    lwz 0, 0x4(26)
    cmpwi 0, 0x8
    .4byte 0x418102AC # bgt .L_801F05C4
    cmpwi 31, 0x0
    .4byte 0x41820284 # beq .L_801F05A4
    cmpwi 31, 0x2
    .4byte 0x4182000C # beq .L_801F0334
    .4byte 0x40800020 # bge .L_801F034C
    .4byte 0x4800001C # b .L_801F034C
L_801F0334:
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    addi 3, 1, 0x98
    .4byte 0xC062C7AC # lfs f3, lbl_8053F74C@sda21(r0)
    fmr 2, 1
    bl PSMTXScale
    .4byte 0x48000018 # b .L_801F0360
L_801F034C:
    .4byte 0xC022C800 # lfs f1, lbl_8053F7A0@sda21(r0)
    addi 3, 1, 0x98
    fmr 2, 1
    fmr 3, 1
    bl PSMTXScale
L_801F0360:
    cmplwi 29, 0x0
    .4byte 0x41820128 # beq .L_801F048C
    lbz 15, 0x2e(29)
    lbz 0, 0x2c(29)
    stw 15, 0xd0(1)
    lwz 15, 0x30(29)
    stb 0, 0x88(1)
    lwz 0, 0xd0(1)
    stw 15, 0xc8(1)
    lwz 15, 0x34(29)
    stb 0, 0x8a(1)
    lwz 0, 0xc8(1)
    stw 15, 0xcc(1)
    lwz 3, 0x18(29)
    lwz 16, 0x0(29)
    lwz 17, 0x4(29)
    cmplwi 3, 0x0
    lwz 18, 0x8(29)
    lwz 19, 0xc(29)
    lwz 20, 0x10(29)
    lwz 21, 0x14(29)
    lwz 22, 0x18(29)
    lbz 23, 0x1c(29)
    lbz 24, 0x1d(29)
    lbz 25, 0x1e(29)
    lbz 12, 0x1f(29)
    lbz 11, 0x20(29)
    lbz 10, 0x21(29)
    lbz 9, 0x22(29)
    lbz 8, 0x23(29)
    lbz 7, 0x24(29)
    lbz 6, 0x25(29)
    lbz 5, 0x26(29)
    lwz 4, 0x28(29)
    lbz 14, 0x2d(29)
    lwz 15, 0x38(29)
    stw 0, 0x8c(1)
    lwz 0, 0xcc(1)
    stw 16, 0x5c(1)
    stw 17, 0x60(1)
    stw 18, 0x64(1)
    stw 19, 0x68(1)
    stw 20, 0x6c(1)
    stw 21, 0x70(1)
    stw 22, 0x74(1)
    stb 23, 0x78(1)
    stb 24, 0x79(1)
    stb 25, 0x7a(1)
    stb 12, 0x7b(1)
    stb 11, 0x7c(1)
    stb 10, 0x7d(1)
    stb 9, 0x7e(1)
    stb 8, 0x7f(1)
    stb 7, 0x80(1)
    stb 6, 0x81(1)
    stb 5, 0x82(1)
    stw 4, 0x84(1)
    stb 14, 0x89(1)
    stw 0, 0x90(1)
    stw 15, 0x94(1)
    .4byte 0x41820010 # beq .L_801F0460
    addi 4, 1, 0x98
    mr 5, 4
    bl PSMTXConcat
L_801F0460:
    addi 0, 1, 0x98
    fmr 1, 30
    fmr 2, 31
    stw 0, 0x74(1)
    mr 3, 26
    mr 4, 27
    mr 5, 28
    mr 7, 30
    addi 6, 1, 0x5c
    bl fn_801F06F0
    .4byte 0x4800013C # b .L_801F05C4
L_801F048C:
    li 0, -0x1
    addi 9, 1, 0x20
    stw 0, 0x30(1)
    li 10, 0x0
    stw 0, 0x34(1)
    .4byte 0x48000064 # b .L_801F0504
L_801F04A4:
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
L_801F0504:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801F04A4
    li 11, 0x0
    li 10, 0x1
    stw 11, 0x38(1)
    li 12, -0x1
    addi 0, 1, 0x98
    li 9, 0x3
    li 8, 0x2
    fmr 1, 30
    fmr 2, 31
    stw 12, 0x30(1)
    mr 3, 26
    mr 4, 27
    stw 11, 0x34(1)
    mr 5, 28
    stb 11, 0x3c(1)
    mr 7, 30
    addi 6, 1, 0x20
    stb 11, 0x3d(1)
    stb 11, 0x3e(1)
    stb 10, 0x3f(1)
    stb 10, 0x40(1)
    stb 11, 0x41(1)
    stb 11, 0x42(1)
    stb 11, 0x43(1)
    stb 11, 0x44(1)
    stb 11, 0x45(1)
    stb 10, 0x46(1)
    stw 9, 0x48(1)
    stb 10, 0x4c(1)
    stb 11, 0x4d(1)
    stb 11, 0x4e(1)
    stw 12, 0x50(1)
    stw 11, 0x54(1)
    stw 8, 0x58(1)
    stw 0, 0x38(1)
    bl fn_801F06F0
    .4byte 0x48000024 # b .L_801F05C4
L_801F05A4:
    fmr 1, 30
    mr 3, 26
    fmr 2, 31
    mr 4, 27
    mr 5, 28
    mr 6, 29
    mr 7, 30
    bl fn_801F06F0
L_801F05C4:
    lwz 0, 0x4(26)
    cmpwi 0, 0x8
    .4byte 0x41800100 # blt .L_801F06CC
    lwz 3, 0xd8(26)
    li 5, 0x1
    psq_l 1, 0xc(26), 0, 0
    li 8, 0x0
    lfs 0, 0x14(26)
    cmpwi 3, 0x0
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    .4byte 0x4081005C # ble .L_801F064C
    lwz 4, 0xdc(26)
    subi 0, 4, 0x19
    cmpw 3, 0
    .4byte 0x4181000C # bgt .L_801F060C
    cmpwi 4, 0x19
    .4byte 0x40800054 # bge .L_801F065C
L_801F060C:
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4182000C # beq .L_801F061C
    li 5, 0x0
    .4byte 0x48000044 # b .L_801F065C
L_801F061C:
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x41820018 # beq .L_801F0638
    lfs 1, 0x14(1)
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x14(1)
    .4byte 0x48000028 # b .L_801F065C
L_801F0638:
    lfs 1, 0x14(1)
    .4byte 0xC002C7D4 # lfs f0, lbl_8053F774@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x14(1)
    .4byte 0x48000014 # b .L_801F065C
L_801F064C:
    lwz 0, 0xe0(26)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_801F065C
    li 8, 0x1
L_801F065C:
    clrlwi. 0, 5, 24
    .4byte 0x4182006C # beq .L_801F06CC
    lbz 0, 0xa(27)
    cmpwi 0, 0x32
    .4byte 0x40820040 # bne .L_801F06AC
    stw 8, 0x8(1)
    neg 0, 31
    li 3, 0x0
    lwz 4, 0x4(26)
    or 0, 0, 31
    stw 3, 0xc(1)
    lwz 3, 0x198(26)
    srwi 7, 0, 31
    lbz 10, 0x10(1)
    mr 6, 28
    addi 5, 1, 0x14
    li 8, 0x2
    li 9, -0x1
    bl fn_803075AC
    .4byte 0x48000024 # b .L_801F06CC
L_801F06AC:
    lwz 3, 0x198(26)
    mr 6, 28
    lwz 4, 0x4(26)
    mr 7, 31
    addi 5, 1, 0x14
    clrlwi 8, 8, 24
    li 9, -0x1
    bl fn_80307AC8
L_801F06CC:
    psq_l 31, 0x138(1), 0, 0
    lfd 31, 0x130(1)
    psq_l 30, 0x128(1), 0, 0
    lfd 30, 0x120(1)
    lmw 14, 0xd8(1)
    lwz 0, 0x144(1)
    mtlr 0
    addi 1, 1, 0x140
    blr

