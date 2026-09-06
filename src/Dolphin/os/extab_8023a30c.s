# Fresh-gap-hunt batch 20 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
#
# Attempted real-C++ promotion (Phase 4, session 3): fn_8023A30C (the
# first of the 2 bundled functions - a 4-slot player-list scan gated by
# `player->0xcac` then Player_HasAnyStatusFlagSet) matched retail
# BYTE-FOR-BYTE, instruction-for-instruction, on the first attempt using
# a shared-flag nested-if guard chain (base==0 / i<0 / i>=4 / p==0 ->
# flag=0, else flag=*(u8*)(p+0xcac); separate `if(flag)` block calling
# Player_HasAnyStatusFlagSet). Global `lbl_8053AC90` is a plain scalar
# `void*` (retail uses @sda21 addressing for it, not lis/addi).
#
# fn_8023A3DC (the second function, single-index variant delegating to
# Player_CheckField_0xc9c) could NOT be landed: retail has an EXTRA
# `bne` instruction right after the "base != 0" branch target that
# reuses the SAME stale cr0 from the preceding `cmplwi` (a no-op branch
# that's always taken) - this is the already-confirmed "redundant-
# branch-preservation wall" (3rd+ instance, see fn_801DC7D0's history)
# and cost the function exactly 4 bytes short. Separately, the
# `base[idx*4+4]` pointer-arithmetic step also picked a different
# instruction shape than retail (mine: slwi+addi+lwzx folding the +4
# into the index register; retail: slwi+add+lwz using a literal +4
# load displacement) - tried 3 phrasings (`4+idx*4`, `idx*4+4`, and a
# split `char* slot = base+idx*4; *(slot+4)`) and MWCC picked the exact
# same instruction sequence every time, so this is NOT reachable via
# source-level reassociation either (possibly correlated with the same
# codegen-state issue as the missing branch). Since both functions
# share one Object()/extab pair, fn_8023A30C can't be landed alone
# without splitting this file's dtk split boundary at 0x8023A3DC (not
# attempted - would need manual config.yml surgery, out of scope for a
# quick attempt). Worth revisiting fn_8023A30C alone if splits.txt/
# config.yml manual-split mechanics are ever tackled as a dedicated task.
.section extab, "a"
.balign 4
.global etb_8000B008
etb_8000B008:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B008, 8

.global etb_8000B010
etb_8000B010:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B010, 8

.section extabindex, "a"
.balign 4
.global eti_80019318
eti_80019318:
    .4byte fn_8023A30C
    .4byte 0x000000D0
    .4byte etb_8000B008
.size eti_80019318, 12

.global eti_80019324
eti_80019324:
    .4byte fn_8023A3DC
    .4byte 0x0000009C
    .4byte etb_8000B010
.size eti_80019324, 12

.text
.balign 4
.global fn_8023A30C
.global fn_8023A3DC

fn_8023A30C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023A334
    li 3, 0x0
    .4byte 0x48000094 # b .L_8023A3C4
L_8023A334:
    li 30, 0x0
    li 31, 0x0
L_8023A33C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023A350
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023A38C
L_8023A350:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023A360
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023A38C
L_8023A360:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023A370
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023A38C
L_8023A370:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A388
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A38C
L_8023A388:
    lbz 0, 0xcac(4)
L_8023A38C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8023A3B0
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl Player_HasAnyStatusFlagSet
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023A3B0
    li 3, 0x1
    .4byte 0x48000018 # b .L_8023A3C4
L_8023A3B0:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF80 # blt .L_8023A33C
    li 3, 0x0
L_8023A3C4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023A3DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023A3FC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023A468
L_8023A3FC:
    .4byte 0x4082000C # bne .L_8023A408
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023A448
L_8023A408:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023A418
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023A448
L_8023A418:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023A428
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023A448
L_8023A428:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A444
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A448
L_8023A444:
    lbz 0, 0xcac(4)
L_8023A448:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023A464
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_CheckField_0xc9c
    .4byte 0x48000008 # b .L_8023A468
L_8023A464:
    li 3, 0x0
L_8023A468:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

