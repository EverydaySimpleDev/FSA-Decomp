# NOTE: attempted real-C++ promotion twice (33rd Phase 4 batch) - the
# fast-path-then-loop CONTROL FLOW and every field check matched
# retail exactly on the first attempt, but the index->address
# computation for the cached-shortcut-slot lookup differs: retail uses
# `slwi;add;lwz` (separate address-then-immediate-offset-load), MWCC's
# -O4 optimizer normalizes BOTH a combined-expression phrasing and an
# explicit 2-step-pointer phrasing to `slwi;addi;lwzx` (indexed load)
# instead - a strength-reduction choice not controllable from source
# syntax. Very close overall (only this one addressing idiom differs)
# - worth a fresh attempt if a technique for suppressing this specific
# lwzx-preference surfaces. Left as raw asm.
# fn_801F666C(registry, targetID) - finds the registry record whose ID
# (`+0x198`) equals `targetID` AND whose "docked" flag (`+0x11c`) is
# set. Returns 0 immediately if `targetID` is negative. Tries a cached
# shortcut index first (`registry+0x2014`, itself used to index the
# record array the same way Registry_GetSlotValueOrFallback does); if that slot doesn't
# match, falls back to a full linear scan of the record array
# (`registry+0x8`, count `registry+0x1008`). Returns the matching
# record pointer, or 0 if none found. WNWN's update() (extab_80184fc0.s,
# state 8) uses this exact pattern - re-locate a previously-tracked
# record by its ID - confirming `+0x11c`/`+0x198` are the record's
# "docked"/"claimed" flag and stable ID. Kept as raw asm: a real
# dynamic loop combined with a nested guard chain, outside the
# validated safe envelope (sibling Registry_GetSlotValueOrFallback was promoted to
# Game/stub_801f6644.cpp).
.text
.balign 4
.global fn_801F666C

fn_801F666C:
    cmpwi 4, 0x0
    li 7, 0x0
    .4byte 0x4180009C # blt .L_801F6710
    lwz 0, 0x2014(3)
    cmpwi 0, 0x0
    .4byte 0x41800038 # blt .L_801F66B8
    slwi 0, 0, 2
    add 5, 3, 0
    lwz 5, 0x8(5)
    cmplwi 5, 0x0
    .4byte 0x41820024 # beq .L_801F66B8
    lbz 0, 0x11c(5)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801F66B8
    lwz 0, 0x198(5)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_801F66B8
    mr 7, 5
    .4byte 0x4800005C # b .L_801F6710
L_801F66B8:
    lwz 0, 0x1008(3)
    mr 5, 3
    li 8, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810044 # ble .L_801F6710
L_801F66D0:
    lwz 6, 0x8(5)
    cmplwi 6, 0x0
    .4byte 0x4182002C # beq .L_801F6704
    lbz 0, 0x11c(6)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_801F6704
    lwz 0, 0x198(6)
    cmpw 4, 0
    .4byte 0x40820014 # bne .L_801F6704
    slwi 0, 8, 2
    add 3, 3, 0
    lwz 7, 0x8(3)
    .4byte 0x48000010 # b .L_801F6710
L_801F6704:
    addi 5, 5, 0x4
    addi 8, 8, 0x1
    .4byte 0x4200FFC4 # bdnz .L_801F66D0
L_801F6710:
    mr 3, 7
    blr
