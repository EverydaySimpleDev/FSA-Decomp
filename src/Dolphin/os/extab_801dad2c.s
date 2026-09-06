/*
 * fn_801DAD2C(record) -> result (0x801DAD2C-0x801DAD88, 0x5C/92 bytes) - reads
 * a tracked target ID from record->0x4 (the SAME field the CONFIRMED
 * fn_801DAC6C singleton's own ->0x4 slot occupies - see oscluster_801dac6c.c
 * and oscluster_801daeac.c's fn_801DAF3C setter); if valid, resolves it via
 * the CONFIRMED
 * SpatialRegistry_GetBase/fn_801F666C pair and forwards to fn_801DC264(resolvedEntry)
 * (not yet landed), returning its result. Otherwise returns 0/false.
 *
 * Attempted real-C++ promotion (Phase 4): matched retail except a pure
 * register-allocation choice in the prologue - retail's register-save
 * order is `lwz r31=id` THEN `stw r30`/`li r30=0`, while both a
 * `id`-declared-first and a `result`-declared-first source variant
 * produced the OPPOSITE prologue ordering (or, on one attempt, swapped
 * which variable got r30 vs r31 entirely). Same class of issue as
 * fn_80317BB8/fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180/
 * dtor_801D7730/fn_803DA878/fn_801DACAC. Reverted to raw asm; see
 * project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_800087D8
etb_800087D8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800087D8, 8

.section extabindex, "a"
.balign 4
.global eti_80015BF8
eti_80015BF8:
    .4byte fn_801DAD2C
    .4byte 0x0000005C
    .4byte etb_800087D8
.size eti_80015BF8, 12

.text
.balign 4
.global fn_801DAD2C

fn_801DAD2C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    lwz 31, 0x4(3)
    stw 30, 0x8(1)
    li 30, 0x0
    cmpwi 31, 0x0
    .4byte 0x41800020 # blt .L_801DAD6C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801DAD6C
    bl fn_801DC264
    mr 30, 3
L_801DAD6C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

