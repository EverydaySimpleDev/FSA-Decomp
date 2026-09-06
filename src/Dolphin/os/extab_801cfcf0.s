/*
 * fn_801CFCF0(this, sideIndex) - selects one of 4 per-side offset fields
 * (this->0x80/0x84/0x88/0x8c, likely the 4 edges of a bounding rect used
 * elsewhere in this cluster) by sideIndex (0-3), applies it as a +/-
 * adjustment to a fixed baseline value (lbl_8053EFFC): sideIndex 0/2 add
 * (0x88/0x8c respectively), 1/3 subtract (0x80/0x84 respectively), any
 * other index (e.g. a negative sentinel, or >=4) leaves the baseline
 * untouched. Tail-calls the not-yet-decompiled fn_801CFD68 with the
 * adjusted value - not fully understood without that function's body.
 *
 * Attempted real-C++ promotion: matched exactly except retail loads the
 * float SDA constant BEFORE the prologue's LR save; MWCC always emits
 * it after. Confirmed instance (7th+) of the documented "prologue
 * LR-save placement relative to independent float loads" wall - see
 * reference_fsa_mwcc_scheduling_wall_investigation.md. Deferred
 * immediately given the established precedent.
 */
.section extab, "a"
.balign 4
.global etb_80008430
etb_80008430:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008430, 8

.section extabindex, "a"
.balign 4
.global eti_8001576C
eti_8001576C:
    .4byte fn_801CFCF0
    .4byte 0x00000078
    .4byte etb_80008430
.size eti_8001576C, 12

.text
.balign 4
.global fn_801CFCF0

fn_801CFCF0:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 4, 0x2
    .4byte 0xC022C05C # lfs f1, lbl_8053EFFC@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0x4182003C # beq .L_801CFD40
    .4byte 0x40800014 # bge .L_801CFD1C
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_801CFD28
    .4byte 0x40800020 # bge .L_801CFD34
    .4byte 0x4800003C # b .L_801CFD54
L_801CFD1C:
    cmpwi 4, 0x4
    .4byte 0x40800034 # bge .L_801CFD54
    .4byte 0x48000028 # b .L_801CFD4C
L_801CFD28:
    lfs 0, 0x88(3)
    fadds 1, 1, 0
    .4byte 0x48000024 # b .L_801CFD54
L_801CFD34:
    lfs 0, 0x80(3)
    fsubs 1, 1, 0
    .4byte 0x48000018 # b .L_801CFD54
L_801CFD40:
    lfs 0, 0x8c(3)
    fadds 1, 1, 0
    .4byte 0x4800000C # b .L_801CFD54
L_801CFD4C:
    lfs 0, 0x84(3)
    fsubs 1, 1, 0
L_801CFD54:
    bl fn_801CFD68
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
