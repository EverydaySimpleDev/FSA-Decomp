.section extab, "a"
.balign 4
.global etb_8000A160
etb_8000A160:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A160, 8

.section extabindex, "a"
.balign 4
.global eti_80017D58
eti_80017D58:
    .4byte fn_802144F0
    .4byte 0x00000088
    .4byte etb_8000A160
.size eti_80017D58, 12

.text
.balign 4
.global fn_802144F0

# fn_802144F0(this) - "play a positional cue" trigger for SLK2's
# embedded sub-object at this->0x34. First notifies the CONFIRMED
# fn_801F0E34 handle primitive (already-landed, extab_801f0e34.s)
# with a literal ID (0x4c3), then builds a 3-float position (the
# sub-object's 0xc/0x10 paired-single position plus fixed offsets
# lbl_8053FBA0/lbl_8053FBA4) on the stack and calls the CONFIRMED
# fn_8013CC50 sound/effect-handle lifecycle primitive
# (project_fsa_effect_playback_primitive.md) with literal ID 0x3cf
# at that offset position. Uses paired-singles (psq_l/psq_st) to
# move the xz position in one instruction, matching the same idiom
# used throughout the SLK2 cluster.
fn_802144F0:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, 0x4
    li 5, 0x0
    stw 0, 0x24(1)
    addi 4, 4, 0xc3
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x34(3)
    bl fn_801F0E34
    lwz 3, 0x34(31)
    addi 4, 1, 0x8
    .4byte 0xC002CC00 # lfs f0, lbl_8053FBA0@sda21(r0)
    li 5, 0x3cf
    psq_l 2, 0xc(3), 0, 0
    li 6, 0x0
    lfs 3, 0x14(3)
    li 7, 0x0
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    li 8, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 9, 0x0
    li 10, 0x1
    lfs 2, 0xc(1)
    stfs 3, 0x10(1)
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
