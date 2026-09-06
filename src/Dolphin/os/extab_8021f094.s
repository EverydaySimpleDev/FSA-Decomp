# Fresh-gap-hunt batch 20 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
#
# Attempted real-C++ promotion (Phase 4 session 5): both functions
# traced and logically understood (fn_8021F094: "all resolved actors
# pass fn_8021D794" all-gate loop over an id array at this+8; fn_8021F130:
# per-id conditional fn_8021D764/fn_8021D734 dispatch gated by 2 trigger
# bits in this->0x0, cleared after the loop). Reached the exact correct
# SIZE was NOT achieved even after applying the established "shared-tail
# result local" pattern for fn_8021F094's boolean-ish early-exit (result
# init 1, set 0 + break instead of a direct `return 0`) - this closed
# part of the gap (0x130->0x13c of an expected 0x15c total) but a
# residual ~0x20-byte deficit remains, concentrated in (1) fn_8021F094's
# OWN prologue register-SAVE order (retail interleaves `stw r30`
# between the count load and the count>0 compare, in a way a 2nd
# phrasing attempt - removing an intermediate `char* t` alias - did not
# change) and (2) fn_8021F130's loop body, where retail copies the
# resolved-actor pointer through TWO registers (`mr r0,r3; mr. r30,r0`)
# before testing it, a shape not reproduced by a direct
# `if (actor) {...}` test. Deferred after 2 attempts, reverted to this
# raw transcription.
.section extab, "a"
.balign 4
.global etb_8000A4DC
etb_8000A4DC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000A4DC, 8

.global etb_8000A4E4
etb_8000A4E4:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000A4E4, 8

.section extabindex, "a"
.balign 4
.global eti_80018274
eti_80018274:
    .4byte fn_8021F094
    .4byte 0x0000009C
    .4byte etb_8000A4DC
.size eti_80018274, 12

.global eti_80018280
eti_80018280:
    .4byte fn_8021F130
    .4byte 0x000000C0
    .4byte etb_8000A4E4
.size eti_80018280, 12

.text
.balign 4
.global fn_8021F094
.global fn_8021F130

fn_8021F094:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0x4(3)
    stw 30, 0x18(1)
    cmpwi 31, 0x0
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x4181000C # bgt .L_8021F0C4
    li 3, 0x0
    .4byte 0x48000050 # b .L_8021F110
L_8021F0C4:
    mr 30, 3
    li 29, 0x1
    li 28, 0x0
    .4byte 0x48000034 # b .L_8021F104
L_8021F0D4:
    bl SpatialRegistry_GetBase
    lwz 4, 0x8(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021F0FC
    bl fn_8021D794
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8021F0FC
    li 29, 0x0
    .4byte 0x48000014 # b .L_8021F10C
L_8021F0FC:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_8021F104:
    cmpw 28, 31
    .4byte 0x4180FFCC # blt .L_8021F0D4
L_8021F10C:
    mr 3, 29
L_8021F110:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021F130:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x40810078 # ble .L_8021F1D0
    lhz 0, 0x0(28)
    clrlwi. 0, 0, 30
    .4byte 0x4182006C # beq .L_8021F1D0
    mr 31, 28
    li 29, 0x0
    .4byte 0x48000048 # b .L_8021F1B8
L_8021F174:
    bl SpatialRegistry_GetBase
    lwz 4, 0x8(31)
    bl fn_801F666C
    mr 0, 3
    mr. 30, 0
    .4byte 0x41820028 # beq .L_8021F1B0
    lhz 0, 0x0(28)
    clrlwi. 0, 0, 31
    .4byte 0x41820008 # beq .L_8021F19C
    bl fn_8021D764
L_8021F19C:
    lhz 0, 0x0(28)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182000C # beq .L_8021F1B0
    mr 3, 30
    bl fn_8021D734
L_8021F1B0:
    addi 31, 31, 0x4
    addi 29, 29, 0x1
L_8021F1B8:
    lwz 0, 0x4(28)
    cmpw 29, 0
    .4byte 0x4180FFB4 # blt .L_8021F174
    lhz 0, 0x0(28)
    rlwinm 0, 0, 0, 16, 29
    sth 0, 0x0(28)
L_8021F1D0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

