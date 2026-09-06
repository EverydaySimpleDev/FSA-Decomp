/*
 * fn_80105068(this): LOSW's real setParams() (identity confirmed - see
 * fn_80104C3C's updated banner). Uses a generic shift-amount table
 * (lbl_80463EE0, 4 words) to extract 4 bitfields from this->0x90 into
 * this->0x230/0x234/0x238/0x23c - these are the 4 GROUP INDICES into the
 * confirmed per-room flag bitmask (see project_fsa_flag_switch_helpers.md -
 * the SAME shared-shift-table extraction convention SWT4's own setParams
 * uses for its own 4 group indices at different offsets). Also extracts
 * this->0x240 (4-bit "consensus MODE" - selects all/any/mixed matching
 * in fn_80104CA0, a genuinely different combination semantics than
 * SWT4's strict all-4-required AND-gate) and this->0x244 (1-bit flag).
 * Resets counters (0x24c/0x24d/0x24f/0x24a/0x248 to 0). If this->0x244
 * is set, makes the confirmed virtual call through vtable[slot 13] and
 * on success sets this->0x24e=1 (marking "already resolved" - matches
 * fn_80104CA0's early-exit check on that same flag, and the same
 * "resume already-solved state at spawn" pattern DOOR/ONOF use).
 */

.section extab, "a"
.balign 4
.global etb_800059C8
etb_800059C8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800059C8, 8

.section extabindex, "a"
.balign 4
.global eti_80011DDC
eti_80011DDC:
    .4byte fn_80105068
    .4byte 0x000000DC
    .4byte etb_800059C8
.size eti_80011DDC, 12

.text
.balign 4
.global fn_80105068

fn_80105068:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80463EE0@ha
    stw 0, 0x14(1)
    addi 8, 4, lbl_80463EE0@l
    lwz 4, 0x0(8)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 6, 0x4(8)
    lwz 5, 0x90(3)
    srw 4, 5, 4
    lwz 5, 0x8(8)
    clrlwi 7, 4, 27
    lwz 4, 0xc(8)
    stw 7, 0x230(3)
    lwz 7, 0x90(3)
    srw 6, 7, 6
    clrlwi 6, 6, 27
    stw 6, 0x234(3)
    lwz 6, 0x90(3)
    srw 5, 6, 5
    clrlwi 5, 5, 27
    stw 5, 0x238(3)
    lwz 5, 0x90(3)
    srw 4, 5, 4
    clrlwi 4, 4, 27
    stw 4, 0x23c(3)
    lwz 4, 0x90(3)
    clrlwi 4, 4, 28
    stw 4, 0x240(3)
    lwz 4, 0x90(3)
    rlwinm 4, 4, 0, 27, 27
    stw 4, 0x244(3)
    stb 0, 0x24c(3)
    stb 0, 0x24d(3)
    stb 0, 0x24f(3)
    sth 0, 0x24a(3)
    sth 0, 0x248(3)
    lwz 0, 0x244(3)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80105130
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80105130
    li 0, 0x1
    stb 0, 0x24e(31)
L_80105130:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

