# fn_802E7698 - PNP2: update() (0x68)
# Countdown timer at this->0x238; on expiry, if this->0x230 (one-shot flag)
# is unset, looks up a jump table (lbl_80541250) indexed by this->0x234 to
# trigger fn_801F0D20, then clears flag byte this->0x11c.
#
# Attempted real-C++ promotion (2 variants: a named `s32 timer` local
# reused for the compare AND the final decrement; the field inlined
# directly with no local at all, decrement via `-= 1`): both produced
# the IDENTICAL byte mismatch - retail keeps a 2nd copy of `this` in r3
# (duplicating the r31 saved copy) specifically so the timer field can
# be loaded into r4 without touching r3, whereas MWCC always loads the
# timer field into r3 itself and relies solely on r31 for later `this`
# access. A genuine register-allocation-choice wall, unaffected by
# local-variable phrasing. Reverted to raw asm.
.section extab, "a"
.balign 4
.global etb_8000D09C
etb_8000D09C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D09C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C21C
eti_8001C21C:
    .4byte fn_802E7698
    .4byte 0x00000068
    .4byte etb_8000D09C
.size eti_8001C21C, 12

.text
.balign 4
.global fn_802E7698

fn_802E7698:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x238(3)
    cmpwi 4, 0x0
    .4byte 0x40820030 # bne .L_802E76E4
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802E76D8
    lwz 0, 0x234(31)
    .4byte 0x3882E2B0 # li r4, lbl_80541250@sda21
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_801F0D20
L_802E76D8:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800000C # b .L_802E76EC
L_802E76E4:
    subi 0, 4, 0x1
    stw 0, 0x238(31)
L_802E76EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
