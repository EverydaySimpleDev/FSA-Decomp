/*
 * NEW ACTOR (vtable lbl_804A5A30). "Got hit" reaction handler,
 * comprehensive variant covering all 4 slots of the confirmed 4-player-
 * scan family (fn_8023AE34/fn_8023AA18/fn_8023AC74/fn_8023AD54), each
 * paired with the confirmed fn_801CC820/fn_801CC538/fn_801CC640
 * validity predicates - the same shape as
 * [[project_fsa_boss_registrant_actor_progress]]'s fn_8021E2A98.
 * Applies knockback via the confirmed fn_801F37AC on a match, then
 * transitions via the confirmed fn_80205E0C(this, 7). Sibling of
 * fn_80206EFC/fn_80207004.
 */
.section extab, "a"
.balign 4
.global etb_80009CCC
etb_80009CCC:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80009CCC, 8

.section extabindex, "a"
.balign 4
.global eti_80017698
eti_80017698:
    .4byte fn_802070B4
    .4byte 0x00000230
    .4byte etb_80009CCC
.size eti_80017698, 12

.text
.balign 4
.global fn_802070B4

fn_802070B4:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 26, 0x68(1)
    mr 31, 3
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8020711C
    lwz 0, 0x248(31)
    cmpwi 0, 0x3
    .4byte 0x41820040 # beq .L_8020711C
    cmpwi 0, 0x4
    .4byte 0x41820038 # beq .L_8020711C
    lfs 1, 0x78(31)
    lfs 0, 0x70(31)
    .4byte 0xC042C90C # lfs f2, lbl_8053F8AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4182001C # beq .L_8020711C
    lfs 1, 0x7c(31)
    lfs 0, 0x74(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80207124
L_8020711C:
    li 3, 0x0
    .4byte 0x480001B0 # b .L_802072D0
L_80207124:
    li 0, -0x1
    stfs 2, 0x48(1)
    addi 4, 1, 0x38
    li 29, 0x0
    stw 0, 0x8(1)
    li 28, 0x0
    li 27, 0x0
    stfs 2, 0x4c(1)
    stfs 2, 0x50(1)
    bl fn_801F317C
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AE34
    mr. 30, 3
    .4byte 0x41800014 # blt .L_80207174
    addi 4, 1, 0x48
    bl fn_801CC820
    mr 29, 3
    .4byte 0x48000078 # b .L_802071E8
L_80207174:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AA18
    mr. 30, 3
    .4byte 0x4180000C # blt .L_80207194
    li 28, 0x1
    .4byte 0x48000058 # b .L_802071E8
L_80207194:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AC74
    mr. 30, 3
    .4byte 0x4180001C # blt .L_802071C4
    addi 4, 1, 0xc
    addi 5, 1, 0x54
    addi 6, 1, 0x8
    bl fn_801CC538
    mr 27, 3
    .4byte 0x48000028 # b .L_802071E8
L_802071C4:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0xc
    bl fn_8023AD54
    mr. 30, 3
    .4byte 0x41800010 # blt .L_802071E8
    addi 4, 1, 0x8
    addi 5, 1, 0x48
    bl fn_801CC640
L_802071E8:
    cmpwi 30, 0x0
    li 26, 0x0
    .4byte 0x418000DC # blt .L_802072CC
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    clrlwi. 0, 28, 24
    lfs 0, 0x8(3)
    li 7, 0x0
    psq_st 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    .4byte 0x4182000C # beq .L_80207220
    li 7, 0x4
    .4byte 0x48000080 # b .L_8020729C
L_80207220:
    clrlwi. 0, 27, 24
    .4byte 0x41820020 # beq .L_80207244
    lfs 2, 0x54(1)
    lfs 1, 0x58(1)
    lfs 0, 0x5c(1)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    .4byte 0x4800005C # b .L_8020729C
L_80207244:
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
    .4byte 0x41820008 # beq .L_8020729C
    li 7, 0x3
L_8020729C:
    mr 3, 31
    mr 8, 30
    addi 5, 1, 0x2c
    li 4, 0x0
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    mr 26, 3
    .4byte 0x41820010 # beq .L_802072CC
    mr 3, 31
    li 4, 0x7
    bl fn_80205E0C
L_802072CC:
    mr 3, 26
L_802072D0:
    lmw 26, 0x68(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

