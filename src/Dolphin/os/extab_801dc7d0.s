.section extab, "a"
.balign 4
.global etb_80008888
etb_80008888:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008888, 8

.section extabindex, "a"
.balign 4
.global eti_80015D00
eti_80015D00:
    .4byte fn_801DC7D0
    .4byte 0x000000CC
    .4byte etb_80008888
.size eti_80015D00, 12

# fn_801DC7D0(this) - this class's state-dispatch update, the "celebration/
# cleanup" sequel to fn_801DC6B4 setting the global singleton's +0x84
# "objective complete" flag and entering state 1:
#
# state 0: no-op.
# state 1: plays a sound/effect sequence (GetRoomConfigRecord + fn_802D79E8(this->
#   0x4, 0, consts) + fn_80134DE4(lbl_8053AAF8, 1, 0) - the last called
#   with the ENTIRE global-PRNG struct's address, not just its LCG state
#   field, so likely a different (not yet explored) use of that struct).
#   Once this->0x24c (a per-state timer) reaches 60 ticks: notifies via the
#   confirmed fn_801F0E34, then calls fn_801DAC6C() and CLEARS bit 0x1 on
#   the singleton's +0x84 halfword - undoing exactly the flag fn_801DC6B4
#   set - confirming that flag is a TIMED window (~60 ticks), not a
#   permanent global state. Also fires fn_801DAD88(singleton) - a 2nd real
#   call site for the confirmed record-notify family (fn_801DAD2C/
#   fn_801DAD88/fn_801DADD0) - then commits to state 2.
# state 2: once this->0x24c reaches 120 ticks, calls the confirmed generic
#   trampoline/cleanup dispatcher fn_801F3668 (likely self-despawn).
# state >=3: no-op.
#
# Overall: a short celebration-then-cleanup sequence that runs after this
# class's "launch 10 players" objective completes (~60 ticks of cues,
# clearing the global flag, then ~120 more ticks before self-cleanup).
#
# Attempted real-C++ promotion (Phase 4): logic/args/calls fully
# confirmed correct (landed 12 bytes short, 0xc0 vs 0xcc) - retail keeps
# a REDUNDANT branch pair at the top-level state dispatch (`beq state1;
# bge check3; b end;` where the `b end` is logically redundant since
# falling through to check3 and immediately hitting `bge end` there
# would reach the same place) - MWCC always collapses this to a direct
# 2-way branch regardless of source phrasing (early-return chain
# tried). Matches the confirmed redundant-branch-preservation wall
# (fn_801DB950/fn_801DE9F4, project log). Deferred immediately per
# standing discipline for an already-established wall class.
.text
.balign 4
.global fn_801DC7D0

fn_801DC7D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_801DC804
    .4byte 0x40800008 # bge .L_801DC7F8
    .4byte 0x48000094 # b .L_801DC888
L_801DC7F8:
    cmpwi 0, 0x3
    .4byte 0x4080008C # bge .L_801DC888
    .4byte 0x48000078 # b .L_801DC878
L_801DC804:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022C3C0 # lfs f1, lbl_8053F360@sda21(r0)
    .4byte 0xC042C3C4 # lfs f2, lbl_8053F364@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800054 # blt .L_801DC888
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x55
    li 5, 0x0
    bl fn_801F0E34
    bl fn_801DAC6C
    lhz 0, 0x84(3)
    rlwinm 0, 0, 0, 16, 30
    sth 0, 0x84(3)
    bl fn_801DAC6C
    bl fn_801DAD88
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000014 # b .L_801DC888
L_801DC878:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800008 # blt .L_801DC888
    bl fn_801F3668
L_801DC888:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
