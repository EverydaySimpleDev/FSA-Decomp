#include "types.h"

// fn_801F7818(table, code4, ownerID, outBuf, excludeVal) - "FIND ACTORS BY
// CODE + OWNER". Iterates the actor-pool table using its cached
// high-water-mark count (table[0x1008], the SAME field
// fn_801F857C's destroy-all sweep maintains), reading each slot's
// pointer at the confirmed +8 pool offset. Skips empty slots and slots
// whose visibility/active flag (slot->0x11c) is clear (the SAME flag
// fn_801F8658's draw-all loop checks). For remaining slots, requires
// BOTH slot->0x4 == ownerID AND slot->0x1a0 == code4 (i.e. every actor
// stores its own spawn 4CC code at offset 0x1a0), then EXCLUDES any
// match whose slot->0x198 == excludeVal (likely a self-exclusion/
// generation guard so a search doesn't match its own caller). Every
// surviving match is appended to outBuf and the total count returned.
// Confirmed used by STAL's WIZR-partner search and WIZR's own re-check
// of the same link (see [[project_fsa_stal_wizr_full_depth]]).
ASM s32 fn_801F7818(void* table, u32 code4, s32 ownerID, void** outBuf, u32 excludeVal);

ASM s32 fn_801F7818(void* table, u32 code4, s32 ownerID, void** outBuf, u32 excludeVal)
{
    nofralloc
    lwz r0, 0x1008(r3)
    li r9, 0x0
    mtctr r0
    cmpwi r0, 0x0
    opword 0x40810054 // ble .L_801f787c
    lwz r8, 0x8(r3)
    cmplwi r8, 0x0
    opword 0x41820040 // beq .L_801f7874
    lbz r0, 0x11c(r8)
    cmplwi r0, 0x0
    opword 0x41820034 // beq .L_801f7874
    lwz r0, 0x4(r8)
    cmpw r5, r0
    opword 0x40820028 // bne .L_801f7874
    lwz r0, 0x1a0(r8)
    cmplw r4, r0
    opword 0x4082001C // bne .L_801f7874
    lwz r0, 0x198(r8)
    cmpw r7, r0
    opword 0x41820010 // beq .L_801f7874
    stw r8, 0x0(r6)
    addi r6, r6, 0x4
    addi r9, r9, 0x1
    addi r3, r3, 0x4
    opword 0x4200FFB4 // bdnz .L_801f782c
    mr r3, r9
    blr
}
