/*
 * NOTE: attempted real-C++ promotion 6 times (33rd Phase 4 batch).
 * Retail uses the subtract-and-unsigned-compare range idiom
 * ((u16)(code-LOW)<=HIGH-LOW) for the 4 actual ranges, PLUS caches
 * `(u16)code` in ONE shared register reused for all 4 discrete-value
 * checks (0x159/0x146/0xfa/0x4e) - both pieces individually
 * reproduced (attempt 3 got the range idiom exactly; attempt 4 got
 * the shared-cache register too) but never together with retail's
 * exact SCHEDULING: retail computes the (u16)code cache lazily, right
 * before the FIRST discrete check (after the 3rd range test), but
 * every phrasing tried either hoists it to the very top (attempt 4)
 * or breaks the bare-OR shared-tail merge into separate early-return
 * blocks when restructured to delay it (attempt 5), or produces
 * branchless bool synthesis (attempt 6). Left as raw asm - closest
 * near-miss of this batch, worth a fresh attempt if a new technique
 * for controlling mid-expression scheduling surfaces.
 */
/*
 * WARP-portal-actor cluster, part 7/12.
 *
 * fn_801EE3C0(code): a pure whitelist predicate - returns 1 if `code`
 * equals any of a fixed set of small integer values (0x68-0x6b, 0x70-71,
 * 0xaa-ab, 0x159, 0x74-75, 0x146, 0xfa, 0x4e), else 0. Likely an "is this
 * one of the specific item/state codes this WARP portal reacts to" gate;
 * the exact meaning of the individual codes is not confirmed.
 */
.text
.balign 4
.global fn_801EE3C0

fn_801EE3C0:
    subi 0, 3, 0x68
    clrlwi 0, 0, 16
    cmplwi 0, 0x3
    .4byte 0x40810058 # ble .L_801EE424
    subi 0, 3, 0x70
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810048 # ble .L_801EE424
    subi 0, 3, 0xaa
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810038 # ble .L_801EE424
    clrlwi 4, 3, 16
    cmplwi 4, 0x159
    .4byte 0x4182002C # beq .L_801EE424
    subi 0, 3, 0x74
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_801EE424
    cmplwi 4, 0x146
    .4byte 0x41820014 # beq .L_801EE424
    cmplwi 4, 0xfa
    .4byte 0x4182000C # beq .L_801EE424
    cmplwi 4, 0x4e
    .4byte 0x4082000C # bne .L_801EE42C
L_801EE424:
    li 3, 0x1
    blr
L_801EE42C:
    li 3, 0x0
    blr

