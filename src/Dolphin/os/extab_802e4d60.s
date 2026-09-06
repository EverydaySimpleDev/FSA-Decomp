# fn_802E4D60 - BLZ2: deactivate 8-slot x 2-subslot effect-handle table (0x10C)
# Leaf helper (no calls, no stack frame - no extab entry needed). For 8 elements
# (stride 8 bytes) walks 6 parallel handle-pointer fields (0x230/0x270/0x2b0 and
# +4 variants) and for each non-null handle sets its "released" flag bit + a
# secondary flag, then clears the slot pointer to 0.
# NOTE: attempted real-C++ promotion as a natural `for (int i = 0; i < 8; i++)`
# loop with the counter unused in the body - FAILED. Retail's compiled output
# maintains a SEPARATE shadow counter register (r7) in parallel with the ctr-
# based loop dispatch, incrementing it every iteration even though nothing
# ever reads it - my code correctly eliminated this genuinely-dead value,
# producing a build exactly ONE WORD (4 bytes) shorter than retail with every
# subsequent instruction shifted. This is the loop-category analogue of the
# already-documented "retail has a dead load my code correctly omits"
# problem (fn_80212F5C, sixth batch) - not fixable by restructuring, since
# the extra register is provably unnecessary from the C++ semantics alone.
# First real (not just prophylactic) test of natural C++ loop promotion this
# session - confirms loops remain a hard category, now with concrete evidence
# rather than just caution. See project_fsa_phase4_kickoff.md.
.text
.balign 4
.global fn_802E4D60

fn_802E4D60:
    li 0, 0x8
    li 7, 0x0
    mtctr 0
L_802E4D6C:
    lwz 6, 0x230(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802E4D94
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x230(3)
L_802E4D94:
    lwz 6, 0x270(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802E4DBC
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x270(3)
L_802E4DBC:
    lwz 6, 0x2b0(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802E4DE4
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x2b0(3)
L_802E4DE4:
    lwz 6, 0x234(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802E4E0C
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x234(3)
L_802E4E0C:
    lwz 6, 0x274(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802E4E34
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x274(3)
L_802E4E34:
    lwz 6, 0x2b4(3)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802E4E5C
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x2b4(3)
L_802E4E5C:
    addi 3, 3, 0x8
    addi 7, 7, 0x1
    .4byte 0x4200FF08 # bdnz .L_802E4D6C
    blr
