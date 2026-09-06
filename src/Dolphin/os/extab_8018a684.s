# FGN2 cluster, part 4 (tail). fn_8018A684: copies a 3-float vector
# (struct copy accessor). Split from fn_8018A6A0/fn_8018A6AC (trivial
# setter/accessor, now real C++ in Game/stub_8018a6a0.cpp).
# NOTE: attempted real-C++ promotion twice (naive assignments, then
# explicit load-ahead locals matching retail's instruction order) - both
# times MWCC's scheduler swapped the first two float loads relative to
# retail regardless of source declaration order. A stubborn scheduling
# choice, not fixable by reordering source - left as raw asm. See
# project_fsa_phase4_kickoff.md.
.text
.balign 4
.global fn_8018A684

fn_8018A684:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr
