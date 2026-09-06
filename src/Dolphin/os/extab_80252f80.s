# fn_80252F80(this, pos, mode, arg7) - bulk setup: this->0x2c4/0x2cc =
# *(vec3*)pos (position), this->0x3e0=arg5, this->0xd00=mode,
# this->0xcfe = (mode==1), this->0xd04=arg7 - looks like "queue a
# move-to/look-at target" request. Kept as raw asm: opens with a
# paired-single position copy (psq_l), same PS-promotion dead-end as
# the leading slice of this cluster. Split out of the original
# fn_80252BAC..EmptyHook_80252FBC dtk cluster.
.text
.balign 4
.global fn_80252F80

fn_80252F80:
    psq_l 1, 0x0(4), 0, 0
    cmpwi 6, 0x1
    lfs 0, 0x8(4)
    psq_st 1, 0x2c4(3), 0, 0
    stfs 0, 0x2cc(3)
    stw 5, 0x3e0(3)
    stw 6, 0xd00(3)
    .4byte 0x40820010 # bne .L_80252FAC
    li 0, 0x1
    stb 0, 0xcfe(3)
    .4byte 0x4800000C # b .L_80252FB4
L_80252FAC:
    li 0, 0x0
    stb 0, 0xcfe(3)
L_80252FB4:
    stb 7, 0xd04(3)
    blr
