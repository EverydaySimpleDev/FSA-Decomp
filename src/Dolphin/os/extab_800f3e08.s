# fn_800F3E08: a per-frame state-machine tick for the same "this" class as
# fn_800F3C70 (they share fields this->0x230/0x234/0x235/0x238/0x23c/0x240/
#0x244 and the SAME lookup tables lbl_80539E68/lbl_8053BE58/60/64/68/6c/70)
# - strong evidence both belong to the same subsystem, but NOT confirmed to
# be the same one project_fsa_effect_playback_primitive.md documents (this
# is a generic low-level cluster, not an actor-specific one). Dispatches on
# a phase field (this->0x230, 0-4) into several sub-states, each computing a
# countdown-timer duration via the SAME "byte->table index->float" lookup
# fn_800F3C70 uses, and one branch calls the already-documented settings-
# gated notification dispatcher fn_801F0E34(this, magicConstant, 0) with
# magicConstant=0x400A6 - a NEW value not among GNON's previously-seen
# 0x40006/0x50006/0x50002 set, but the same 0x4/0x5-high-nibble format.
# NOT YET UNDERSTOOD: what the phase states represent, what the timer
# durations are counting toward, or why fn_801F0E34 is called with r3=this
# directly rather than this+0xc like GNON's call sites (see
# project_fsa_effect_playback_primitive.md) - possibly this class embeds the
# "eventStruct" fields at its own base rather than nesting a sub-object.
# Landed as raw GNU-AS for the same extab/extabindex reason as
# fn_800F39EC/fn_800F3C10/fn_800F3C70 - see project_fsa_extab_bug_resolved.md.
# Mechanically generated from dtk's own auto-disasm dump via a one-off
# conversion script (not hand-transcribed, given the size/error-risk) -
# see project_fsa_extab_bug_resolved.md for the script's approach.
.section extab, "a"
.balign 4
.global etb_800056B0
etb_800056B0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800056B0, 8

.section extabindex, "a"
.balign 4
.global eti_80011938
eti_80011938:
    .4byte fn_800F3E08
    .4byte 0x000005C8
    .4byte etb_800056B0
.size eti_80011938, 12

.text
.balign 4
.global fn_800F3E08

fn_800F3E08:
    stwu 1, -0x60(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 29, 3
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_800F3E44
    mr 3, 29
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_800F3E58
L_800F3E44:
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000560 # b .L_800F43B4
L_800F3E58:
    lwz 3, 0x238(29)
    addi 0, 3, 0x1
    stw 0, 0x238(29)
    lwz 0, 0x238(29)
    cmpwi 0, 0x4
    .4byte 0x4082002C # bne .L_800F3E98
    lwz 3, 0x240(29)
    addi 0, 3, 0x1
    stw 0, 0x240(29)
    lwz 0, 0x240(29)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_800F3E90
    li 0, 0x0
    stw 0, 0x240(29)
L_800F3E90:
    li 0, 0x0
    stw 0, 0x238(29)
L_800F3E98:
    lwz 0, 0x90(29)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_800F3ECC
    lwz 4, 0x114(29)
    mr 3, 29
    li 5, -0x1
    li 6, 0x4
    bl fn_801F2B7C
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 30, 0, 31
    .4byte 0x48000028 # b .L_800F3EF0
L_800F3ECC:
    lwz 4, 0x114(29)
    mr 3, 29
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 30, 0, 31
L_800F3EF0:
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    mr 31, 3
    .4byte 0x41820038 # beq .L_800F3F40
    lwz 4, 0x4(29)
    mr 3, 29
    addi 5, 29, 0xc
    bl fn_801F15BC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_800F3F40
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000478 # b .L_800F43B4
L_800F3F40:
    lwz 0, 0x230(29)
    cmpwi 0, 0x2
    .4byte 0x418202CC # beq .L_800F4214
    .4byte 0x40800014 # bge .L_800F3F60
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_800F3F68
    .4byte 0x408001D0 # bge .L_800F4128
    .4byte 0x48000458 # b .L_800F43B4
L_800F3F60:
    cmpwi 0, 0x4
    .4byte 0x40800450 # bge .L_800F43B4
L_800F3F68:
    li 3, 0x0
    clrlwi. 0, 31, 24
    stb 3, 0x234(29)
    .4byte 0x41820010 # beq .L_800F3F84
    lbz 3, 0x235(29)
    addi 0, 3, 0x1
    stb 0, 0x235(29)
L_800F3F84:
    lbz 0, 0x235(29)
    clrlwi 0, 0, 30
    stb 0, 0x235(29)
    lwz 0, 0x90(29)
    cmplwi 0, 0x0
    .4byte 0x418200C0 # beq .L_800F4058
    lwz 0, 0x230(29)
    cmpwi 0, 0x0
    .4byte 0x408200B4 # bne .L_800F4058
    .4byte 0xC0028EB8 # lfs f0, lbl_8053BE58@sda21(r0)
    li 0, 0x0
    sth 0, 0xa(1)
    mr 3, 29
    addi 5, 1, 0xa
    addi 6, 1, 0x2c
    stfs 0, 0x28(1)
    addi 7, 1, 0x28
    addi 8, 1, 0x30
    li 9, 0x0
    stw 0, 0x2c(1)
    li 10, 0x0
    stw 0, 0x30(1)
    lwz 4, 0x198(29)
    bl fn_801EEC98
    lwz 0, 0x30(1)
    cmpwi 0, -0x1
    .4byte 0x41820060 # beq .L_800F404C
    lfs 1, 0x28(1)
    .4byte 0xC0028EC4 # lfs f0, lbl_8053BE64@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800050 # bge .L_800F404C
    li 0, 0x2
    li 4, 0x0
    stw 0, 0x230(29)
    .4byte 0x386D82A8 # li r3, lbl_80539E68@sda21
    stw 4, 0x23c(29)
    lwz 5, 0x2c(1)
    .4byte 0x48000020 # b .L_800F4038
L_800F401C:
    clrlwi 0, 4, 24
    lbzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4082000C # bne .L_800F4034
    stb 4, 0x235(29)
    .4byte 0x48000014 # b .L_800F4044
L_800F4034:
    addi 4, 4, 0x1
L_800F4038:
    clrlwi 0, 4, 24
    cmplwi 0, 0x4
    .4byte 0x4180FFDC # blt .L_800F401C
L_800F4044:
    li 0, 0x1
    .4byte 0x48000008 # b .L_800F4050
L_800F404C:
    li 0, 0x0
L_800F4050:
    clrlwi. 0, 0, 24
    .4byte 0x40820360 # bne .L_800F43B4
L_800F4058:
    lbz 0, 0x235(29)
    .4byte 0x388D82A8 # li r4, lbl_80539E68@sda21
    lis 3, lbl_8049C3E0@ha
    lfs 1, 0xc(29)
    lbzx 0, 4, 0
    addi 3, 3, lbl_8049C3E0@l
    slwi 0, 0, 3
    lfsx 0, 3, 0
    fadds 0, 1, 0
    stfs 0, 0xc(29)
    lbz 0, 0x235(29)
    lfs 1, 0x10(29)
    lbzx 0, 4, 0
    slwi 0, 0, 3
    add 3, 3, 0
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x10(29)
    lwz 3, 0x23c(29)
    addi 0, 3, 0x1
    stw 0, 0x23c(29)
    lwz 3, 0x23c(29)
    lwz 0, 0x244(29)
    cmpw 3, 0
    .4byte 0x408202FC # bne .L_800F43B4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0028EC0 # lfs f0, lbl_8053BE60@sda21(r0)
    lwz 5, 0xb4(6)
    li 3, 0x1
    .4byte 0xC0428EC8 # lfs f2, lbl_8053BE68@sda21(r0)
    li 0, 0x0
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    addi 4, 4, 0x32
    stw 4, 0x244(29)
    stw 3, 0x230(29)
    stw 0, 0x23c(29)
    .4byte 0x48000290 # b .L_800F43B4
L_800F4128:
    li 0, 0x1
    stb 0, 0x234(29)
    lwz 3, 0x23c(29)
    addi 0, 3, 0x1
    stw 0, 0x23c(29)
    lwz 3, 0x23c(29)
    lwz 0, 0x244(29)
    cmpw 3, 0
    .4byte 0x4082026C # bne .L_800F43B4
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    lis 4, 0x4
    .4byte 0xC0428EC0 # lfs f2, lbl_8053BE60@sda21(r0)
    lwz 5, 0xb4(8)
    addi 7, 3, 0x660d
    .4byte 0xC0628ECC # lfs f3, lbl_8053BE6C@sda21(r0)
    li 0, 0x0
    mullw 6, 5, 7
    .4byte 0xC0228ED0 # lfs f1, lbl_8053BE70@sda21(r0)
    mr 3, 29
    addi 4, 4, 0xa6
    li 5, 0x0
    addis 6, 6, 0x3c6f
    subi 6, 6, 0xca1
    stw 6, 0xb4(8)
    lwz 6, 0xb4(8)
    srwi 6, 6, 9
    oris 6, 6, 0x3f80
    stw 6, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 6, 0x3c(1)
    addi 6, 6, 0xa
    stw 6, 0x244(29)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 6, 0xb4(8)
    mullw 6, 6, 7
    addis 6, 6, 0x3c6f
    subi 6, 6, 0xca1
    stw 6, 0xb4(8)
    lwz 6, 0xb4(8)
    srwi 6, 6, 9
    oris 6, 6, 0x3f80
    stw 6, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 6, 0x44(1)
    stb 6, 0x235(29)
    stw 0, 0x230(29)
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0x23c(29)
    .4byte 0x480001A4 # b .L_800F43B4
L_800F4214:
    lbz 0, 0x235(29)
    lis 3, lbl_8049C3E0@ha
    .4byte 0x388D82A8 # li r4, lbl_80539E68@sda21
    clrlwi 0, 0, 30
    addi 3, 3, lbl_8049C3E0@l
    stb 0, 0x235(29)
    lbz 0, 0x235(29)
    lfs 1, 0xc(29)
    lbzx 0, 4, 0
    slwi 0, 0, 3
    lfsx 0, 3, 0
    fadds 0, 1, 0
    stfs 0, 0xc(29)
    lbz 0, 0x235(29)
    lfs 1, 0x10(29)
    lbzx 0, 4, 0
    slwi 0, 0, 3
    add 3, 3, 0
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x10(29)
    lwz 0, 0x23c(29)
    andi. 0, 0, 0x1111
    .4byte 0x40820094 # bne .L_800F4304
    .4byte 0xC0028EB8 # lfs f0, lbl_8053BE58@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    mr 3, 29
    addi 5, 1, 0x8
    addi 6, 1, 0x20
    stfs 0, 0x1c(1)
    addi 7, 1, 0x1c
    addi 8, 1, 0x24
    li 9, 0x0
    stw 0, 0x20(1)
    li 10, 0x0
    stw 0, 0x24(1)
    lwz 4, 0x198(29)
    bl fn_801EEC98
    lwz 0, 0x24(1)
    cmpwi 0, -0x1
    .4byte 0x4182004C # beq .L_800F4304
    lfs 1, 0x1c(1)
    .4byte 0xC0028EC4 # lfs f0, lbl_8053BE64@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080003C # bge .L_800F4304
    lwz 5, 0x20(1)
    li 4, 0x0
    .4byte 0x386D82A8 # li r3, lbl_80539E68@sda21
    .4byte 0x48000020 # b .L_800F42F8
L_800F42DC:
    clrlwi 0, 4, 24
    lbzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4082000C # bne .L_800F42F4
    stb 4, 0x235(29)
    .4byte 0x48000014 # b .L_800F4304
L_800F42F4:
    addi 4, 4, 0x1
L_800F42F8:
    clrlwi 0, 4, 24
    cmplwi 0, 0x4
    .4byte 0x4180FFDC # blt .L_800F42DC
L_800F4304:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_800F432C
    li 0, 0x64
    li 3, 0x3
    stw 0, 0x244(29)
    li 0, 0x0
    stw 3, 0x230(29)
    stw 0, 0x23c(29)
    .4byte 0x4800008C # b .L_800F43B4
L_800F432C:
    lwz 3, 0x23c(29)
    addi 0, 3, 0x1
    stw 0, 0x23c(29)
    lwz 0, 0x23c(29)
    cmpwi 0, 0x64
    .4byte 0x4182000C # beq .L_800F434C
    clrlwi. 0, 31, 24
    .4byte 0x4182006C # beq .L_800F43B4
L_800F434C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0028EC0 # lfs f0, lbl_8053BE60@sda21(r0)
    lwz 5, 0xb4(6)
    li 3, 0x1
    .4byte 0xC0428EC8 # lfs f2, lbl_8053BE68@sda21(r0)
    li 0, 0x0
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    addi 4, 4, 0x32
    stw 4, 0x244(29)
    stw 3, 0x230(29)
    stw 0, 0x23c(29)
L_800F43B4:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

