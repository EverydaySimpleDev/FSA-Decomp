.section extab, "a"
.balign 4
.global etb_80006CEC
etb_80006CEC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006CEC, 8

.section extabindex, "a"
.balign 4
.global eti_800136F0
eti_800136F0:
    .4byte fn_801452FC
    .4byte 0x00000078
    .4byte etb_80006CEC
.size eti_800136F0, 12

# fn_801452FC - DDRK's ("Deadlock") real draw(). Fully traced: draws
# NOTHING unless this->0x230 (FSM state) is 3, or is 4 with this->0x23c's
# low bit set - meaning DDRK is invisible/undrawn for most of its state
# machine (states 0-2, and plain state 4) and only renders once it has
# "sprung." When it does draw, indexes model table lbl_80465BA8 using
# this->0x98 (a 0-4 "variant" selector set randomly in update()) doubled
# as a stride, with a special-cased offset (+0x1c) for variants 3/4 vs a
# fixed fallback index (8) otherwise, via the confirmed shared
# fn_801F06F0 effect-spawn primitive.
.text
.balign 4
.global fn_801452FC

fn_801452FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 5, 0x230(3)
    lwz 0, 0x98(3)
    cmpwi 5, 0x3
    lwz 4, 0x244(3)
    slwi 0, 0, 1
    add 6, 4, 0
    .4byte 0x4182000C # beq .L_8014532C
    cmpwi 5, 0x4
    .4byte 0x40820008 # bne .L_80145330
L_8014532C:
    li 6, 0x8
L_80145330:
    cmpwi 5, 0x4
    .4byte 0x40820010 # bne .L_80145344
    lwz 0, 0x23c(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820024 # beq .L_80145364
L_80145344:
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    lis 4, lbl_80465BA8@ha
    addi 5, 6, 0x1c
    li 6, 0x0
    fmr 2, 1
    addi 4, 4, lbl_80465BA8@l
    li 7, 0x0
    bl fn_801F06F0
L_80145364:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

