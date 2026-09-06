# fn_801E1DB4(this): true iff this->0x278 falls in [0,3) or [0xd,0x11).
# NOTE: attempted real-C++ promotion FOUR times across 2 sessions, all
# via a bool return type (established recipe): (1) default-then-override
# local with an OR of 2 range-&&-chains - right logic/instructions, 4
# bytes short, wrong layout. (2) bare `return (range1)||(range2);` in
# the "natural" low-to-high term order (inspired by zeldaret/tp's real
# dMeterString_c::isLeadByte(), the SAME OR-of-2-ranges shape, which
# compiles cleanly with a bare bool return) - 4 bytes short again,
# different layout. (3) bare return with the OR terms REVERSED
# (high-range first, matching the term-order fix that worked for
# fn_801E1D7C) - still 4 bytes short, still a different layout.
# Retail's actual structure is asymmetric/criss-crossed in a way none
# of these reproduce: it checks the upper range's UPPER bound (0xd)
# first via a bge-to-a-later-block, then (if not taken) checks the
# LOWER range's upper bound (3) via bgelr, then the lower range's
# LOWER bound (0) via a bge-to-a-different-later-block, and only in
# the bge-taken block from step 1 does it check the upper range's own
# lower bound (0x11). This 4-block asymmetric shape (unlike
# isLeadByte's clean symmetric 2-range OR) suggests retail's real
# source structure differs from a flat `(a&&b)||(c&&d)` expression -
# possibly nested if/else with a different range decomposition, not
# yet found. Left as raw asm - split out of the original
# extab_801e1d7c.s bundle now that its 2 siblings are real C++.
#
# RETESTED (continuation session): a `goto`-based rewrite that
# literally mirrors retail's asymmetric 4-block shape (jump straight to
# the upper-range block, early-return-0 at each failing test, fall
# into a shared "return 1" tail) gets the BLOCK STRUCTURE/layout
# exactly right (matches attempt-4's diagnosis) but retail's early-
# return points use compact `bgelr`/`blelr` conditional-return
# instructions while every phrasing tried (named `result` local, bare
# literal `return 0`, goto-based, plain nested if/else) synthesizes a
# full `cmpwi/blt/li r3,0/blr` sequence instead - MWCC won't collapse
# to the conditional-return form here, unlike other single-predicate
# cases elsewhere in this project that DO get bgelr/beqlr. Suspect this
# is specific to having 3+ early-return-0 points in one function history
# (3 attempts this session, 7 total) - still unsolved.
.text
.balign 4
.global fn_801E1DB4

fn_801E1DB4:
    lwz 0, 0x278(3)
    li 3, 0x0
    cmpwi 0, 0xd
    .4byte 0x40800018 # bge .L_801E1DD8
    cmpwi 0, 0x3
    bgelr
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801E1DE0
    blr
L_801E1DD8:
    cmpwi 0, 0x11
    bgelr
L_801E1DE0:
    li 3, 0x1
    blr
