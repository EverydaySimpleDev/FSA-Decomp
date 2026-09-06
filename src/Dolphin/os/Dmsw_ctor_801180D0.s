.section extab, "a"
.balign 4
.global etb_80005F7C
etb_80005F7C:
    .4byte 0x080A0000
    .4byte 0x00000050
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_80005F7C, 28

.section extabindex, "a"
.balign 4
.global eti_80012454
eti_80012454:
    .4byte fn_801180D0
    .4byte 0x00000090
    .4byte etb_80005F7C
.size eti_80012454, 12

# fn_801180D0 - "DMSW" real constructor. Calls the base ctor
# fn_8010E074, installs its own vtable lbl_8049DA0C, sets its own
# field defaults BEFORE the blend-timer: 0x230=0x0, 0x231=0x0, 0x234=0x0, 0x238=-0x1, 0x23c=float from lbl_8053C75C, 0x240=float from lbl_8053C75C. Embeds its OWN
# blend-timer sub-object at +0x250 via the confirmed
# fn_801D267C helper (see extab_801d0f40.s and
# project_fsa_multiple_inheritance_pattern.md - same nested blend-timer
# class used elsewhere). Fields set AFTER the blend-timer: 0x2a8=0x0, 0x288=0x0, 0x298=0x0, 0x28c=0x0, 0x29c=0x0, 0x290=0x0, 0x2a0=0x0, 0x294=0x0, 0x2a4=0x0.
.text
.balign 4
.global fn_801180D0

fn_801180D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049DA0C@ha
    li 4, 0x0
    addi 3, 3, lbl_8049DA0C@l
    li 0, -0x1
    stw 3, 0x0(31)
    addi 3, 31, 0x250
    .4byte 0xC00297BC # lfs f0, lbl_8053C75C@sda21(r0)
    stb 4, 0x230(31)
    stb 4, 0x231(31)
    stw 4, 0x234(31)
    stw 0, 0x238(31)
    stfs 0, 0x23c(31)
    stfs 0, 0x240(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x2a8(31)
    stw 0, 0x288(31)
    stw 0, 0x298(31)
    stw 0, 0x28c(31)
    stw 0, 0x29c(31)
    stw 0, 0x290(31)
    stw 0, 0x2a0(31)
    stw 0, 0x294(31)
    stw 0, 0x2a4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

