.section extab, "a"
.balign 4
.global etb_80007DC4
etb_80007DC4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007DC4, 8

.section extabindex, "a"
.balign 4
.global eti_80014E24
eti_80014E24:
    .4byte fn_801BB1AC
    .4byte 0x00000160
    .4byte etb_80007DC4
.size eti_80014E24, 12

.text
.balign 4
.global fn_801BB1AC

# fn_801BB1AC(this) - ZORA's real setParams(). Calls the base
# fn_801D0ED0, then a NEW sibling init call fn_801D0E58(this) (not yet
# decompiled - likely a 2nd-stage base-init step alongside
# fn_801D0F40, survey-level). Overrides the standard scale/offset
# constant pairs with ZORA's own (lbl_8053EBB0/EBC8/EBE4/EBE8), sets
# this->0x98=2 (variant).
#
# Reads the spawn 4CC code at this->0x1a0 (the CONFIRMED per-actor
# spawn-code field - see extab_801f7818.s) and compares it against a
# fixed constant decoding to ASCII "LTZR" (0x4C545A52) - likely a
# distinct "Little/lesser Zora" spawn variant tag separate from the
# main "ZORA" code. Sets a flags word (this->0xb0) to 0 for the LTZR
# case, or 0x00010101 otherwise - a genuinely per-variant AI/behavior
# flag split.
#
# Sets a flag bit (0x100) in this->0x230, position-offset floats
# (this->0x54/0x58/0x5c) to a shared constant (lbl_8053EBAC), draw
# mode fields (this->0x248/0x24c=0), a PRNG-jittered countdown at
# this->0x250 via the confirmed fn_801CD664(0)+0x3c, registers the
# inherited "timed-cue lookup table" component at this->0x270 with
# ZORA's own 5-sequence data table (lbl_804A3D68), clamps the variant
# selector (this->0x90) into [0,15], then invokes a VIRTUAL "post-
# setParams" hook via this's own vtable slot 0xa4.
fn_801BB1AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    mr 3, 31
    bl fn_801D0E58
    li 0, 0x2
    .4byte 0xC002BC10 # lfs f0, lbl_8053EBB0@sda21(r0)
    stw 0, 0x98(31)
    .4byte 0xC042BC28 # lfs f2, lbl_8053EBC8@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022BC44 # lfs f1, lbl_8053EBE4@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002BC48 # lfs f0, lbl_8053EBE8@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    lfs 2, 0x60(31)
    stfs 2, 0x70(31)
    lfs 2, 0x64(31)
    stfs 2, 0x74(31)
    lfs 2, 0x68(31)
    stfs 2, 0x78(31)
    lfs 2, 0x6c(31)
    stfs 2, 0x7c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x40820010 # bne .L_801BB240
    li 0, 0x0
    stw 0, 0xb0(31)
    .4byte 0x48000010 # b .L_801BB24C
L_801BB240:
    lis 3, 0x1
    addi 0, 3, 0x101
    stw 0, 0xb0(31)
L_801BB24C:
    lwz 4, 0x230(31)
    li 0, 0x0
    .4byte 0xC002BC0C # lfs f0, lbl_8053EBAC@sda21(r0)
    li 3, 0x79
    ori 4, 4, 0x100
    stw 4, 0x230(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x3c
    lis 3, lbl_804A3D68@ha
    stw 0, 0x250(31)
    addi 4, 3, lbl_804A3D68@l
    .4byte 0xC002BC0C # lfs f0, lbl_8053EBAC@sda21(r0)
    addi 3, 31, 0x270
    li 5, 0x5
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    lwz 0, 0x90(31)
    cmplwi 0, 0xf
    .4byte 0x4081000C # ble .L_801BB2D4
    li 0, 0xf
    .4byte 0x48000010 # b .L_801BB2E0
L_801BB2D4:
    cmplwi 0, 0x0
    .4byte 0x40800008 # bge .L_801BB2E0
    li 0, 0x0
L_801BB2E0:
    stw 0, 0x90(31)
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0xa4(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

