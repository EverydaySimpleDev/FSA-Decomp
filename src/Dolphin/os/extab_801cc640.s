.section extab, "a"
.balign 4
.global etb_80008278
etb_80008278:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008278, 8

.section extabindex, "a"
.balign 4
.global eti_800154D8
eti_800154D8:
    .4byte fn_801CC640
    .4byte 0x000000F0
    .4byte etb_80008278
.size eti_800154D8, 12

.text
.balign 4
.global fn_801CC640

# fn_801CC640(idOut, posOut) - sibling of fn_801CC820/fn_801CC538
# (extab_801cc820.s/801cc538.s, see fn_801CC820's banner for the shared
# structure). Type-code constant here is 0x5043444D (not a recognizable
# ASCII word - reported as-is). Same "copy position into *posOut"
# behavior as fn_801CC820, but with an extra "consume" step not present
# in either sibling: on a full match it zeroes the record's +0x108
# cooldown/count field back to 0 (a one-shot "consumed" pattern), and
# does not call fn_801F3668 or touch +0x254.
fn_801CC640:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr. 28, 4
    .4byte 0x4182000C # beq .L_801CC674
    li 0, -0x1
    stw 0, 0x0(28)
L_801CC674:
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_801CC68C
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    stfs 0, 0x0(29)
    stfs 0, 0x4(29)
    stfs 0, 0x8(29)
L_801CC68C:
    bl fn_8023B358
    mr. 31, 3
    .4byte 0x41800078 # blt .L_801CC70C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820064 # beq .L_801CC70C
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_801CC70C
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x5043
    cmplwi 0, 0x444d
    .4byte 0x40820048 # bne .L_801CC70C
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_801CC70C
    cmplwi 28, 0x0
    li 30, 0x1
    .4byte 0x41820008 # beq .L_801CC6E4
    stw 31, 0x0(28)
L_801CC6E4:
    cmplwi 29, 0x0
    .4byte 0x4182001C # beq .L_801CC704
    lfs 0, 0x3c(3)
    stfs 0, 0x0(29)
    lfs 0, 0x40(3)
    stfs 0, 0x4(29)
    lfs 0, 0x44(3)
    stfs 0, 0x8(29)
L_801CC704:
    li 0, 0x0
    stw 0, 0x108(3)
L_801CC70C:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
