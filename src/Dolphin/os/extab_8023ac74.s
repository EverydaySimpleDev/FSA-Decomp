.section extab, "a"
.balign 4
.global etb_8000B068
etb_8000B068:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B068, 8

.section extabindex, "a"
.balign 4
.global eti_800193A8
eti_800193A8:
    .4byte fn_8023AC74
    .4byte 0x000000E0
    .4byte etb_8000B068
.size eti_800193A8, 12

.text
.balign 4
.global fn_8023AC74

# fn_8023AC74(a, b, c) - sibling of fn_8023AE34/fn_8023AA18
# (extab_8023ae34.s/8023aa18.s). Same early-return-on-first-match
# structure as fn_8023AA18, using per-family predicate
# fn_802574CC(slot, a, b, c).
fn_8023AC74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023ACA4
    li 3, -0x1
    .4byte 0x480000A0 # b .L_8023AD40
L_8023ACA4:
    li 30, 0x0
    li 31, 0x0
L_8023ACAC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023ACC0
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023ACFC
L_8023ACC0:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023ACD0
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023ACFC
L_8023ACD0:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023ACE0
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023ACFC
L_8023ACE0:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023ACF8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023ACFC
L_8023ACF8:
    lbz 0, 0xcac(4)
L_8023ACFC:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8023AD2C
    addi 0, 31, 0x4
    mr 4, 27
    lwzx 3, 3, 0
    mr 5, 28
    mr 6, 29
    bl fn_802574CC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023AD2C
    mr 3, 30
    .4byte 0x48000018 # b .L_8023AD40
L_8023AD2C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_8023ACAC
    li 3, -0x1
L_8023AD40:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
