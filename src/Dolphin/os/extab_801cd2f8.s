# fn_801CD2F8(val) - bool predicate: return val >= 8. Kept as raw asm:
# this specific "integer < constant, return 0/1" shape compiles to a
# fully BRANCHLESS -O4 sequence from natural C++ (subtract/shift
# boolean-extraction idiom) regardless of phrasing tried, while retail's
# actual bytes use the plain branchy cmpwi/li/bltlr/li/blr shape - a
# confirmed hard case (eighth batch, project_fsa_phase4_kickoff.md).
# Split from fn_801CD30C/fn_801CD354, which ARE real C++ (switch-based
# state classifiers) in Game/stub_801cd30c.cpp.
.text
.balign 4
.global fn_801CD2F8

fn_801CD2F8:
    cmpwi 3, 0x8
    li 3, 0x0
    bltlr
    li 3, 0x1
    blr
