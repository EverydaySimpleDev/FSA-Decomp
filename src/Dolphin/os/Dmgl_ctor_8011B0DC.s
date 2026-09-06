.section extab, "a"
.balign 4
.global etb_800060C8
etb_800060C8:
    .4byte 0x08080000
    .4byte 0x00000078
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_800060C8, 28

.section extabindex, "a"
.balign 4
.global eti_80012610
eti_80012610:
    .4byte fn_8011B0DC
    .4byte 0x00000090
    .4byte etb_800060C8
.size eti_80012610, 12

# fn_8011B0DC - "DMGL" real constructor. Calls the base ctor
# fn_8010E074, installs its own vtable lbl_8049DB30, sets its own
# field defaults BEFORE the blend-timer: 0x230=0x1, 0x234=0x0, 0x238=0x0, 0x23c=0x0, 0x240=0x0, 0x244=0x9f, 0x245=0xaf, 0x246=0xff, 0x247=0x0, 0x248=0xff, 0x24c=0x0, 0x250=0x0, 0x254=0x0, 0x258=0x0. Embeds its OWN
# blend-timer sub-object at +0x25c via the confirmed
# fn_801D267C helper (see extab_801d0f40.s and
# project_fsa_multiple_inheritance_pattern.md - same nested blend-timer
# class used elsewhere). Fields set AFTER the blend-timer: (none).
.text
.balign 4
.global fn_8011B0DC

fn_8011B0DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 4, lbl_8049DB30@ha
    li 3, 0x1
    addi 0, 4, lbl_8049DB30@l
    li 6, 0x0
    stw 0, 0x0(31)
    li 5, 0x9f
    li 4, 0xaf
    li 0, 0xff
    stb 3, 0x230(31)
    addi 3, 31, 0x25c
    stw 6, 0x234(31)
    stw 6, 0x238(31)
    stw 6, 0x23c(31)
    stw 6, 0x240(31)
    stb 5, 0x244(31)
    stb 4, 0x245(31)
    stb 0, 0x246(31)
    stb 6, 0x247(31)
    stb 0, 0x248(31)
    stw 6, 0x24c(31)
    stw 6, 0x250(31)
    stw 6, 0x254(31)
    stw 6, 0x258(31)
    bl fn_801D267C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

