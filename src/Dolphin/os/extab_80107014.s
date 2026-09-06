.section extab, "a"
.balign 4
.global etb_80005A84
etb_80005A84:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005A84, 8

.section extabindex, "a"
.balign 4
.global eti_80011ED8
eti_80011ED8:
    .4byte fn_80107014
    .4byte 0x000000A0
    .4byte etb_80005A84
.size eti_80011ED8, 12

# fn_80107014 - the base destructor for the fn_80106C84-class (vtable
# reset to lbl_8049CC98). Releases the effect handle at this->0x240 via
# fn_801EE434, then clears it. If this->0x244 is set, makes a virtual
# call through ((this->0x244)->0x8)->vtable[slot 12] with arg 1, then
# clears this->0x244. Attempted real-C++ promotion (Phase 4): matched
# retail except a pure register-allocation choice (r3/r12) for the
# "sub" temporary - 2 tried source variants never matched. Reverted to
# raw asm; see project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_80107014

fn_80107014:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    beq .L_80107098
    lis 3, lbl_8049CC98@ha
    addi 0, 3, lbl_8049CC98@l
    stw 0, 0x0(30)
    lwz 3, 0x240(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x240(30)
    lwz 3, 0x244(30)
    cmplwi 3, 0x0
    beq .L_8010707C
    beq .L_80107074
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
.L_80107074:
    li 0, 0x0
    stw 0, 0x244(30)
.L_8010707C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    ble .L_80107098
    mr 3, 30
    bl dtor_80084580
.L_80107098:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
