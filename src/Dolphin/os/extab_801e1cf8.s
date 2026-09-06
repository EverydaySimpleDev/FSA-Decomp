/*
 * TINK (vtable lbl_804A51E4). fn_801E1CF8(this): "ok to pick a new
 * idle sub-behavior" gate.
 *
 * CORRECTED semantics (the original banner below had this backwards -
 * verified by direct instruction tracing, not re-guessed): returns
 * FALSE immediately if state==0 OR state is in [0xf,0x13) (both are
 * explicit early-outs, NOT a success condition). Otherwise (state in
 * [1,0xe] or state>=0x13), continues: false if this->0x230 bit 19 is
 * set, false if the re-idle timer this->0x2cc hasn't reached 0,
 * otherwise checks this->0x278 (sub-state): true only if it falls in
 * {0,1,2} or {0xd..0x10}, else false.
 *
 * NOTE: attempted real-C++ promotion 7 times (this session) - very
 * close but not byte-exact. The overall branch STRUCTURE, the
 * top-level state==0 early-out, the bit19/timer flat checks, and the
 * final boolean-merge tail (clrlwi./beq/li/mr - the established
 * default-then-override idiom) all matched retail exactly once a
 * `goto`-based control flow was used to force a SINGLE SHARED exit
 * point (early-return `if(cond) return x;` style instead produces a
 * separate inlined `li r3,x; blr` per guard, which is provably NOT
 * what retail does - retail funnels every failure path through one
 * shared tail via `b`). The remaining 2 diffs are both "a single bare
 * condition as the LAST statement inside a nested if/else block"
 * cases: `if (state >= 0x13) {} else goto done;` (the else-half of the
 * top-level range check) and `if (subState >= 0) inner=1;` (nested 2
 * levels inside the sub-state check) both compile to a direct single
 * `blt`/similar branch in every phrasing tried (bare condition, empty-
 * if/else-goto, an explicit default-then-override boolean temp - which
 * backfired badly, adding a full li/cmpwi/beq materialization instead
 * of collapsing), but retail's actual bytes use a 2-instruction `bge`-
 * skip-then-unconditional-`b` form instead at exactly those 2 spots
 * (and nowhere else - the 2 OTHER, non-nested single-condition checks
 * in this same function, bit19 and timer, DO match with a bare `if`).
 * This looks like an MWCC quirk specific to a bare condition being the
 * final statement of a nested block that must merge back to an outer
 * shared exit, not reachable from any phrasing tried. Left as raw asm
 * - closest near-miss this session; worth a fresh idea for forcing
 * that specific 2-instruction skip+jump shape.
 */
.text
.balign 4
.global fn_801E1CF8

fn_801E1CF8:
    lwz 0, 0x248(3)
    li 4, 0x0
    cmpwi 0, 0xf
    .4byte 0x40800010 # bge .L_801E1D14
    cmpwi 0, 0x0
    .4byte 0x41820068 # beq .L_801E1D74
    .4byte 0x48000010 # b .L_801E1D20
L_801E1D14:
    cmpwi 0, 0x13
    .4byte 0x40800008 # bge .L_801E1D20
    .4byte 0x48000058 # b .L_801E1D74
L_801E1D20:
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x4082004C # bne .L_801E1D74
    lhz 0, 0x2cc(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_801E1D74
    lwz 0, 0x278(3)
    li 3, 0x0
    cmpwi 0, 0xd
    .4byte 0x40800018 # bge .L_801E1D5C
    cmpwi 0, 0x3
    .4byte 0x4080001C # bge .L_801E1D68
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801E1D64
    .4byte 0x48000010 # b .L_801E1D68
L_801E1D5C:
    cmpwi 0, 0x11
    .4byte 0x40800008 # bge .L_801E1D68
L_801E1D64:
    li 3, 0x1
L_801E1D68:
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801E1D74
    li 4, 0x1
L_801E1D74:
    mr 3, 4
    blr
