.section extab, "a"
.balign 4
.global etb_80008428
etb_80008428:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_80008428, 8

.section extabindex, "a"
.balign 4
.global eti_80015760
eti_80015760:
    .4byte fn_801CFA70
    .4byte 0x00000280
    .4byte etb_80008428
.size eti_80015760, 12

.text
.balign 4
.global fn_801CFA70

# fn_801CFA70(this, pointA, pointB, roomID) - the base "sample a
# segment" primitive fn_801CF888 (extab_801cf888.s) tries up to 3 times:
# quick-returns 1 immediately if EITHER endpoint lies outside the
# current room's config rect (GetRoomConfigRecord()->0xcc/0xd0 for room<8,
# ->0xdc/0xe0 for room>=8 - the same rect pair fn_801CD0D0/fn_801CD150
# rebase points between). Otherwise computes the distance between the
# points; if they're ~coincident (< lbl_8053EFC4 epsilon), tests that
# single point directly via the per-actor virtual at vtable+0x4c
# (packed as a 3-float {x,y,epsilon} probe) and returns its result.
# Otherwise normalizes the direction (fast inverse-sqrt, skipped below
# the epsilon threshold), scales it by a fixed per-step length
# (lbl_8053EFDC), computes a step count from the total distance
# (lbl_8053EFF8), and walks from pointA to pointB sample-by-sample
# calling the same vtable+0x4c virtual at each step - returning 1 the
# instant any sample reports true, else falling back to one final test
# exactly at pointB. The vtable+0x4c virtual is the same slot
# fn_801F172C (project_fsa_position_validator_closed.md, an earlier
# session's large room-boundary/wall-push validator) calls internally,
# so this is a real per-actor-overridable spatial test, not a fixed
# global check - whether "true" here means "obstructed" or "target
# acquired/visible" is not settled (see fn_801CF888's banner).
fn_801CFA70:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 26, 3
    mr 29, 4
    mr 27, 5
    mr 28, 6
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    mr 31, 28
    .4byte 0x4080000C # bge .L_801CFAB8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801CFABC
L_801CFAB8:
    addi 3, 3, 0xdc
L_801CFABC:
    lfs 3, 0x0(29)
    lfs 0, 0x0(3)
    fcmpo cr0, 3, 0
    .4byte 0x41800064 # blt .L_801CFB2C
    lfs 5, 0x4(29)
    lfs 1, 0x4(3)
    fcmpo cr0, 5, 1
    .4byte 0x41800054 # blt .L_801CFB2C
    lfs 2, 0x8(3)
    fcmpo cr0, 3, 2
    cror eq, gt, eq
    .4byte 0x41820044 # beq .L_801CFB2C
    lfs 6, 0xc(3)
    fcmpo cr0, 5, 6
    cror eq, gt, eq
    .4byte 0x41820034 # beq .L_801CFB2C
    lfs 4, 0x0(27)
    fcmpo cr0, 4, 0
    .4byte 0x41800028 # blt .L_801CFB2C
    lfs 0, 0x4(27)
    fcmpo cr0, 0, 1
    .4byte 0x4180001C # blt .L_801CFB2C
    fcmpo cr0, 4, 2
    cror eq, gt, eq
    .4byte 0x41820010 # beq .L_801CFB2C
    fcmpo cr0, 0, 6
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_801CFB34
L_801CFB2C:
    li 3, 0x1
    .4byte 0x4800019C # b .L_801CFCCC
L_801CFB34:
    fsubs 30, 0, 5
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fsubs 31, 4, 3
    fmuls 1, 30, 30
    fmadds 6, 31, 31, 1
    fcmpo cr0, 6, 0
    .4byte 0x40810010 # ble .L_801CFB5C
    frsqrte 0, 6
    fmuls 4, 0, 6
    .4byte 0x48000008 # b .L_801CFB60
L_801CFB5C:
    fmr 4, 6
L_801CFB60:
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_801CFB9C
    stfs 3, 0x14(1)
    mr 3, 26
    mr 4, 31
    addi 5, 1, 0x14
    stfs 5, 0x18(1)
    stfs 2, 0x1c(1)
    lwz 12, 0x0(26)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    .4byte 0x48000134 # b .L_801CFCCC
L_801CFB9C:
    lis 3, lbl_80539D44@ha
    .4byte 0xC022C040 # lfs f1, lbl_8053EFE0@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    li 30, 0x0
    fmuls 0, 1, 0
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x4182003C # beq .L_801CFBF4
    fcmpo cr0, 6, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CFBCC
    .4byte 0x48000024 # b .L_801CFBEC
L_801CFBCC:
    frsqrte 3, 6
    .4byte 0xC042C044 # lfs f2, lbl_8053EFE4@sda21(r0)
    .4byte 0xC002C048 # lfs f0, lbl_8053EFE8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_801CFBEC:
    fmuls 31, 31, 6
    fmuls 30, 30, 6
L_801CFBF4:
    .4byte 0xC002C058 # lfs f0, lbl_8053EFF8@sda21(r0)
    li 28, 0x0
    .4byte 0xC062C03C # lfs f3, lbl_8053EFDC@sda21(r0)
    fmuls 0, 0, 4
    lfs 4, 0x4(29)
    lfs 2, 0x0(29)
    fmuls 31, 31, 3
    .4byte 0xC022C024 # lfs f1, lbl_8053EFC4@sda21(r0)
    fmuls 30, 30, 3
    fctiwz 0, 0
    stfs 2, 0x20(1)
    stfs 4, 0x24(1)
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    stfs 1, 0x28(1)
    addi 29, 3, 0x1
    .4byte 0x4800004C # b .L_801CFC80
L_801CFC38:
    mr 3, 26
    mr 4, 31
    lwz 12, 0x0(26)
    addi 5, 1, 0x20
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801CFC64
    li 30, 0x1
    .4byte 0x48000028 # b .L_801CFC88
L_801CFC64:
    lfs 1, 0x20(1)
    addi 28, 28, 0x1
    lfs 0, 0x24(1)
    fadds 1, 1, 31
    fadds 0, 0, 30
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
L_801CFC80:
    cmpw 28, 29
    .4byte 0x4180FFB4 # blt .L_801CFC38
L_801CFC88:
    clrlwi. 0, 30, 24
    .4byte 0x4082003C # bne .L_801CFCC8
    lfs 2, 0x4(27)
    mr 3, 26
    lfs 1, 0x0(27)
    mr 4, 31
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    addi 5, 1, 0x8
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 12, 0x0(26)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    mr 30, 3
L_801CFCC8:
    mr 3, 30
L_801CFCCC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr
