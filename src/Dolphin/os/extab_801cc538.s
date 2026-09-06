.section extab, "a"
.balign 4
.global etb_80008270
etb_80008270:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80008270, 8

.section extabindex, "a"
.balign 4
.global eti_800154CC
eti_800154CC:
    .4byte fn_801CC538
    .4byte 0x00000108
    .4byte etb_80008270
.size eti_800154CC, 12

.text
.balign 4
.global fn_801CC538

# fn_801CC538(offsetVec, idOut, outParams) - sibling of fn_801CC820
# (extab_801cc820.s, see that banner for the shared spatial-registry
# lookup + cooldown-gate structure). Here the 32-bit type-code constant
# is 0x424F4D45 (not a recognizable ASCII word - reported as-is rather
# than guessed). On a full match (active, type code, +0x108>0), stores
# the found ID into *idOut, sets the record's +0x254 flag to 1 (unlike
# fn_801CC820/fn_801CC640 which do NOT touch +0x254), and if outParams
# is provided, computes two paired-single offset vectors - (record
# +0x3c/+0x40 paired-single minus offsetVec, scaled by lbl_8053EF90)
# and (offsetVec minus record+0x44, scaled the same way) - storing them
# into outParams[0]/outParams[8]. No fn_801F3668 NAVI-notify call here,
# unlike fn_801CC820.
fn_801CC538:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr. 29, 6
    mr 27, 4
    mr 28, 5
    li 31, 0x0
    .4byte 0x4182000C # beq .L_801CC56C
    li 0, -0x1
    stw 0, 0x0(29)
L_801CC56C:
    bl fn_8023B22C
    mr. 30, 3
    .4byte 0x418000AC # blt .L_801CC620
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820098 # beq .L_801CC620
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_801CC620
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x424f
    cmplwi 0, 0x4d45
    .4byte 0x4082007C # bne .L_801CC620
    cmplwi 29, 0x0
    li 31, 0x1
    .4byte 0x41820008 # beq .L_801CC5B8
    stw 30, 0x0(29)
L_801CC5B8:
    li 0, 0x1
    cmplwi 28, 0x0
    stw 0, 0x254(3)
    .4byte 0x4182005C # beq .L_801CC620
    lfs 0, 0x44(3)
    lfs 5, 0x4(27)
    lfs 1, 0x0(27)
    stfs 0, 0x10(1)
    psq_l 2, 0x3c(3), 0, 0
    .4byte 0xC3E2BFF0 # lfs f31, lbl_8053EF90@sda21(r0)
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    psq_l 4, 0x10(1), 1, 0
    ps_muls0 3, 2, 31
    stfs 0, 0x1c(1)
    ps_muls0 0, 4, 31
    psq_l 4, 0x1c(1), 1, 0
    psq_st 2, 0x8(1), 0, 0
    ps_sub 2, 4, 0
    stfs 1, 0x14(1)
    stfs 5, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    psq_st 3, 0x8(1), 0, 0
    ps_sub 1, 1, 3
    psq_st 0, 0x10(1), 1, 0
    psq_st 1, 0x0(28), 0, 0
    psq_st 2, 0x8(28), 1, 0
L_801CC620:
    mr 3, 31
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
