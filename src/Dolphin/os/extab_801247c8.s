.section extab, "a"
.balign 4
.global etb_800063B8
etb_800063B8:
    .4byte 0x200A0000
    .4byte 0x00000044
    .4byte 0x00000024
    .4byte 0x000000C8
    .4byte 0x00000018
    .4byte 0x00000000
    .4byte 0x0780001C
    .4byte 0x00000230
    .4byte dtor_80105D80
    .4byte 0x8680001C
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_800063B8, 48

.section extabindex, "a"
.balign 4
.global eti_80012A3C
eti_80012A3C:
    .4byte fn_801247C8
    .4byte 0x000000EC
    .4byte etb_800063B8
.size eti_80012A3C, 12

# fn_801247C8 - a shared "named object" base class constructor, no
# 4-char dispatch code of its own - richer signature than the other
# shared bases: takes (this, namePtr, id, flag) instead of just (this).
# Calls the base Actor ctor (Actor_ctor) directly (NOT fn_801D0F40),
# installs its OWN vtable lbl_8049E0C8, constructs an embedded
# blend-timer at +0x230 via fn_801D267C (the SAME nested blend-timer
# class documented in project_fsa_multiple_inheritance_pattern.md and
# reused by fn_801D0F40), then initializes a block of fields at
# +0x330..+0x380 (flags, an FSM-looking state area, timers, float
# defaults) - stores the incoming `id` param at +0x338 and `flag` at
# +0x332 - and finally strcpy's the incoming `namePtr` string into an
# internal buffer at +0x384. Shared directly by FAZR/OPGL (their only
# base call) and referenced as a MEMBER-construction helper (not a base
# call) by several other, more complex actors not yet landed - see
# project_fsa_dispatcher_mass_landing.md.
.text
.balign 4
.global fn_801247C8

fn_801247C8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl Actor_ctor
    lis 4, lbl_8049E0C8@ha
    addi 3, 28, 0x230
    addi 0, 4, lbl_8049E0C8@l
    stw 0, 0x0(28)
    bl fn_801D267C
    li 6, 0x1
    li 5, 0x0
    stb 6, 0x330(28)
    li 0, -0x1
    .4byte 0xC0229A58 # lfs f1, lbl_8053C9F8@sda21(r0)
    mr 4, 29
    stb 6, 0x331(28)
    addi 3, 28, 0x384
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    stb 31, 0x332(28)
    stb 5, 0x333(28)
    stb 5, 0x334(28)
    stb 5, 0x335(28)
    sth 5, 0x336(28)
    stw 30, 0x338(28)
    stw 5, 0x33c(28)
    stw 5, 0x340(28)
    stw 0, 0x344(28)
    stw 0, 0x348(28)
    stw 0, 0x34c(28)
    stw 5, 0x350(28)
    stw 5, 0x354(28)
    stw 5, 0x358(28)
    stw 6, 0x360(28)
    stw 0, 0x374(28)
    stw 5, 0x378(28)
    stfs 1, 0x37c(28)
    stfs 0, 0x380(28)
    stw 0, 0x364(28)
    stw 0, 0x368(28)
    stw 0, 0x36c(28)
    stw 0, 0x370(28)
    bl strcpy
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

