.section extab, "a"
.balign 4
.global etb_8000B070
etb_8000B070:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B070, 8

.section extabindex, "a"
.balign 4
.global eti_800193B4
eti_800193B4:
    .4byte fn_8023AD54
    .4byte 0x000000E0
    .4byte etb_8000B070
.size eti_800193B4, 12

.text
.balign 4
.global fn_8023AD54

# fn_8023AD54(a, b, c) - sibling of fn_8023AE34 (extab_8023ae34.s).
# Same continue-scan-remember-last-match structure as fn_8023AE34,
# using per-family predicate fn_802575B8(slot, a, b, c).
fn_8023AD54:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 26, 3
    mr 27, 4
    mr 28, 5
    li 30, -0x1
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023AD88
    li 3, -0x1
    .4byte 0x4800009C # b .L_8023AE20
L_8023AD88:
    li 29, 0x0
    li 31, 0x0
L_8023AD90:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023ADA4
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023ADE0
L_8023ADA4:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8023ADB4
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023ADE0
L_8023ADB4:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_8023ADC4
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023ADE0
L_8023ADC4:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023ADDC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023ADE0
L_8023ADDC:
    lbz 0, 0xcac(4)
L_8023ADE0:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8023AE0C
    addi 0, 31, 0x4
    mr 4, 26
    lwzx 3, 3, 0
    mr 5, 27
    mr 6, 28
    bl fn_802575B8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8023AE0C
    mr 30, 29
L_8023AE0C:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF78 # blt .L_8023AD90
    mr 3, 30
L_8023AE20:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
