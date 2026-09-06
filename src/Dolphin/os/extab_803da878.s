# fn_803DA878 - actor@lbl_804B04F8: destructor (0x84)
#
# Attempted real-C++ promotion (Phase 4): matched retail except a pure
# register-allocation choice - the virtual-call dispatch through
# this->0x4's vtable (slot 0x8) loads the vtable pointer into r5 first
# then the slot into r12, while retail loads the vtable pointer directly
# into r12 then re-loads the slot into r12. Two source variants (a named
# `void** vtable` local; a fully-inlined chained expression) both produced
# the SAME r5-then-r12 codegen. Same class of issue as fn_80317BB8/
# fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180/dtor_801D7730. Reverted
# to raw asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000FB74
etb_8000FB74:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000FB74, 8

.section extabindex, "a"
.balign 4
.global eti_8001FA20
eti_8001FA20:
    .4byte fn_803DA878
    .4byte 0x00000084
    .4byte etb_8000FB74
.size eti_8001FA20, 12

.text
.balign 4
.global fn_803DA878

fn_803DA878:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182004C # beq .L_803DA8E0
    lis 3, lbl_804B04F8@ha
    addi 0, 3, lbl_804B04F8@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DA8C4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DA8C4:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x4(30)
    .4byte 0x906D9208 # stw r3, lbl_8053ADC8@sda21(r0)
    .4byte 0x4081000C # ble .L_803DA8E0
    mr 3, 30
    bl dtor_80084580
L_803DA8E0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

