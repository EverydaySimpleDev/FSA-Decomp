.section extab, "a"
.balign 4
.global etb_80007F9C
etb_80007F9C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007F9C, 8

.section extabindex, "a"
.balign 4
.global eti_800150E8
eti_800150E8:
    .4byte fn_801C097C
    .4byte 0x0000015C
    .4byte etb_80007F9C
.size eti_800150E8, 12

.text
.balign 4
.global fn_801C097C

# fn_801C097C(this) - TNDR's real setParams(). Calls the base
# fn_801D0ED0, extracts a byte from this->0x90 (clamped to max 4) into
# this->0x2b4 (a sub-type selector), and sets flag bit 0x4000 in
# this->0x230 when this->0x90's sign bit is set - a "variant A vs
# variant B" toggle that ALSO gates TNDR's draw() (see
# extab_801bf8a0.s), consistent visual/behavior split.
#
# Overrides the standard scale/offset constant pairs with TNDR's own
# (lbl_8053ED30/ED80/ED84/ED88/ED8C/ED58), then based on the SAME
# variant flag, picks between two DIFFERENT sets of secondary offset
# constants (this->0x70/0x74/0x78/0x7c) and this->0xb0 flag-word
# values (0 vs 0x50202) - the recurring "per-variant AI flag split"
# pattern, here keyed by the sign bit of the spawn param.
#
# Sets this->0x98=2, flag bit 0x20 in this->0x230, capability byte
# this->0x194=1, a fixed initial timer (this->0x14 = a shared
# constant), draw mode fields (0x248/0x24c=0), a PRNG-jittered
# countdown at this->0x250 via the confirmed fn_801CD664+6. Registers
# the inherited "timed-cue lookup table" component at this->0x270, but
# NOTABLY with a shared/generic 2-sequence table (`lbl_8053A128`, in
# the constants data range rather than a bespoke `804Axxxx`-range
# table like every other actor this session) - TNDR reuses a minimal
# shared sequence set rather than having its own.
fn_801C097C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 3, 0x90(31)
    li 0, 0x4
    clrlwi 3, 3, 24
    cmplwi 3, 0x4
    .4byte 0x40810008 # ble .L_801C09AC
    mr 0, 3
L_801C09AC:
    stb 0, 0x2b4(31)
    lwz 0, 0x90(31)
    srwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_801C09C8
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
L_801C09C8:
    .4byte 0xC0A2BD90 # lfs f5, lbl_8053ED30@sda21(r0)
    .4byte 0xC082BDE0 # lfs f4, lbl_8053ED80@sda21(r0)
    stfs 5, 0x80(31)
    .4byte 0xC062BDE4 # lfs f3, lbl_8053ED84@sda21(r0)
    stfs 5, 0x84(31)
    .4byte 0xC042BDE8 # lfs f2, lbl_8053ED88@sda21(r0)
    stfs 4, 0x88(31)
    .4byte 0xC022BDEC # lfs f1, lbl_8053ED8C@sda21(r0)
    stfs 4, 0x8c(31)
    .4byte 0xC002BDB8 # lfs f0, lbl_8053ED58@sda21(r0)
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820020 # beq .L_801C0A28
    stfs 5, 0x70(31)
    li 0, 0x0
    stfs 5, 0x74(31)
    stfs 4, 0x78(31)
    stfs 4, 0x7c(31)
    stw 0, 0xb0(31)
    .4byte 0x48000030 # b .L_801C0A54
L_801C0A28:
    lfs 0, 0x60(31)
    lis 3, 0x5
    addi 0, 3, 0x202
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stw 0, 0xb0(31)
L_801C0A54:
    li 0, 0x2
    li 4, 0x1
    stw 0, 0x98(31)
    li 0, 0x0
    .4byte 0xC002BD90 # lfs f0, lbl_8053ED30@sda21(r0)
    li 3, 0x37
    lwz 5, 0x230(31)
    ori 5, 5, 0x20
    stw 5, 0x230(31)
    stb 4, 0x194(31)
    stfs 0, 0x14(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x6
    .4byte 0xC002BD94 # lfs f0, lbl_8053ED34@sda21(r0)
    stw 0, 0x250(31)
    addi 3, 31, 0x270
    .4byte 0x388D8568 # li r4, lbl_8053A128@sda21
    li 5, 0x2
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

