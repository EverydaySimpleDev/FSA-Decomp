# fn_8026FC8C(player) - resets this whole cluster: clears
# `player->0xc9c` to 0, sets `player->0x468` to the integer 10, and
# sets the three floats `player->0xc84`/`0xc88`/`0xc8c` to the same
# constant (loaded once and reused for all three stores). Kept as raw
# asm: MWCC materialized the two integer immediates (0 and 10) back-to-
# back before the store, instead of interleaving them with the float
# load as retail does - the SAME "stubborn MWCC codegen choice, not
# responsive to source restructuring" category as RusaRegistry_GetOrInit's
# ORIGINAL failure. RETESTED (32nd Phase 4 batch) with the declaration-
# order fix that later cracked RusaRegistry_GetOrInit/RusaRegistry_Unregister (naming a local
# for the SECOND-used immediate before the first) - NO EFFECT here,
# identical wrong output both with and without it. This confirms that
# fix's boundary: it only works when the two values have tightly
# adjacent/overlapping liveness (RusaRegistry_GetOrInit's case); here the two
# immediates are separated by float-load/store work in between, and
# MWCC hoists both regardless of source declaration order. Split
# out of the original Player_GetLinkedHandleOrInvalid..Player_GetModeSubPtr_0xb9a dtk cluster; the other 4
# functions are real C++ in Game/stub_8026fc68.cpp.
.text
.balign 4
.global fn_8026FC8C

fn_8026FC8C:
    li 0, 0x0
    .4byte 0xC002D2E8 # lfs f0, lbl_80540288@sda21(r0)
    stw 0, 0xc9c(3)
    li 0, 0xa
    stfs 0, 0xc84(3)
    stfs 0, 0xc88(3)
    stfs 0, 0xc8c(3)
    stw 0, 0x468(3)
    blr
