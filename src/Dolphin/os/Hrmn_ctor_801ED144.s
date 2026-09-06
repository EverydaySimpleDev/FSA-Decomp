.section extab, "a"
.balign 4
.global etb_80008CD8
etb_80008CD8:
    .4byte 0x08080000
    .4byte 0x0000002C
    .4byte 0x000A0010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_80008CD8, 28

.section extabindex, "a"
.balign 4
.global eti_8001633C
eti_8001633C:
    .4byte fn_801ED144
    .4byte 0x00000074
    .4byte etb_80008CD8
.size eti_8001633C, 12

# fn_801ED144 - "HRMN" real constructor. Calls the shared base
# fn_801D0F40 (see extab_801d0f40.s), installs its own vtable, then
# calls the CONFIRMED fn_80138A30 helper (already landed, part of
# extab_801352f4.s - counts set completion-flag bits at
# lbl_8053AAF8->0x82) and stores the result at +0x2a8. Sets its own
# field defaults (+0x2ac..+0x2b4), embeds the u16-reset Hrmn_ResetToZero (see
# extab_801ed968.s) at +0x2b6, embeds the per-slot-array initializer
# fn_80216178 (see extab_80216178.s) at +0x2b8, and finally writes -1 to
# the GLOBAL lbl_8053A160 - plausibly a "no active instance" sentinel
# for what looks like an intended-singleton actor, not traced further.
.text
.balign 4
.global fn_801ED144

fn_801ED144:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A5630@ha
    addi 0, 3, lbl_804A5630@l
    stw 0, 0x0(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    stw 3, 0x2a8(31)
    li 4, 0x0
    li 0, -0x1
    addi 3, 31, 0x2b6
    stw 4, 0x2ac(31)
    stw 0, 0x2b0(31)
    stb 4, 0x2b4(31)
    bl Hrmn_ResetToZero
    addi 3, 31, 0x2b8
    bl fn_80216178
    li 0, -0x1
    mr 3, 31
    .4byte 0x900D85A0 # stw r0, lbl_8053A160@sda21(r0)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

