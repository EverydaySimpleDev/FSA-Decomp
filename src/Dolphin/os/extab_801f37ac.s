.section extab, "a"
.balign 4
.global etb_80008E94
etb_80008E94:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80008E94, 8

.section extabindex, "a"
.balign 4
.global eti_800165B8
eti_800165B8:
    .4byte fn_801F37AC
    .4byte 0x000005E8
    .4byte etb_80008E94
.size eti_800165B8, 12

.text
.balign 4
.global fn_801F37AC

# fn_801F37AC(this, touchFlag, hitType, dirFlag, hitOffsetVec) - a
# general-purpose "actor got hit" reaction handler. Its .text span ends
# at EXACTLY 0x801F3D94, the start address of the CONFIRMED shared
# knockback-physics function fn_801F3D94
# (project_fsa_stal_wizr_full_depth.md) - i.e. this function is that
# one's immediate predecessor in the same contiguous shared-code block,
# not an SLK2-specific helper.
#
# Computes a direction vector from hitOffsetVec to this->0xc/0x10/0x14,
# decides whether it's "close enough" via a fast-rsqrt magnitude check
# against one of two threshold constants (selected by bit tests on
# this->0xb0 combined with hitType/touchFlag), normalizes the direction
# with the project's standard fast-reciprocal-sqrt idiom, and stores it
# into this->0xec/0xf0/0xf4 (clearing this->0xa4).
#
# If a cooldown (this->0xd8 vs 0xdc) has elapsed by more than 5 frames,
# fires a hit reaction selected by hitType: fn_8013CC50 with ID 0x19d,
# or not-yet-seen fn_801CB5CC/fn_801CB688 (likely physics/impulse
# calls, reused again near the end of this function). For hitType 5 and
# 6 specifically, computes a randomized SFX pitch modifier using the
# CONFIRMED global PRNG (lbl_8053AAF8->0xb4,
# reference_fsa_global_prng.md) reinterpreted as a float via the
# mantissa-injection trick, choosing between two pitch-curve constant
# sets (lbl_8053F7A4/lbl_8053F7B0) and applying it to this->0x10/0x14's
# paired-single components; sets this->0xf8 to record which curve was
# used. Also releases two previous handles (this->0x100/0x104) via the
# not-yet-seen fn_8013C824+fn_800EC240 pair (same pair guessed in
# fn_80214900, extab_80214900.s) before re-triggering fn_8013CC50 with
# IDs 0xbb/0xbc for hitType==5 specifically (branch after the type-code
# check on this->0x1a0 against several literal 4-char codes).
#
# Decrements this->0x108 by `touchFlag`'s magnitude every call; when it
# reaches zero, fires an ambient "impact" cue via the CONFIRMED
# fn_801F0E34, selecting one of two lookup tables (lbl_80469F38 for the
# "just expired" case, lbl_80469EF8 for the "still active" case) indexed
# by this->0x190, or a fixed ID 0x402 if this->0x190 is out of range.
# Track A (byte-matched) + overview: fn_801CB5CC/fn_801CB688/
# fn_8013C824/fn_800EC240 not independently decompiled yet.
fn_801F37AC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 26, 0x28(1)
    mr 31, 6
    mr 27, 4
    cmpwi 31, 0x2
    mr 26, 3
    mr 28, 7
    mr 29, 8
    li 4, 0x0
    li 6, 0x1
    li 30, 0x0
    .4byte 0x4081000C # ble .L_801F37F4
    li 31, 0x2
    li 30, 0x2
L_801F37F4:
    lwz 0, 0xd8(26)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_801F381C
    cmpwi 29, 0x0
    .4byte 0x41800074 # blt .L_801F3878
    li 0, 0x1
    lbz 3, 0xd5(26)
    slw 0, 0, 29
    and. 0, 3, 0
    .4byte 0x40820060 # bne .L_801F3878
L_801F381C:
    cmpwi 28, 0x5
    li 6, 0x0
    .4byte 0x40820028 # bne .L_801F384C
    lwz 3, 0xb0(26)
    rlwinm. 0, 3, 0, 7, 7
    .4byte 0x4182000C # beq .L_801F383C
    li 6, 0x1
    .4byte 0x48000014 # b .L_801F384C
L_801F383C:
    rlwinm. 0, 3, 0, 6, 6
    .4byte 0x4182000C # beq .L_801F384C
    li 3, 0x1
    .4byte 0x48000530 # b .L_801F3D78
L_801F384C:
    cmpwi 28, 0x2
    .4byte 0x40820028 # bne .L_801F3878
    lwz 3, 0xb0(26)
    rlwinm. 0, 3, 0, 5, 5
    .4byte 0x4182000C # beq .L_801F3868
    li 6, 0x1
    .4byte 0x48000014 # b .L_801F3878
L_801F3868:
    rlwinm. 0, 3, 0, 4, 4
    .4byte 0x4182000C # beq .L_801F3878
    li 3, 0x1
    .4byte 0x48000504 # b .L_801F3D78
L_801F3878:
    clrlwi. 0, 6, 24
    .4byte 0x408204F8 # bne .L_801F3D74
    lfs 3, 0x10(26)
    lis 3, lbl_80539D44@ha
    lfs 1, 0x14(26)
    lfs 2, 0x4(5)
    lfs 0, 0x8(5)
    fsubs 5, 3, 1
    lfs 1, 0xc(26)
    fsubs 4, 2, 0
    lfs 0, 0x0(5)
    .4byte 0xC042C7A0 # lfs f2, lbl_8053F740@sda21(r0)
    fsubs 3, 1, 0
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    fsubs 4, 5, 4
    lfs 0, lbl_80539D44@l(3)
    stfs 3, 0x10(1)
    fmuls 0, 1, 0
    stfs 4, 0x14(1)
    psq_l 1, 0x10(1), 0, 0
    stfs 2, 0x18(1)
    ps_mul 1, 1, 1
    ps_madd 4, 2, 2, 1
    ps_sum0 4, 4, 1, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_801F3934
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801F38F8
    fmr 6, 4
    .4byte 0x48000028 # b .L_801F391C
L_801F38F8:
    frsqrte 3, 4
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 6, 0
L_801F391C:
    psq_l 1, 0x10(1), 0, 0
    psq_l 0, 0x18(1), 1, 0
    ps_muls0 1, 1, 6
    ps_muls0 0, 0, 6
    psq_st 1, 0x10(1), 0, 0
    psq_st 0, 0x18(1), 1, 0
L_801F3934:
    lfs 0, 0x10(1)
    li 0, 0x0
    lfs 1, 0x14(1)
    stfs 0, 0xec(26)
    lfs 0, 0x18(1)
    stfs 1, 0xf0(26)
    stfs 0, 0xf4(26)
    stw 0, 0xa4(26)
    lwz 3, 0xd8(26)
    lwz 0, 0xdc(26)
    subf 0, 3, 0
    cmpwi 0, 0x5
    .4byte 0x408101C8 # ble .L_801F3B2C
    cmpwi 28, 0x5
    .4byte 0x40820030 # bne .L_801F399C
    lwz 3, 0x4(26)
    mr 6, 31
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    mr 7, 30
    addi 4, 26, 0xc
    li 5, 0x19d
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000040 # b .L_801F39D8
L_801F399C:
    cmpwi 27, 0x4
    .4byte 0x40810024 # ble .L_801F39C4
    cmpwi 28, 0x1
    .4byte 0x4082001C # bne .L_801F39C4
    lwz 3, 0x4(26)
    mr 5, 31
    mr 6, 30
    addi 4, 26, 0xc
    bl fn_801CB5CC
    .4byte 0x48000018 # b .L_801F39D8
L_801F39C4:
    lwz 3, 0x4(26)
    mr 5, 31
    mr 6, 30
    addi 4, 26, 0xc
    bl fn_801CB688
L_801F39D8:
    cmpwi 27, 0x4
    .4byte 0x408100FC # ble .L_801F3AD8
    cmpwi 28, 0x0
    .4byte 0x4182000C # beq .L_801F39F0
    cmpwi 28, 0x1
    .4byte 0x408200EC # bne .L_801F3AD8
L_801F39F0:
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    lfs 0, 0x14(26)
    fcmpu cr0, 1, 0
    .4byte 0x4082004C # bne .L_801F3A48
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC062C7D4 # lfs f3, lbl_8053F774@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fcmpo cr0, 0, 2
    .4byte 0x4080002C # bge .L_801F3A70
L_801F3A48:
    .4byte 0xC3E2C810 # lfs f31, lbl_8053F7B0@sda21(r0)
    li 0, 0x1
    psq_l 1, 0x10(1), 0, 0
    psq_l 0, 0x18(1), 1, 0
    ps_muls0 1, 1, 31
    stw 0, 0xf8(26)
    ps_muls0 0, 0, 31
    psq_st 1, 0x10(1), 0, 0
    psq_st 0, 0x18(1), 1, 0
    .4byte 0x48000090 # b .L_801F3AFC
L_801F3A70:
    li 0, 0x2
    lfs 1, 0x18(1)
    stw 0, 0xf8(26)
    .4byte 0xC3E2C804 # lfs f31, lbl_8053F7A4@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    psq_l 0, 0x10(1), 0, 0
    lwz 0, 0xb4(5)
    ps_muls0 0, 0, 31
    mullw 3, 0, 4
    psq_st 0, 0x10(1), 0, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fadds 0, 2, 0
    fadds 0, 1, 0
    stfs 0, 0x18(1)
    psq_l 0, 0x18(1), 1, 0
    ps_muls0 0, 0, 31
    psq_st 0, 0x18(1), 1, 0
    .4byte 0x48000028 # b .L_801F3AFC
L_801F3AD8:
    .4byte 0xC3E2C810 # lfs f31, lbl_8053F7B0@sda21(r0)
    li 0, 0x0
    psq_l 1, 0x10(1), 0, 0
    psq_l 0, 0x18(1), 1, 0
    ps_muls0 1, 1, 31
    stw 0, 0xf8(26)
    ps_muls0 0, 0, 31
    psq_st 1, 0x10(1), 0, 0
    psq_st 0, 0x18(1), 1, 0
L_801F3AFC:
    lwz 0, 0xfc(26)
    cmpwi 0, 0x6
    .4byte 0x41820048 # beq .L_801F3B4C
    psq_l 2, 0x3c(26), 0, 0
    psq_l 1, 0x10(1), 0, 0
    psq_l 0, 0x18(1), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x3c(26), 0, 0
    psq_l 1, 0x44(26), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x44(26), 1, 0
    .4byte 0x48000024 # b .L_801F3B4C
L_801F3B2C:
    lwz 0, 0xe8(26)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801F3B40
    li 0, 0x5
    stw 0, 0xe4(26)
L_801F3B40:
    lwz 3, 0xe8(26)
    addi 0, 3, 0x1
    stw 0, 0xe8(26)
L_801F3B4C:
    cmpwi 29, 0x0
    .4byte 0x41800018 # blt .L_801F3B68
    li 0, 0x1
    lbz 3, 0xd5(26)
    slw 0, 0, 29
    or 0, 3, 0
    stb 0, 0xd5(26)
L_801F3B68:
    stw 28, 0xfc(26)
    lwz 0, 0xfc(26)
    cmpwi 0, 0x5
    .4byte 0x40820110 # bne .L_801F3C84
    lis 3, 0x545a
    lwz 4, 0x1a0(26)
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x418200FC # beq .L_801F3C84
    .4byte 0x40800014 # bge .L_801F3BA0
    lis 3, 0x534c
    addi 0, 3, 0x4b32
    cmpw 4, 0
    .4byte 0x418200E8 # beq .L_801F3C84
L_801F3BA0:
    subis 0, 4, 0x5449
    cmplwi 0, 0x4e4b
    .4byte 0x41820010 # beq .L_801F3BB8
    lwz 0, 0x108(26)
    subf. 0, 27, 0
    .4byte 0x418100BC # bgt .L_801F3C70
L_801F3BB8:
    lwz 0, 0x100(26)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801F3BDC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x100(26)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x100(26)
L_801F3BDC:
    lwz 0, 0x104(26)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801F3C00
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x104(26)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x104(26)
L_801F3C00:
    lwz 0, 0xc0(26)
    lis 3, lbl_8046A00C@ha
    addi 5, 3, lbl_8046A00C@l
    lwz 3, 0x4(26)
    slwi 0, 0, 2
    addi 4, 26, 0xc
    lfsx 31, 5, 0
    li 5, 0xbb
    li 6, 0x0
    li 7, -0x1
    fmr 1, 31
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x100(26)
    fmr 1, 31
    addi 4, 26, 0xc
    li 5, 0xbc
    lwz 3, 0x4(26)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x104(26)
    .4byte 0x48000018 # b .L_801F3C84
L_801F3C70:
    lwz 3, 0x4(26)
    mr 5, 31
    mr 6, 30
    addi 4, 26, 0xc
    bl fn_801CB5CC
L_801F3C84:
    lwz 0, 0xfc(26)
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_801F3C9C
    li 0, 0x1
    stw 0, 0xe0(26)
    .4byte 0x48000010 # b .L_801F3CA8
L_801F3C9C:
    li 0, 0x18
    stw 0, 0xd8(26)
    stw 0, 0xdc(26)
L_801F3CA8:
    cmpwi 27, 0x0
    .4byte 0x40810008 # ble .L_801F3CB4
    stw 29, 0x10c(26)
L_801F3CB4:
    lwz 0, 0x108(26)
    subf 0, 27, 0
    stw 0, 0x108(26)
    lwz 0, 0x108(26)
    cmpwi 0, 0x0
    .4byte 0x4181005C # bgt .L_801F3D24
    li 0, 0x0
    stw 0, 0x108(26)
    lwz 0, 0x190(26)
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_801F3D00
    lis 3, lbl_80469F38@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_80469F38@l
    mr 3, 26
    add 4, 4, 0
    li 5, 0x0
    lwz 4, -0x4(4)
    bl fn_801F0E34
L_801F3D00:
    lwz 0, 0xe8(26)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_801F3D70
    lis 4, 0x4
    mr 3, 26
    addi 4, 4, 0x2
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000050 # b .L_801F3D70
L_801F3D24:
    lwz 0, 0x190(26)
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_801F3D50
    lis 3, lbl_80469EF8@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_80469EF8@l
    mr 3, 26
    add 4, 4, 0
    li 5, 0x0
    lwz 4, -0x4(4)
    bl fn_801F0E34
L_801F3D50:
    lwz 0, 0xe8(26)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801F3D70
    lis 4, 0x4
    mr 3, 26
    addi 4, 4, 0x2
    li 5, 0x0
    bl fn_801F0E34
L_801F3D70:
    li 4, 0x1
L_801F3D74:
    clrlwi 3, 4, 24
L_801F3D78:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 26, 0x28(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
