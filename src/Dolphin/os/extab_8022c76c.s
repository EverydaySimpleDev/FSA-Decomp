.section extab, "a"
.balign 4
.global etb_8000A950
etb_8000A950:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A950, 8

.section extabindex, "a"
.balign 4
.global eti_80018904
eti_80018904:
    .4byte fn_8022C76C
    .4byte 0x000000C0
    .4byte etb_8000A950
.size eti_80018904, 12

.text
.balign 4
.global fn_8022C76C

# fn_8022C76C(ownerIdx) -> float - validates ownerIdx against the
# CONFIRMED 4-player array (lbl_8053AC90) using the SAME active-flag
# idiom (+0xcac) as the 4-player-scan family; if the index is
# out-of-range, the array is uninitialized, or the slot isn't active,
# returns a shared default float (lbl_80540008). Otherwise delegates
# to not-yet-decompiled fn_8024712C(player) for the real value.
# Sibling of fn_8022C82C (extab_8022c82c.s, identical structure,
# different delegate fn_80247330) - likely "get owner N's facing
# angle" given fn_802808E8's repeated fneg-based position-perturbation
# use of this result. Confirmed caller: fn_802808E8
# (extab_802808e8.s), called with playerObj->0x4 (owner index).
fn_8022C76C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C78C
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000094 # b .L_8022C81C
L_8022C78C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C79C
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000084 # b .L_8022C81C
L_8022C79C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C7AC
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000074 # b .L_8022C81C
L_8022C7AC:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C7BC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C7FC
L_8022C7BC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C7CC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C7FC
L_8022C7CC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C7DC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C7FC
L_8022C7DC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C7F8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C7FC
L_8022C7F8:
    lbz 0, 0xcac(4)
L_8022C7FC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C818
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024712C
    .4byte 0x48000008 # b .L_8022C81C
L_8022C818:
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
L_8022C81C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
