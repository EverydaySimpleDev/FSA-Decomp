# Fresh-gap-hunt batch 27 landing (6 non-ctors tiny candidates, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
#
# Fully understood: fn_801C5660(a,b,c,d,e) packs 5 small integer
# params into one bitfield-encoded u32: bits[0:4]=a(5b), bits[5:7]=
# d(3b), bits[8:11]=c(4b), bits[12:15]=b(4b), bits[16:19]=unused,
# bits[20:27]=e(8b), bits[28:31]=unused. Likely a combined actor/HUD
# state descriptor given the 5-field width pattern.
#
# NOTE: attempted real-C++ promotion twice (this session). A plain
# shift/mask/OR-accumulate expression sequence (`result |= (x&mask)
# <<shift`, same order as retail's field-merge sequence) got 3 of 5
# fields' VALUES right but chose completely different register
# allocation/instruction selection (OR-combining via multiple scratch
# registers) vs retail's actual codegen (a straight-line chain of
# `rlwimi` register-resident merge-inserts into ONE accumulator, first
# field via a fresh rlwinm, each subsequent field folded directly in,
# final register copied to r3 at the very end). A real C++ bitfield
# struct/union (hypothesizing this matches retail's actual source
# shape, since rlwimi-chains are the classic bitfield-assignment
# codegen) was tried next but backfired hard: an uninitialized union
# local made MWCC materialize it on the STACK with byte-granular lbz/
# stb read-modify-write (far worse than the OR-based attempt), and
# even with an explicit `p.raw=0` zero-init first, MWCC still chose
# stack-resident byte/halfword accesses rather than pure-register
# rlwimi chaining - the bitfield-struct approach never went
# register-resident regardless of zero-init. Left as raw asm - the
# register-resident-rlwimi-chain codegen shape MWCC actually uses here
# was not reproduced by either the flat-expression or the bitfield-
# struct approach; a genuinely open question for a future attempt.
.text
.balign 4
.global fn_801C5660

fn_801C5660:
    clrlslwi 0, 6, 28, 12
    mr 6, 3
    rlwimi 0, 7, 20, 4, 11
    rlwimi 0, 5, 8, 20, 23
    rlwimi 0, 4, 5, 24, 26
    mr 3, 0
    rlwimi 3, 6, 0, 27, 31
    blr

