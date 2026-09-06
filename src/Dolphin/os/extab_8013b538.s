.section extab, "a"
.balign 4
.global etb_80006B04
etb_80006B04:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006B04, 8

.section extabindex, "a"
.balign 4
.global eti_80013414
eti_80013414:
    .4byte fn_8013B538
    .4byte 0x000000E0
    .4byte etb_80006B04
.size eti_80013414, 12

# fn_8013B538(this) - reads the current-scene singleton `lbl_8053AAF8`
# (see corrected reference_fsa_global_prng.md) and its `->0x7f` boot-phase
# byte to pick between two near-identical whitelists of scene-type codes
# read from `->0x4c` (7,8,9,0x16,0xa,0xb in one branch; the same set plus
# 0xc in the other) - no naming table confirms what these scene-type codes
# mean, left unnamed. If the current scene type is NOT in the applicable
# whitelist, calls fn_802FF0EC(this->0x20) - i.e. this suppresses/enables
# this->0x20's effect (this->0x20 is the sub-object fn_8013B4C0 also
# touches) depending on which "kind" of scene is currently active.
.text
.balign 4
.global fn_8013B538

fn_8013B538:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013B5A4
    lwz 4, 0x4c(4)
    li 0, 0x0
    cmpwi 4, 0x7
    .4byte 0x4182002C # beq .L_8013B58C
    cmpwi 4, 0x8
    .4byte 0x41820024 # beq .L_8013B58C
    cmpwi 4, 0x9
    .4byte 0x4182001C # beq .L_8013B58C
    cmpwi 4, 0x16
    .4byte 0x41820014 # beq .L_8013B58C
    cmpwi 4, 0xa
    .4byte 0x4182000C # beq .L_8013B58C
    cmpwi 4, 0xb
    .4byte 0x40820008 # bne .L_8013B590
L_8013B58C:
    li 0, 0x1
L_8013B590:
    clrlwi 4, 0, 24
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013B5F8
L_8013B5A4:
    lwz 4, 0x4c(4)
    li 0, 0x0
    cmpwi 4, 0x7
    .4byte 0x41820034 # beq .L_8013B5E4
    cmpwi 4, 0x8
    .4byte 0x4182002C # beq .L_8013B5E4
    cmpwi 4, 0x9
    .4byte 0x41820024 # beq .L_8013B5E4
    cmpwi 4, 0x16
    .4byte 0x4182001C # beq .L_8013B5E4
    cmpwi 4, 0xa
    .4byte 0x41820014 # beq .L_8013B5E4
    cmpwi 4, 0xb
    .4byte 0x4182000C # beq .L_8013B5E4
    cmpwi 4, 0xc
    .4byte 0x40820008 # bne .L_8013B5E8
L_8013B5E4:
    li 0, 0x1
L_8013B5E8:
    clrlwi 4, 0, 24
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
L_8013B5F8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8013B608
    lwz 3, 0x20(3)
    bl fn_802FF0EC
L_8013B608:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
