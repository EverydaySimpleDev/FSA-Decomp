# fn_802AA0B8(this) - SWT4's real setParams(). Genuinely understood.
#
# 1. Extracts a 5-bit "type" from the spawn param (`this->0x234`) - if
#    type==5, sets the behavior state (`this->0x230`) to 7, else 0
#    (matching the same "state 7 = special/fallback" convention seen in
#    STAL's WIZR-partner-not-found case, [[project_fsa_stal_wizr_full_depth]]).
# 2. Extracts FOUR MORE 5-bit fields from the spawn param
#    (`this->0x244/248/24c/250`) using a shared, DATA-DRIVEN shift table
#    (`lbl_8046C850`, 4 words giving the shift amount for each field)
#    rather than literal per-field shifts - i.e. this bit-layout is
#    reused across the whole switch family with a shared table instead
#    of being hardcoded per actor. `this->0x244` matches the SAME
#    "global flag group index" field ONOF uses; the other 3 fields
#    (`0x248/24c/250`) are strong candidates for 3 MORE flag-group
#    indices this switch tracks - consistent with SWT4 ("Switch x4"?)
#    being part of a 4-switch combination puzzle, matching the 4-pattern
#    table ONOF's own combo-checker hook iterates
#    (see [[project_fsa_flag_switch_helpers]]).
#
# Attempted real-C++ promotion twice (see project_fsa_phase4_kickoff.md):
# inlining lbl_8046C850[i] per-field reproduced a wrong instruction
# schedule (retail loads all 4 shift amounts up front, before any of
# the 4 shift/mask/store groups); caching the 4 shifts in named locals
# up front instead made MWCC choose an lwzu-based addressing sequence
# retail doesn't use. Reverted to raw asm after 2 failed attempts.
.text
.balign 4
.global fn_802AA0B8

fn_802AA0B8:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 27
    stw 0, 0x234(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x5
    .4byte 0x41820010 # beq .L_802AA0DC
    li 0, 0x0
    stw 0, 0x230(3)
    .4byte 0x4800000C # b .L_802AA0E4
L_802AA0DC:
    li 0, 0x7
    stw 0, 0x230(3)
L_802AA0E4:
    lis 4, lbl_8046C850@ha
    lwz 6, 0x90(3)
    addi 7, 4, lbl_8046C850@l
    lwz 0, 0x0(7)
    lwz 5, 0x4(7)
    srw 0, 6, 0
    lwz 4, 0x8(7)
    clrlwi 6, 0, 27
    lwz 0, 0xc(7)
    stw 6, 0x244(3)
    lwz 6, 0x90(3)
    srw 5, 6, 5
    clrlwi 5, 5, 27
    stw 5, 0x248(3)
    lwz 5, 0x90(3)
    srw 4, 5, 4
    clrlwi 4, 4, 27
    stw 4, 0x24c(3)
    lwz 4, 0x90(3)
    srw 0, 4, 0
    clrlwi 0, 0, 27
    stw 0, 0x250(3)
    blr
