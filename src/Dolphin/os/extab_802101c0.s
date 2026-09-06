.section extab, "a"
.balign 4
.global etb_80009FF0
etb_80009FF0:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_80009FF0, 8

.section extabindex, "a"
.balign 4
.global eti_80017B30
eti_80017B30:
    .4byte fn_802101C0
    .4byte 0x00000154
    .4byte etb_80009FF0
.size eti_80017B30, 12

.text
.balign 4
.global fn_802101C0

# fn_802101C0(this) - IBBM's real setParams() - dense, survey-level
# for several new helpers. Calls the base fn_801D0ED0, extracts a
# 2-bit variant into this->0x98, a 5-bit field into this->0x2ac, and
# picks one of two 16-bit "spawn code" constants (0x1a8 or 0x1c1,
# gated by a 1-bit flag) into this->0x2b0. Calls
# fn_80210990(this, this->0x98, this+0x60) (new) - likely per-variant
# physical/model-bounds init into the this+0x60 sub-buffer.
#
# Overrides the standard scale/offset constant pairs (IBBM's own
# lbl_8053FAB0/B4/A4), this->0xb0=0x40004, flag bits 0x380, a
# 1000-frame timer (this->0x108, copied to 0x244), draw mode fields
# (0x248/0x24c=0), a fixed -1 at this->0x250. Looks up a GLOBAL table
# (lbl_8053AED0) and calls fn_8043D67C(that, this->0x2b0) (new, high
# `0x8043xxxx` address - likely a shared game-data/config-table
# lookup keyed by the spawn code chosen above).
#
# Computes a mount/socket position via fn_80210AF8(this->0x98) and
# fn_80210B34(this->0x98) (both new, return floats) blended with the
# actor's own position fields (this->0xc/0x10/0x54/0x58), then creates
# a persistent sound/effect handle via the CONFIRMED fn_8013CC50 at
# that computed position, storing the handle to this->0x2b4 - the
# SAME field the dtor releases (see extab_80210314.s).
fn_802101C0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    li 3, 0x1a8
    clrlwi 0, 0, 30
    stw 0, 0x98(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 25
    stw 0, 0x2ac(31)
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820008 # beq .L_8021020C
    li 3, 0x1c1
L_8021020C:
    stw 3, 0x2b0(31)
    mr 3, 31
    addi 5, 31, 0x60
    lwz 4, 0x98(31)
    bl fn_80210990
    .4byte 0xC002CB10 # lfs f0, lbl_8053FAB0@sda21(r0)
    lis 3, 0x4
    .4byte 0xC022CB14 # lfs f1, lbl_8053FAB4@sda21(r0)
    addi 7, 3, 0x4
    stfs 0, 0x80(31)
    li 4, 0x3e8
    li 3, 0x0
    li 0, -0x1
    stfs 0, 0x84(31)
    li 5, 0x0
    .4byte 0xC002CB04 # lfs f0, lbl_8053FAA4@sda21(r0)
    li 6, 0x0
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 7, 0xb0(31)
    lwz 7, 0x230(31)
    ori 7, 7, 0x380
    stw 7, 0x230(31)
    stw 4, 0x108(31)
    lwz 4, 0x108(31)
    stw 4, 0x244(31)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lwz 4, 0x2b0(31)
    bl fn_8043D67C
    lwz 3, 0x98(31)
    bl fn_80210AF8
    lfs 2, 0x58(31)
    lfs 0, 0x10(31)
    lwz 3, 0x98(31)
    fmadds 31, 2, 1, 0
    bl fn_80210B34
    lfs 3, 0x54(31)
    addi 4, 1, 0x8
    lfs 2, 0xc(31)
    li 5, 0x260
    .4byte 0xC002CB04 # lfs f0, lbl_8053FAA4@sda21(r0)
    li 6, 0x0
    fmadds 2, 3, 1, 2
    stfs 31, 0xc(1)
    .4byte 0xC022CB10 # lfs f1, lbl_8053FAB0@sda21(r0)
    li 7, 0x2
    stfs 0, 0x10(1)
    li 8, 0x0
    stfs 2, 0x8(1)
    li 9, 0x0
    li 10, 0x1
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2b4(31)
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

