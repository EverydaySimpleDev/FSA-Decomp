.section extab, "a"
.balign 4
.global etb_800082E0
etb_800082E0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800082E0, 8

.section extabindex, "a"
.balign 4
.global eti_80015574
eti_80015574:
    .4byte fn_801CCFE4
    .4byte 0x000000EC
    .4byte etb_800082E0
.size eti_80015574, 12

.text
.balign 4
.global fn_801CCFE4

# fn_801CCFE4(this) - the master player-eligibility AND-gate feeding
# fn_801D05F8's target-selection loop (extab_801d05f8.s,
# project_fsa_slk2_target_selection_solved.md): requires ALL of
# Player_GetCapabilityFlagByIndex/fn_80236B50/fn_8022DCD8/fn_80234C5C/fn_8023EA28/
# fn_80230188/fn_8022D534/fn_802349EC (this) to be true (none decompiled
# this session - presumably generic per-actor state gates such as
# alive/visible/not-frozen). If all pass, reads this actor's own
# team/group code via fn_8022CAF8(this) - codes outside {4,5} pass
# unconditionally; codes 4 or 5 additionally require fn_8022F478(this)
# to also be true.
fn_801CCFE4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_801CD0B4
    mr 3, 30
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4082009C # bne .L_801CD0B4
    mr 3, 30
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x4082008C # bne .L_801CD0B4
    mr 3, 30
    bl fn_80234C5C
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_801CD0B4
    mr 3, 30
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_801CD0B4
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082005C # bne .L_801CD0B4
    mr 3, 30
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x4082004C # bne .L_801CD0B4
    mr 3, 30
    bl fn_802349EC
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_801CD0B4
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x6
    .4byte 0x40800028 # bge .L_801CD0B0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_801CD098
    .4byte 0x4800001C # b .L_801CD0B0
L_801CD098:
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801CD0B4
    li 31, 0x1
    .4byte 0x48000008 # b .L_801CD0B4
L_801CD0B0:
    li 31, 0x1
L_801CD0B4:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
