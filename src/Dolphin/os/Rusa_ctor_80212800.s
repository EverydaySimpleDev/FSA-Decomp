.section extab, "a"
.balign 4
.global etb_8000A0A8
etb_8000A0A8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A0A8, 8

.section extabindex, "a"
.balign 4
.global eti_80017C44
eti_80017C44:
    .4byte fn_80212800
    .4byte 0x0000009C
    .4byte etb_8000A0A8
.size eti_80017C44, 12

# fn_80212800 - "RUSA" real constructor. Calls the SHARED
# intermediate base class ctor fn_801D0F40 (not the raw base Actor
# ctor directly - see extab_801d0f40.s and
# project_fsa_dispatcher_mass_landing.md for what that base sets up,
# including an embedded blend-timer at +0x270), installs its OWN
# vtable lbl_804A6270, plus its own direct inline field defaults
# past the shared base's fields: 0x2a8=0x0, 0x2ac=0x0, 0x2b0=0x0, 0x2b4=0x0, 0x2b8=0x0, 0x2bc=0x0, 0x388=-0x1, 0x38c=-0x1, 0x390=float from lbl_8053FAF8, 0x394=float from lbl_8053FAF8, 0x398=float from lbl_8053FAF8, 0x39c=float from lbl_8053FAF8, 0x3a0=float from lbl_8053FAF8, 0x3a4=float from lbl_8053FAF8, 0x3a8=float from lbl_8053FB14, 0x3ac=-0x1, 0x3b0=0x0, 0x2c2=0x0, 0x2c3=0x0, 0x2c1=0x0.
.text
.balign 4
.global fn_80212800

fn_80212800:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A6270@ha
    li 4, 0x0
    addi 3, 3, lbl_804A6270@l
    li 0, -0x1
    stw 3, 0x0(31)
    mr 3, 31
    .4byte 0xC022CB58 # lfs f1, lbl_8053FAF8@sda21(r0)
    stw 4, 0x2a8(31)
    .4byte 0xC002CB74 # lfs f0, lbl_8053FB14@sda21(r0)
    stw 4, 0x2ac(31)
    stw 4, 0x2b0(31)
    stw 4, 0x2b4(31)
    stw 4, 0x2b8(31)
    stb 4, 0x2bc(31)
    stw 0, 0x388(31)
    stw 0, 0x38c(31)
    stfs 1, 0x390(31)
    stfs 1, 0x394(31)
    stfs 1, 0x398(31)
    stfs 1, 0x39c(31)
    stfs 1, 0x3a0(31)
    stfs 1, 0x3a4(31)
    stfs 0, 0x3a8(31)
    stw 0, 0x3ac(31)
    stb 4, 0x3b0(31)
    stb 4, 0x2c2(31)
    stb 4, 0x2c3(31)
    stb 4, 0x2c1(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

