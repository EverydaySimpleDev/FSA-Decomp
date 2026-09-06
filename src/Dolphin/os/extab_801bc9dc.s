.section extab, "a"
.balign 4
.global etb_80007E24
etb_80007E24:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007E24, 8

.section extabindex, "a"
.balign 4
.global eti_80014EB4
eti_80014EB4:
    .4byte fn_801BC9DC
    .4byte 0x00000264
    .4byte etb_80007E24
.size eti_80014EB4, 12

.text
.balign 4
.global fn_801BC9DC

# fn_801BC9DC(this) - "FALL"'s real setParams() - dense, survey-level
# for some sub-steps. Calls the base fn_801D0ED0, then extracts a
# 5-bit "type" field from this->0x90: if >=2, sets flag bit 0x4000 in
# this->0x230 (an alternate-behavior mode). The field's low bit is
# stored to this->0x2a8 (used later to pick between two draw-mode/
# countdown variants). Calls fn_801BCD70(this, this->0x90) - a new
# per-actor helper, not yet decompiled, likely computing an initial
# orientation/position-table index from the spawn param.
#
# Computes this->0x2ac (a target-slot index) either directly from
# this->0x4 (owner ID, when flag bit 17 is set - an "attached to
# owner" mode) or from a 3-bit sub-field of this->0x90 (otherwise,
# +7 offset if nonzero). When NOT in the owner-attached mode, computes
# a SPAWN OFFSET position (this->0x2b0/0x2b4) - either from a default
# position pair fetched via GetRoomConfigRecord (offset 0xcc/0xdc into its
# return value depending on this->0x2ac>=8 - the SAME ambiguous helper
# used elsewhere, see project_fsa_shadow_marker_system_and_shared_draw.md's
# open question about its exact signature) or from a this->0x2ac-indexed
# table, combined with the standard int-to-float frame/timestamp
# conversion trick (the `0x4330....` double-bias idiom) - consistent
# with FALL needing a computed drop/spawn coordinate (matching a
# falling-hazard actor that needs to know where to reappear).
#
# Overrides the standard scale/offset constant pairs (FALL's own
# lbl_8053EC08/EC68), this->0x98=2, flag bit 0x100 in this->0x230,
# capability byte 0x194=1. Branches on this->0x2a8 (the earlier
# extracted bit) between TWO draw-mode/countdown variants: mode=0 +
# jitter-base 0x3c, or mode=9 + jitter-base 0xb4 (both via the
# confirmed fn_801CD664). Registers the inherited "timed-cue lookup
# table" component at this->0x270 with FALL's own 5-sequence data
# table (lbl_804A3E30). Finally, based on whether the chosen draw mode
# falls in a specific numeric range (4/5/9-ish), sets this->0xb0 to
# one of two flag-word constants - the same "per-variant AI flag
# split" pattern seen in ZORA's LTZR branch, here keyed by draw-mode
# instead of a spawn 4CC tag.
fn_801BC9DC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi 3, 0, 27
    cmplwi 3, 0x2
    .4byte 0x41800010 # blt .L_801BCA14
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
L_801BCA14:
    clrlwi 0, 3, 31
    addi 3, 31, 0x2c8
    stw 0, 0x2a8(31)
    lwz 4, 0x90(31)
    bl fn_801BCD70
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820010 # beq .L_801BCA40
    lwz 0, 0x4(31)
    stw 0, 0x2ac(31)
    .4byte 0x48000024 # b .L_801BCA60
L_801BCA40:
    lwz 0, 0x90(31)
    extrwi 0, 0, 3, 5
    stw 0, 0x2ac(31)
    lwz 3, 0x2ac(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_801BCA60
    addi 0, 3, 0x7
    stw 0, 0x2ac(31)
L_801BCA60:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820088 # bne .L_801BCAF0
    .4byte 0xC082BC6C # lfs f4, lbl_8053EC0C@sda21(r0)
    lwz 30, 0x2ac(31)
    fmr 5, 4
    cmpwi 30, 0x0
    .4byte 0x40820024 # bne .L_801BCAA0
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801BCA94
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801BCA98
L_801BCA94:
    addi 3, 3, 0xdc
L_801BCA98:
    lfs 4, 0x0(3)
    lfs 5, 0x4(3)
L_801BCAA0:
    lwz 4, 0x90(31)
    lis 3, 0x4330
    stw 3, 0x10(1)
    rlwinm 0, 4, 19, 23, 28
    rlwinm 4, 4, 27, 23, 28
    stw 0, 0x14(1)
    .4byte 0xC842BCC0 # lfd f2, lbl_8053EC60@sda21(r0)
    lfd 0, 0x10(1)
    stw 4, 0xc(1)
    fsubs 0, 0, 2
    .4byte 0xC062BC9C # lfs f3, lbl_8053EC3C@sda21(r0)
    stw 3, 0x8(1)
    lfd 1, 0x8(1)
    fadds 0, 0, 4
    fsubs 1, 1, 2
    fadds 0, 3, 0
    fadds 1, 1, 5
    stfs 0, 0x2b0(31)
    fadds 0, 3, 1
    stfs 0, 0x2b4(31)
L_801BCAF0:
    .4byte 0xC042BC68 # lfs f2, lbl_8053EC08@sda21(r0)
    li 3, 0x2
    .4byte 0xC022BCC8 # lfs f1, lbl_8053EC68@sda21(r0)
    li 0, 0x1
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 3, 0x98(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x100
    stw 3, 0x230(31)
    stb 0, 0x194(31)
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801BCB84
    li 0, 0x0
    li 3, 0x79
    stw 0, 0x248(31)
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    stw 0, 0x250(31)
    stfs 0, 0x14(31)
    .4byte 0x4800001C # b .L_801BCB9C
L_801BCB84:
    li 0, 0x9
    li 3, 0xb5
    stw 0, 0x248(31)
    bl fn_801CD664
    addi 0, 3, 0xb4
    stw 0, 0x250(31)
L_801BCB9C:
    li 0, 0x0
    lis 3, lbl_804A3E30@ha
    stw 0, 0x24c(31)
    addi 4, 3, lbl_804A3E30@l
    .4byte 0xC002BC6C # lfs f0, lbl_8053EC0C@sda21(r0)
    addi 3, 31, 0x270
    li 5, 0x5
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x5
    .4byte 0x41820020 # beq .L_801BCC04
    .4byte 0x40800010 # bge .L_801BCBF8
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_801BCC00
    .4byte 0x48000010 # b .L_801BCC04
L_801BCBF8:
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_801BCC04
L_801BCC00:
    li 3, 0x1
L_801BCC04:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801BCC1C
    lis 3, 0x4
    addi 0, 3, 0x4
    stw 0, 0xb0(31)
    .4byte 0x48000010 # b .L_801BCC28
L_801BCC1C:
    lis 3, 0x4
    addi 0, 3, 0x1101
    stw 0, 0xb0(31)
L_801BCC28:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

