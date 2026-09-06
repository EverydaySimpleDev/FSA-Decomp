# fn_8044296C (dtor) + fn_804429B4 (real ctor, direct vtable-install) - a
# NEW standalone "sound settings" singleton class (vtable lbl_804B1A38, NOT
# Actor-derived - dtor has no dtor_801F593C base-chain call). The ctor
# registers itself as a global singleton (lbl_8053ADD8), then queries the
# real Dolphin SDK call OSGetSoundMode() and writes the resulting
# mono/stereo flag into BOTH the confirmed player-candidate-tracking table
# (lbl_80529DEC->0x245) and via fn_804594E4(lbl_8053AF80, flag) - a sound
# config setter not traced further.
.section extab, "a"
.balign 4
.global etb_800111DC
etb_800111DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800111DC, 8

.global etb_800111E4
etb_800111E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800111E4, 8

.section extabindex, "a"
.balign 4
.global eti_800210C4
eti_800210C4:
    .4byte fn_8044296C
    .4byte 0x00000048
    .4byte etb_800111DC
.size eti_800210C4, 12

.global eti_800210D0
eti_800210D0:
    .4byte fn_804429B4
    .4byte 0x0000008C
    .4byte etb_800111E4
.size eti_800210D0, 12

.text
.balign 4
.global fn_8044296C
.global fn_804429B4

fn_8044296C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8044299C
    lis 5, lbl_804B1A38@ha
    extsh. 0, 4
    addi 0, 5, lbl_804B1A38@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8044299C
    bl dtor_80084580
L_8044299C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804429B4:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B1A38@ha
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_804B1A38@l
    stw 3, 0x0(31)
    .4byte 0x93ED9218 # stw r31, lbl_8053ADD8@sda21(r0)
    stb 0, 0x4(31)
    bl OSGetSoundMode
    cmplwi 3, 0x0
    .4byte 0x40820024 # bne .L_80442A0C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_804594E4
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x245(3)
    .4byte 0x48000020 # b .L_80442A28
L_80442A0C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_804594E4
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x245(3)
L_80442A28:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

