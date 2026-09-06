.section extab, "a"
.balign 4
.global etb_800088B8
etb_800088B8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800088B8, 8

.section extabindex, "a"
.balign 4
.global eti_80015D48
eti_80015D48:
    .4byte fn_801DCDB4
    .4byte 0x000000E8
    .4byte etb_800088B8
.size eti_80015D48, 12

# fn_801DCDB4(this) - likely this new class's setParams()/spawn-config
# (NOT confirmed as the raw constructor - like fn_801DBCEC/fn_801DC89C
# earlier this session, it calls fn_801D0ED0(this) but does not chain to
# the base constructor fn_801D0F40 and does not set this->vtable).
#
# Initializes the usual bounding-box-shaped float fields (this->0x60-0x8c),
# this->0xb0=0, this->0x98=this->0x114=2, ORs 0x300 into this->0x230,
# this->0x194(byte)=1. Then spawns 2 attached effect handles via the
# confirmed fn_8013CC50(this->0x4, this+0xc, 0x256/0x257, ...) into
# this->0x2a8/0x2ac - CONFIRMS these are the same 2 handle fields
# fn_801DCC98 (landed just before this) keeps position-synced every frame,
# tying both functions to the same class.
.text
.balign 4
.global fn_801DCDB4

fn_801DCDB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC002C3D8 # lfs f0, lbl_8053F378@sda21(r0)
    li 3, 0x0
    .4byte 0xC042C3DC # lfs f2, lbl_8053F37C@sda21(r0)
    li 11, 0x2
    stfs 0, 0x60(31)
    li 0, 0x1
    .4byte 0xC022C3E0 # lfs f1, lbl_8053F380@sda21(r0)
    addi 4, 31, 0xc
    stfs 0, 0x64(31)
    li 5, 0x256
    .4byte 0xC002C3E4 # lfs f0, lbl_8053F384@sda21(r0)
    li 6, 0x0
    stfs 2, 0x68(31)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x6c(31)
    li 10, 0x1
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 3, 0xb0(31)
    stw 11, 0x98(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x300
    stw 3, 0x230(31)
    stw 11, 0x114(31)
    stb 0, 0x194(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2a8(31)
    addi 4, 31, 0xc
    .4byte 0xC022C3E0 # lfs f1, lbl_8053F380@sda21(r0)
    li 5, 0x257
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2ac(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

