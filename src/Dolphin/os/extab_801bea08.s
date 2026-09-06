.section extab, "a"
.balign 4
.global etb_80007EEC
etb_80007EEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007EEC, 8

.section extabindex, "a"
.balign 4
.global eti_80014FE0
eti_80014FE0:
    .4byte fn_801BEA08
    .4byte 0x0000013C
    .4byte etb_80007EEC
.size eti_80014FE0, 12

.text
.balign 4
.global fn_801BEA08

# fn_801BEA08(this) - BMST's real setParams(). Calls the base
# fn_801D0ED0, then extracts THREE fields from the spawn param
# this->0x90: a byte clamped into [1,15] stored to this->0x2ac (a
# "segment count/size" value, fitting a Big Moldorm body-segment
# actor), and two 5-bit sub-fields into this->0x2b0/0x2b4 (survey-
# level for their exact meaning - likely segment-index/orientation).
# Sets flag bit 0x2000 in this->0x230 when this->0x2b0 is nonzero.
#
# Overrides the standard scale/offset constant pairs with BMST's own
# (lbl_8053ECEC/ECF0/ECB4/ECF4/ECA0/ECF8), sets flag bits 0x180,
# a PRNG-jittered 16-bit value at this->0x2a8 via the confirmed
# fn_801CD664, draw mode fields (this->0x248/0x24c=0), and another
# PRNG-jittered countdown at this->0x250 via fn_801CD664+0x5a.
#
# NOTABLY does NOT register the inherited "timed-cue lookup table"
# component (no fn_801D2608/fn_801D22DC calls) - unlike every other
# lbl_804A4808-lineage actor landed this session (ROPE/ZORA/FALL) -
# consistent with BMST being a passive body-segment rather than an
# independently-attacking entity with its own attack sequences.
#
# Finally, based on this->0x2aa (a 16-bit field set by the caller
# before setParams runs, not initialized here), splits this->0xb0
# between two flag-word constants - the SAME "per-variant AI flag
# split" pattern seen in ZORA (keyed by spawn 4CC) and FALL (keyed by
# draw-mode), here keyed by a caller-supplied flag instead.
fn_801BEA08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmplwi 0, 0xf
    .4byte 0x4081000C # ble .L_801BEA38
    li 0, 0xf
    .4byte 0x48000010 # b .L_801BEA44
L_801BEA38:
    cmplwi 0, 0x1
    .4byte 0x40800008 # bge .L_801BEA44
    li 0, 0x1
L_801BEA44:
    stb 0, 0x2ac(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x2b0(31)
    lwz 0, 0x90(31)
    srwi 0, 0, 27
    stw 0, 0x2b4(31)
    lwz 0, 0x2b0(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801BEA78
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_801BEA78:
    .4byte 0xC082BD4C # lfs f4, lbl_8053ECEC@sda21(r0)
    li 0, 0x2
    .4byte 0xC002BD50 # lfs f0, lbl_8053ECF0@sda21(r0)
    lis 3, 0x1
    stfs 4, 0x60(31)
    .4byte 0xC062BD14 # lfs f3, lbl_8053ECB4@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC042BD54 # lfs f2, lbl_8053ECF4@sda21(r0)
    stfs 3, 0x68(31)
    .4byte 0xC022BD00 # lfs f1, lbl_8053ECA0@sda21(r0)
    stfs 3, 0x6c(31)
    .4byte 0xC002BD58 # lfs f0, lbl_8053ECF8@sda21(r0)
    stfs 4, 0x70(31)
    stfs 2, 0x74(31)
    stfs 3, 0x78(31)
    stfs 3, 0x7c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x98(31)
    lwz 0, 0x230(31)
    ori 0, 0, 0x180
    stw 0, 0x230(31)
    bl fn_801CD664
    sth 3, 0x2a8(31)
    li 0, 0x0
    li 3, 0x1
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x5a
    .4byte 0xC002BD3C # lfs f0, lbl_8053ECDC@sda21(r0)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lhz 0, 0x2aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801BEB24
    lis 3, 0x4
    addi 0, 3, 0x2
    stw 0, 0xb0(31)
    .4byte 0x48000010 # b .L_801BEB30
L_801BEB24:
    lis 3, 0x4
    addi 0, 3, 0x4
    stw 0, 0xb0(31)
L_801BEB30:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

