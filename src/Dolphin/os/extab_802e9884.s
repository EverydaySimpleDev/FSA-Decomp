# fn_802E9884 - ENDM: scripted-sequence advance helper (0x2E8)
# Reads a byte-code command from a script buffer (this->0x290, indexed by a
# derived counter), dispatching a small set of command codes (0-4) plus a
# 0xff terminator that transitions this->0x23c to state 7 (script done);
# calls GetRoomConfigRecord/fn_802D9CB0 (per-room config query) as part of the
# dispatch. Track A: byte-match verified, structural overview per the
# large/complex-function exception - part of the same scripted-cutscene
# command-interpreter as fn_802E9B6C.
.section extab, "a"
.balign 4
.global etb_8000D154
etb_8000D154:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D154, 8

.section extabindex, "a"
.balign 4
.global eti_8001C330
eti_8001C330:
    .4byte fn_802E9884
    .4byte 0x000002E8
    .4byte etb_8000D154
.size eti_8001C330, 12

.text
.balign 4
.global fn_802E9884

fn_802E9884:
    stwu 1, -0x20(1)
    mflr 0
    lfs 0, 0x4(4)
    lis 5, 0x2aab
    lfs 1, 0x0(4)
    subi 4, 5, 0x5555
    fctiwz 0, 0
    stw 0, 0x24(1)
    fctiwz 1, 1
    lbz 0, 0x297(3)
    stfd 0, 0x10(1)
    cmplwi 0, 0x0
    lwz 5, 0x14(1)
    stfd 1, 0x8(1)
    mulhw 0, 4, 5
    lwz 4, 0xc(1)
    slwi 6, 4, 23
    srwi 7, 4, 31
    srawi 0, 0, 6
    srwi 4, 0, 31
    subf 6, 7, 6
    add 0, 0, 4
    mulli 0, 0, 0x180
    rotlwi 4, 6, 9
    add 6, 4, 7
    subf 4, 0, 5
    subi 0, 4, 0x1e
    .4byte 0x40820124 # bne .L_802E9A14
    lwz 4, 0x290(3)
    lbz 4, 0x0(4)
    cmplwi 4, 0xff
    .4byte 0x40820014 # bne .L_802E9914
    li 0, 0x7
    stw 0, 0x23c(3)
    li 3, 0x0
    .4byte 0x4800024C # b .L_802E9B5C
L_802E9914:
    cmpwi 4, 0x2
    .4byte 0x4182009C # beq .L_802E99B4
    .4byte 0x40800014 # bge .L_802E9930
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_802E993C
    .4byte 0x40800050 # bge .L_802E9978
    .4byte 0x4800022C # b .L_802E9B58
L_802E9930:
    cmpwi 4, 0x4
    .4byte 0x40800224 # bge .L_802E9B58
    .4byte 0x480000AC # b .L_802E99E4
L_802E993C:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    mulli 3, 3, 0x3
    srawi 3, 3, 2
    addze 4, 3
    srwi 3, 4, 31
    add 3, 3, 4
    srawi 3, 3, 1
    subf 0, 3, 0
    cmpwi 0, 0x10
    .4byte 0x408001EC # bge .L_802E9B58
    li 3, 0x1
    .4byte 0x480001E8 # b .L_802E9B5C
L_802E9978:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    mulli 3, 3, 0x3
    srawi 3, 3, 2
    addze 4, 3
    srwi 3, 4, 31
    add 3, 3, 4
    srawi 3, 3, 1
    add 0, 0, 3
    cmpwi 0, 0x170
    .4byte 0x408101B0 # ble .L_802E9B58
    li 3, 0x1
    .4byte 0x480001AC # b .L_802E9B5C
L_802E99B4:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    srwi 0, 3, 31
    add 0, 0, 3
    srawi 0, 0, 1
    subf 0, 0, 6
    cmpwi 0, 0x10
    .4byte 0x40800180 # bge .L_802E9B58
    li 3, 0x1
    .4byte 0x4800017C # b .L_802E9B5C
L_802E99E4:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    srwi 0, 3, 31
    add 0, 0, 3
    srawi 0, 0, 1
    add 0, 6, 0
    cmpwi 0, 0x1f0
    .4byte 0x40810150 # ble .L_802E9B58
    li 3, 0x1
    .4byte 0x4800014C # b .L_802E9B5C
L_802E9A14:
    lbz 4, 0x28d(3)
    cmpwi 4, 0x2
    .4byte 0x418200B4 # beq .L_802E9AD0
    .4byte 0x40800014 # bge .L_802E9A34
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_802E9A40
    .4byte 0x4080005C # bge .L_802E9A88
    .4byte 0x48000114 # b .L_802E9B44
L_802E9A34:
    cmpwi 4, 0x4
    .4byte 0x4080010C # bge .L_802E9B44
    .4byte 0x480000D0 # b .L_802E9B0C
L_802E9A40:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mulli 4, 4, 0x3
    srawi 4, 4, 2
    addze 5, 4
    srwi 4, 5, 31
    add 4, 4, 5
    srawi 4, 4, 1
    add 0, 0, 4
    cmpwi 0, 0x170
    .4byte 0x408000D4 # bge .L_802E9B44
    cmpwi 0, 0x160
    .4byte 0x408100CC # ble .L_802E9B44
    li 0, 0x0
    stb 0, 0x297(3)
    .4byte 0x480000C0 # b .L_802E9B44
L_802E9A88:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mulli 4, 4, 0x3
    srawi 4, 4, 2
    addze 5, 4
    srwi 4, 5, 31
    add 4, 4, 5
    srawi 4, 4, 1
    subf 0, 4, 0
    cmpwi 0, 0x20
    .4byte 0x4081008C # ble .L_802E9B44
    cmpwi 0, 0x30
    .4byte 0x40800084 # bge .L_802E9B44
    li 0, 0x0
    stb 0, 0x297(3)
    .4byte 0x48000078 # b .L_802E9B44
L_802E9AD0:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    srwi 0, 4, 31
    add 0, 0, 4
    srawi 0, 0, 1
    add 0, 6, 0
    cmpwi 0, 0x1f0
    .4byte 0x40800050 # bge .L_802E9B44
    cmpwi 0, 0x1e0
    .4byte 0x40810048 # ble .L_802E9B44
    li 0, 0x0
    stb 0, 0x297(3)
    .4byte 0x4800003C # b .L_802E9B44
L_802E9B0C:
    lfs 0, 0x270(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    srwi 0, 4, 31
    add 0, 0, 4
    srawi 0, 0, 1
    subf 0, 0, 6
    cmpwi 0, 0x10
    .4byte 0x40810014 # ble .L_802E9B44
    cmpwi 0, 0x20
    .4byte 0x4080000C # bge .L_802E9B44
    li 0, 0x0
    stb 0, 0x297(3)
L_802E9B44:
    lbz 0, 0x297(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802E9B58
    bl GetRoomConfigRecord
    bl fn_802D9CB0
L_802E9B58:
    li 3, 0x0
L_802E9B5C:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

