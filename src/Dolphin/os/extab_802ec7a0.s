# fn_802EC7A0 - ZOMO: update() (0xF4)
# 2-state machine on this->0x230. State 0: room-config gate (own virtual
# slot 0x34); on success, sets the one-shot global notice-flag pair
# (lbl_8053AB10->0x24 + 0x7f4/0x7f5, same idiom as ZOOM/OKTA), transitions
# to state 1, and seeds a countdown at this->0x238 from this->0x234. State
# 1: sets the same notice-flag pair again, then decrements the countdown.
.section extab, "a"
.balign 4
.global etb_8000D1C4
etb_8000D1C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D1C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C3D8
eti_8001C3D8:
    .4byte fn_802EC7A0
    .4byte 0x000000F4
    .4byte etb_8000D1C4
.size eti_8001C3D8, 12

.text
.balign 4
.global fn_802EC7A0

fn_802EC7A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820088 # beq .L_802EC844
    .4byte 0x408000C0 # bge .L_802EC880
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802EC7D0
    .4byte 0x480000B4 # b .L_802EC880
L_802EC7D0:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_802EC880
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802EC804
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802EC804:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802EC824
    li 4, 0x1
    stb 4, 0x7f5(3)
L_802EC824:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_802EC880
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    stw 0, 0x238(31)
    .4byte 0x48000040 # b .L_802EC880
L_802EC844:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802EC860
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802EC860:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802EC880
    li 0, 0x0
    stb 0, 0x11c(31)
L_802EC880:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

