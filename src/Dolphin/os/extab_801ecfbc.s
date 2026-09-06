.section extab, "a"
.balign 4
.global etb_80008CC8
etb_80008CC8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008CC8, 8

.section extabindex, "a"
.balign 4
.global eti_80016324
eti_80016324:
    .4byte fn_801ECFBC
    .4byte 0x000000F0
    .4byte etb_80008CC8
.size eti_80016324, 12

.text
.balign 4
.global fn_801ECFBC

# fn_801ECFBC(this) - HRMN's real setParams(). Calls the base
# fn_801D0ED0, extracts a 5-bit field from this->0x90 into this->0x2ac
# (variant selector), overrides the standard scale/offset constant
# pairs with HRMN's own (lbl_8053F6B8/C4/C0), sets this->0xb0=0,
# this->0x98=2, flag bits 0x380 in this->0x230, a 1000-frame timer
# (this->0x108, copied to 0x244), draw mode fields (0x248/0x24c=0),
# a PRNG-jittered countdown at this->0x250. Registers the inherited
# "timed-cue lookup table" component at this->0x270 with HRMN's own
# 4-sequence data table (lbl_804A5620) and activates the sequence
# keyed by this->0x98 (mode 2) - otherwise a standard setParams with
# no unusual behavior beyond the singleton identity established in
# the constructor/dtor.
fn_801ECFBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    lis 3, lbl_804A5620@ha
    addi 4, 3, lbl_804A5620@l
    .4byte 0xC062C718 # lfs f3, lbl_8053F6B8@sda21(r0)
    extrwi 0, 0, 5, 5
    .4byte 0xC042C724 # lfs f2, lbl_8053F6C4@sda21(r0)
    stw 0, 0x2ac(31)
    li 8, 0x0
    li 7, 0x2
    li 6, 0x3e8
    stfs 3, 0x60(31)
    li 0, -0x1
    .4byte 0xC002C720 # lfs f0, lbl_8053F6C0@sda21(r0)
    addi 3, 31, 0x270
    stfs 3, 0x64(31)
    li 5, 0x4
    stfs 2, 0x68(31)
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
    stw 8, 0xb0(31)
    stw 7, 0x98(31)
    lwz 7, 0x230(31)
    ori 7, 7, 0x380
    stw 7, 0x230(31)
    stw 6, 0x108(31)
    lwz 6, 0x108(31)
    stw 6, 0x244(31)
    stw 8, 0x248(31)
    stw 8, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

