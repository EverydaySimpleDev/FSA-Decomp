.section extab, "a"
.balign 4
.global etb_8000A958
etb_8000A958:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A958, 8

.section extabindex, "a"
.balign 4
.global eti_80018910
eti_80018910:
    .4byte fn_8022C82C
    .4byte 0x000000C0
    .4byte etb_8000A958
.size eti_80018910, 12

.text
.balign 4
.global fn_8022C82C

# fn_8022C82C(ownerIdx) -> float - sibling of fn_8022C76C
# (extab_8022c76c.s, identical validation structure, same shared
# default lbl_80540008), delegating to a DIFFERENT not-yet-decompiled
# function (fn_80247330) when the index/slot is valid. Confirmed
# caller: fn_802808E8 (extab_802808e8.s), called with playerObj->0x4
# (owner index) to compute a position-perturbation scale.
fn_8022C82C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C84C
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000094 # b .L_8022C8DC
L_8022C84C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C85C
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000084 # b .L_8022C8DC
L_8022C85C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C86C
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000074 # b .L_8022C8DC
L_8022C86C:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C87C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C8BC
L_8022C87C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C88C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C8BC
L_8022C88C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C89C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C8BC
L_8022C89C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C8B8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C8BC
L_8022C8B8:
    lbz 0, 0xcac(4)
L_8022C8BC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C8D8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80247330
    .4byte 0x48000008 # b .L_8022C8DC
L_8022C8D8:
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
L_8022C8DC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
