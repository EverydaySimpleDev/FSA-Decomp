# fn_8013C8CC(this) - iterates `this->0x410c` entries of a parallel-array
# pair embedded in `this`: a u16 type-code at 0x4074+i*2 and a 4-byte slot
# at 0x4010+i*4. For each entry whose type-code is 0x349, 0x34a, or 0x34b
# (three specific, unconfirmed IDs - no naming table, left as raw hex),
# calls fn_800EB7B8(slot) - likely a per-entry release/notify sweep over
# some kind of registered-item table owned by this class (the same class
# fn_8013C86C destructs).
#
# Attempted real-C++ promotion (Phase 4): the loop/field-offsets/call are
# all confirmed correct, but the 3-way type-code check keeps getting
# re-shaped by MWCC's optimizer instead of reproducing retail's literal
# 3-instruction cmpwi/beq chain (all sharing ONE call site): a plain
# `||` chain compiled to a subtract+mask range check (4 bytes short via
# arithmetic collapse); a `switch` compiled to an EVEN more compact
# 2-branch range check (also 4 bytes short, different shape); explicit
# nested if/else with the call duplicated 3x (one per branch, no shared
# call site) came out 24 bytes too LONG since MWCC didn't merge the 3
# textually-identical calls back into one. None of the 3 structures
# tried reproduce "3 separate compares, ONE shared call site" - retail's
# real source shape for this specific idiom not yet found. Deferred
# after 3 attempts.
.section extab, "a"
.balign 4
.global etb_80006B7C
etb_80006B7C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006B7C, 8

.section extabindex, "a"
.balign 4
.global eti_800134C8
eti_800134C8:
    .4byte fn_8013C8CC
    .4byte 0x0000008C
    .4byte etb_80006B7C
.size eti_800134C8, 12

.text
.balign 4
.global fn_8013C8CC

fn_8013C8CC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
    mr 31, 28
    mr 30, 28
    .4byte 0x48000034 # b .L_8013C92C
L_8013C8FC:
    lhz 0, 0x4074(31)
    cmplwi 0, 0x349
    .4byte 0x41820014 # beq .L_8013C918
    cmplwi 0, 0x34a
    .4byte 0x4182000C # beq .L_8013C918
    cmplwi 0, 0x34b
    .4byte 0x4082000C # bne .L_8013C920
L_8013C918:
    lwz 3, 0x4010(30)
    bl fn_800EB7B8
L_8013C920:
    addi 31, 31, 0x2
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_8013C92C:
    lwz 0, 0x410c(28)
    cmpw 29, 0
    .4byte 0x4180FFC8 # blt .L_8013C8FC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
