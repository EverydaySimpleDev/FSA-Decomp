.section extab, "a"
.balign 4
.global etb_80009E20
etb_80009E20:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009E20, 8

.section extabindex, "a"
.balign 4
.global eti_80017878
eti_80017878:
    .4byte fn_8020B0B8
    .4byte 0x00000078
    .4byte etb_80009E20
.size eti_80017878, 12

# fn_8020B0B8 - "FOSL" real constructor. Calls the SHARED
# intermediate base class ctor fn_801D0F40 (not the raw base Actor
# ctor directly - see extab_801d0f40.s and
# project_fsa_dispatcher_mass_landing.md for what that base sets up,
# including an embedded blend-timer at +0x270), installs its OWN
# vtable lbl_804A5D60, plus its own direct inline field defaults
# past the shared base's fields: 0x2a8=-0x1, 0x2ac=0x0, 0x2b0=0x1, 0x2b1=0x0, 0x2b4=float from lbl_8053F964, 0x2b8=float from lbl_8053F964, 0x2bc=float from lbl_8053F964, 0x2c0=float from lbl_8053F964, 0x2c4=float from lbl_8053F964, 0x2c8=float from lbl_8053F964, 0x2cc=float from lbl_8053F964.
.text
.balign 4
.global fn_8020B0B8

fn_8020B0B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A5D60@ha
    li 5, -0x1
    addi 0, 3, lbl_804A5D60@l
    li 4, 0x0
    stw 0, 0x0(31)
    li 0, 0x1
    .4byte 0xC002C9C4 # lfs f0, lbl_8053F964@sda21(r0)
    mr 3, 31
    stw 5, 0x2a8(31)
    stw 4, 0x2ac(31)
    stb 0, 0x2b0(31)
    stb 4, 0x2b1(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2c0(31)
    stfs 0, 0x2c4(31)
    stfs 0, 0x2c8(31)
    stfs 0, 0x2cc(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

