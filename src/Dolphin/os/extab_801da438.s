.section extab, "a"
.balign 4
.global etb_8000879C
etb_8000879C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000879C, 8

.section extabindex, "a"
.balign 4
.global eti_80015BBC
eti_80015BBC:
    .4byte fn_801DA438
    .4byte 0x000000CC
    .4byte etb_8000879C
.size eti_80015BBC, 12

# fn_801DA438(this, flag) - base destructor for a class with 4 attached
# effect handles (this->0x2c0/0x2c4/0x2c8/0x2cc) released+zeroed via a
# loop, then fn_801DAC6C()->0x0=-1 + GetRoomConfigRecord()+fn_802D7440
# deregistration, then the standard lbl_804A4808/blend-timer ratchet.
# Attempted real-C++ promotion (Phase 4): 2 tried source variants for
# the release loop only ever produced a pure register-allocation
# mismatch (not a logic error) - same class of issue as fn_80317BB8/
# fn_80107014/fn_801C5680. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_801DA438

fn_801DA438:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    beq .L_801DA4EC
    lis 3, lbl_804A4C58@ha
    mr 30, 27
    addi 0, 3, lbl_804A4C58@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
.L_801DA46C:
    lwz 3, 0x2c0(30)
    bl fn_801EE434
    addi 29, 29, 0x1
    stw 31, 0x2c0(30)
    cmpwi 29, 0x4
    addi 30, 30, 0x4
    blt .L_801DA46C
    bl fn_801DAC6C
    li 0, -0x1
    stw 0, 0x0(3)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    cmplwi 27, 0x0
    beq .L_801DA4DC
    lis 3, lbl_804A4808@ha
    addic. 0, 27, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(27)
    beq .L_801DA4D0
    addic. 0, 27, 0x294
    beq .L_801DA4D0
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(27)
.L_801DA4D0:
    mr 3, 27
    li 4, 0x0
    bl dtor_801F593C
.L_801DA4DC:
    extsh. 0, 28
    ble .L_801DA4EC
    mr 3, 27
    bl dtor_80084580
.L_801DA4EC:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
