.section extab, "a"
.balign 4
.global etb_8000A610
etb_8000A610:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A610, 8

.section extabindex, "a"
.balign 4
.global eti_80018424
eti_80018424:
    .4byte fn_802217C8
    .4byte 0x00000100
    .4byte etb_8000A610
.size eti_80018424, 12

.text
.balign 4
.global fn_802217C8

# fn_802217C8(this) - the shared base setParams() for the lbl_804A6A00
# lineage (see extab_802218c8.s / dtor_80220CA0). Calls fn_801D0ED0
# first, then unpacks THREE bitfields out of a "spawn param" word at
# this->0x90 (a recurring field also used for pose/sub-type selection
# in OKTA/TINK) into this->0x2a8 (2 bits)/0x2ac (2 bits)/0x2ad (8
# bits) - likely direction/orientation/variant selectors read from
# room placement data. Overrides the standard scale/offset constant
# pairs (this class's own lbl_8053FE94/98/74/84 - distinct from every
# other actor's constants this session), a 1000-frame timer
# (this->0x108, copied to 0x244), capability byte (this->0x194=1),
# copies spawn position offsets (this->0xc/0x10) into this->0x2b0/0x2b4,
# and registers the inherited "timed-cue lookup table" component at
# this->0x270 with THIS class's own 28-sequence data table
# (lbl_804A6990).
fn_802217C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    lis 3, lbl_804A6990@ha
    addi 4, 3, lbl_804A6990@l
    .4byte 0xC062CEF4 # lfs f3, lbl_8053FE94@sda21(r0)
    extrwi 0, 0, 2, 26
    .4byte 0xC042CEF8 # lfs f2, lbl_8053FE98@sda21(r0)
    stw 0, 0x2a8(31)
    li 7, 0x0
    .4byte 0xC022CED4 # lfs f1, lbl_8053FE74@sda21(r0)
    li 6, 0x3e8
    lwz 3, 0x90(31)
    li 0, 0x1
    .4byte 0xC002CEE4 # lfs f0, lbl_8053FE84@sda21(r0)
    extrwi 5, 3, 2, 22
    addi 3, 31, 0x270
    stb 5, 0x2ac(31)
    li 5, 0x1c
    lwz 8, 0x90(31)
    extrwi 8, 8, 8, 12
    stb 8, 0x2ad(31)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stw 7, 0xb0(31)
    lwz 7, 0x230(31)
    ori 7, 7, 0x300
    stw 7, 0x230(31)
    stw 6, 0x108(31)
    lwz 6, 0x108(31)
    stw 6, 0x244(31)
    stb 0, 0x194(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2b0(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2b4(31)
    bl fn_801D2608
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

