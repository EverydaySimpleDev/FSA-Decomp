.section extab, "a"
.balign 4
.global etb_8000B078
etb_8000B078:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B078, 8

.section extabindex, "a"
.balign 4
.global eti_800193C0
eti_800193C0:
    .4byte fn_8023AE34
    .4byte 0x000000E0
    .4byte etb_8000B078
.size eti_800193C0, 12

.text
.balign 4
.global fn_8023AE34

# fn_8023AE34(a, b, c) - one of a 4-function family (siblings
# fn_8023AA18/fn_8023AC74/fn_8023AD54, extab_8023aa18.s/8023ac74.s/8023ad54.s)
# structurally IDENTICAL except for the leaf predicate called per slot.
# NOT SLK2-specific. Iterates the fixed 4-slot global player array
# lbl_8053AC90 (guarded by a null check, returns -1 if the array isn't
# initialized yet); for each of the 4 slots whose per-slot flag byte at
# +0xcac is set, calls the per-family predicate (here fn_802576CC(slot,
# a, b, c)) and remembers the LAST matching slot index in r30 (does not
# early-return on match - keeps scanning all 4 slots). Returns the last
# matching player index, or -1 if none of the 4 slots matched (or the
# array was uninitialized).
fn_8023AE34:
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
    .4byte 0x4082000C # bne .L_8023AE68
    li 3, -0x1
    .4byte 0x4800009C # b .L_8023AF00
L_8023AE68:
    li 29, 0x0
    li 31, 0x0
L_8023AE70:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023AE84
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023AEC0
L_8023AE84:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8023AE94
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023AEC0
L_8023AE94:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_8023AEA4
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023AEC0
L_8023AEA4:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023AEBC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023AEC0
L_8023AEBC:
    lbz 0, 0xcac(4)
L_8023AEC0:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8023AEEC
    addi 0, 31, 0x4
    mr 4, 26
    lwzx 3, 3, 0
    mr 5, 27
    mr 6, 28
    bl fn_802576CC
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8023AEEC
    mr 30, 29
L_8023AEEC:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF78 # blt .L_8023AE70
    mr 3, 30
L_8023AF00:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
