.section extab, "a"
.balign 4
.global etb_80006A94
etb_80006A94:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006A94, 8

.section extabindex, "a"
.balign 4
.global eti_8001336C
eti_8001336C:
    .4byte fn_8013AB2C
    .4byte 0x000000A0
    .4byte etb_80006A94
.size eti_8001336C, 12

# fn_8013AB2C - first of a 4-function cluster (through fn_8013AC90) that sets up
# a global `lbl_80536C50` struct off of the confirmed shared camera/cutscene-cue
# manager singleton `lbl_8053AB10` (see project_fsa_core_systems_gap.md /
# extab_801352f4.s). Pulls the singleton's `->0x8` and `->0xc` sub-objects
# (two tracked entities - likely two camera-relevant targets), passes both
# to fn_800BA6A4(&lbl_80536C50, singletonPtr) then fn_800BAE5C(&lbl_80536C50),
# toggles a graphics/render state pair fn_8005F4E0(1)/fn_8005F50C(0) (same
# pair reappears in fn_8013AC90 below), then for EACH of the two sub-objects:
# sets lbl_80536C50->0x50 to a distinct mode tag (3, then 4) and calls
# fn_800C24D0(obj) [[register/attach under that mode]] followed by
# fn_800C1EA4(obj) [[a second, unlabeled follow-up call]]. fn_800BA6A4/
# fn_800BAE5C/fn_800C24D0/fn_800C1EA4 not yet decompiled.
.text
.balign 4
.global fn_8013AB2C

fn_8013AB2C:
    stwu 1, -0x20(1)
    mflr 0
    lis 3, lbl_80536C50@ha
    stw 0, 0x24(1)
    addi 3, 3, lbl_80536C50@l
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 30, 0x8(4)
    lwz 29, 0xc(4)
    bl fn_800BA6A4
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
    bl fn_800BAE5C
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    lis 3, lbl_80536C50@ha
    li 0, 0x3
    addi 31, 3, lbl_80536C50@l
    mr 3, 30
    stw 0, 0x50(31)
    bl fn_800C24D0
    li 0, 0x4
    mr 3, 29
    stw 0, 0x50(31)
    bl fn_800C24D0
    mr 3, 30
    bl fn_800C1EA4
    mr 3, 29
    bl fn_800C1EA4
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
