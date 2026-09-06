.section extab, "a"
.balign 4
.global etb_8000B050
etb_8000B050:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B050, 8

.section extabindex, "a"
.balign 4
.global eti_80019384
eti_80019384:
    .4byte fn_8023AA18
    .4byte 0x000000E0
    .4byte etb_8000B050
.size eti_80019384, 12

.text
.balign 4
.global fn_8023AA18

# fn_8023AA18(a, b, c) - sibling of fn_8023AE34 (extab_8023ae34.s, see
# that banner for the shared 4-slot player-array scan structure). Unlike
# fn_8023AE34/fn_8023AD54, this EARLY-RETURNS the FIRST matching slot
# index as soon as its per-family predicate fn_80256F44(slot, a, b, c)
# returns true, rather than scanning all 4 and keeping the last match.
# Returns -1 if no slot matches (or the array is uninitialized).
fn_8023AA18:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023AA48
    li 3, -0x1
    .4byte 0x480000A0 # b .L_8023AAE4
L_8023AA48:
    li 30, 0x0
    li 31, 0x0
L_8023AA50:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023AA64
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023AAA0
L_8023AA64:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023AA74
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023AAA0
L_8023AA74:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023AA84
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023AAA0
L_8023AA84:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023AA9C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023AAA0
L_8023AA9C:
    lbz 0, 0xcac(4)
L_8023AAA0:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8023AAD0
    addi 0, 31, 0x4
    mr 4, 27
    lwzx 3, 3, 0
    mr 5, 28
    mr 6, 29
    bl fn_80256F44
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023AAD0
    mr 3, 30
    .4byte 0x48000018 # b .L_8023AAE4
L_8023AAD0:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_8023AA50
    li 3, -0x1
L_8023AAE4:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
