.section extab, "a"
.balign 4
.global etb_80006964
etb_80006964:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006964, 8

.section extabindex, "a"
.balign 4
.global eti_800131A4
eti_800131A4:
    .4byte fn_80134D20
    .4byte 0x000000A0
    .4byte etb_80006964
.size eti_800131A4, 12

# fn_80134D20(this, flag) - a core-systems "enter a busy/loading state"
# method: sets this->0x4c=9 (the SAME field fn_80134CC8 checks for ==0xb -
# a state-code convention on this object). Calls fn_8037ADA4(lbl_8053AD70)
# then sets lbl_8053AD70->0xc(byte)=1 (a not-yet-identified subsystem
# enable flag), and fn_80458880(this->0xa0, 1, -1) - conditionally also
# fn_804593D4(this->0xa0) if `flag` is truthy (neither decompiled yet).
# Then re-runs the SAME "get DVD drive status object" accessor
# (fn_8008E328) main() itself calls in its per-frame disc watchdog, zeroes
# this->0x10c/0x108 (matches the "did anything happen"/"cooldown timer"
# field-pair convention seen throughout the actor-sweep, but here at the
# core-systems/scene level), then calls fn_8008DF30(drive->0x7c) and
# fn_8008E2B8(this+0x68, drive->0x7c) - likely registering a VI-retrace or
# DVD-read callback tied to the drive object (not yet decompiled).
.text
.balign 4
.global fn_80134D20

fn_80134D20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x9
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    stw 0, 0x4c(3)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037ADA4
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    li 0, 0x1
    li 4, 0x1
    li 5, -0x1
    stb 0, 0xc(3)
    lwz 3, 0xa0(30)
    bl fn_80458880
    clrlwi. 0, 31, 24
    .4byte 0x4182000C # beq .L_80134D78
    lwz 3, 0xa0(30)
    bl fn_804593D4
L_80134D78:
    li 3, 0x0
    bl fn_8008E328
    li 0, 0x0
    mr 31, 3
    stw 0, 0x10c(30)
    li 4, 0x0
    stw 0, 0x108(30)
    lha 3, 0x7c(3)
    bl fn_8008DF30
    lha 4, 0x7c(31)
    addi 3, 31, 0x68
    bl fn_8008E2B8
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

