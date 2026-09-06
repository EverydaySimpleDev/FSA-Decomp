.section extab, "a"
.balign 4
.global etb_80005E04
etb_80005E04:
    .4byte 0x080A0000
    .4byte 0x00000060
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_80005E04, 28

.section extabindex, "a"
.balign 4
.global eti_800122D4
eti_800122D4:
    .4byte fn_801134DC
    .4byte 0x00000088
    .4byte etb_80005E04
.size eti_800122D4, 12

# fn_801134DC - "DMMD" real constructor. Calls the base ctor
# fn_8010E074, installs its own vtable lbl_8049D740, sets its own
# field defaults BEFORE the blend-timer: 0x230=0x0, 0x234=0x0, 0x238=0x0, 0x23c=0x0, 0x240=-0x1, 0x244=0x0, 0x248=float from lbl_8053C628, 0x24c=float from lbl_8053C628, 0x250=float from lbl_8053C65C. Embeds its OWN
# blend-timer sub-object at +0x260 via the confirmed
# fn_801D267C helper (see extab_801d0f40.s and
# project_fsa_multiple_inheritance_pattern.md - same nested blend-timer
# class used elsewhere). Fields set AFTER the blend-timer: 0x298=0x0, 0x29c=0x0, 0x2a0=0x0.
.text
.balign 4
.global fn_801134DC

fn_801134DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049D740@ha
    li 4, 0x0
    addi 3, 3, lbl_8049D740@l
    li 0, -0x1
    stw 3, 0x0(31)
    addi 3, 31, 0x260
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    stb 4, 0x230(31)
    .4byte 0xC00296BC # lfs f0, lbl_8053C65C@sda21(r0)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 0, 0x240(31)
    stw 4, 0x244(31)
    stfs 1, 0x248(31)
    stfs 1, 0x24c(31)
    stfs 0, 0x250(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x298(31)
    stw 0, 0x29c(31)
    stw 0, 0x2a0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

