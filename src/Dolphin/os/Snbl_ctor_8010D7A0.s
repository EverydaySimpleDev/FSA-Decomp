.section extab, "a"
.balign 4
.global etb_80005C6C
etb_80005C6C:
    .4byte 0x080A0000
    .4byte 0x00000080
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_80005C6C, 28

.section extabindex, "a"
.balign 4
.global eti_800120E8
eti_800120E8:
    .4byte fn_8010D7A0
    .4byte 0x000000A8
    .4byte etb_80005C6C
.size eti_800120E8, 12

# fn_8010D7A0 - "SNBL" real constructor. Attempted real-C++ promotion
# (Phase 4): matched retail except a multi-float-load scheduling wall
# MWCC wouldn't follow via source reordering (multiple tried variants) -
# same class of issue as Snwl_ctor_8012E780.s. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_8010D7A0

fn_8010D7A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049D020@ha
    li 4, 0x0
    addi 3, 3, lbl_8049D020@l
    li 0, -0x1
    stw 3, 0x0(31)
    addi 3, 31, 0x274
    .4byte 0xC0229534 # lfs f1, lbl_8053C4D4@sda21(r0)
    sth 4, 0x230(31)
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 0, 0x23c(31)
    stw 4, 0x240(31)
    stw 4, 0x244(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    stw 4, 0x258(31)
    stw 4, 0x25c(31)
    stfs 1, 0x260(31)
    stfs 0, 0x264(31)
    stfs 0, 0x268(31)
    stfs 1, 0x26c(31)
    stfs 1, 0x270(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x374(31)
    stw 0, 0x378(31)
    stw 0, 0x37c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
