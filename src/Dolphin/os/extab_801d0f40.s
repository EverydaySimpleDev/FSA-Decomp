.section extab, "a"
.balign 4
.global etb_80008488
etb_80008488:
    .4byte 0x080A0000
    .4byte 0x00000080
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_80008488, 28

.section extabindex, "a"
.balign 4
.global eti_800157F0
eti_800157F0:
    .4byte fn_801D0F40
    .4byte 0x00000098
    .4byte etb_80008488
.size eti_800157F0, 12

# fn_801D0F40 - a shared INTERMEDIATE Actor-derived base class constructor
# (not a leaf actor itself, no 4-char dispatch code of its own - it's the
# single `bl` target for 22 different actor constructors found by the
# fn_801F9484 dispatcher sweep, see project_fsa_dispatcher_mass_landing.md
# and reference_fsa_full_dispatch_sweep.md - among them ZORA, NAVI, ROPE,
# FALL, TINK/TINB, FOSL/FOBR, RUSA, ARIJ, SLEF - a mix of creatures/NPCs
# and small physics-like objects, not an obvious single theme beyond
# "needs animation-blend support").
#
# Attempted real-C++ promotion (Phase 4): matched retail except a
# multi-float-load scheduling wall MWCC wouldn't follow via source
# reordering (multiple tried variants) - same class of issue as
# Snwl_ctor_8012E780.s. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_801D0F40

fn_801D0F40:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_804A4808@ha
    li 4, 0x0
    addi 0, 3, lbl_804A4808@l
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    stw 0, 0x0(31)
    li 0, 0x8
    .4byte 0xC022C030 # lfs f1, lbl_8053EFD0@sda21(r0)
    addi 3, 31, 0x270
    stw 4, 0x230(31)
    .4byte 0xC002C074 # lfs f0, lbl_8053F014@sda21(r0)
    stfs 2, 0x234(31)
    stfs 2, 0x238(31)
    stfs 2, 0x23c(31)
    stb 4, 0x240(31)
    stw 0, 0x244(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stfs 2, 0x254(31)
    stfs 2, 0x258(31)
    stfs 1, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 2, 0x264(31)
    stfs 2, 0x268(31)
    stfs 2, 0x26c(31)
    bl fn_801D267C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
