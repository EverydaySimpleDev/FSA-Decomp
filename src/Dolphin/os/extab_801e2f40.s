/*
 * TINK (vtable lbl_804A51E4). "Standing on hazardous ground" predicate:
 * true when the confirmed terrain/hazard classifier fn_8022461C(this->0xc,
 * this->0x4) returns code 3 or a code in [0xd,0xf) - matches the lava/
 * hazard codes from the confirmed terrain-grid family. Called from
 * fn_801E0CF4 to gate a teleport-away transition (fn_801E1594 mode 0xe)
 * versus the notify-effect fallback (fn_801E2EE4).
 *
 * Attempted real-C++ promotion: FIXED a real bug along the way (the
 * comparisons need signed `cmpwi`, i.e. an `s32` result variable, not
 * `u16` which produces `cmplwi`). After that fix, one issue remains:
 * retail computes the call args (`lwz r4,0x4(r3); addi r3,r3,0xc`)
 * BEFORE the stack-frame prologue (stwu/mflr/stw lr/stw r31/mr r31);
 * MWCC always emits the full prologue first regardless of source
 * order. Matches the documented "prologue LR-save placement relative
 * to independent loads" wall (5+ prior confirmed instances this
 * project - see reference_fsa_mwcc_scheduling_wall_investigation.md).
 * Deferred immediately given the established precedent. Reverted to
 * raw asm.
 */
.section extab, "a"
.balign 4
.global etb_800089D0
etb_800089D0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800089D0, 8

.section extabindex, "a"
.balign 4
.global eti_80015EEC
eti_80015EEC:
    .4byte fn_801E2F40
    .4byte 0x0000005C
    .4byte etb_800089D0
.size eti_80015EEC, 12

.text
.balign 4
.global fn_801E2F40

fn_801E2F40:
    stwu 1, -0x10(1)
    mflr 0
    lwz 4, 0x4(3)
    addi 3, 3, 0xc
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xd
    .4byte 0x40800010 # bge .L_801E2F78
    cmpwi 0, 0x3
    .4byte 0x41820010 # beq .L_801E2F80
    .4byte 0x48000010 # b .L_801E2F84
L_801E2F78:
    cmpwi 0, 0xf
    .4byte 0x40800008 # bge .L_801E2F84
L_801E2F80:
    li 31, 0x1
L_801E2F84:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
