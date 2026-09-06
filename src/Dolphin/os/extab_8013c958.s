.section extab, "a"
.balign 4
.global etb_80006B84
etb_80006B84:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80006B84, 8

.section extabindex, "a"
.balign 4
.global eti_800134D4
eti_800134D4:
    .4byte fn_8013C958
    .4byte 0x0000014C
    .4byte etb_80006B84
.size eti_800134D4, 12

# fn_8013C958(this, arg) - a method of the class fn_8013C86C destructs.
# `this` doubles as a fixed 1024-slot array (16 bytes/slot, starting at
# offset 0) alongside separate parallel metadata arrays higher up
# (`this->0x4010` 4-byte entries, `this->0x4074` u16 entries,
# `this->0x40a8` 4-byte entries, `this->0x410c` = active-entry count -
# the SAME layout fn_8013C8CC iterates).
#
# First, calls fn_800EBA88(arg) to get a count (r30), then linearly
# searches the metadata arrays for the entry whose `0x4010` field equals
# `arg`, capturing its type code (`0x4074` u16) and a secondary value
# (`0x40a8`).
#
# Proceeds only if: count>0, OR the secondary value is nonzero, OR the
# type code equals 0x54d (unconfirmed raw ID, no naming table). If so,
# clears bit 0 of `arg->0xf4`, then scans all 1024 slots for ones whose
# `+0x10` u16 matches the found type code and whose `+0x12` u16 (a
# per-slot use-count) is nonzero: if `count>0`, spawns up to `count`
# handles via fn_800EB5A0(arg) and copies the slot's vec3 (`+0x14/0x18/
# 0x1c`) into each handle's `+0x18/0x1c/0x20`, then decrements the slot's
# use-count; if `count<=0`, instead writes the slot's vec3 directly into
# `arg->0xa4/0xa8/0xac` (no handle spawned). Finally re-sets bit 0 of
# `arg->0xf4`.
.text
.balign 4
.global fn_8013C958

fn_8013C958:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 31, 4
    mr 26, 3
    mr 3, 31
    bl fn_800EBA88
    lwz 0, 0x410c(26)
    mr 30, 3
    mr 3, 26
    li 4, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810038 # ble .L_8013C9C8
L_8013C994:
    lwz 0, 0x4010(3)
    cmplw 31, 0
    .4byte 0x40820020 # bne .L_8013C9BC
    slwi 3, 4, 1
    slwi 0, 4, 2
    add 4, 26, 3
    add 3, 26, 0
    lhz 28, 0x4074(4)
    lwz 29, 0x40a8(3)
    .4byte 0x48000010 # b .L_8013C9C8
L_8013C9BC:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
    .4byte 0x4200FFD0 # bdnz .L_8013C994
L_8013C9C8:
    cmpwi 30, 0x0
    .4byte 0x41810014 # bgt .L_8013C9E0
    cmpwi 29, 0x0
    .4byte 0x4082000C # bne .L_8013C9E0
    cmplwi 28, 0x54d
    .4byte 0x408200B4 # bne .L_8013CA90
L_8013C9E0:
    lwz 0, 0xf4(31)
    mr 29, 26
    li 27, 0x0
    clrrwi 0, 0, 1
    stw 0, 0xf4(31)
L_8013C9F4:
    lhz 0, 0x10(29)
    cmplw 0, 28
    .4byte 0x40820078 # bne .L_8013CA74
    lhz 0, 0x12(29)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_8013CA74
    cmpwi 30, 0x0
    .4byte 0x40810058 # ble .L_8013CA68
    lfs 0, 0x14(29)
    li 26, 0x0
    stfs 0, 0xa4(31)
    lfs 0, 0x18(29)
    stfs 0, 0xa8(31)
    lfs 0, 0x1c(29)
    stfs 0, 0xac(31)
    .4byte 0x48000030 # b .L_8013CA60
L_8013CA34:
    mr 3, 31
    bl fn_800EB5A0
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8013CA5C
    lfs 0, 0x14(29)
    stfs 0, 0x18(3)
    lfs 0, 0x18(29)
    stfs 0, 0x1c(3)
    lfs 0, 0x1c(29)
    stfs 0, 0x20(3)
L_8013CA5C:
    addi 26, 26, 0x1
L_8013CA60:
    cmpw 26, 30
    .4byte 0x4180FFD0 # blt .L_8013CA34
L_8013CA68:
    lhz 3, 0x12(29)
    subi 0, 3, 0x1
    sth 0, 0x12(29)
L_8013CA74:
    addi 27, 27, 0x1
    addi 29, 29, 0x10
    cmpwi 27, 0x400
    .4byte 0x4180FF74 # blt .L_8013C9F4
    lwz 0, 0xf4(31)
    ori 0, 0, 0x1
    stw 0, 0xf4(31)
L_8013CA90:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
