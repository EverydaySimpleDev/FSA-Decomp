# fn_800F6AB4: a per-frame tick method for the SAME RUPY (rupee pickup)
# class as fn_800F6820 (see project_fsa_extab_bug_resolved.md) - confirmed
# by shared fields (this->0x230/0x234/0x235/0x244, the same phase/index/
# countdown fields fn_800F6820 uses) and by calling the CONFIRMED effect-
# spawn wrapper fn_801F02BC (from project_fsa_shared_effect_subsystem_crossref.md)
# with per-phase position-offset lookup tables (lbl_80463710/lbl_80463724,
# matching the same per-position-table pattern seen in fn_800F5E08's OIWA
# cluster work). Dispatches on this->0x230 (phase 0/2/4, a 3-state subset
# of the same phase convention) into: phase 0 - spawn an effect via
# fn_801F02BC using an indexed offset table; phase 2 - spawn a different
# effect, offsetting this->0xc/0x10 (position) by this->0x260/0x264 before
# AND un-offsetting after (a temporary displacement for the spawn call,
# then restored); default (any other phase, incl. presumably a countdown-
# expired case) - compute a clamped, table-driven ratio from this->0x244
# and spawn yet another effect variant with a richer parameter struct.
# NOT YET FULLY UNDERSTOOD: the precise meaning of each phase transition or
# the exact parameter-struct fields passed to fn_801F02BC in each branch -
# flagging honestly per this project's established practice.
.section extab, "a"
.balign 4
.global etb_80005728
etb_80005728:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005728, 8

.section extabindex, "a"
.balign 4
.global eti_800119EC
eti_800119EC:
    .4byte fn_800F6AB4
    .4byte 0x000002CC
    .4byte etb_80005728
.size eti_800119EC, 12

.text
.balign 4
.global fn_800F6AB4

fn_800F6AB4:
    stwu 1, -0x90(1)
    mflr 0
    lis 4, lbl_8049C518@ha
    li 11, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 10, 1, 0x38
    stw 31, 0x8c(1)
    mr 31, 3
    addi 3, 4, lbl_8049C518@l
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_800F6B48
L_800F6AE8:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_800F6B48:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_800F6AE8
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_800F6C28
    .4byte 0x40800010 # bge .L_800F6BD8
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_800F6BE4
    .4byte 0x480000D8 # b .L_800F6CAC
L_800F6BD8:
    cmpwi 0, 0x4
    .4byte 0x41820190 # beq .L_800F6D6C
    .4byte 0x480000CC # b .L_800F6CAC
L_800F6BE4:
    lbz 0, 0x234(31)
    lis 4, lbl_80463710@ha
    .4byte 0xC0228F90 # lfs f1, lbl_8053BF30@sda21(r0)
    addi 3, 3, 0x0
    slwi 0, 0, 2
    lbz 5, 0x235(31)
    lwzx 0, 3, 0
    fmr 2, 1
    addi 4, 4, lbl_80463710@l
    mr 3, 31
    addi 6, 1, 0x38
    add 5, 5, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000148 # b .L_800F6D6C
L_800F6C28:
    lfs 2, 0xc(31)
    addi 5, 3, 0x20
    lfs 0, 0x260(31)
    lis 4, lbl_80463724@ha
    .4byte 0xC0228F90 # lfs f1, lbl_8053BF30@sda21(r0)
    addi 4, 4, lbl_80463724@l
    fadds 0, 2, 0
    mr 3, 31
    fmr 2, 1
    addi 6, 1, 0x38
    li 7, 0x7
    li 8, 0x0
    stfs 0, 0xc(31)
    li 9, 0x0
    lfs 3, 0x10(31)
    lfs 0, 0x264(31)
    fadds 0, 3, 0
    stfs 0, 0x10(31)
    lbz 0, 0x234(31)
    lbz 10, 0x235(31)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    add 5, 10, 0
    bl fn_801F02BC
    lfs 1, 0xc(31)
    lfs 0, 0x260(31)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    lfs 1, 0x10(31)
    lfs 0, 0x264(31)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480000C4 # b .L_800F6D6C
L_800F6CAC:
    lwz 4, 0x244(31)
    lis 0, 0x4330
    stw 0, 0x78(1)
    xoris 0, 4, 0x8000
    .4byte 0xC8228FB0 # lfd f1, lbl_8053BF50@sda21(r0)
    stw 0, 0x7c(1)
    .4byte 0xC0428FA0 # lfs f2, lbl_8053BF40@sda21(r0)
    lfd 0, 0x78(1)
    .4byte 0xC0828F9C # lfs f4, lbl_8053BF3C@sda21(r0)
    fsubs 3, 0, 1
    .4byte 0xC0228F90 # lfs f1, lbl_8053BF30@sda21(r0)
    .4byte 0xC0028FA4 # lfs f0, lbl_8053BF44@sda21(r0)
    fdivs 2, 3, 2
    fmadds 3, 4, 2, 1
    fcmpo cr0, 3, 0
    .4byte 0x40810008 # ble .L_800F6CF0
    fmr 3, 0
L_800F6CF0:
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    addi 0, 1, 0x8
    .4byte 0xC0228F90 # lfs f1, lbl_8053BF30@sda21(r0)
    addi 5, 3, 0x10
    stfs 0, 0x14(1)
    lis 4, lbl_80463724@ha
    fmr 2, 1
    addi 4, 4, lbl_80463724@l
    stfs 0, 0x24(1)
    mr 3, 31
    addi 6, 1, 0x38
    li 7, 0x7
    stfs 0, 0x34(1)
    li 8, 0x0
    li 9, 0x0
    stfs 3, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
    lbz 0, 0x234(31)
    lbz 10, 0x235(31)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    add 5, 10, 0
    bl fn_801F02BC
L_800F6D6C:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

