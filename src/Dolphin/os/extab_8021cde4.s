.section extab, "a"
.balign 4
.global etb_8000A434
etb_8000A434:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A434, 8

.section extabindex, "a"
.balign 4
.global eti_80018178
eti_80018178:
    .4byte fn_8021CDE4
    .4byte 0x00000214
    .4byte etb_8000A434
.size eti_80018178, 12

.text
.balign 4
.global fn_8021CDE4

# fn_8021CDE4(this, mode) - a second dispatcher layer sitting ABOVE the
# CONFIRMED state-entry machine fn_801C3B7C (project_fsa_slk2_state_transition_fn_landed.md).
# Snapshots this->0x244 into this->0x108 (a remaining-hop/countdown budget
# consumed by fn_8021D020, extab_8021cff8.s) and looks up a per-mode
# 16-bit value from lbl_8046A748 into this->0x568. Dispatches on mode
# (0-4), each branch doing mode-specific rail-point setup before handing
# off to fn_801C3B7C with a specific sub-state code:
#   mode==2: tests the CONFIRMED "room<8" idiom fn_801CD2F8
#            (project_fsa_slk2_helper_backlog_batch1.md), initializes
#            this->0x580 rail-point struct via fn_801CD150 (either a
#            jittered point using lbl_8053FD30/34 offsets, or this->0xc
#            directly), computes a facing/path vector via not-yet-seen
#            fn_8021425C/SetCurrentSlotIndex/GetCurrentSlotPtr and fn_800FE294, then
#            enters fn_801C3B7C(this, 0x19).
#   mode==0: this->0x564==0 -> fn_801C3B7C(this, 0x2b).
#            this->0x564==1 -> cross-room rebase via the CONFIRMED
#            fn_801CD0D0 (project_fsa_position_validator_closed.md),
#            recompute facing via SetCurrentSlotIndex, enter fn_801C3B7C(this, 0x1a).
#            this->0x564==3 -> sets this->0x568=1; unless this->0x248
#            (CONFIRMED current-state field) is already 0x2a, enter
#            fn_801C3B7C(this, 0x1b).
#   mode==4: sets this->0x59e=0x258, enter fn_801C3B7C(this, 0x2e).
# On every path, this->0x564 is finally set to mode. Track A (byte-matched)
# + overview: fn_8021425C/80214254/80214244/fn_800FE294 not independently
# decompiled yet, so their exact math is not asserted beyond "path/facing
# vector computation."
fn_8021CDE4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    lis 4, lbl_8046A748@ha
    stw 30, 0x28(1)
    mulli 0, 31, 0xa
    addi 4, 4, lbl_8046A748@l
    lwz 5, 0x244(3)
    cmpwi 31, 0x2
    lhzx 0, 4, 0
    mr 30, 3
    stw 5, 0x108(3)
    stw 0, 0x568(3)
    .4byte 0x4182010C # beq .L_8021CF2C
    .4byte 0x40800010 # bge .L_8021CE34
    cmpwi 31, 0x1
    .4byte 0x40800014 # bge .L_8021CE40
    .4byte 0x480001AC # b .L_8021CFDC
L_8021CE34:
    cmpwi 31, 0x4
    .4byte 0x408001A4 # bge .L_8021CFDC
    .4byte 0x48000190 # b .L_8021CFCC
L_8021CE40:
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8021CE88
    li 0, 0x2
    .4byte 0xC062CD90 # lfs f3, lbl_8053FD30@sda21(r0)
    stw 0, 0x58c(30)
    addi 3, 1, 0x8
    .4byte 0xC002CD94 # lfs f0, lbl_8053FD34@sda21(r0)
    addi 4, 30, 0x580
    lfs 2, 0x574(30)
    lfs 1, 0x570(30)
    fadds 2, 3, 2
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_801CD150
    .4byte 0x48000018 # b .L_8021CE9C
L_8021CE88:
    li 0, 0x0
    addi 3, 30, 0xc
    stw 0, 0x58c(30)
    addi 4, 30, 0x580
    bl fn_801CD150
L_8021CE9C:
    li 0, 0x8
    addi 3, 30, 0x358
    stw 0, 0x57c(30)
    addi 6, 30, 0x580
    li 4, 0x1
    lwz 0, 0x4(30)
    stw 0, 0x56c(30)
    lfs 0, 0xc(30)
    stfs 0, 0x570(30)
    lfs 0, 0x10(30)
    stfs 0, 0x574(30)
    lfs 0, 0x14(30)
    stfs 0, 0x578(30)
    lwz 0, 0x90(30)
    lwz 7, 0x57c(30)
    extrwi 5, 0, 4, 16
    bl fn_8021425C
    addi 3, 30, 0x358
    li 4, 0x1
    bl SetCurrentSlotIndex
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x14
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0x14(1)
    mr 3, 30
    li 4, 0x19
    stfs 0, 0x32c(30)
    lfs 0, 0x18(1)
    stfs 0, 0x330(30)
    lfs 0, 0x1c(1)
    stfs 0, 0x334(30)
    bl fn_801C3B7C
    .4byte 0x480000B4 # b .L_8021CFDC
L_8021CF2C:
    lwz 0, 0x564(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8021CF44
    li 4, 0x2b
    bl fn_801C3B7C
    .4byte 0x4800009C # b .L_8021CFDC
L_8021CF44:
    cmpwi 0, 0x1
    .4byte 0x4082005C # bne .L_8021CFA4
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x58c(30)
    addi 3, 30, 0xc
    addi 4, 30, 0x580
    stw 0, 0x57c(30)
    bl fn_801CD0D0
    lwz 0, 0x4(30)
    addi 3, 30, 0x358
    li 4, 0x0
    stw 0, 0x56c(30)
    lfs 0, 0xc(30)
    stfs 0, 0x570(30)
    lfs 0, 0x10(30)
    stfs 0, 0x574(30)
    lfs 0, 0x14(30)
    stfs 0, 0x578(30)
    bl SetCurrentSlotIndex
    mr 3, 30
    li 4, 0x1a
    bl fn_801C3B7C
    .4byte 0x4800003C # b .L_8021CFDC
L_8021CFA4:
    cmpwi 0, 0x3
    .4byte 0x40820034 # bne .L_8021CFDC
    li 0, 0x1
    stw 0, 0x568(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x2a
    .4byte 0x41820020 # beq .L_8021CFDC
    li 4, 0x1b
    bl fn_801C3B7C
    .4byte 0x48000014 # b .L_8021CFDC
L_8021CFCC:
    li 0, 0x258
    li 4, 0x2e
    sth 0, 0x59e(30)
    bl fn_801C3B7C
L_8021CFDC:
    stw 31, 0x564(30)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
