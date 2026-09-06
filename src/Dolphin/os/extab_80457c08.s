# 901KB-gap non-actor manager block: 1 function(s), 8 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.
#
# NOTE: attempted real-C++ promotion (Phase 4) - a plain wrapper
# function (`fn_8045787C((u8*)p-0x18, flag)`) as the final statement
# compiled with a full stwu/mflr stack frame instead of retail's bare
# `subi 3,3,0x18 / b fn_8045787C` tail-call form - MWCC did not perform
# tail-call optimization for this ordinary call. Retail's shape (no
# frame at all, a raw unconditional branch to another function) is the
# classic signature of a COMPILER-SYNTHESIZED adjustor thunk (see
# project_fsa_multiple_inheritance_pattern.md) generated automatically
# for a virtual destructor in a multiple-inheritance class - reproducing
# it would require modeling the real class hierarchy/vtable (letting
# MWCC generate the thunk itself), not a hand-written wrapper. Left as
# raw asm.
.text
.balign 4
.global fn_80457C08

fn_80457C08:
    subi 3, 3, 0x18
    b fn_8045787C

