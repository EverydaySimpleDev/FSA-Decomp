# fn_802ED1F4 - STPN: destructor (0xC8)
# Same "ITMS"-registry-notify scan as fn_802ED140 (SpatialRegistry_GetBase iteration +
# fn_802AC09C on FourCC match + fn_80134FBC/fn_80458658 notify), then
# chains to dtor_801F593C then conditionally dtor_80084580.
#
# NOTE: real-C++ promotion attempted (session N). Semantics fully solved
# and byte-exact except for the 3-instruction loop-init sequence right
# after the first `bl SpatialRegistry_GetBase` (retail: `li 31,0` /
# `lwz 30,0x1008(3)` / `mr 29,31`). Confirmed MWCC's own scheduler
# reorders these 3 independent ops (count-load vs the two index-var
# inits) regardless of C statement order, AND always folds the `off = i`
# copy into a second `li ...,0` instead of retail's `mr` - tried 3
# distinct source restructurings (i*4 inline w/ no explicit accumulator,
# explicit `off` var declared before/after the count read) - all
# converged on the same near-miss or worse. The REST of the function
# (loop body, FourCC compare via subis/cmplwi, the two notify calls,
# the 0x11c clear, both dtor calls) matched retail exactly in every
# attempt. Classic "MWCC's own scheduler decides" hard category, same
# as extab_801f3708.s. Left as raw asm.
.section extab, "a"
.balign 4
.global etb_8000D20C
etb_8000D20C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000D20C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C42C
eti_8001C42C:
    .4byte fn_802ED1F4
    .4byte 0x000000C8
    .4byte etb_8000D20C
.size eti_8001C42C, 12

.text
.balign 4
.global fn_802ED1F4

fn_802ED1F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820098 # beq .L_802ED2A4
    lis 3, lbl_804AA2D8@ha
    addi 0, 3, lbl_804AA2D8@l
    stw 0, 0x0(27)
    bl SpatialRegistry_GetBase
    li 31, 0x0
    lwz 30, 0x1008(3)
    mr 29, 31
    .4byte 0x48000034 # b .L_802ED260
L_802ED230:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_802ED258
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4954
    cmplwi 0, 0x4d53
    .4byte 0x40820008 # bne .L_802ED258
    bl fn_802AC09C
L_802ED258:
    addi 29, 29, 0x4
    addi 31, 31, 0x1
L_802ED260:
    cmpw 31, 30
    .4byte 0x4180FFCC # blt .L_802ED230
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134FBC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458658
    li 0, 0x0
    mr 3, 27
    stb 0, 0x11c(27)
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_802ED2A4
    mr 3, 27
    bl dtor_80084580
L_802ED2A4:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

