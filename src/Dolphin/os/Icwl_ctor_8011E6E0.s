.section extab, "a"
.balign 4
.global etb_80006194
etb_80006194:
    .4byte 0x080A0000
    .4byte 0x00000048
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_80006194, 28

.section extabindex, "a"
.balign 4
.global eti_80012724
eti_80012724:
    .4byte fn_8011E6E0
    .4byte 0x00000068
    .4byte etb_80006194
.size eti_80012724, 12

# fn_8011E6E0 - "ICWL" real constructor. Attempted real-C++ promotion
# (Phase 4): matched retail except a float-load-vs-int-zero-materialize
# scheduling wall MWCC wouldn't follow via source reordering (3 tried
# variants) - same class of issue as Snwl_ctor_8012E780.s. Reverted to
# raw asm; see project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_8011E6E0

fn_8011E6E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049DE18@ha
    li 0, 0x0
    addi 3, 3, lbl_8049DE18@l
    .4byte 0xC002991C # lfs f0, lbl_8053C8BC@sda21(r0)
    stw 3, 0x0(31)
    addi 3, 31, 0x244
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stfs 0, 0x240(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x27c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
