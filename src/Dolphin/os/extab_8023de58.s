# NOTE: attempted real-C++ promotion twice (33rd Phase 4 batch) - got
# the ENTIRE guard-chain structure and a `u8`-not-`bool` flag (avoiding
# an unwanted neg/or/srwi normalize-tail synthesis) exactly right on
# attempt 2. The ONE remaining diff: retail's `player = mgr[idx].field`
# lookup uses `slwi;add;lwz` (separate address then immediate-offset
# load), but MWCC's -O4 optimizer always normalizes this exact
# addressing shape to `slwi;addi;lwzx` (indexed load) regardless of
# source phrasing - CONFIRMED as the same uncontrollable choice also
# seen in fn_801F666C this same batch (2 independent instances now).
# Left as raw asm - would need a genuine fix for the lwzx-preference
# to close both at once.
# fn_8023DE58 - part of the "per-player" accessor family built around the
# global player-manager pointer lbl_8053AC90 and its per-player master-
# enable flag byte at playerObj->0xcac (see [[project_fsa_player_target_helper_decoded]]
# for the shared shape). Unlike the delegate-to-a-sub-function predicates,
# this one returns a plain FIELD directly: given a player slot index
# (bounds-checked 0<=idx<4, player pointer non-null), if the flag byte is
# set, returns playerObj->0x3b4 (a 32-bit field, not yet identified -
# likely a per-player color/type ID given how fn_801EEC98 compares this
# function's result against the sentinel 8 and against a target object's
# own->0x4 "owner" field); otherwise returns 0.
#
# CROSS-REFERENCE (fn_803075AC, see extab_803075ac.s): this function is
# also used there to check "does resolvedPlayer's ->0x3b4 equal a given
# actor's ownerID (including the captured/attached sentinel 8)?" before
# registering a per-player shadow/carry-marker for that actor -
# consistent with (and refining) the "color/type ID" hedge above toward
# "the ID of whatever this player is currently carrying/tracking."
.text
.balign 4
.global fn_8023DE58

fn_8023DE58:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023DE6C
    li 3, 0x0
    blr
L_8023DE6C:
    .4byte 0x4082000C # bne .L_8023DE78
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023DEB8
L_8023DE78:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023DE88
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023DEB8
L_8023DE88:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023DE98
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023DEB8
L_8023DE98:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023DEB4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023DEB8
L_8023DEB4:
    lbz 0, 0xcac(4)
L_8023DEB8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023DED4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lwz 3, 0x3b4(3)
    blr
L_8023DED4:
    li 3, 0x0
    blr

