.section extab, "a"
.balign 4
.global etb_8000B468
etb_8000B468:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B468, 8

.section extabindex, "a"
.balign 4
.global eti_80019990
eti_80019990:
    .4byte fn_8024712C
    .4byte 0x00000204
    .4byte etb_8000B468
.size eti_80019990, 12

.text
.balign 4
.global fn_8024712C

# fn_8024712C(playerObj) -> float - a float-returning sibling of
# fn_80246B10 (extab_80246b10.s): byte-for-byte the SAME "targetable
# state" gate + multiplayer-session-consistency check, but instead of
# returning a bool, falls back to a default float (lbl_80540034) if the
# gate fails, or resolves the animation controller (fn_8030AAF4) and
# calls fn_80309F20(lbl_8053AD30, animCtrl) - part of the CONFIRMED
# animation-controller accessor family (extab_80309d24.s) - for the
# real value. Confirmed caller: fn_8022C76C (extab_8022c76c.s).
fn_8024712C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80247154
    li 0, 0x0
    .4byte 0x48000058 # b .L_802471A8
L_80247154:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80247168
    li 0, 0x0
    .4byte 0x48000044 # b .L_802471A8
L_80247168:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024717C
    li 0, 0x0
    .4byte 0x48000030 # b .L_802471A8
L_8024717C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80247190
    li 0, 0x0
    .4byte 0x4800001C # b .L_802471A8
L_80247190:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802471A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802471A8
L_802471A4:
    li 0, 0x1
L_802471A8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802471B8
    li 0, 0x0
    .4byte 0x48000144 # b .L_802472F8
L_802471B8:
    li 29, 0x0
    mr 28, 29
L_802471C0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802471D4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80247234
L_802471D4:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80247224
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80247208
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80247234
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80247234
L_80247208:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80247234
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80247234
L_80247224:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80247234
    addi 29, 29, 0x1
L_80247234:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802471C0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80247250
    li 3, 0x5
    .4byte 0x4800001C # b .L_80247268
L_80247250:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247264
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80247268
L_80247264:
    lwz 3, 0x120c(31)
L_80247268:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802472E0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80247288
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024728C
L_80247288:
    lwz 30, 0x1224(31)
L_8024728C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802472A0
    li 0, 0x0
    .4byte 0x4800003C # b .L_802472D8
L_802472A0:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802472C8
L_802472AC:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802472C4
    addi 28, 28, 0x1
L_802472C4:
    addi 29, 29, 0x1
L_802472C8:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802472AC
    addi 0, 28, 0x1
L_802472D8:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802472EC
L_802472E0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802472F4
L_802472EC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802472F8
L_802472F4:
    li 0, 0x1
L_802472F8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80247308
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_8024731C
L_80247308:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_8024731C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
