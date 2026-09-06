# fn_800F4724: the per-frame tick for the same class as fn_800F3C70/
# fn_800F3E08/fn_800F43D0. CONFIRMED (not a guess - cross-referenced
# reference_fsa_actor_dispatch_table.md): the 4-letter code built here via
# lis/addi (0x4F495741 = "OIWA") is the dispatch code for "Falling boulder"
# (constructor fn_80202EB0, vtable lbl_8049C4C0). This function is a 5-phase
# (this->0x230 in 0..4) boulder-throw scheduler: while this->0x234 (a
# countdown, decremented once per frame at the bottom) is nonzero, do
# nothing; when it hits 0, dispatch on the current phase and spawn an OIWA
# boulder via the universal actor dispatcher fn_801F9484(code="OIWA", this,
# positionPtr, variantParam, -1, -1) with a phase-specific variantParam
# (0, 1, 3, a value derived from this->0x90's upper bits, or 5), then almost
# always re-roll a new randomized countdown via the confirmed global PRNG
# (see reference_fsa_global_prng.md) plus a fixed floor of 0x96 (150 frames)
# - EXCEPT phase 2, which spawns its boulder, clears this->0x11c, and skips
# the timer/decrement entirely (a likely terminal/one-shot phase). Phases 1
# and 4 additionally compute a randomized positional offset (using the same
# PRNG) before spawning, and phase 1 calls fn_801F666C(this, spawnedHandle)
# afterward - plausibly storing/tracking the spawned boulder actor's handle,
# not yet confirmed. NOT YET UNDERSTOOD: what specifically each numeric
# variantParam (0/1/3/computed/5) selects (boulder size? trajectory? split
# count?), or what SpatialRegistry_GetBase (called at the start of every phase) and
# fn_801F666C do. Landed as raw GNU-AS for the same extab/extabindex reason
# as the rest of this cluster - see project_fsa_extab_bug_resolved.md.
.section extab, "a"
.balign 4
.global etb_800056D0
etb_800056D0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800056D0, 8

.section extabindex, "a"
.balign 4
.global eti_80011968
eti_80011968:
    .4byte fn_800F4724
    .4byte 0x0000046C
    .4byte etb_800056D0
.size eti_80011968, 12

.text
.balign 4
.global fn_800F4724

fn_800F4724:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x40820428 # bne .L_800F4B6C
    lbz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x418201BC # beq .L_800F490C
    .4byte 0x40800014 # bge .L_800F4768
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_800F4778
    .4byte 0x408000BC # bge .L_800F481C
    .4byte 0x48000408 # b .L_800F4B6C
L_800F4768:
    cmpwi 0, 0x4
    .4byte 0x41820258 # beq .L_800F49C4
    .4byte 0x408003FC # bge .L_800F4B6C
    .4byte 0x480001C8 # b .L_800F493C
L_800F4778:
    lwz 0, 0x90(31)
    clrrwi. 0, 0, 27
    .4byte 0x4182001C # beq .L_800F479C
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418203E0 # beq .L_800F4B78
L_800F479C:
    bl SpatialRegistry_GetBase
    lis 4, 0x4f49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0428EE8 # lfs f2, lbl_8053BE88@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0x96
    stw 0, 0x234(31)
    .4byte 0x48000354 # b .L_800F4B6C
L_800F481C:
    lwz 0, 0x90(31)
    clrrwi. 0, 0, 27
    .4byte 0x4182001C # beq .L_800F4840
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182033C # beq .L_800F4B78
L_800F4840:
    lfs 1, 0x14(31)
    psq_l 2, 0xc(31), 0, 0
    .4byte 0xC0028EF0 # lfs f0, lbl_8053BE90@sda21(r0)
    stfs 1, 0x34(1)
    fadds 0, 1, 0
    psq_st 2, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4f49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    addi 6, 1, 0x2c
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 30, 3
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    .4byte 0xC0628EF4 # lfs f3, lbl_8053BE94@sda21(r0)
    lis 4, 0x19
    .4byte 0xC0228EF8 # lfs f1, lbl_8053BE98@sda21(r0)
    addi 0, 4, 0x660d
    stfs 3, 0x20(1)
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    stfs 1, 0x24(1)
    .4byte 0xC0428EE8 # lfs f2, lbl_8053BE88@sda21(r0)
    psq_l 1, 0x20(1), 0, 0
    stfs 3, 0x28(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0x96
    stw 0, 0x234(31)
    .4byte 0x48000264 # b .L_800F4B6C
L_800F490C:
    bl SpatialRegistry_GetBase
    lis 4, 0x4f49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    addi 6, 31, 0xc
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000240 # b .L_800F4B78
L_800F493C:
    bl SpatialRegistry_GetBase
    lwz 0, 0x90(31)
    lis 4, 0x4f49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    clrrwi 7, 0, 8
    addi 6, 31, 0xc
    addi 7, 7, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0428EE8 # lfs f2, lbl_8053BE88@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0x96
    stw 0, 0x234(31)
    .4byte 0x480001AC # b .L_800F4B6C
L_800F49C4:
    lwz 0, 0x90(31)
    clrrwi. 0, 0, 27
    .4byte 0x4182001C # beq .L_800F49E8
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820194 # beq .L_800F4B78
L_800F49E8:
    lfs 1, 0xc(31)
    lis 0, 0x4330
    lis 3, 0x19
    .4byte 0xC0028EF0 # lfs f0, lbl_8053BE90@sda21(r0)
    stfs 1, 0x2c(1)
    addi 4, 3, 0x660d
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lfs 1, 0x10(31)
    .4byte 0xC0828EEC # lfs f4, lbl_8053BE8C@sda21(r0)
    stfs 1, 0x30(1)
    .4byte 0xC0428EFC # lfs f2, lbl_8053BE9C@sda21(r0)
    lfs 1, 0x14(31)
    stw 0, 0x40(1)
    fadds 0, 1, 0
    .4byte 0xC8628F08 # lfd f3, lbl_8053BEA8@sda21(r0)
    stfs 1, 0x34(1)
    .4byte 0xC0228F00 # lfs f1, lbl_8053BEA0@sda21(r0)
    stfs 0, 0x34(1)
    lwz 3, 0xb4(5)
    stw 0, 0x50(1)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 5, 0x2c(1)
    srwi 0, 0, 9
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 4
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    subfic 0, 0, 0x28
    xoris 0, 0, 0x8000
    stw 0, 0x44(1)
    lfd 0, 0x40(1)
    fsubs 0, 0, 3
    fadds 0, 5, 0
    stfs 0, 0x2c(1)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 2, 0x30(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 4
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    subfic 0, 0, 0x14
    xoris 0, 0, 0x8000
    stw 0, 0x54(1)
    lfd 0, 0x50(1)
    fsubs 0, 0, 3
    fadds 0, 2, 0
    stfs 0, 0x30(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4f49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    addi 6, 1, 0x2c
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0428F04 # lfs f2, lbl_8053BEA4@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 3, 0x5c(1)
    addi 0, 3, 0x50
    stw 0, 0x234(31)
L_800F4B6C:
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_800F4B78:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

