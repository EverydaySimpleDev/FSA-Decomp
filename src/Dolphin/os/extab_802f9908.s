.text
.balign 4
.global fn_802F9908
.global fn_802F9974

# NOTE: attempted real-C++ promotion (this session) - the 3-way
# duplicated branch structure, halfword-indexed row access, and
# read/write pair both matched retail PERFECTLY except for one
# instruction-selection choice: retail computes `gridManager +
# roomIndex*4` via a separate `add`, THEN accesses `+0x28` via a plain
# immediate-offset `lwz`; natural C++ (even with the roomIndex*4
# computation and the +0x28 access written as two separate statements
# through an intermediate pointer variable) always collapses both into
# ONE `lwzx` indexed load instead. This is the CONFIRMED (6th
# instance) `lwzx`-preference wall - MWCC's -O4 unconditionally prefers
# a fused indexed load for any base[computed_index] pattern regardless
# of how the source splits the computation. Left as raw asm.
#
# fn_802F9908(gridManager, roomIndex, packedCellIndex) - CONFIRMED (the
# terrain-code reader `fn_8022461C`, extab_8022461c.s, calls this with
# its OWN `roomParam` argument unchanged as `roomIndex` - traced via
# register flow, `mr 31, 28` / `mr 4, 31` at the call site - and with
# `packedCellIndex` built by bit-interleaving the point's two clamped
# 9-bit x/z grid fractions): looks up `gridManager[roomIndex]` (word-
# indexed) and reads its row-array pointer at `+0x28`, then returns the
# u16 at that row array's `packedCellIndex`th halfword. In short: reads
# one raw terrain/collision cell for a given room from a per-room
# collision grid. The three `roomIndex` range checks (`<4`, `4..8`,
# `>=8`) execute byte-identical code in all three branches (same
# `gridManager[roomIndex]` computation, no offset subtraction per
# band) - the split doesn't change behavior; likely leftover from an
# inlined/duplicated bounds-check template rather than 3 distinct data
# layouts. `lbl_8046CB88` (see fn_8022461C's banner) is what turns this
# raw per-room code into the smaller terrain-category codes RUPY reacts
# to.
fn_802F9908:
    cmpwi 4, 0x0
    .4byte 0x41800024 # blt .L_802F9930
    cmpwi 4, 0x4
    .4byte 0x4080001C # bge .L_802F9930
    slwi 4, 4, 2
    slwi 0, 5, 1
    add 3, 3, 4
    lwz 3, 0x28(3)
    lhzx 0, 3, 0
    .4byte 0x48000040 # b .L_802F996C
L_802F9930:
    cmpwi 4, 0x4
    .4byte 0x41800024 # blt .L_802F9958
    cmpwi 4, 0x8
    .4byte 0x4080001C # bge .L_802F9958
    slwi 4, 4, 2
    slwi 0, 5, 1
    add 3, 3, 4
    lwz 3, 0x28(3)
    lhzx 0, 3, 0
    .4byte 0x48000018 # b .L_802F996C
L_802F9958:
    slwi 4, 4, 2
    slwi 0, 5, 1
    add 3, 3, 4
    lwz 3, 0x28(3)
    lhzx 0, 3, 0
L_802F996C:
    clrlwi 3, 0, 16
    blr

# fn_802F9974(gridManager, roomIndex, packedCellIndex, value) - the
# write-side twin of `fn_802F9908` above: identical 3-way `roomIndex`
# range check and identical `gridManager[roomIndex]->+0x28` row-array
# lookup, but stores `value` (r6) as a halfword instead of loading one.
# Not yet found from a real caller - a good next lead if picking up
# this thread again (whatever sets a room's collision-grid cells at
# runtime, e.g. a destructible-terrain or dynamic-hazard effect).
fn_802F9974:
    cmpwi 4, 0x0
    .4byte 0x41800024 # blt .L_802F999C
    cmpwi 4, 0x4
    .4byte 0x4080001C # bge .L_802F999C
    slwi 4, 4, 2
    slwi 0, 5, 1
    add 3, 3, 4
    lwz 3, 0x28(3)
    sthx 6, 3, 0
    blr
L_802F999C:
    cmpwi 4, 0x4
    .4byte 0x41800024 # blt .L_802F99C4
    cmpwi 4, 0x8
    .4byte 0x4080001C # bge .L_802F99C4
    slwi 4, 4, 2
    slwi 0, 5, 1
    add 3, 3, 4
    lwz 3, 0x28(3)
    sthx 6, 3, 0
    blr
L_802F99C4:
    slwi 4, 4, 2
    slwi 0, 5, 1
    add 3, 3, 4
    lwz 3, 0x28(3)
    sthx 6, 3, 0
    blr
