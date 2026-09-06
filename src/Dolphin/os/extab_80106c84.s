/*
 * fn_80106C84(this): the update() method for the fn_80106ADC-class -
 * CONFIRMS fn_80106ADC belongs to this same class (called directly,
 * twice, at the tail with this->0x230 as the mode arg). Dispatches on
 * this->0x230 (0-3, survey-level):
 *  - States 0/1: further dispatch on this->0x238 (0/1/3+): either
 *    checks a global settings flag (GetRoomConfigRecord()->0x171 - an
 *    enabled/paused flag) or makes virtual calls through this->
 *    vtable[slot 15] then vtable[slot 13] (the confirmed "can this
 *    start?" contract). On success, clears a bit in this->0x240->0xf4
 *    (an owner object's flag word) and advances this->0x230 to 1.
 *  - Symmetric handling appears again for a related branch (states
 *    involving this->0x238==1/3, same GetRoomConfigRecord/vtable-15/vtable-13
 *    pattern) that ORs the same bit back in and resets this->0x230 to 0
 *    on failure/completion.
 *  - If this->0x244 is set, makes a virtual call through
 *    this->0x244->vtable[slot 5] (an owner-object callback).
 *  - Tail: calls fn_80106ADC(this, this->0x230) - passing the CURRENT
 *    state as the tint mode, confirming fn_80106ADC's `mode` parameter
 *    tracks this update loop's own state machine.
 * Increments a frame counter (this->0x23c) unconditionally.
 */

.section extab, "a"
.balign 4
.global etb_80005A6C
etb_80005A6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005A6C, 8

.section extabindex, "a"
.balign 4
.global eti_80011EB4
eti_80011EB4:
    .4byte fn_80106C84
    .4byte 0x0000022C
    .4byte etb_80005A6C
.size eti_80011EB4, 12

.text
.balign 4
.global fn_80106C84

fn_80106C84:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801F5930
    lwz 4, 0x230(31)
    cmpwi 4, 0x1
    .4byte 0x418200E4 # beq .L_80106D88
    .4byte 0x40800010 # bge .L_80106CB8
    cmpwi 4, 0x0
    .4byte 0x40800014 # bge .L_80106CC4
    .4byte 0x480001DC # b .L_80106E90
L_80106CB8:
    cmpwi 4, 0x3
    .4byte 0x408001D4 # bge .L_80106E90
    .4byte 0x480001C8 # b .L_80106E88
L_80106CC4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80106CE4
    .4byte 0x40800008 # bge .L_80106CD8
    .4byte 0x48000050 # b .L_80106D24
L_80106CD8:
    cmpwi 0, 0x3
    .4byte 0x40800048 # bge .L_80106D24
    .4byte 0x48000024 # b .L_80106D04
L_80106CE4:
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80106CFC
    li 3, 0x1
    .4byte 0x48000064 # b .L_80106D5C
L_80106CFC:
    li 3, 0x0
    .4byte 0x4800005C # b .L_80106D5C
L_80106D04:
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80106D1C
    li 3, 0x1
    .4byte 0x48000044 # b .L_80106D5C
L_80106D1C:
    li 3, 0x0
    .4byte 0x4800003C # b .L_80106D5C
L_80106D24:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4181000C # bgt .L_80106D48
    li 3, 0x1
    .4byte 0x48000018 # b .L_80106D5C
L_80106D48:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
L_80106D5C:
    clrlwi. 0, 3, 24
    .4byte 0x41820130 # beq .L_80106E90
    lwz 3, 0x240(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80106D7C
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_80106D7C:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800010C # b .L_80106E90
L_80106D88:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80106DA8
    .4byte 0x40800008 # bge .L_80106D9C
    .4byte 0x48000050 # b .L_80106DE8
L_80106D9C:
    cmpwi 0, 0x3
    .4byte 0x40800048 # bge .L_80106DE8
    .4byte 0x48000024 # b .L_80106DC8
L_80106DA8:
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80106DC0
    li 3, 0x1
    .4byte 0x48000064 # b .L_80106E20
L_80106DC0:
    li 3, 0x0
    .4byte 0x4800005C # b .L_80106E20
L_80106DC8:
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80106DE0
    li 3, 0x1
    .4byte 0x48000044 # b .L_80106E20
L_80106DE0:
    li 3, 0x0
    .4byte 0x4800003C # b .L_80106E20
L_80106DE8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4181000C # bgt .L_80106E0C
    li 3, 0x1
    .4byte 0x48000018 # b .L_80106E20
L_80106E0C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
L_80106E20:
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80106E48
    lwz 3, 0x240(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80106E40
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
L_80106E40:
    li 0, 0x0
    stw 0, 0x230(31)
L_80106E48:
    lwz 0, 0x244(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80106E78
    lis 3, 0x5
    addi 4, 1, 0x8
    addi 0, 3, 0x27
    stw 0, 0x8(1)
    lwz 3, 0x244(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_80106E78:
    lwz 4, 0x230(31)
    mr 3, 31
    bl fn_80106ADC
    .4byte 0x4800000C # b .L_80106E90
L_80106E88:
    mr 3, 31
    bl fn_80106ADC
L_80106E90:
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

