# fn_803913E0 - actor@lbl_804AF490: vtable-slot function (0x298)
# Reuses fn_802EB27C (GSCK's "handle-cleanup scan" helper, from the 94KB
# gap) + SpatialRegistry_GetBase/fn_801F666C spatial-registry iteration.
.section extab, "a"
.balign 4
.global etb_8000EEF0
etb_8000EEF0:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000EEF0, 8

.section extabindex, "a"
.balign 4
.global eti_8001ED3C
eti_8001ED3C:
    .4byte fn_803913E0
    .4byte 0x00000298
    .4byte etb_8000EEF0
.size eti_8001ED3C, 12

.text
.balign 4
.global fn_803913E0

fn_803913E0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x1
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
    stw 31, 0x8(3)
    stb 31, 0x25(3)
    sth 31, 0x26(3)
    stb 31, 0x41(3)
    stb 0, 0x40(3)
    stw 31, 0x10(3)
    stw 31, 0x14(3)
    stb 31, 0x42(3)
    stb 31, 0x43(3)
L_80391430:
    lwz 3, 0x48(28)
    addi 0, 31, 0x180
    lwzx 30, 3, 0
    cmpwi 30, 0x0
    .4byte 0x418000FC # blt .L_8039153C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803914A4
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8039148C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8039148C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8039148C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8039148C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8039148C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80391490
L_8039148C:
    li 0, 0x1
L_80391490:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803914F8
L_803914A4:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803914E4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803914E4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803914E4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803914E4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803914E4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803914E4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803914E8
L_803914E4:
    li 0, 0x1
L_803914E8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803914F8:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8039152C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8039152C
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x544b
    cmplwi 0, 0x5241
    .4byte 0x40820008 # bne .L_8039152C
    bl fn_802EB27C
L_8039152C:
    lwz 3, 0x48(28)
    addi 0, 31, 0x180
    li 4, -0x1
    stwx 4, 3, 0
L_8039153C:
    lwz 3, 0x4c(28)
    addi 0, 31, 0x180
    lwzx 30, 3, 0
    cmpwi 30, 0x0
    .4byte 0x418000FC # blt .L_80391648
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803915B0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80391598
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80391598
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80391598
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80391598
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80391598
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8039159C
L_80391598:
    li 0, 0x1
L_8039159C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80391604
L_803915B0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803915F0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803915F0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803915F0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803915F0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803915F0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803915F0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803915F4
L_803915F0:
    li 0, 0x1
L_803915F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80391604:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_80391638
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80391638
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x544b
    cmplwi 0, 0x5241
    .4byte 0x40820008 # bne .L_80391638
    bl fn_802EB27C
L_80391638:
    lwz 3, 0x4c(28)
    addi 0, 31, 0x180
    li 4, -0x1
    stwx 4, 3, 0
L_80391648:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FDDC # blt .L_80391430
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

