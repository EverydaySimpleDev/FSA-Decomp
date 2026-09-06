.section extab, "a"
.balign 4
.global etb_8000A150
etb_8000A150:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A150, 8

.section extabindex, "a"
.balign 4
.global eti_80017D40
eti_80017D40:
    .4byte fn_8021425C
    .4byte 0x0000004C
    .4byte etb_8000A150
.size eti_80017D40, 12

.text
.balign 4
.global fn_8021425C

# fn_8021425C(this, idx, srcPos, extra) - "record a rail-point/history
# entry into this[idx]'s 0xc8-stride slot" (same 0xc8 stride as the
# sibling accessors GetCurrentSlotPtr/SetCurrentSlotIndex, extab_80214244.s). Copies
# srcPos's 3-float position (xz via paired-single, y via lfs/stfs) into
# a local stack struct, then delegates the actual write plus `extra` to
# a not-yet-decompiled fn_800FE3EC. Confirmed caller: fn_8021CDE4
# (extab_8021cde4.s), which computes idx from a 4-bit field extracted
# from this->0x90 and passes this->0x580/this->0x57c as srcPos/extra.
fn_8021425C:
    stwu 1, -0x20(1)
    mflr 0
    lfs 0, 0x8(6)
    stw 0, 0x24(1)
    clrlwi 0, 4, 24
    mulli 0, 0, 0xc8
    psq_l 1, 0x0(6), 0, 0
    addi 6, 1, 0x8
    stfs 0, 0x10(1)
    mr 4, 5
    psq_st 1, 0x0(6), 0, 0
    mr 5, 6
    mr 6, 7
    add 3, 3, 0
    bl fn_800FE3EC
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
