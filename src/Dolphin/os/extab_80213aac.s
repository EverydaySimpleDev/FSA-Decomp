.section extab, "a"
.balign 4
.global etb_8000A110
etb_8000A110:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A110, 8

.section extabindex, "a"
.balign 4
.global eti_80017CE0
eti_80017CE0:
    .4byte fn_80213AAC
    .4byte 0x000000F4
    .4byte etb_8000A110
.size eti_80017CE0, 12

.text
.balign 4
.global fn_80213AAC

# fn_80213AAC(this) - ARIJ's real setParams(). Calls the base
# fn_801D0ED0, overrides the standard scale/offset constant pairs
# with ARIJ's own (lbl_8053FB48/58/60/5C/78/54), this->0xb0=0,
# this->0x98=2, flag bit 0x80 in this->0x230. Adjusts the spawn Y
# position (this->0x10 -= a constant, lbl_8053FB78 - a "drop to
# ground/floor" offset) and caches the (adjusted) spawn position into
# this->0x24/0x28/0x2c (a plain "remembered spawn position" field -
# NOT the position-trail-predictor's 0x32c triple, since ARIJ derives
# from the plain lbl_804A4808 base, not that lineage).
#
# Draw mode fields (0x248/0x24c=0), a fixed -1 at this->0x250, scale
# 0x254/0x258=own constant. Registers the inherited "timed-cue lookup
# table" component at this->0x270 with ARIJ's own 4-sequence data
# table (lbl_804A6330) and activates sequence 1 (mode 2) - unlike
# most other actors this session which activate sequence 0.
fn_80213AAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC0A2CBA8 # lfs f5, lbl_8053FB48@sda21(r0)
    lis 3, lbl_804A6330@ha
    addi 4, 3, lbl_804A6330@l
    .4byte 0xC082CBB8 # lfs f4, lbl_8053FB58@sda21(r0)
    stfs 5, 0x60(31)
    li 7, 0x0
    .4byte 0xC062CBC0 # lfs f3, lbl_8053FB60@sda21(r0)
    li 6, 0x2
    stfs 5, 0x64(31)
    li 0, -0x1
    .4byte 0xC042CBBC # lfs f2, lbl_8053FB5C@sda21(r0)
    addi 3, 31, 0x270
    stfs 4, 0x68(31)
    li 5, 0x4
    .4byte 0xC022CBD8 # lfs f1, lbl_8053FB78@sda21(r0)
    stfs 4, 0x6c(31)
    .4byte 0xC002CBB4 # lfs f0, lbl_8053FB54@sda21(r0)
    stfs 3, 0x70(31)
    stfs 3, 0x74(31)
    stfs 2, 0x78(31)
    stfs 2, 0x7c(31)
    stfs 5, 0x80(31)
    stfs 5, 0x84(31)
    stfs 4, 0x88(31)
    stfs 4, 0x8c(31)
    stw 7, 0xb0(31)
    stw 6, 0x98(31)
    lwz 6, 0x230(31)
    ori 6, 6, 0x80
    stw 6, 0x230(31)
    lfs 2, 0x10(31)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0xc(31)
    stfs 1, 0x24(31)
    lfs 1, 0x10(31)
    stfs 1, 0x28(31)
    lfs 1, 0x14(31)
    stfs 1, 0x2c(31)
    stw 7, 0x248(31)
    stw 7, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x1
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

