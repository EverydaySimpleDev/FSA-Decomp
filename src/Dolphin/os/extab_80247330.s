.section extab, "a"
.balign 4
.global etb_8000B470
etb_8000B470:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B470, 8

.section extabindex, "a"
.balign 4
.global eti_8001999C
eti_8001999C:
    .4byte fn_80247330
    .4byte 0x00000204
    .4byte etb_8000B470
.size eti_8001999C, 12

.text
.balign 4
.global fn_80247330

# fn_80247330(playerObj) -> float - sibling of fn_8024712C
# (extab_8024712c.s, byte-for-byte identical gate logic), differing
# only in the final delegate: calls fn_80309FCC (extab_80309d24.s)
# instead of fn_80309F20 for the real value. Confirmed caller:
# fn_8022C82C (extab_8022c82c.s).
fn_80247330:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80247358
    li 0, 0x0
    .4byte 0x48000058 # b .L_802473AC
L_80247358:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024736C
    li 0, 0x0
    .4byte 0x48000044 # b .L_802473AC
L_8024736C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80247380
    li 0, 0x0
    .4byte 0x48000030 # b .L_802473AC
L_80247380:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80247394
    li 0, 0x0
    .4byte 0x4800001C # b .L_802473AC
L_80247394:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802473A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802473AC
L_802473A8:
    li 0, 0x1
L_802473AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802473BC
    li 0, 0x0
    .4byte 0x48000144 # b .L_802474FC
L_802473BC:
    li 29, 0x0
    mr 28, 29
L_802473C4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802473D8
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80247438
L_802473D8:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80247428
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024740C
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80247438
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80247438
L_8024740C:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80247438
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80247438
L_80247428:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80247438
    addi 29, 29, 0x1
L_80247438:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802473C4
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80247454
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024746C
L_80247454:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247468
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024746C
L_80247468:
    lwz 3, 0x120c(31)
L_8024746C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802474E4
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024748C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80247490
L_8024748C:
    lwz 30, 0x1224(31)
L_80247490:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802474A4
    li 0, 0x0
    .4byte 0x4800003C # b .L_802474DC
L_802474A4:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802474CC
L_802474B0:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802474C8
    addi 28, 28, 0x1
L_802474C8:
    addi 29, 29, 0x1
L_802474CC:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802474B0
    addi 0, 28, 0x1
L_802474DC:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802474F0
L_802474E4:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802474F8
L_802474F0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802474FC
L_802474F8:
    li 0, 0x1
L_802474FC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024750C
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80247520
L_8024750C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_80247520:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
