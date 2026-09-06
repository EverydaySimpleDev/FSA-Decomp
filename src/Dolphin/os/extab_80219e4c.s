.section extab, "a"
.balign 4
.global etb_8000A358
etb_8000A358:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A358, 8

.section extabindex, "a"
.balign 4
.global eti_8001804C
eti_8001804C:
    .4byte fn_80219E4C
    .4byte 0x000003E8
    .4byte etb_8000A358
.size eti_8001804C, 12

.text
.balign 4
.global fn_80219E4C

# fn_80219E4C(this) - KEPO's real setParams() - by far the densest
# setParams landed this session (1000 bytes), survey-level for several
# branches. Calls the base fn_801D0ED0, then validates TWO fields of a
# GLOBAL struct (`lbl_80529DEC`, offsets +0x118 in [0,7] and +0x11c in
# [0,3]) - if both are in range, computes a bit-test against the
# CONFIRMED global per-index stats table `lbl_8050EC80` (0xC8-byte
# stride - see project_fsa_tink_actor_progress.md): reads that entry's
# `->0x28` field as a BITMASK and tests a bit position derived from the
# two validated indices - NEW understanding that `lbl_8050EC80`'s
# entries also carry a per-slot bitmask at `+0x28`, not just the
# accumulator field TINK's dtor used.
#
# That boolean is ALSO OR'd with a genuine cross-system check: the
# CONFIRMED per-room direct-bit room-flag reader
# (`GetRoomConfigRecord`+`fn_802D800C`, see
# project_fsa_flag_switch_helpers.md) keyed by `this->0x2b0` - KEPO
# is the FIRST actor this session confirmed reading BOTH the global
# per-index stats table AND a room puzzle-flag to decide its own
# initial state.
#
# From spawn params (`this->0x90`) computes `this->0x2a8` (a byte
# combining a lookup into `lbl_80529DEC` with a fixed offset 0x12b),
# `this->0x2ac` (a clamped float blend against constants), and
# `this->0x2b0` (a 5-bit field, the flag-check key above). Sets a
# flags bit (0x10000-ish) on `this->0x230` when the earlier validity
# check and a spawn-param bit both hold.
#
# Computes a "state" value `this->0x2b4` (0-3) from the combined
# checks above, and maps it (plus 2 more spawn-param-bit cases) into
# `this->0x248` (draw mode 0/1/2/3/6) - 2 of those cases additionally
# call `fn_8021ABC0(this+0x2c8)` (new, acting on the constructor's
# embedded `InitDefaultRecord` record).
#
# Overrides the standard scale/offset constant pairs (KEPO's own),
# this->0xb0=0, this->0x98=2, flag bits 0x380, a 1000-frame timer
# (this->0x108, copied to 0x244), capability byte this->0x194=1, and
# calls the confirmed `fn_801D0E58` (the same "2nd-stage base init"
# ZORA's setParams also calls). Blends a per-owner-type settings value
# (`GetRoomConfigRecord` offset 0xcc/0xdc) against `this->0xc` to conditionally
# set ANOTHER flag bit (0x2000). Draw mode fields (0x24c=0), a fixed
# -1 at this->0x250, registers the inherited "timed-cue lookup table"
# component at this->0x270 with KEPO's own 4-sequence data table
# (lbl_804A6540). Finally, when a specific flag bit is set, converts
# `this->0x2d8` to fixed-point and writes it into the camera manager's
# sub-object (`lbl_8053AB10->0x2c`)->0xc - registering a value with
# the camera/cue system.
fn_80219E4C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    bl fn_801D0ED0
    lis 3, lbl_80529DEC@ha
    addi 31, 3, lbl_80529DEC@l
    lwz 0, 0x118(31)
    lwz 6, 0x11c(31)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80219E8C
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_80219E94
L_80219E8C:
    li 3, 0x0
    .4byte 0x48000054 # b .L_80219EE4
L_80219E94:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_80219EA4
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_80219EAC
L_80219EA4:
    li 3, 0x0
    .4byte 0x4800003C # b .L_80219EE4
L_80219EAC:
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
    srwi 3, 0, 31
L_80219EE4:
    neg 0, 3
    or 0, 0, 3
    srwi 30, 0, 31
    bl GetRoomConfigRecord
    lwz 4, 0x90(29)
    lis 0, 0x4330
    addis 5, 3, 0x1
    stw 0, 0x10(1)
    clrlwi 3, 4, 16
    lbz 4, 0x31f9(5)
    addi 3, 3, 0x12b
    .4byte 0xC842CD08 # lfd f2, lbl_8053FCA8@sda21(r0)
    stw 3, 0x2a8(29)
    neg 3, 4
    or 4, 3, 4
    .4byte 0xC062CCF4 # lfs f3, lbl_8053FC94@sda21(r0)
    lwz 3, 0x90(29)
    srwi 4, 4, 31
    stw 0, 0x8(1)
    extrwi 0, 3, 5, 7
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 0, 0, 2
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 3
    fsel 0, 0, 1, 3
    stfs 0, 0x2ac(29)
    lwz 0, 0x90(29)
    extrwi 0, 0, 5, 2
    stw 0, 0x2b0(29)
    lwz 0, 0x118(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_80219F94
    lwz 0, 0x11c(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80219F94
    lwz 0, 0x90(29)
    srwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_80219F94
    lwz 0, 0x230(29)
    oris 0, 0, 0x1
    stw 0, 0x230(29)
L_80219F94:
    lwz 0, 0x90(29)
    extrwi. 0, 0, 1, 12
    .4byte 0x41820010 # beq .L_80219FAC
    li 0, 0x2
    stw 0, 0x2b4(29)
    .4byte 0x48000054 # b .L_80219FFC
L_80219FAC:
    cmplwi 30, 0x0
    .4byte 0x4082002C # bne .L_80219FDC
    cmplwi 4, 0x0
    .4byte 0x40820024 # bne .L_80219FDC
    lwz 30, 0x2b0(29)
    cmpwi 30, 0x0
    .4byte 0x41820030 # beq .L_80219FF4
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80219FF4
L_80219FDC:
    li 0, 0x1
    stw 0, 0x2b4(29)
    lwz 0, 0x230(29)
    rlwinm 0, 0, 0, 16, 14
    stw 0, 0x230(29)
    .4byte 0x4800000C # b .L_80219FFC
L_80219FF4:
    li 0, 0x0
    stw 0, 0x2b4(29)
L_80219FFC:
    lwz 0, 0x2b4(29)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_8021A018
    .4byte 0x4080001C # bge .L_8021A024
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8021A018
    .4byte 0x48000010 # b .L_8021A024
L_8021A018:
    lwz 0, 0x230(29)
    ori 0, 0, 0x4000
    stw 0, 0x230(29)
L_8021A024:
    lwz 0, 0x2b4(29)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_8021A040
    .4byte 0x40800028 # bge .L_8021A058
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8021A040
    .4byte 0x4800001C # b .L_8021A058
L_8021A040:
    lwz 0, 0x90(29)
    extrwi. 0, 0, 1, 1
    .4byte 0x41820010 # beq .L_8021A058
    lwz 0, 0x230(29)
    ori 0, 0, 0x8000
    stw 0, 0x230(29)
L_8021A058:
    .4byte 0xC022CCFC # lfs f1, lbl_8053FC9C@sda21(r0)
    li 6, 0x0
    .4byte 0xC002CCE4 # lfs f0, lbl_8053FC84@sda21(r0)
    li 5, 0x2
    stfs 1, 0x60(29)
    li 4, 0x3e8
    .4byte 0xC042CCC4 # lfs f2, lbl_8053FC64@sda21(r0)
    li 0, 0x1
    stfs 1, 0x64(29)
    mr 3, 29
    .4byte 0xC022CCD4 # lfs f1, lbl_8053FC74@sda21(r0)
    stfs 0, 0x68(29)
    .4byte 0xC002CD00 # lfs f0, lbl_8053FCA0@sda21(r0)
    stfs 2, 0x6c(29)
    stfs 1, 0x70(29)
    stfs 1, 0x74(29)
    stfs 0, 0x78(29)
    stfs 0, 0x7c(29)
    stfs 1, 0x80(29)
    stfs 1, 0x84(29)
    stfs 0, 0x88(29)
    stfs 0, 0x8c(29)
    stw 6, 0xb0(29)
    stw 5, 0x98(29)
    lwz 5, 0x230(29)
    ori 5, 5, 0x380
    stw 5, 0x230(29)
    stw 4, 0x108(29)
    lwz 4, 0x108(29)
    stw 4, 0x244(29)
    stb 0, 0x194(29)
    bl fn_801D0E58
    .4byte 0xC002CCEC # lfs f0, lbl_8053FC8C@sda21(r0)
    stfs 0, 0x14(29)
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8021A0F8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8021A0FC
L_8021A0F8:
    addi 3, 3, 0xdc
L_8021A0FC:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042CD04 # lfs f2, lbl_8053FCA4@sda21(r0)
    fadds 0, 1, 0
    lfs 1, 0xc(29)
    fmuls 0, 2, 0
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_8021A12C
    lwz 0, 0x230(29)
    ori 0, 0, 0x2000
    stw 0, 0x230(29)
L_8021A12C:
    lwz 0, 0x2b4(29)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8021A188
    .4byte 0x40800014 # bge .L_8021A14C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8021A158
    .4byte 0x40800038 # bge .L_8021A17C
    .4byte 0x48000064 # b .L_8021A1AC
L_8021A14C:
    cmpwi 0, 0x4
    .4byte 0x4080005C # bge .L_8021A1AC
    .4byte 0x48000048 # b .L_8021A19C
L_8021A158:
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820010 # beq .L_8021A170
    li 0, 0x0
    stw 0, 0x248(29)
    .4byte 0x48000040 # b .L_8021A1AC
L_8021A170:
    li 0, 0x2
    stw 0, 0x248(29)
    .4byte 0x48000034 # b .L_8021A1AC
L_8021A17C:
    li 0, 0x3
    stw 0, 0x248(29)
    .4byte 0x48000028 # b .L_8021A1AC
L_8021A188:
    li 0, 0x6
    addi 3, 29, 0x2c8
    stw 0, 0x248(29)
    bl fn_8021ABC0
    .4byte 0x48000014 # b .L_8021A1AC
L_8021A19C:
    li 0, 0x2
    addi 3, 29, 0x2c8
    stw 0, 0x248(29)
    bl fn_8021ABC0
L_8021A1AC:
    li 0, 0x0
    lis 3, lbl_804A6540@ha
    stw 0, 0x24c(29)
    li 0, -0x1
    addi 4, 3, lbl_804A6540@l
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    stw 0, 0x250(29)
    addi 3, 29, 0x270
    li 5, 0x4
    stfs 0, 0x254(29)
    stfs 0, 0x258(29)
    bl fn_801D2608
    addi 3, 29, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820020 # beq .L_8021A218
    lfs 0, 0x2d8(29)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fctiwz 0, 0
    lwz 3, 0x2c(3)
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stb 0, 0xc(3)
L_8021A218:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

