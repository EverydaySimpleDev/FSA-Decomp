.section extab, "a"
.balign 4
.global etb_80008990
etb_80008990:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008990, 8

.section extabindex, "a"
.balign 4
.global eti_80015E8C
eti_80015E8C:
    .4byte fn_801E22A4
    .4byte 0x00000078
    .4byte etb_80008990
.size eti_80015E8C, 12

# fn_801E22A4 - "TINK" real constructor. Calls the SHARED
# intermediate base class ctor fn_801D0F40 (not the raw base Actor
# ctor directly - see extab_801d0f40.s and
# project_fsa_dispatcher_mass_landing.md for what that base sets up,
# including an embedded blend-timer at +0x270), installs its OWN
# vtable lbl_804A51E4, plus its own direct inline field defaults
# past the shared base's fields: 0x2a8=-0x1, 0x2ac=-0x1, 0x2b0=-0x1, 0x2b4=-0x1, 0x2b8=-0x1, 0x2bc=-0x1, 0x2c0=0x0, 0x2c4=float from lbl_8053F480, 0x2c8=float from lbl_8053F480, 0x2cc=0x0, 0x2ce=0x0, 0x2d0=-0x1.
.text
.balign 4
.global fn_801E22A4

fn_801E22A4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A51E4@ha
    li 4, -0x1
    addi 3, 3, lbl_804A51E4@l
    li 0, 0x0
    stw 3, 0x0(31)
    mr 3, 31
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 4, 0x2a8(31)
    stw 4, 0x2ac(31)
    stw 4, 0x2b0(31)
    stw 4, 0x2b4(31)
    stw 4, 0x2b8(31)
    stw 4, 0x2bc(31)
    stw 0, 0x2c0(31)
    stfs 0, 0x2c4(31)
    stfs 0, 0x2c8(31)
    sth 0, 0x2cc(31)
    sth 0, 0x2ce(31)
    stw 4, 0x2d0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

