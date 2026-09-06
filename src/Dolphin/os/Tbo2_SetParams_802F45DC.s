# fn_802F45DC - TBO2: setParams (0x20)
# Adds a fixed jitter offset to position fields this->0xc/0x10.
# NOTE: attempted real-C++ promotion FOUR times now (2 sessions) -
# failed on an isolated float load-order swap (retail loads this->0xc
# before the global; every attempt loaded the global first) - the SAME
# already-documented unfixable case as fn_8018A684 (project_fsa_phase4_kickoff.md,
# tenth batch). This session re-tested with the declaration-order trick
# that fixed RusaRegistry_GetOrInit/RusaRegistry_Unregister's register/immediate ordering (2
# more variations: global referenced only inline in the expression, and
# global cached in a local declared AFTER the field read) - both still
# scheduled the global's load FIRST regardless. Conclusively confirmed:
# MWCC's scheduler picks this SPECIFIC pair's order independent of
# source declaration order, unlike the RusaRegistry_GetOrInit/BA0 cases where
# declaration order genuinely worked - the two "declaration order
# controls register/scheduling" wins do NOT generalize to every
# load-ordering problem. Left as raw asm.
.text
.balign 4
.global fn_802F45DC

fn_802F45DC:
    lfs 0, 0xc(3)
    .4byte 0xC022E540 # lfs f1, lbl_805414E0@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    blr
