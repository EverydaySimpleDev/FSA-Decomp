/*
 * FLME actor cluster, part 1/6. Not called by any of the other 5
 * functions in this cluster (nor does it call them) - likely invoked
 * from FLME's own draw() or ctor, neither of which are in this gap.
 *
 * fn_8015DE10(this): a "conditionally spawn an ambient effect group"
 * helper. If this->0x254 is unset and this->0x94 (the type field) is
 * NOT 4 or 5: calls fn_80158B5C(lbl_8053AB10->0x2c, this->0x4, &this->
 * 0xc, &paramBuf) - a global effect/light-group manager call (matching
 * the confirmed [[project_fsa_zlda_actor_progress]] note that
 * lbl_8053AB10 is a global registry, here a different sub-field, ->0x2c,
 * from ZLDA's ->0x24). Separately, if this->0x240 is set and this->0x94
 * IS 4 or 5: does the same call with a different scale constant (chosen
 * by this->0x94==5). Two independent, differently-gated triggers for
 * the same underlying effect-group spawn primitive.
 */
.section extab, "a"
.balign 4
.global etb_80006FFC
etb_80006FFC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006FFC, 8

.section extabindex, "a"
.balign 4
.global eti_80013B88
eti_80013B88:
    .4byte fn_8015DE10
    .4byte 0x000000EC
    .4byte etb_80006FFC
.size eti_80013B88, 12

.text
.balign 4
.global fn_8015DE10

fn_8015DE10:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x254(3)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_8015DE80
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x41820048 # beq .L_8015DE80
    cmplwi 0, 0x5
    .4byte 0x41820040 # beq .L_8015DE80
    li 7, 0x0
    li 0, 0x80
    stb 7, 0x14(1)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    addi 6, 1, 0x10
    stb 7, 0x15(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0x16(1)
    .4byte 0xC022A5F0 # lfs f1, lbl_8053D590@sda21(r0)
    stb 0, 0x17(1)
    lwz 0, 0x14(1)
    stw 0, 0x10(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_8015DE80:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_8015DEE8
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_8015DEA0
    cmplwi 0, 0x5
    .4byte 0x4082004C # bne .L_8015DEE8
L_8015DEA0:
    cmplwi 0, 0x5
    .4byte 0xC022A5F4 # lfs f1, lbl_8053D594@sda21(r0)
    .4byte 0x40820008 # bne .L_8015DEB0
    .4byte 0xC022A5F8 # lfs f1, lbl_8053D598@sda21(r0)
L_8015DEB0:
    li 7, 0x0
    li 0, 0x80
    stb 7, 0xc(1)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    addi 6, 1, 0x8
    stb 7, 0xd(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_8015DEE8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

