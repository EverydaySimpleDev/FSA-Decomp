.section extab, "a"
.balign 4
.global etb_8000A138
etb_8000A138:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A138, 8

.section extabindex, "a"
.balign 4
.global eti_80017D1C
eti_80017D1C:
    .4byte fn_80213EFC
    .4byte 0x000000E8
    .4byte etb_8000A138
.size eti_80017D1C, 12

.text
.balign 4
.global fn_80213EFC

# fn_80213EFC(this) - SLEF's real setParams(). Calls the base
# fn_801D0ED0, overrides the standard scale/offset constant pairs
# with SLEF's own (lbl_8053FB84/88/80), this->0xb0=0, this->0x98=2,
# flag bits 0x380, a 1000-frame timer (this->0x108, copied to 0x244),
# capability byte this->0x194=1, draw mode fields (0x248/0x24c=0), a
# fixed -1 at this->0x250. Registers the inherited "timed-cue lookup
# table" component at this->0x270 with a TINY 1-sequence data table
# (`lbl_8053A180`, small enough to be SDA-addressed directly rather
# than via lis+addi - the smallest sequence table seen this session)
# and activates sequence 0 - otherwise a fully standard setParams.
fn_80213EFC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC062CBE4 # lfs f3, lbl_8053FB84@sda21(r0)
    li 9, 0x0
    .4byte 0xC042CBE8 # lfs f2, lbl_8053FB88@sda21(r0)
    li 8, 0x2
    stfs 3, 0x60(31)
    li 7, 0x3e8
    li 6, 0x1
    li 0, -0x1
    stfs 3, 0x64(31)
    addi 3, 31, 0x270
    .4byte 0xC002CBE0 # lfs f0, lbl_8053FB80@sda21(r0)
    .4byte 0x388D85C0 # li r4, lbl_8053A180@sda21
    stfs 2, 0x68(31)
    li 5, 0x1
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
    stw 8, 0x98(31)
    lwz 8, 0x230(31)
    ori 8, 8, 0x380
    stw 8, 0x230(31)
    stw 7, 0x108(31)
    lwz 7, 0x108(31)
    stw 7, 0x244(31)
    stb 6, 0x194(31)
    stw 9, 0x248(31)
    stw 9, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

