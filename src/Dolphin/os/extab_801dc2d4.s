.section extab, "a"
.balign 4
.global etb_80008860
etb_80008860:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008860, 8

.section extabindex, "a"
.balign 4
.global eti_80015CC4
eti_80015CC4:
    .4byte fn_801DC2D4
    .4byte 0x00000090
    .4byte etb_80008860
.size eti_80015CC4, 12

# fn_801DC2D4(this) - a "play cue at this position" dispatcher, part of the
# new (not-yet-identified) class fn_801DC264 belongs to, unrelated to the
# just-closed 3rd chase-or-free-roam class. Checks fn_801CD2F8(this->0x4) -
# a not-yet-explored predicate on this object's attached handle (likely
# "is this handle a player?" given handle-classification helpers seen
# elsewhere this session) - and dispatches on the result:
#   - truthy: calls fn_80307AC8(this->0x198, this+0xc, this->0x280+0xe3,
#     0, 0, -1) - an SDK-shaped call (not yet decompiled), likely a
#     player-targeted sound/vibration cue given the ID+position+code args.
#   - falsy: calls fn_801F02BC(this, lbl_80469AE4, this->0x280+0xe3,
#     <const scale from lbl_8053F340>, 0, -1, 0, 0) - the CONFIRMED
#     scale-variant effect-spawn wrapper already seen dispatching from
#     fn_801DB18C earlier this session, here spawning a visual effect
#     instead of the sound-cue path above.
# this->0x280 is a base sound/effect code, offset by a fixed +0xe3 either
# way - the two branches differ in WHERE the cue plays (sound vs visual)
# based on the target-handle's type, not in WHICH cue.
.text
.balign 4
.global fn_801DC2D4

fn_801DC2D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x4(3)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801DC320
    lwz 6, 0x280(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0xe3
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x48000034 # b .L_801DC350
L_801DC320:
    .4byte 0xC022C3A0 # lfs f1, lbl_8053F340@sda21(r0)
    lis 3, lbl_80469AE4@ha
    lwz 5, 0x280(31)
    addi 4, 3, lbl_80469AE4@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0xe3
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_801DC350:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

