# fn_803BACF8/fn_803BADAC - a matched checksum-compute/checksum-verify
# pair: sums 192 bytes (24 iterations of 8) into `sumRaw`, and sums
# their bitwise complements into `sumComplement` (a full 32-bit `~byte`
# via C's integer promotion, not a byte-masked 255-byte - this exactly
# matches retail's `nor` on a zero-extended byte register). fn_803BACF8
# stores both sums at the record; fn_803BADAC recomputes them over a
# buffer and XOR-compares against the stored pair, returning true iff
# both match (a validation/corruption check).
#
# NOTE: attempted real-C++ promotion 5 times (36th Phase 4 batch) -
# understood and confirmed the exact algorithm (see above), but every
# phrasing of the inner 8-byte-per-iteration loop (8 explicit unrolled
# statements with 8 distinct named locals; the same with ONE reused
# local; a genuine nested `for(j<8)` loop letting the compiler choose
# its own unroll) produces the IDENTICAL wrong schedule: MWCC's `-O4`
# hoists ALL 8 byte loads to the top of each outer iteration before
# any of the dependent add/complement work (maximizing register-level
# parallelism across 8 live registers at once), while retail's actual
# bytes show a much TIGHTER, more sequential interleaving (each byte's
# load/complement/two-adds mostly complete before the next byte loads).
# Tried 2 different optimization levels too (`-O3`, `-O3,p`) as a
# possible per-file cflags override - `-O3` swings the OTHER way,
# declining to unroll the inner loop AT ALL (a real 8-iteration mtctr
# loop) rather than retail's fully-unrolled-but-tightly-scheduled
# shape. Neither extreme matches; there is no optimization level tried
# that reproduces retail's specific middle-ground scheduling. This is
# a genuine, confirmed hard case (same family as the float-scheduling
# and lwzx-addressing walls, just for an 8x-unrolled integer
# accumulation loop specifically) - left as raw asm.
.text
.balign 4
.global fn_803BACF8
.global fn_803BADAC

fn_803BACF8:
    clrlwi 4, 4, 24
    li 0, 0x18
    mulli 4, 4, 0xc8
    li 5, 0x0
    li 6, 0x0
    add 7, 3, 4
    mr 3, 7
    mtctr 0
L_803BAD18:
    lbz 4, 0x0(3)
    nor 0, 4, 4
    add 6, 6, 4
    lbz 4, 0x1(3)
    add 5, 5, 0
    nor 0, 4, 4
    add 6, 6, 4
    lbz 4, 0x2(3)
    add 5, 5, 0
    nor 0, 4, 4
    add 6, 6, 4
    lbz 4, 0x3(3)
    add 5, 5, 0
    nor 0, 4, 4
    add 6, 6, 4
    lbz 4, 0x4(3)
    add 5, 5, 0
    nor 0, 4, 4
    add 6, 6, 4
    lbz 4, 0x5(3)
    add 5, 5, 0
    nor 0, 4, 4
    add 6, 6, 4
    lbz 4, 0x6(3)
    add 5, 5, 0
    nor 0, 4, 4
    add 6, 6, 4
    lbz 4, 0x7(3)
    add 5, 5, 0
    addi 3, 3, 0x8
    nor 0, 4, 4
    add 6, 6, 4
    add 5, 5, 0
    .4byte 0x4200FF7C # bdnz .L_803BAD18
    stw 5, 0xc4(7)
    stw 6, 0xc0(7)
    blr

fn_803BADAC:
    li 0, 0x18
    mr 4, 3
    li 5, 0x0
    li 6, 0x0
    mtctr 0
L_803BADC0:
    lbz 7, 0x0(4)
    nor 0, 7, 7
    add 6, 6, 7
    lbz 7, 0x1(4)
    add 5, 5, 0
    nor 0, 7, 7
    add 6, 6, 7
    lbz 7, 0x2(4)
    add 5, 5, 0
    nor 0, 7, 7
    add 6, 6, 7
    lbz 7, 0x3(4)
    add 5, 5, 0
    nor 0, 7, 7
    add 6, 6, 7
    lbz 7, 0x4(4)
    add 5, 5, 0
    nor 0, 7, 7
    add 6, 6, 7
    lbz 7, 0x5(4)
    add 5, 5, 0
    nor 0, 7, 7
    add 6, 6, 7
    lbz 7, 0x6(4)
    add 5, 5, 0
    nor 0, 7, 7
    add 6, 6, 7
    lbz 7, 0x7(4)
    add 5, 5, 0
    addi 4, 4, 0x8
    nor 0, 7, 7
    add 6, 6, 7
    add 5, 5, 0
    .4byte 0x4200FF7C # bdnz .L_803BADC0
    lwz 0, 0xc0(3)
    lwz 4, 0xc4(3)
    xor 3, 6, 0
    xor 0, 5, 4
    or 3, 0, 3
    cntlzw 3, 3
    srwi 3, 3, 5
    blr

