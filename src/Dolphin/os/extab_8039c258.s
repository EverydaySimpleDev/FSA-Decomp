# fn_8039C258 - helper (0x3d8)
#
# Fully understood: renders a signed integer as a sequence of 2-byte
# glyph codes into an output buffer (this->0x2c0, write-index at
# this->0x2d0), for HUD score/counter display. If negative, negates
# and emits a minus-sign glyph first; then extracts 6 decimal digits
# (100000s down to 1s place, leading zeros suppressed except the
# always-shown ones digit) via magic-number division, each
# non-suppressed digit resolved via a linear search through a
# 317-entry {u16 key; u16 value;} table (lbl_80475830, real Shift-JIS-
# keyed rodata, sentinel key 0xffff), defaulting to glyph 0x1420 if no
# match found.
#
# NOTE: attempted real-C++ promotion 3 times (this session), never
# byte-exact. Real findings: (1) factoring the table-search into a
# helper function makes MWCC emit a SEPARATE symbol in addition to an
# inlined copy - must write the search inline at each of ~7 call
# sites, not factor it out. (2) The loop's per-iteration check ORDER
# is sentinel-then-match (opposite of a naive `for(;;){match;incr;
# sentinel}` translation) - the correct shape is a `while(key!=0xffff)
# {if(key==search) break; i++; key=table[i].key;}` natural while loop
# (test-at-bottom-with-initial-jump-to-test, matching retail's
# `b`-to-sentinel-check-then-fall-into-match-check structure exactly).
# (3) The table's match-branch recomputes the value's address from the
# INDEX register (not the already-advanced pointer used for the key
# walk) - i.e. the key-scan uses pointer increment (`ptr+=4`) but the
# value fetch on match uses `table[i].value` (fresh index-based
# address calc) - a genuine mixed pointer/index access pattern. (4)
# `-value`/`0-value`/`value*-1` all canonicalize to the SAME `neg`
# instruction in MWCC -O4 regardless of phrasing; retail's
# `mulli r4,r4,-1` for this same negation was never reproduced - an
# unsolved, possibly-unreachable-from-natural-C discrepancy along with
# a missing unconditional top-of-function flag store. Left as raw asm
# (not landed) - the algorithm is fully understood but the 6-block
# (one per digit) structure means a large amount of remaining
# transcription work even once the loop/negation issues are solved;
# a good candidate for a dedicated future session.
.text
.balign 4
.global fn_8039C258

fn_8039C258:
    cmpwi 4, 0x0
    li 0, 0x0
    .4byte 0x4080007C # bge .L_8039C2DC
    mulli 4, 4, -0x1
    lis 5, lbl_80475830@ha
    li 7, 0x0
    addi 5, 5, lbl_80475830@l
    .4byte 0x4800002C # b .L_8039C2A0
L_8039C278:
    cmplwi 6, 0x2d
    .4byte 0x4082001C # bne .L_8039C298
    lis 6, lbl_80475830@ha
    slwi 5, 7, 2
    addi 6, 6, lbl_80475830@l
    add 5, 6, 5
    lhz 9, 0x2(5)
    .4byte 0x4800001C # b .L_8039C2B0
L_8039C298:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
L_8039C2A0:
    lhz 6, 0x0(5)
    cmplwi 6, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039C278
    li 9, 0x1420
L_8039C2B0:
    lwz 6, 0x2d0(3)
    extrwi 8, 9, 8, 16
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 8, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
L_8039C2DC:
    lis 5, 0x68dc
    subi 5, 5, 0x7453
    mulhw 5, 5, 4
    srawi 7, 5, 12
    srawi 5, 5, 12
    srwi 6, 5, 31
    srwi 8, 7, 31
    add 5, 5, 6
    mulli 5, 5, 0x2710
    add. 6, 7, 8
    subf 4, 5, 4
    .4byte 0x41820084 # beq .L_8039C38C
    lis 5, lbl_80475830@ha
    addi 7, 6, 0x30
    addi 6, 5, lbl_80475830@l
    li 0, 0x1
    clrlwi 5, 7, 16
    li 7, 0x0
    .4byte 0x4800002C # b .L_8039C350
L_8039C328:
    cmplw 5, 8
    .4byte 0x4082001C # bne .L_8039C348
    lis 6, lbl_80475830@ha
    slwi 5, 7, 2
    addi 6, 6, lbl_80475830@l
    add 5, 6, 5
    lhz 9, 0x2(5)
    .4byte 0x4800001C # b .L_8039C360
L_8039C348:
    addi 6, 6, 0x4
    addi 7, 7, 0x1
L_8039C350:
    lhz 8, 0x0(6)
    cmplwi 8, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039C328
    li 9, 0x1420
L_8039C360:
    lwz 6, 0x2d0(3)
    extrwi 8, 9, 8, 16
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 8, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
L_8039C38C:
    lis 5, 0x1062
    addi 5, 5, 0x4dd3
    mulhw 5, 5, 4
    srawi 7, 5, 6
    srawi 5, 5, 6
    srwi 6, 5, 31
    srwi 8, 7, 31
    add 5, 5, 6
    mulli 5, 5, 0x3e8
    add. 6, 7, 8
    subf 4, 5, 4
    .4byte 0x4082000C # bne .L_8039C3C4
    clrlwi. 5, 0, 24
    .4byte 0x41820084 # beq .L_8039C444
L_8039C3C4:
    lis 5, lbl_80475830@ha
    addi 7, 6, 0x30
    addi 6, 5, lbl_80475830@l
    li 0, 0x1
    clrlwi 5, 7, 16
    li 7, 0x0
    .4byte 0x4800002C # b .L_8039C408
L_8039C3E0:
    cmplw 5, 8
    .4byte 0x4082001C # bne .L_8039C400
    lis 6, lbl_80475830@ha
    slwi 5, 7, 2
    addi 6, 6, lbl_80475830@l
    add 5, 6, 5
    lhz 9, 0x2(5)
    .4byte 0x4800001C # b .L_8039C418
L_8039C400:
    addi 6, 6, 0x4
    addi 7, 7, 0x1
L_8039C408:
    lhz 8, 0x0(6)
    cmplwi 8, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039C3E0
    li 9, 0x1420
L_8039C418:
    lwz 6, 0x2d0(3)
    extrwi 8, 9, 8, 16
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 8, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
L_8039C444:
    lis 5, 0x51ec
    subi 5, 5, 0x7ae1
    mulhw 5, 5, 4
    srawi 7, 5, 5
    srawi 5, 5, 5
    srwi 6, 5, 31
    srwi 8, 7, 31
    add 5, 5, 6
    mulli 5, 5, 0x64
    add. 6, 7, 8
    subf 4, 5, 4
    .4byte 0x4082000C # bne .L_8039C47C
    clrlwi. 5, 0, 24
    .4byte 0x41820084 # beq .L_8039C4FC
L_8039C47C:
    lis 5, lbl_80475830@ha
    addi 7, 6, 0x30
    addi 6, 5, lbl_80475830@l
    li 0, 0x1
    clrlwi 5, 7, 16
    li 7, 0x0
    .4byte 0x4800002C # b .L_8039C4C0
L_8039C498:
    cmplw 5, 8
    .4byte 0x4082001C # bne .L_8039C4B8
    lis 6, lbl_80475830@ha
    slwi 5, 7, 2
    addi 6, 6, lbl_80475830@l
    add 5, 6, 5
    lhz 9, 0x2(5)
    .4byte 0x4800001C # b .L_8039C4D0
L_8039C4B8:
    addi 6, 6, 0x4
    addi 7, 7, 0x1
L_8039C4C0:
    lhz 8, 0x0(6)
    cmplwi 8, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039C498
    li 9, 0x1420
L_8039C4D0:
    lwz 6, 0x2d0(3)
    extrwi 8, 9, 8, 16
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 8, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
L_8039C4FC:
    lis 5, 0x6666
    addi 5, 5, 0x6667
    mulhw 5, 5, 4
    srawi 7, 5, 2
    srawi 5, 5, 2
    srwi 6, 5, 31
    srwi 8, 7, 31
    add 5, 5, 6
    mulli 5, 5, 0xa
    add. 6, 7, 8
    subf 4, 5, 4
    .4byte 0x4082000C # bne .L_8039C534
    clrlwi. 0, 0, 24
    .4byte 0x41820080 # beq .L_8039C5B0
L_8039C534:
    addi 0, 6, 0x30
    lis 5, lbl_80475830@ha
    addi 5, 5, lbl_80475830@l
    li 6, 0x0
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039C574
L_8039C54C:
    cmplw 0, 7
    .4byte 0x4082001C # bne .L_8039C56C
    lis 5, lbl_80475830@ha
    slwi 0, 6, 2
    addi 5, 5, lbl_80475830@l
    add 5, 5, 0
    lhz 8, 0x2(5)
    .4byte 0x4800001C # b .L_8039C584
L_8039C56C:
    addi 5, 5, 0x4
    addi 6, 6, 0x1
L_8039C574:
    lhz 7, 0x0(5)
    cmplwi 7, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039C54C
    li 8, 0x1420
L_8039C584:
    lwz 5, 0x2d0(3)
    extrwi 7, 8, 8, 16
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 8, 6, 5
L_8039C5B0:
    addi 0, 4, 0x30
    lis 5, lbl_80475830@ha
    addi 4, 5, lbl_80475830@l
    li 5, 0x0
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039C5F0
L_8039C5C8:
    cmplw 0, 6
    .4byte 0x4082001C # bne .L_8039C5E8
    lis 4, lbl_80475830@ha
    slwi 0, 5, 2
    addi 4, 4, lbl_80475830@l
    add 4, 4, 0
    lhz 7, 0x2(4)
    .4byte 0x4800001C # b .L_8039C600
L_8039C5E8:
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_8039C5F0:
    lhz 6, 0x0(4)
    cmplwi 6, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039C5C8
    li 7, 0x1420
L_8039C600:
    lwz 4, 0x2d0(3)
    extrwi 6, 7, 8, 16
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
    blr

