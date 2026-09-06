.section extab, "a"
.balign 4
.global etb_80007E34
etb_80007E34:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007E34, 8

.section extabindex, "a"
.balign 4
.global eti_80014ECC
eti_80014ECC:
    .4byte fn_801BCCF0
    .4byte 0x00000080
    .4byte etb_80007E34
.size eti_80014ECC, 12

# fn_801BCCF0 - "FALL" real constructor. Calls the SHARED
# intermediate base class ctor fn_801D0F40 (not the raw base Actor
# ctor directly - see extab_801d0f40.s and
# project_fsa_dispatcher_mass_landing.md for what that base sets up,
# including an embedded blend-timer at +0x270), installs its OWN
# vtable lbl_804A3E44, plus its own direct inline field defaults
# past the shared base's fields: 0x2a8=0x0, 0x2ac=0x0, 0x2b0=float from lbl_8053EC0C, 0x2b4=float from lbl_8053EC0C, 0x2b8=-0x1, 0x2bc=0x0, 0x2c0=0x0, 0x2c4=-0x1, 0x2c8=0x8, 0x2e4=0x0, 0x2e8=0x2, 0x2ec=0x0.
.text
.balign 4
.global fn_801BCCF0

fn_801BCCF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A3E44@ha
    li 6, 0x0
    addi 0, 3, lbl_804A3E44@l
    .4byte 0xC002BC6C # lfs f0, lbl_8053EC0C@sda21(r0)
    stw 0, 0x0(31)
    li 5, -0x1
    li 4, 0x8
    li 0, 0x2
    stw 6, 0x2a8(31)
    mr 3, 31
    stw 6, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    stw 5, 0x2b8(31)
    stw 6, 0x2bc(31)
    stw 6, 0x2c0(31)
    stw 5, 0x2c4(31)
    stw 4, 0x2c8(31)
    stw 6, 0x2e4(31)
    stw 0, 0x2e8(31)
    stw 6, 0x2ec(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

