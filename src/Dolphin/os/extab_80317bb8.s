.section extab, "a"
.balign 4
.global etb_8000D8F0
etb_8000D8F0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D8F0, 8

.section extabindex, "a"
.balign 4
.global eti_8001CE04
eti_8001CE04:
    .4byte fn_80317BB8
    .4byte 0x00000080
    .4byte etb_8000D8F0
.size eti_8001CE04, 12

# fn_80317BB8 - Dispatch-cross-check bundle: single real FourCC actor dtor
# (lbl_804AADD8, ctor already landed). Calls the shared knockback/status-
# effect dtor_801F593C and a small conditional cleanup dtor_80084580.
# Attempted real-C++ promotion (Phase 4): matched retail except a pure
# register-allocation choice (r3/r4, r3/r0) for the vtable-address-calc
# and field-read - 3 tried source reorderings never matched. Reverted to
# raw asm; see project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_80317BB8

fn_80317BB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    beq .L_80317C1C
    lis 3, lbl_804AADD8@ha
    addi 0, 3, lbl_804AADD8@l
    stw 0, 0x0(30)
    lwz 3, 0x24c(30)
    cmplwi 3, 0x0
    beq .L_80317C00
    li 4, 0x1
    bl fn_80317060
    li 0, 0x0
    stw 0, 0x24c(30)
.L_80317C00:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    ble .L_80317C1C
    mr 3, 30
    bl dtor_80084580
.L_80317C1C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
