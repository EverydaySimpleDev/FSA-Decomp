.section extab, "a"
.balign 4
.global etb_80009F90
etb_80009F90:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009F90, 8

.section extabindex, "a"
.balign 4
.global eti_80017AA0
eti_80017AA0:
    .4byte fn_8020F318
    .4byte 0x0000015C
    .4byte etb_80009F90
.size eti_80017AA0, 12

.text
.balign 4
.global fn_8020F318

# fn_8020F318(this) - FLOR's real setParams(). Calls the base
# fn_801D0ED0, then if bit 31 of this->0x90 is set: sets flag bit
# 0x2000 in this->0x230 and computes a spawn X/Z offset
# (this->0x2a8/0x2ac) from two 5-bit sub-fields of this->0x90 via the
# classic `0x4330....` int-to-double conversion trick combined with
# constants lbl_8053FA88/FA40 - a real "placement-data offset" calc.
#
# Overrides the standard scale/offset constant pairs (FLOR's own
# lbl_8053FA28/FA30), this->0xb0=0x50303, this->0x98=2, flag bits
# 0x380 in this->0x230, a 1000-frame timer (this->0x108, copied to
# 0x244), capability byte this->0x194=1, draw mode fields
# (0x248/0x24c=0), a PRNG-jittered countdown at this->0x250 via the
# confirmed fn_801CD664+0x3c. Registers the inherited "timed-cue
# lookup table" component at this->0x270 with FLOR's own 7-sequence
# data table (lbl_804A5FE8) and activates sequence 0.
fn_8020F318:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820058 # beq .L_8020F390
    lwz 3, 0x230(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    ori 3, 3, 0x2000
    .4byte 0xC842CAE8 # lfd f2, lbl_8053FA88@sda21(r0)
    stw 3, 0x230(31)
    .4byte 0xC062CAA0 # lfs f3, lbl_8053FA40@sda21(r0)
    lwz 3, 0x90(31)
    stw 0, 0x8(1)
    rlwinm 0, 3, 19, 23, 28
    rlwinm 3, 3, 27, 23, 28
    stw 0, 0x14(1)
    stw 3, 0xc(1)
    lfd 0, 0x10(1)
    lfd 1, 0x8(1)
    fsubs 0, 0, 2
    fsubs 1, 1, 2
    fadds 0, 3, 0
    fadds 1, 3, 1
    stfs 0, 0x2a8(31)
    stfs 1, 0x2ac(31)
L_8020F390:
    .4byte 0xC042CA88 # lfs f2, lbl_8053FA28@sda21(r0)
    lis 3, 0x5
    .4byte 0xC022CA90 # lfs f1, lbl_8053FA30@sda21(r0)
    addi 7, 3, 0x303
    stfs 2, 0x60(31)
    li 6, 0x2
    li 5, 0x3e8
    li 4, 0x1
    stfs 2, 0x64(31)
    li 0, 0x0
    li 3, 0x3d
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
    stw 7, 0xb0(31)
    stw 6, 0x98(31)
    lwz 6, 0x230(31)
    ori 6, 6, 0x380
    stw 6, 0x230(31)
    stw 5, 0x108(31)
    lwz 5, 0x108(31)
    stw 5, 0x244(31)
    stb 4, 0x194(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x3c
    lis 3, lbl_804A5FE8@ha
    stw 0, 0x250(31)
    addi 4, 3, lbl_804A5FE8@l
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    addi 3, 31, 0x270
    li 5, 0x7
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

