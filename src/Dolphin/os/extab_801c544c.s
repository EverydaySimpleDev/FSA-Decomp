.section extab, "a"
.balign 4
.global etb_800080D0
etb_800080D0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800080D0, 8

.section extabindex, "a"
.balign 4
.global eti_80015298
eti_80015298:
    .4byte fn_801C544C
    .4byte 0x00000214
    .4byte etb_800080D0
.size eti_80015298, 12

.text
.balign 4
.global fn_801C544C

# fn_801C544C(this) - SLK2's real setParams() - dense, survey-level
# for the embedded sub-record helpers (SLK2 is a much richer NPC-like
# actor than any other landed this session - see extab_801c573c.s).
# Calls the base fn_801D0ED0, then fn_801C0D70(this) repeatedly to
# reach an embedded sub-record (new, not yet decompiled - reused by
# nearly every SLK2 method), and fn_801C14A8(this, this->0x198)
# (new) storing its result to this->0x94.
#
# Extracts a 3-bit "type" field from this->0x90 and branches:
#  - type 1 or 2: sets flags 0x6000 on this->0x230, copies SLK2's own
#    spawn position (this->0xc/0x10/0x14) into the sub-record's own
#    0x54/0x58/0x5c fields (seeding it with a starting position), then
#    sets a per-type bit (0x2 or 0x4) in the sub-record's own flags.
#  - type 3: sets flag 0x4000 on this->0x230 instead (own flags, not
#    the sub-record's).
# If a separate flag (0x4000, tested via a DIFFERENT bit position) is
# set, increments a counter field on the sub-record.
#
# Extracts an 8-bit field from this->0x90 into this->0x55e (defaults
# to 0xa if zero), and a clamped-[0,8] field passed to fn_802157B8
# (this+0x524, the "flag record" sub-object the constructor installs
# at +0x524 - see extab_801c573c.s) to configure it.
#
# Overrides the standard scale/offset constant pairs (SLK2's own
# lbl_8053EE28/EE50/EE08), ALSO copies the same position triple into a
# THIRD location (this+0x340's own 0x70-0x7c fields - yet another
# embedded sub-record instance). Sets this->0xb0=0x50303, flag bit
# 0x100, timer this->0x108=1000 (copied to 0x244), this->0x114=2,
# this->0x196=1 (capability), this->0x98=2, draw modes 0x248/0x24c=0,
# PRNG-jitter fields (this->0x250/0x254/0x258). Calls fn_800FEB78(this)
# (new - likely a "register with a manager" final setup call), then
# writes the CURRENT position into this->0x32c/0x330/0x334 - the
# EXACT fields the position-trail-predictor base class uses for its
# own predicted-position cache (see
# project_fsa_multiple_inheritance_pattern.md) - i.e. SLK2 explicitly
# seeds its inherited position predictor with its spawn location.
#
# NOTABLY does not register a "timed-cue lookup table" component (SLK2
# doesn't use that shared component at all - it relies on the
# position-trail-predictor base instead).
fn_801C544C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    bl fn_801D0ED0
    bl fn_801C0D70
    lwz 4, 0x198(31)
    bl fn_801C14A8
    sth 3, 0x94(31)
    lwz 0, 0x90(31)
    extrwi 30, 0, 3, 24
    cmplwi 30, 0x1
    .4byte 0x4182000C # beq .L_801C5490
    cmplwi 30, 0x2
    .4byte 0x4082006C # bne .L_801C54F8
L_801C5490:
    lwz 0, 0x230(31)
    ori 0, 0, 0x6000
    stw 0, 0x230(31)
    bl fn_801C0D70
    lfs 0, 0xc(31)
    cmpwi 30, 0x2
    stfs 0, 0x54(3)
    lfs 0, 0x10(31)
    stfs 0, 0x58(3)
    lfs 0, 0x14(31)
    stfs 0, 0x5c(3)
    .4byte 0x41820028 # beq .L_801C54E4
    .4byte 0x4080004C # bge .L_801C550C
    cmpwi 30, 0x1
    .4byte 0x40800008 # bge .L_801C54D0
    .4byte 0x48000040 # b .L_801C550C
L_801C54D0:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    ori 0, 0, 0x2
    sth 0, 0x0(3)
    .4byte 0x4800002C # b .L_801C550C
L_801C54E4:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    ori 0, 0, 0x4
    sth 0, 0x0(3)
    .4byte 0x48000018 # b .L_801C550C
L_801C54F8:
    cmplwi 30, 0x3
    .4byte 0x40820010 # bne .L_801C550C
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
L_801C550C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_801C5528
    bl fn_801C0D70
    lhz 4, 0x2(3)
    addi 0, 4, 0x1
    sth 0, 0x2(3)
L_801C5528:
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 4
    stb 0, 0x55e(31)
    lbz 0, 0x55e(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801C5548
    li 0, 0xa
    stb 0, 0x55e(31)
L_801C5548:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 27
    cmpwi 0, 0x8
    .4byte 0x4081000C # ble .L_801C5560
    li 0, 0x8
    .4byte 0x48000010 # b .L_801C556C
L_801C5560:
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801C556C
    li 0, 0x0
L_801C556C:
    addi 3, 31, 0x524
    clrlwi 4, 0, 24
    bl fn_802157B8
    .4byte 0xC062BE88 # lfs f3, lbl_8053EE28@sda21(r0)
    lis 3, 0x5
    .4byte 0xC042BEB0 # lfs f2, lbl_8053EE50@sda21(r0)
    addi 9, 3, 0x303
    stfs 3, 0x60(31)
    li 8, 0x0
    li 7, 0x3e8
    li 6, 0x2
    stfs 3, 0x64(31)
    li 5, 0x1
    li 0, -0x1
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 2, 0x68(31)
    addi 3, 31, 0x340
    li 4, 0x0
    stfs 2, 0x6c(31)
    lfs 1, 0x60(31)
    stfs 1, 0x70(31)
    lfs 1, 0x64(31)
    stfs 1, 0x74(31)
    lfs 1, 0x68(31)
    stfs 1, 0x78(31)
    lfs 1, 0x6c(31)
    stfs 1, 0x7c(31)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stw 9, 0xb0(31)
    lwz 9, 0x230(31)
    ori 9, 9, 0x100
    stw 9, 0x230(31)
    stb 8, 0x11d(31)
    stw 7, 0x108(31)
    lwz 7, 0x108(31)
    stw 7, 0x244(31)
    stw 6, 0x114(31)
    stb 5, 0x196(31)
    sth 8, 0x33c(31)
    stw 6, 0x98(31)
    stw 8, 0x248(31)
    stw 8, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_800FEB78
    lfs 0, 0xc(31)
    stfs 0, 0x32c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x330(31)
    lfs 0, 0x14(31)
    stfs 0, 0x334(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

