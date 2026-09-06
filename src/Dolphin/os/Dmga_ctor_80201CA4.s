.section extab, "a"
.balign 4
.global etb_800095EC
etb_800095EC:
    .4byte 0x080A0000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_800095EC, 28

.section extabindex, "a"
.balign 4
.global eti_80016E28
eti_80016E28:
    .4byte fn_80201CA4
    .4byte 0x0000005C
    .4byte etb_800095EC
.size eti_80016E28, 12

# fn_80201CA4 - "DMGA" real constructor. Calls the base ctor
# fn_8010E074, installs its own vtable lbl_8049DD68, sets its own
# field defaults BEFORE the blend-timer: 0x230=0x0, 0x234=0x0, 0x238=float from lbl_8053F830, 0x23c=float from lbl_8053F830. Embeds its OWN
# blend-timer sub-object at +0x274 via the confirmed
# fn_801D267C helper (see extab_801d0f40.s and
# project_fsa_multiple_inheritance_pattern.md - same nested blend-timer
# class used elsewhere). Fields set AFTER the blend-timer: (none).
.text
.balign 4
.global fn_80201CA4

fn_80201CA4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049DD68@ha
    li 0, 0x0
    addi 3, 3, lbl_8049DD68@l
    .4byte 0xC002C890 # lfs f0, lbl_8053F830@sda21(r0)
    stw 3, 0x0(31)
    addi 3, 31, 0x274
    stb 0, 0x230(31)
    stw 0, 0x234(31)
    stfs 0, 0x238(31)
    stfs 0, 0x23c(31)
    bl fn_801D267C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

