.section extab, "a"
.balign 4
.global etb_80005EF8
etb_80005EF8:
    .4byte 0x08080000
    .4byte 0x00000038
    .4byte 0x00000038
    .4byte 0x00000040
    .4byte 0x0000002C
    .4byte 0x00000048
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x0780001F
    .4byte 0x00000270
    .4byte dtor_80105D80
    .4byte 0x0780001F
    .4byte 0x00000238
    .4byte dtor_80105D80
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_80005EF8, 68

.section extabindex, "a"
.balign 4
.global eti_800123E8
eti_800123E8:
    .4byte fn_80116BE8
    .4byte 0x00000080
    .4byte etb_80005EF8
.size eti_800123E8, 12

# fn_80116BE8 - "DMGF" real constructor. Calls the shared base
# fn_8010E074 (see extab_8010e074.s), installs its own vtable, sets a
# couple of its own fields, embeds TWO blend-timers (fn_801D267C) at
# +0x238->+0x270 (note: the first embed's target is computed as +0x238,
# immediately followed by a second at +0x270) then embeds the physics-
# parameter-block fn_801EB950 (see extab_801eb950.s) at +0x2a8, and
# finally zeroes 7 more plain fields at +0x314..+0x32c.
.text
.balign 4
.global fn_80116BE8

fn_80116BE8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049D940@ha
    li 0, 0x0
    addi 4, 3, lbl_8049D940@l
    addi 3, 31, 0x238
    stw 4, 0x0(31)
    stw 0, 0x230(31)
    stb 0, 0x234(31)
    bl fn_801D267C
    addi 3, 31, 0x270
    bl fn_801D267C
    addi 3, 31, 0x2a8
    bl fn_801EB950
    li 0, 0x0
    mr 3, 31
    stw 0, 0x314(31)
    stw 0, 0x318(31)
    stw 0, 0x32c(31)
    stw 0, 0x31c(31)
    stw 0, 0x320(31)
    stw 0, 0x324(31)
    stw 0, 0x328(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

