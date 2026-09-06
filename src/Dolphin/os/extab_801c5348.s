.section extab, "a"
.balign 4
.global etb_800080C0
etb_800080C0:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_800080C0, 8

.section extabindex, "a"
.balign 4
.global eti_80015280
eti_80015280:
    .4byte fn_801C5348
    .4byte 0x0000007C
    .4byte etb_800080C0
.size eti_80015280, 12

.text
.balign 4
.global fn_801C5348

# fn_801C5348(this, maxDist) - "is there a nearby player I can target
# within maxDist." Calls the CONFIRMED target-selection function
# fn_801D05F8 (project_fsa_slk2_target_acquisition_solved.md) with
# this->0xc as the query position; if it returns a valid player index
# (>=0), calls not-yet-decompiled fn_801D0D50(this, maxDist, this->0xc)
# to verify that player is within maxDist, returning true only if both
# checks pass. Closes the hedge left in fn_802188B0's banner
# (extab_802188b0.s), which calls this as one of its HBMB-spawn
# preconditions with maxDist=lbl_8053FC50.
fn_801C5348:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    fmr 31, 1
    mr 30, 3
    .4byte 0xC022BE68 # lfs f1, lbl_8053EE08@sda21(r0)
    addi 4, 30, 0xc
    li 31, 0x0
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800020 # blt .L_801C53A0
    fmr 1, 31
    mr 3, 30
    addi 5, 30, 0xc
    bl fn_801D0D50
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801C53A0
    li 31, 0x1
L_801C53A0:
    mr 3, 31
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
