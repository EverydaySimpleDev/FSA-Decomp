.section extab, "a"
.balign 4
.global etb_80008988
etb_80008988:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008988, 8

.section extabindex, "a"
.balign 4
.global eti_80015E80
eti_80015E80:
    .4byte fn_801E2180
    .4byte 0x00000124
    .4byte etb_80008988
.size eti_80015E80, 12

# fn_801E2180(this, kind) - TINK's real dtor. Resets its own vtable,
# then if this->0x2bc holds a valid tracked actor-slot ID (>=0) AND
# this->0x2c0 (accumulated damage/score) is positive: accumulates it
# into a global per-index stats table (lbl_8050EC80), clamped >= 0,
# then via SpatialRegistry_GetBase+fn_801F666C clears a found tracked
# actor's visibility flag. Tail is the standard inlined lbl_804A4808
# base-dtor body. Attempted real-C++ promotion (Phase 4): matched
# retail except a pure register-allocation choice in the stats-
# accumulation block - same class of issue as fn_80317BB8/fn_80107014/
# fn_801C5680/fn_801DA438. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_801E2180

fn_801E2180:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    beq .L_801E2288
    lis 3, lbl_804A51E4@ha
    addi 0, 3, lbl_804A51E4@l
    stw 0, 0x0(30)
    lwz 0, 0x2bc(30)
    cmpwi 0, 0x0
    blt .L_801E223C
    lwz 5, 0x2c0(30)
    cmpwi 5, 0x0
    ble .L_801E2218
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 12, 12
    bne .L_801E2210
    lis 3, lbl_8050EC80@ha
    addi 4, 3, lbl_8050EC80@l
    lwz 0, 0x10(4)
    mulli 0, 0, 0xc8
    add 3, 4, 0
    lwz 0, 0x2c(3)
    add 0, 0, 5
    stw 0, 0x2c(3)
    lwz 0, 0x10(4)
    mulli 0, 0, 0xc8
    add 3, 4, 0
    lwz 0, 0x2c(3)
    cmpwi 0, 0x0
    bge .L_801E2210
    li 0, 0x0
    stw 0, 0x2c(3)
.L_801E2210:
    li 0, 0x0
    stw 0, 0x2c0(30)
.L_801E2218:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2bc(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    beq .L_801E2234
    li 0, 0x0
    stb 0, 0x11c(3)
.L_801E2234:
    li 0, -0x1
    stw 0, 0x2bc(30)
.L_801E223C:
    cmplwi 30, 0x0
    beq .L_801E2278
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    beq .L_801E226C
    addic. 0, 30, 0x294
    beq .L_801E226C
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
.L_801E226C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
.L_801E2278:
    extsh. 0, 31
    ble .L_801E2288
    mr 3, 30
    bl dtor_80084580
.L_801E2288:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
