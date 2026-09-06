# fn_800FAAE0: a short "finalize" method on the container class - calls
# the ALREADY-CONFIRMED shared settings accessor `GetRoomConfigRecord` (see
# project_fsa_extab_bug_resolved.md's RUPY writeups) then a NEW
# `fn_802D7440(settingsPtr, 0)` (unconfirmed), plays effect `0x40006`
# via the CONFIRMED `fn_801F0E34`, sets the "ready" flag
# `this->0x2ad=2` (a further-along state than the `=1` set by
# `fn_800FA944`, consistent with a 2-stage settle->finalize
# progression), then invokes a virtual method through vtable slot
# `0x28` (index 10, a NEW slot distinct from the already-seen
# "self-notify" slot `0x24`) passing two float constants
# (`lbl_8053BFAC`/`lbl_8053C060`). No `-mgekko` needed. Not yet cross-
# identified against the 195-entry dispatch table.
#
# Attempted real-C++ promotion (Phase 4): same vtable-materializes-in-
# a-named-register symptom as the sibling fn_80192038 (extab_80192038.s
# has the full writeup) - the virtual call through
# `(*(void***)this_)[10]` with float arguments keeps using an
# intermediate GPR instead of retail's direct r12-chained dispatch.
# Reverted to raw asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_800057D0
etb_800057D0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800057D0, 8

.section extabindex, "a"
.balign 4
.global eti_80011AE8
eti_80011AE8:
    .4byte fn_800FAAE0
    .4byte 0x00000070
    .4byte etb_800057D0
.size eti_80011AE8, 12

.text
.balign 4
.global fn_800FAAE0

fn_800FAAE0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x6
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x2
    mr 3, 31
    stb 0, 0x2ad(31)
    li 4, 0x0
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    lwz 12, 0x0(31)
    .4byte 0xC04290C0 # lfs f2, lbl_8053C060@sda21(r0)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

