.section extab, "a"
.balign 4
.global etb_80009F28
etb_80009F28:
    .4byte 0x480A0000
    .4byte 0x00000000
.size etb_80009F28, 8

.section extabindex, "a"
.balign 4
.global eti_80017A04
eti_80017A04:
    .4byte fn_8020D6AC
    .4byte 0x00000124
    .4byte etb_80009F28
.size eti_80017A04, 12

.text
.balign 4
.global fn_8020D6AC

# fn_8020D6AC(recordArray, needleType, needlePos, excludeVal, checkNulls) -
# NOT SLK2-specific. Iterates a 0x18-byte-stride record array (count =
# recordArray->0x0), matching each record's +0x14 field against
# needleType and +0x18 against excludeVal (skip on match), then a 2D
# rect test of needlePos against the record's +0x4/0x8/0xc/0x10 bounds.
# On a match, if checkNulls!=0, looks the record's +0x18 ID up via the
# CONFIRMED spatial registry (SpatialRegistry_GetBase+fn_801F666C) and scans a
# 4-char type-code array attached to it for the ASCII sentinel "NULL"
# (0x4e554c4c); a record only counts as found if a "NULL" entry is
# NOT present. Otherwise (checkNulls==0) any rect match counts
# immediately. Returns whether any matching record was found. A
# generic room/trigger-rect scan utility, not SLK2-specific by field
# layout.
fn_8020D6AC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 28, 4
    lwz 27, 0x0(3)
    mr 29, 5
    mr 30, 6
    mr 31, 7
    mr 26, 3
    li 24, 0x0
    li 23, 0x0
    .4byte 0x480000D4 # b .L_8020D7B0
L_8020D6E0:
    lwz 0, 0x14(26)
    cmpw 0, 28
    .4byte 0x408200C0 # bne .L_8020D7A8
    lwz 25, 0x18(26)
    cmpw 25, 30
    .4byte 0x418200B4 # beq .L_8020D7A8
    lfs 2, 0x0(29)
    li 0, 0x0
    lfs 0, 0x4(26)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8020D740
    lfs 1, 0x4(29)
    lfs 0, 0x8(26)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8020D740
    lfs 0, 0xc(26)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8020D740
    lfs 0, 0x10(26)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8020D740
    li 0, 0x1
L_8020D740:
    clrlwi. 0, 0, 24
    .4byte 0x41820064 # beq .L_8020D7A8
    cmplwi 31, 0x0
    li 24, 0x1
    .4byte 0x41820050 # beq .L_8020D7A0
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8020D770
    li 24, 0x0
    .4byte 0x48000034 # b .L_8020D7A0
L_8020D770:
    mr 5, 31
    .4byte 0x4800001C # b .L_8020D790
L_8020D778:
    lwz 0, 0x1a0(3)
    cmplw 4, 0
    .4byte 0x4082000C # bne .L_8020D78C
    li 24, 0x0
    .4byte 0x48000018 # b .L_8020D7A0
L_8020D78C:
    addi 5, 5, 0x4
L_8020D790:
    lwz 4, 0x0(5)
    subis 0, 4, 0x4e55
    cmplwi 0, 0x4c4c
    .4byte 0x4082FFDC # bne .L_8020D778
L_8020D7A0:
    clrlwi. 0, 24, 24
    .4byte 0x40820014 # bne .L_8020D7B8
L_8020D7A8:
    addi 26, 26, 0x18
    addi 23, 23, 0x1
L_8020D7B0:
    cmpw 23, 27
    .4byte 0x4180FF2C # blt .L_8020D6E0
L_8020D7B8:
    mr 3, 24
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
