.section extab, "a"
.balign 4
.global etb_800080D8
etb_800080D8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800080D8, 8

.section extabindex, "a"
.balign 4
.global eti_800152A4
eti_800152A4:
    .4byte fn_801C5680
    .4byte 0x000000BC
    .4byte etb_800080D8
.size eti_800152A4, 12

.text
.balign 4
.global fn_801C5680

# fn_801C5680(this, kind) - "SLK2"'s real dtor (see extab_801c573c.s
# for the constructor). Unlike ROPE/ZORA/FALL/BMST/TNDR (which derive
# DIRECTLY from lbl_804A4808), SLK2 derives from the "position-trail
# predictor" class (lbl_804A46F4/fn_801D1974) which ITSELF derives from
# lbl_804A4808 - a THREE-LEVEL inheritance chain, all inlined into this
# one dtor. Own cleanup before the ratchet: fn_801C0D70(this) ->
# fn_801C1440(that, this->0x198), then dtor_80214F9C(this+0x4ec, -1).
# Tail is the standard 2-level inlined base-dtor ratchet (own ->
# lbl_804A46F4 -> lbl_804A4808). Attempted real-C++ promotion (Phase 4):
# my transcription came out 16 bytes short right after the pre-ratchet
# cleanup calls - fn_801C0D70's true argument/return convention isn't
# fully pinned down (my guessed `fn_801C0D70(this_)` signature doesn't
# reproduce retail's exact codegen). Reverted to raw asm pending a
# dedicated investigation into fn_801C0D70's real signature; see
# project_fsa_phase4_resumed_session2.md.
fn_801C5680:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    beq .L_801C5720
    lis 3, lbl_804A43E8@ha
    addi 0, 3, lbl_804A43E8@l
    stw 0, 0x0(30)
    bl fn_801C0D70
    lwz 4, 0x198(30)
    bl fn_801C1440
    addi 3, 30, 0x4ec
    li 4, -0x1
    bl dtor_80214F9C
    cmplwi 30, 0x0
    beq .L_801C5710
    lis 3, lbl_804A46F4@ha
    addi 0, 3, lbl_804A46F4@l
    stw 0, 0x0(30)
    beq .L_801C5710
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    beq .L_801C5704
    addic. 0, 30, 0x294
    beq .L_801C5704
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
.L_801C5704:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
.L_801C5710:
    extsh. 0, 31
    ble .L_801C5720
    mr 3, 30
    bl dtor_80084580
.L_801C5720:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
