.section extab, "a"
.balign 4
.global etb_80006B14
etb_80006B14:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006B14, 8

.section extabindex, "a"
.balign 4
.global eti_8001342C
eti_8001342C:
    .4byte fn_8013B71C
    .4byte 0x000003D8
    .4byte etb_80006B14
.size eti_8001342C, 12

# fn_8013B71C(this) - the camera/cutscene-cue-manager's biggest method found
# so far (984 bytes): a scene-transition trigger.
#
# Gate: if (this->0x39 == 0) OR (currentScene->0x4c == 4 or 6), run the full
# reset block below; otherwise skip straight to the tail.
#
# Reset block (runs twice, once per tracked camera slot this->0x8 then
# this->0xc): resets the fog/color object (lbl_8053AB10->0x24) via
# fn_8030DFE8(obj, NULL), re-syncs the global camera struct lbl_80536C50 via
# fn_800BA6A4/fn_800BAE5C, toggles fn_8005F4E0(1)/fn_8005F50C(0), tags
# lbl_80536C50->0x50 with the slot's mode (3 then 4) and registers the slot
# via fn_800C24D0. Between the two passes, re-checks the SAME scene-type
# whitelist fn_8013B538/fn_8013B618 use (7,8,9,0x16,0xa,0xb / +0xc) and, if
# the scene ISN'T whitelisted, calls fn_802FF3B0(this->0x20) on the first
# pass and fn_802FF2D8(this->0x20) on the second - two more siblings of
# fn_802FF0EC, suggesting per-camera-slot enable variants of the same
# subsystem. First pass also calls fn_8013DA10(this->0x28) and
# fn_80158F70(this->0x2c) - two NEW sub-objects (0x28's family already
# forward-referenced by fn_8013B4C0/4F8/618; 0x2c is new here).
#
# Tail (always runs): fn_8013D908(this->0x28); if the SAME this->0x39/scene
# gate holds again, fn_8013D6E4(this->0x28); then a 3rd scene-whitelist
# check gating fn_8015F9C0(this->0x30) - yet another new sub-object.
#
# fn_8013D5D4/D908/D6E4/DA10 (the this->0x28 family) and fn_8015F9C0/
# fn_80158F70 (this->0x2c/0x30) are all forward-referenced, not yet landed -
# their addresses are past this cluster.
.text
.balign 4
.global fn_8013B71C

fn_8013B71C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lbz 0, 0x39(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8013B758
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_8013B758
    cmpwi 0, 0x6
    .4byte 0x40820284 # bne .L_8013B9D8
L_8013B758:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 3, 0x24(3)
    bl fn_8030DFE8
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
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
    stw 0, 0x50(31)
    lwz 3, 0x8(30)
    bl fn_800C24D0
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
    bl fn_800BAE5C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013B814
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8013B7FC
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8013B7FC
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8013B7FC
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8013B7FC
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8013B7FC
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8013B800
L_8013B7FC:
    li 0, 0x1
L_8013B800:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013B868
L_8013B814:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8013B854
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8013B854
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8013B854
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8013B854
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8013B854
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8013B854
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8013B858
L_8013B854:
    li 0, 0x1
L_8013B858:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013B868:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8013B884
    lwz 0, 0x4c(4)
    cmpwi 0, 0xc
    .4byte 0x4182000C # beq .L_8013B884
    lwz 3, 0x20(30)
    bl fn_802FF3B0
L_8013B884:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 3, 0x24(3)
    bl fn_8030DFE8
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
    bl fn_800BA6A4
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
    bl fn_800BAE5C
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0x5
    bl fn_8005F48C
    li 0, 0x4
    stw 0, 0x50(31)
    lwz 3, 0xc(30)
    bl fn_800C24D0
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
    bl fn_800BAE5C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013B94C
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8013B934
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8013B934
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8013B934
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8013B934
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8013B934
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8013B938
L_8013B934:
    li 0, 0x1
L_8013B938:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013B9A0
L_8013B94C:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8013B98C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8013B98C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8013B98C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8013B98C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8013B98C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8013B98C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8013B990
L_8013B98C:
    li 0, 0x1
L_8013B990:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013B9A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8013B9BC
    lwz 0, 0x4c(4)
    cmpwi 0, 0xc
    .4byte 0x4182000C # beq .L_8013B9BC
    lwz 3, 0x20(30)
    bl fn_802FF2D8
L_8013B9BC:
    lwz 3, 0x28(30)
    bl fn_8013DA10
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
    bl fn_800BA6A4
    lwz 3, 0x2c(30)
    bl fn_80158F70
L_8013B9D8:
    lwz 3, 0x28(30)
    bl fn_8013D908
    lbz 0, 0x39(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8013BA04
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_8013BA04
    cmpwi 0, 0x6
    .4byte 0x408200DC # bne .L_8013BADC
L_8013BA04:
    lwz 3, 0x28(30)
    bl fn_8013D6E4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013BA6C
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8013BA54
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8013BA54
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8013BA54
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8013BA54
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8013BA54
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8013BA58
L_8013BA54:
    li 0, 0x1
L_8013BA58:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013BAC0
L_8013BA6C:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8013BAAC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8013BAAC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8013BAAC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8013BAAC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8013BAAC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8013BAAC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8013BAB0
L_8013BAAC:
    li 0, 0x1
L_8013BAB0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013BAC0:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8013BAD4
    lwz 0, 0x4c(4)
    cmpwi 0, 0xc
    .4byte 0x4082000C # bne .L_8013BADC
L_8013BAD4:
    lwz 3, 0x30(30)
    bl fn_8015F9C0
L_8013BADC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
