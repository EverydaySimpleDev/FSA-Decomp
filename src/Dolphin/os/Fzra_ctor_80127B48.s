.section extab, "a"
.balign 4
.global etb_800064E8
etb_800064E8:
    .4byte 0x080A0000
    .4byte 0x00000090
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_800064E8, 28

.section extabindex, "a"
.balign 4
.global eti_80012BC8
eti_80012BC8:
    .4byte fn_80127B48
    .4byte 0x000000B4
    .4byte etb_800064E8
.size eti_80012BC8, 12

# fn_80127B48 - "FZRA" real constructor. Attempted real-C++ promotion
# (Phase 4): matched retail except a multi-float-load scheduling wall
# MWCC wouldn't follow via source reordering (multiple tried variants) -
# same class of issue as Snwl_ctor_8012E780.s. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_80127B48

fn_80127B48:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049E424@ha
    li 5, 0x0
    addi 0, 3, lbl_8049E424@l
    li 4, -0x1
    stw 0, 0x0(31)
    li 0, 0xff
    .4byte 0xC0229B08 # lfs f1, lbl_8053CAA8@sda21(r0)
    addi 3, 31, 0x27c
    stw 5, 0x230(31)
    .4byte 0xC0029B04 # lfs f0, lbl_8053CAA4@sda21(r0)
    stw 5, 0x234(31)
    stw 5, 0x238(31)
    stw 4, 0x23c(31)
    stw 5, 0x240(31)
    stw 5, 0x244(31)
    stw 5, 0x248(31)
    stw 5, 0x24c(31)
    stw 5, 0x250(31)
    stw 0, 0x254(31)
    stb 5, 0x258(31)
    stb 5, 0x259(31)
    stfs 1, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 1, 0x264(31)
    stfs 1, 0x268(31)
    stfs 1, 0x26c(31)
    stfs 1, 0x270(31)
    stfs 1, 0x274(31)
    stfs 1, 0x278(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x37c(31)
    stw 0, 0x380(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
