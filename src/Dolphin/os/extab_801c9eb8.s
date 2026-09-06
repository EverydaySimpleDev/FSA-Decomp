.section extab, "a"
.balign 4
.global etb_800081F0
etb_800081F0:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_800081F0, 8

.section extabindex, "a"
.balign 4
.global eti_8001540C
eti_8001540C:
    .4byte fn_801C9EB8
    .4byte 0x00000240
    .4byte etb_800081F0
.size eti_8001540C, 12

.text
.balign 4
.global fn_801C9EB8

# fn_801C9EB8(this) - a "notice something nearby and react" check.
# Landed as a structural overview - several called helpers
# (fn_801C53C4, fn_801F317C, fn_8023AE34/AA18/AC74/AD54, fn_801CC820/
# CC538/CC640, fn_801F37AC) remain undecompiled, so exact contracts are
# inferred from usage, NOT confirmed. Notably fn_8023AE34/AA18/AC74/
# AD54 are NOT the CONFIRMED spatial-registry family
# (reference_fsa_spatial_registry_system.md, which lives at
# 0x801F6xxx-0x801F8xxx) - they're a distinct, unidentified set of 4
# search functions.
# 1. Bails (returns 0) unless there's a real extent gap (this->0x78-
#    0x70 or this->0x7c-0x74 exceeding an epsilon) OR fn_801C53C4(this)
#    says to proceed anyway.
# 2. Tries 4 search functions in priority order
#    (fn_8023AE34/AA18/AC74/AD54, each taking this->0x4 and a query
#    buffer), stopping at the first that returns a non-negative handle;
#    each hit is tagged differently (fn_801CC820 for the first,
#    fn_801CC538 for the third, nothing extra for the second) and the
#    4th falls back to fn_801CC640.
# 3. If nothing was found (all 4 negative): returns 0.
# 4. Otherwise, looks up the found handle via fn_8023E724 (CONFIRMED
#    already landed elsewhere in this project, project_fsa_rusa_repel_helpers_solved.md)
#    to get a position+extra-float record, and picks a candidate point
#    from it (or from the type-specific helper's own output) depending
#    on WHICH of the 4 searches hit.
# 5. Calls fn_801F37AC(this, 0, &candidatePoint, 0, handle) (not
#    decompiled) - if it returns true, either sets this->0x230 bit
#    0x80 (if already in state 0x10) or transitions to state 0x10 via
#    the CONFIRMED fn_801C3B7C - an "alert/notice" state. Returns that
#    boolean.
fn_801C9EB8:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    stw 0, 0x84(1)
    stmw 26, 0x68(1)
    mr 31, 3
    lfs 1, 0x78(3)
    lfs 0, 0x70(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x41820028 # beq .L_801C9F0C
    lfs 1, 0x7c(31)
    lfs 0, 0x74(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x41820010 # beq .L_801C9F0C
    bl fn_801C53C4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801C9F14
L_801C9F0C:
    li 3, 0x0
    .4byte 0x480001D4 # b .L_801CA0E4
L_801C9F14:
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    li 0, -0x1
    stw 0, 0x8(1)
    mr 3, 31
    addi 4, 1, 0x38
    li 29, 0x0
    stfs 0, 0x48(1)
    li 28, 0x0
    li 27, 0x0
    stfs 0, 0x4c(1)
    stfs 0, 0x50(1)
    bl fn_801F317C
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AE34
    mr. 30, 3
    .4byte 0x41800014 # blt .L_801C9F6C
    addi 4, 1, 0x48
    bl fn_801CC820
    mr 29, 3
    .4byte 0x48000078 # b .L_801C9FE0
L_801C9F6C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AA18
    mr. 30, 3
    .4byte 0x4180000C # blt .L_801C9F8C
    li 28, 0x1
    .4byte 0x48000058 # b .L_801C9FE0
L_801C9F8C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AC74
    mr. 30, 3
    .4byte 0x4180001C # blt .L_801C9FBC
    addi 4, 1, 0xc
    addi 5, 1, 0x54
    addi 6, 1, 0x8
    bl fn_801CC538
    mr 27, 3
    .4byte 0x48000028 # b .L_801C9FE0
L_801C9FBC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AD54
    mr. 30, 3
    .4byte 0x41800010 # blt .L_801C9FE0
    addi 4, 1, 0x8
    addi 5, 1, 0x48
    bl fn_801CC640
L_801C9FE0:
    cmpwi 30, 0x0
    li 26, 0x0
    .4byte 0x418000F8 # blt .L_801CA0E0
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    clrlwi. 0, 28, 24
    lfs 0, 0x8(3)
    li 7, 0x0
    psq_st 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    .4byte 0x4182000C # beq .L_801CA018
    li 7, 0x4
    .4byte 0x48000080 # b .L_801CA094
L_801CA018:
    clrlwi. 0, 27, 24
    .4byte 0x41820020 # beq .L_801CA03C
    lfs 2, 0x54(1)
    lfs 1, 0x58(1)
    lfs 0, 0x5c(1)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    .4byte 0x4800005C # b .L_801CA094
L_801CA03C:
    lfs 0, 0x14(31)
    clrlwi. 0, 29, 24
    psq_l 1, 0xc(31), 0, 0
    stfs 0, 0x1c(1)
    psq_l 3, 0x48(1), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    psq_l 0, 0x50(1), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x14(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x20(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
    lfs 1, 0x20(1)
    lfs 2, 0x1c(1)
    lfs 0, 0x24(1)
    psq_st 3, 0x14(1), 0, 0
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 2, 0x34(1)
    .4byte 0x41820008 # beq .L_801CA094
    li 7, 0x3
L_801CA094:
    mr 3, 31
    mr 8, 30
    addi 5, 1, 0x2c
    li 4, 0x0
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    mr 26, 3
    .4byte 0x4182002C # beq .L_801CA0E0
    lwz 0, 0x248(31)
    cmpwi 0, 0x10
    .4byte 0x40820014 # bne .L_801CA0D4
    lwz 0, 0x230(31)
    oris 0, 0, 0x80
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801CA0E0
L_801CA0D4:
    mr 3, 31
    li 4, 0x10
    bl fn_801C3B7C
L_801CA0E0:
    mr 3, 26
L_801CA0E4:
    lmw 26, 0x68(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
