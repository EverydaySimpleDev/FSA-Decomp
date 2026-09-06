.section extab, "a"
.balign 4
.global etb_800081D0
etb_800081D0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800081D0, 8

.section extabindex, "a"
.balign 4
.global eti_800153DC
eti_800153DC:
    .4byte fn_801C976C
    .4byte 0x00000168
    .4byte etb_800081D0
.size eti_800153DC, 12

.text
.balign 4
.global fn_801C976C

# fn_801C976C(this) - picks the NEXT single-hop ring index to travel
# to (returned in r3), for use alongside fn_801C8BC4's hop-count
# (this->0x55d). Peeks the forward and backward neighbors of the
# current ring index the same way fn_801C71BC does (fn_800FD818 to
# step, restoring the original index after each peek) via the
# CONFIRMED &this->0x358 ring-tracker (project_fsa_rail_actor_identified.md).
# Rolls a PRNG-biased coin flip (same threshold-comparison idiom seen
# elsewhere in this cluster, e.g. fn_801C2ED4's interrupt roll) to pick
# an INITIAL preferred direction (forward or backward), then queries
# that neighbor's room via the not-yet-confirmed
# fn_800FE25C(ringObj, neighborIndex) (a likely sibling of RAIL's
# ring-traversal library) and compares it against this->0x4 (my own
# room) - if they DON'T match (the preferred hop would leave my current
# room), falls back to the OTHER neighbor instead. Net effect: "hop
# forward or backward at random, but never leave my current room."
fn_801C976C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 31, 0x358
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl GetCurrentSlotPtr
    lbz 30, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 29, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801C97CC
    stb 30, 0x3(3)
L_801C97CC:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 30, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C9804
    stb 30, 0x3(3)
L_801C9804:
    addic. 0, 1, 0x9
    .4byte 0x41820008 # beq .L_801C9810
    stb 28, 0x9(1)
L_801C9810:
    addic. 0, 1, 0x8
    .4byte 0x41820008 # beq .L_801C981C
    stb 29, 0x8(1)
L_801C981C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_801C988C
    lbz 29, 0x8(1)
    addi 3, 31, 0x358
    lwz 28, 0x4(31)
    bl GetCurrentSlotPtr
    mr 4, 29
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x41820030 # beq .L_801C98B0
    lbz 29, 0x9(1)
    .4byte 0x48000028 # b .L_801C98B0
L_801C988C:
    lbz 29, 0x9(1)
    addi 3, 31, 0x358
    lwz 28, 0x4(31)
    bl GetCurrentSlotPtr
    mr 4, 29
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x41820008 # beq .L_801C98B0
    lbz 29, 0x8(1)
L_801C98B0:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
