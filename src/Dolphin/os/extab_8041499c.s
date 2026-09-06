# fn_8041499C - interleaved 4-byte struct copy (unrolled memcpy-style
# instruction schedule); kept raw asm, split from Table_GetSelfIndexedBit87 which was
# promoted to Game/stub_804149c0.cpp.
# NOTE: attempted real-C++ promotion (32nd Phase 4 batch) - a plain
# 4-statement byte-by-byte copy (`dst[i]=src[i]` x4) produced the
# expected load-store-load-store schedule, same instruction count
# (0x20 bytes) but a DIFFERENT interleaving than retail's actual
# load-load-store-load-store-load-store-store pattern (a classic
# software-pipelined/inlined-memcpy unroll schedule, not something a
# flat statement sequence naturally produces). `__builtin_memcpy`
# isn't supported by this MWCC version (silent compile failure, no
# object produced). Left as raw asm - same "compiler scheduler choice
# not reachable from source restructuring" hard category as the float
# load-order cases.
.text
.balign 4
.global fn_8041499C

fn_8041499C:
    lbz 5, 0x0(4)
    lbz 0, 0x1(4)
    stb 5, 0x0(3)
    lbz 5, 0x2(4)
    stb 0, 0x1(3)
    lbz 0, 0x3(4)
    stb 5, 0x2(3)
    stb 0, 0x3(3)
    blr
