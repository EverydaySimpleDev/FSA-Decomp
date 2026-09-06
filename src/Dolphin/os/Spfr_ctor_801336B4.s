.section extab, "a"
.balign 4
.global etb_80006898
etb_80006898:
    .4byte 0x08080000
    .4byte 0x00000054
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_80006898, 28

.section extabindex, "a"
.balign 4
.global eti_80013114
eti_80013114:
    .4byte fn_801336B4
    .4byte 0x00000074
    .4byte etb_80006898
.size eti_80013114, 12

# fn_801336B4 - "SPFR" real constructor. Calls the base ctor
# fn_8010E074, installs its own vtable lbl_8049EB8C, sets its own
# field defaults BEFORE the blend-timer: 0x230=0x0, 0x234=0x0, 0x238=0x0, 0x23c=-0x1, 0x240=0x0, 0x244=0x0, 0x248=0x0, 0x24c=0x0. Embeds its OWN
# blend-timer sub-object at +0x250 via the confirmed
# fn_801D267C helper (see extab_801d0f40.s and
# project_fsa_multiple_inheritance_pattern.md - same nested blend-timer
# class used elsewhere). Fields set AFTER the blend-timer: 0x288=0x0.
.text
.balign 4
.global fn_801336B4

fn_801336B4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049EB8C@ha
    li 4, 0x0
    addi 3, 3, lbl_8049EB8C@l
    li 0, -0x1
    stw 3, 0x0(31)
    addi 3, 31, 0x250
    stb 4, 0x230(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 0, 0x23c(31)
    stw 4, 0x240(31)
    stw 4, 0x244(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x288(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

