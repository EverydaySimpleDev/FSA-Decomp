# fn_800F5E08: OIWA (falling-boulder) scheduler's phase-0 handler, called
# from fn_800F5248 (see project_fsa_extab_bug_resolved.md for the cluster
# overview). This is the largest confirmed OIWA method so far by real
# content (1312 bytes). Uses this->0x240 as a SUB-STATE within phase 0
# (0=initial fall, 1=after an initial virtual-call+sound, 2=settling), a
# frame counter (this->0x244) that after 0x78/0xb4 frames triggers a
# virtual call through this->0[0]->0x30 (a base-Actor vtable slot, matching
# the 21+-slot vtable convention from project_fsa_actor_system_discovery.md)
# and CONFIRMED sound/notification calls reusing EXACT values already seen
# elsewhere in this cluster: fn_8013CC50 sound IDs 0x76 and 0x3cf (both seen
# in fn_800F5248/fn_800F555C), fn_801F0E34 notifications 0x30028 and
# 0x4002c (0x4002c also seen in fn_800F555C). Does the SAME 4-players-x-8-
# positions collision-check loop as fn_800F555C, using the CONFIRMED player-
# registry accessors (fn_8023DE58/fn_8022E088/fn_8022DF48 - see
# project_fsa_player_registry_discovery.md's OIWA-extension section) plus a
# per-slot offset table (lbl_80463678, 8 entries of 2 floats each - matching
# the "8 boxes" iteration). Also calls SpatialRegistry_GetBase+fn_801F666C (the
# confirmed registry-lookup pair from project_fsa_shared_effect_subsystem_crossref.md)
# to re-look-up a just-registered handle from fn_801F2718, and calls
# fn_801F778C with a 4-letter code (0x4254494E = "BTIN") that is NOT in the
# 195-entry actor dispatch table - unlike fn_801F9484's codes, this is
# passed to a DIFFERENT, unexplored function, so "BTIN" is not assumed to be
# a spawnable actor code (not every 4-letter constant in this codebase goes
# through the actor dispatcher). NOT YET UNDERSTOOD: fn_801F2718,
# fn_801F778C, or the precise meaning of the this->0x240 sub-states beyond
# their observed transition triggers. Uses paired-single instructions -
# needs -mgekko in cflags.
.section extab, "a"
.balign 4
.global etb_80005700
etb_80005700:
    .4byte 0x290A0000
    .4byte 0x00000000
.size etb_80005700, 8

.section extabindex, "a"
.balign 4
.global eti_800119B0
eti_800119B0:
    .4byte fn_800F5E08
    .4byte 0x00000520
    .4byte etb_80005700
.size eti_800119B0, 12

.text
.balign 4
.global fn_800F5E08

fn_800F5E08:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    mr 31, 3
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x41820158 # beq .L_800F5F9C
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x41820030 # beq .L_800F5E8C
    lwz 0, 0x244(31)
    cmpwi 0, 0x78
    .4byte 0x41800024 # blt .L_800F5E8C
    lis 3, lbl_8052EBC0@ha
    clrlslwi 0, 0, 30, 12
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0428F1C # lfs f2, lbl_8053BEBC@sda21(r0)
    lfsx 1, 3, 0
    lfs 0, 0xc(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
L_800F5E8C:
    lwz 0, 0x244(31)
    cmpwi 0, 0xb4
    .4byte 0x4180004C # blt .L_800F5EE0
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x2
    stw 0, 0x240(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x3c
    .4byte 0x40820424 # bne .L_800F62F4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000418 # b .L_800F62F4
L_800F5EE0:
    li 27, 0x0
L_800F5EE4:
    lwz 29, 0x4(31)
    mr 3, 27
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x40820098 # bne .L_800F5F8C
    lfs 31, 0x60(31)
    li 30, 0x0
    lfs 0, 0xc(31)
    lfs 29, 0x68(31)
    lfs 30, 0x64(31)
    fadds 31, 31, 0
    lfs 1, 0x10(31)
    fadds 29, 29, 0
    lfs 28, 0x6c(31)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_800F5F24:
    mr 3, 27
    mr 4, 30
    addi 5, 1, 0x18
    bl fn_8022E088
    lfs 1, 0x18(1)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_800F5F6C
    lfs 0, 0x1c(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_800F5F6C
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_800F5F6C
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_800F5F6C
    li 0, 0x1
L_800F5F6C:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_800F5F80
    mr 3, 27
    bl fn_8022DF48
    .4byte 0x48000010 # b .L_800F5F8C
L_800F5F80:
    addi 30, 30, 0x1
    cmpwi 30, 0x8
    .4byte 0x4180FF9C # blt .L_800F5F24
L_800F5F8C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF50 # blt .L_800F5EE4
    .4byte 0x4800035C # b .L_800F62F4
L_800F5F9C:
    lbz 3, 0x231(31)
    addi 0, 3, 0x1
    stb 0, 0x231(31)
    lbz 0, 0x231(31)
    cmplwi 0, 0xa
    .4byte 0x40820018 # bne .L_800F5FC8
    lwz 3, 0x23c(31)
    li 0, 0x0
    addi 3, 3, 0x1
    stw 3, 0x23c(31)
    stb 0, 0x231(31)
L_800F5FC8:
    lwz 0, 0x23c(31)
    mr 3, 31
    li 4, 0x2
    li 5, -0x1
    clrlwi 0, 0, 30
    li 6, 0x6
    stw 0, 0x23c(31)
    bl fn_801F2B7C
    lis 4, 0x4f49
    mr 3, 31
    addi 4, 4, 0x5741
    bl fn_801F2718
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820054 # beq .L_800F6054
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0xc(3), 0, 0
    psq_l 2, 0x14(31), 1, 0
    ps_sub 3, 1, 0
    psq_l 1, 0x14(3), 1, 0
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    ps_sub 2, 2, 1
    psq_st 3, 0x24(1), 0, 0
    lfs 1, 0x24(1)
    psq_st 2, 0x2c(1), 1, 0
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_800F604C
    .4byte 0xC0028F30 # lfs f0, lbl_8053BED0@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0x4800000C # b .L_800F6054
L_800F604C:
    .4byte 0xC0028F64 # lfs f0, lbl_8053BF04@sda21(r0)
    stfs 0, 0x3c(31)
L_800F6054:
    lfs 2, 0x44(31)
    .4byte 0xC0228F68 # lfs f1, lbl_8053BF08@sda21(r0)
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820224 # bne .L_800F62B8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0228EEC # lfs f1, lbl_8053BE8C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC8028F70 # lfd f0, lbl_8053BF10@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_800F60EC
    .4byte 0xC0028F30 # lfs f0, lbl_8053BED0@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0x4800000C # b .L_800F60F4
L_800F60EC:
    .4byte 0xC0028F64 # lfs f0, lbl_8053BF04@sda21(r0)
    stfs 0, 0x3c(31)
L_800F60F4:
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    lis 4, 0x3
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    mr 3, 31
    stfs 1, 0x14(31)
    addi 4, 4, 0x28
    li 5, 0x0
    stfs 0, 0x44(31)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0228F48 # lfs f1, lbl_8053BEE8@sda21(r0)
    li 5, 0x3cf
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800F6150
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    stfs 0, 0x3c(3)
L_800F6150:
    lbz 0, 0x230(31)
    cmplwi 0, 0x4
    .4byte 0x40820160 # bne .L_800F62B8
    lis 3, lbl_80463678@ha
    addi 29, 1, 0xc
    addi 27, 3, lbl_80463678@l
    li 30, 0x0
L_800F616C:
    psq_l 0, 0xc(31), 0, 0
    mr 3, 29
    lfs 4, 0x14(31)
    lfs 2, 0x0(27)
    psq_st 0, 0x0(29), 0, 0
    lfs 0, 0x4(27)
    lfs 3, 0xc(1)
    lfs 1, 0x10(1)
    fadds 2, 3, 2
    stfs 4, 0x14(1)
    fadds 0, 1, 0
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 4, 0x4(31)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_800F61C4
    cmpwi 0, 0xe
    .4byte 0x4182000C # beq .L_800F61C4
    cmpwi 0, 0x2
    .4byte 0x408200E8 # bne .L_800F62A8
L_800F61C4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408200CC # bne .L_800F62A8
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC0228F28 # lfs f1, lbl_8053BEC8@sda21(r0)
    .4byte 0xC0428EF4 # lfs f2, lbl_8053BE94@sda21(r0)
    bl fn_802D79E8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0228F1C # lfs f1, lbl_8053BEBC@sda21(r0)
    li 5, 0x76
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    mr 3, 31
    stw 0, 0x240(31)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2c
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    lis 4, 0x4254
    addi 5, 31, 0xc
    addi 4, 4, 0x494e
    li 6, 0x0
    bl fn_801F778C
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    psq_l 0, 0xc(3), 0, 0
    lfs 2, 0x14(3)
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC0028F60 # lfs f0, lbl_8053BF00@sda21(r0)
    stfs 2, 0x14(31)
    stfs 1, 0x14(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_800F62A8:
    addi 30, 30, 0x1
    addi 27, 27, 0x8
    cmpwi 30, 0x4
    .4byte 0x4180FEB8 # blt .L_800F616C
L_800F62B8:
    lwz 28, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_800F62D0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_800F62D4
L_800F62D0:
    addi 3, 3, 0xdc
L_800F62D4:
    .4byte 0xC0428EE8 # lfs f2, lbl_8053BE88@sda21(r0)
    lfs 1, 0xc(3)
    lfs 0, 0x10(31)
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_800F62F4
    li 0, 0x0
    stb 0, 0x11c(31)
L_800F62F4:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

