.section extab, "a"
.balign 4
.global etb_8000A4BC
etb_8000A4BC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A4BC, 8

.section extabindex, "a"
.balign 4
.global eti_80018244
eti_80018244:
    .4byte fn_8021E8D0
    .4byte 0x00000434
    .4byte etb_8000A4BC
.size eti_80018244, 12

.text
.balign 4
.global fn_8021E8D0

# fn_8021E8D0(this) - NAVI's real setParams() - the densest and most
# feature-rich setParams landed this session (1076 bytes), survey-
# level for the state-selection branches. Calls the base fn_801D0ED0,
# then from spawn params (this->0x90) computes: this->0x2a8 (byte +
# 0x12b), this->0x2ac (a "color/variant" index clamped [0,5] - later
# used to tint effects), this->0x2ad (a sub-type clamped [1,63]),
# this->0x2b0 (a 5-bit field used for a room-flag/global-table check
# below).
#
# Runs a multi-way state check combining spawn-param bits with a
# GLOBAL struct (`lbl_80529DEC`, the SAME global KEPO's setParams
# checks - offsets +0x118/+0x11c) and, in one branch, the CONFIRMED
# per-index stats table `lbl_8050EC80`'s `->0x28` bitmask field (the
# SAME cross-reference discovered in KEPO's setParams - see
# extab_80219e4c.s) - setting various combinations of flag bits
# (0x4000/0x2000/0xa000/0x2) on this->0x230 to select one of several
# mutually-exclusive "appearance/behavior" states.
#
# Overrides the standard scale/offset constant pairs (NAVI's own),
# this->0xb0=0, this->0x98=2, flag bits 0x380, a 1000-frame timer
# (this->0x108, copied to 0x244; overridden to a special constant
# when flag bit 14 is set), capability byte this->0x194=1. Caches the
# spawn position into this->0x2c8/0x2cc (plain remembered-position
# field, like ARIJ's - NAVI does NOT use the position-trail-predictor
# lineage). Sets draw mode (this->0x248) to 0 or 3 based on flag bit
# 14. Registers the inherited "timed-cue lookup table" component with
# a TINY shared 1-sequence table (`lbl_8053A188`, SDA-addressed like
# SLEF's - see extab_80213efc.s).
#
# If flag bit 17 (0x4000) is set: calls the "register as active
# companion" pair (CompanionRegistry_GetOrInit + GrowableArray_PushBack(this, this->0x198), both
# new) - the counterpart to the dtor's unregister pair.
#
# Checks a per-installation settings byte (`GetRoomConfigRecord()` offset
# +0x131f9 - the SAME large-offset per-type table access pattern seen
# in fn_80220F54's draw): if it equals 2, OR if a specific
# `lbl_8050EC80`/`lbl_80529DEC` combination holds (flag bit 14 path),
# calls fn_801F3668(this) (new) - a special-case hook, survey-level.
#
# Otherwise (the normal path): creates TWO persistent sound/effect
# handles via the CONFIRMED fn_8013CC50 (effect codes 0x32c and
# 0x184) storing them to this->0x2d0/0x2d4 - and if the first handle
# succeeded, looks up a 3-byte color table (`lbl_8046A7AC`, indexed
# by this->0x2ac*3 - the SAME "color/variant" index from above) and
# writes those 3 bytes directly into the sound-handle object's own
# fields (+0xbc/+0xbd/+0xbe) - i.e. NAVI's fairy-color variant
# directly TINTS her own sparkle/glow effect.
fn_8021E8D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_801D0ED0
    lwz 0, 0x90(30)
    clrlwi 3, 0, 16
    addi 0, 3, 0x12b
    stw 0, 0x2a8(30)
    lwz 0, 0x90(30)
    extrwi 0, 0, 3, 13
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_8021E914
    li 0, 0x5
    .4byte 0x48000010 # b .L_8021E920
L_8021E914:
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8021E920
    li 0, 0x0
L_8021E920:
    stb 0, 0x2ac(30)
    lwz 0, 0x90(30)
    extrwi. 0, 0, 1, 12
    .4byte 0x40820010 # bne .L_8021E93C
    lwz 0, 0x230(30)
    oris 0, 0, 0x1
    stw 0, 0x230(30)
L_8021E93C:
    lwz 0, 0x90(30)
    extrwi 0, 0, 6, 6
    stb 0, 0x2ad(30)
    lbz 0, 0x2ad(30)
    cmplwi 0, 0x1
    .4byte 0x4080000C # bge .L_8021E95C
    li 0, 0x1
    stb 0, 0x2ad(30)
L_8021E95C:
    lwz 0, 0x90(30)
    lis 3, lbl_80529DEC@ha
    addi 31, 3, lbl_80529DEC@l
    extrwi 0, 0, 5, 1
    stw 0, 0x2b0(30)
    lwz 3, 0x118(31)
    cmpwi 3, 0x6
    .4byte 0x40820044 # bne .L_8021E9BC
    lwz 0, 0x11c(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8021E9BC
    lwz 0, 0x90(30)
    srwi. 0, 0, 31
    .4byte 0x4182002C # beq .L_8021E9BC
    lwz 0, 0x230(30)
    ori 0, 0, 0x4000
    stw 0, 0x230(30)
    lbz 0, 0x2ac(30)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_8021EA0C
    lwz 0, 0x230(30)
    ori 0, 0, 0x2000
    stw 0, 0x230(30)
    .4byte 0x48000054 # b .L_8021EA0C
L_8021E9BC:
    cmpwi 3, 0x6
    .4byte 0x40820040 # bne .L_8021EA00
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_8021EA00
    lwz 0, 0x90(30)
    srwi. 0, 0, 31
    .4byte 0x41820020 # beq .L_8021EA00
    lwz 0, 0x230(30)
    ori 0, 0, 0xa000
    stw 0, 0x230(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 16, 14
    stw 0, 0x230(30)
    .4byte 0x48000010 # b .L_8021EA0C
L_8021EA00:
    lwz 0, 0x230(30)
    ori 0, 0, 0x2000
    stw 0, 0x230(30)
L_8021EA0C:
    lwz 0, 0x90(30)
    srwi. 0, 0, 31
    .4byte 0x41820048 # beq .L_8021EA5C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_8021EA5C
    lwz 0, 0x118(31)
    cmpwi 0, 0x7
    .4byte 0x40800028 # bge .L_8021EA5C
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_8021EA44
    .4byte 0x4800001C # b .L_8021EA5C
L_8021EA44:
    lwz 0, 0x230(30)
    oris 0, 0, 0x2
    stw 0, 0x230(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 16, 14
    stw 0, 0x230(30)
L_8021EA5C:
    .4byte 0xC042CDBC # lfs f2, lbl_8053FD5C@sda21(r0)
    li 5, 0x0
    .4byte 0xC022CE28 # lfs f1, lbl_8053FDC8@sda21(r0)
    li 4, 0x2
    stfs 2, 0x60(30)
    li 3, 0x3e8
    li 0, 0x1
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 1, 0x8c(30)
    stw 5, 0xb0(30)
    stw 4, 0x98(30)
    lwz 4, 0x230(30)
    ori 4, 4, 0x380
    stw 4, 0x230(30)
    stw 3, 0x108(30)
    lwz 3, 0x108(30)
    stw 3, 0x244(30)
    stb 0, 0x194(30)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x4182000C # beq .L_8021EAEC
    .4byte 0xC002CE00 # lfs f0, lbl_8053FDA0@sda21(r0)
    stfs 0, 0x14(30)
L_8021EAEC:
    lfs 0, 0xc(30)
    stfs 0, 0x2c8(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2cc(30)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x41820010 # beq .L_8021EB14
    li 0, 0x0
    stw 0, 0x248(30)
    .4byte 0x4800000C # b .L_8021EB1C
L_8021EB14:
    li 0, 0x3
    stw 0, 0x248(30)
L_8021EB1C:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x24c(30)
    addi 3, 30, 0x270
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    .4byte 0x388D85C8 # li r4, lbl_8053A188@sda21
    stw 0, 0x250(30)
    li 5, 0x1
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    bl fn_801D2608
    addi 3, 30, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 30, 0x270
    bl fn_801D1D60
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820010 # beq .L_8021EB7C
    bl CompanionRegistry_GetOrInit
    lwz 4, 0x198(30)
    bl GrowableArray_PushBack
L_8021EB7C:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f9(3)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8021EB9C
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000154 # b .L_8021ECEC
L_8021EB9C:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x41820148 # beq .L_8021ECEC
    lwz 0, 0x118(31)
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    cmpwi 0, 0x0
    lwz 6, 0x11c(3)
    .4byte 0x4180000C # blt .L_8021EBC8
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8021EBD0
L_8021EBC8:
    li 0, 0x0
    .4byte 0x48000054 # b .L_8021EC20
L_8021EBD0:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_8021EBE0
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_8021EBE8
L_8021EBE0:
    li 0, 0x0
    .4byte 0x4800003C # b .L_8021EC20
L_8021EBE8:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8021EC20:
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8021EC34
    mr 3, 30
    bl fn_801F3668
    .4byte 0x480000BC # b .L_8021ECEC
L_8021EC34:
    lwz 0, 0x248(30)
    li 10, 0x0
    lwz 3, 0x4(30)
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8021EC4C
    .4byte 0x48000008 # b .L_8021EC50
L_8021EC4C:
    li 10, 0x1
L_8021EC50:
    .4byte 0xC022CDBC # lfs f1, lbl_8053FD5C@sda21(r0)
    addi 4, 30, 0xc
    li 5, 0x32c
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_8013CC50
    stw 3, 0x2d0(30)
    li 10, 0x0
    lwz 0, 0x248(30)
    lwz 3, 0x4(30)
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8021EC8C
    .4byte 0x48000008 # b .L_8021EC90
L_8021EC8C:
    li 10, 0x1
L_8021EC90:
    .4byte 0xC022CDBC # lfs f1, lbl_8053FD5C@sda21(r0)
    addi 4, 30, 0xc
    li 5, 0x184
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_8013CC50
    stw 3, 0x2d4(30)
    lwz 5, 0x2d0(30)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_8021ECEC
    lbz 0, 0x2ac(30)
    lis 3, lbl_8046A7AC@ha
    addi 3, 3, lbl_8046A7AC@l
    mulli 4, 0, 0x3
    lbzx 0, 3, 4
    add 4, 3, 4
    lbz 3, 0x1(4)
    stb 0, 0xbc(5)
    lbz 0, 0x2(4)
    stb 3, 0xbd(5)
    stb 0, 0xbe(5)
L_8021ECEC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

