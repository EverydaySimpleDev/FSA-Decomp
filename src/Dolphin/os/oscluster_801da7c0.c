#include "types.h"

/* fn_801DA7C0-fn_801DAA24: the COMPLETE "animation controller" utility
 * library for the sub-object embedded at this+0x2a8 in dtor_801DA438's class
 * (see extab_801da504.s's real constructor, which constructs it via
 * fn_801DAA24, and every other method this session that referenced this
 * sub-object by call site alone - fn_801D8A30/fn_801D89BC/fn_801D9C58/
 * fn_801D9960 - now fully resolved). Real field layout: `this->0x0` current
 * animation ID, `this->0x4` current per-frame lookup value (clamped into
 * [0,0x2f]), `this->0x8`/`this->0xc` two independent frame-advance counters,
 * `this->0x10` playback mode (2=looping, matching every "flags=2" call site),
 * `this->0x14` a 2-bit status flags word. Two shared, class-external lookup
 * tables drive it: `lbl_804A4EA8` (per-animation frame-COUNT table, indexed
 * by animID) and `lbl_804A4E68` (per-animation frame-VALUE byte table,
 * 0xFF-terminated, sentinel meaning "loop back to slot 0").
 *
 * fn_801DA7C0: per-frame ADVANCE - increments this->0x8 each call; when it
 *   reaches the current animation's frame count, resets it and instead
 *   increments this->0xc (the "which repetition/pose" index) into the value
 *   table; on hitting the 0xFF loop sentinel, either decrements this->0xc and
 *   sets flag bit 0 (mode 0 - "hold last") or resets this->0xc to 0 and sets
 *   flag bit 1 (mode default - "loop"), depending on this->0x10. Always
 *   refreshes this->0x4 from the value table afterward.
 * fn_801DA894: "is this animation about to finish?" - true only when
 *   this->0x10==2 (looping) AND flag bit 0 is clear AND the NEXT frame index
 *   would be the final valid one before the 0xFF sentinel.
 * fn_801DA904: clamps this->0x4 into [0,0x2f] and returns whether it's >=0x1c
 *   (a coarse "late in the animation" boolean).
 * fn_801DA938: clamps this->0x4 into [0,0x2f] and uses it to index a THIRD
 *   external table, `lbl_804A4DA8`, returning a pointer (likely a per-frame
 *   hitbox/effect-anchor descriptor, not yet cross-referenced).
 * fn_801DA96C: clamps and returns this->0x4 directly (the "get current
 *   frame" accessor fn_801D8A30 calls).
 * fn_801DA994(animID, flags): sets a NEW animation ID and resets all playback
 *   state (this->0x8/0xc/0x14=0, this->0x10=flags) - but ONLY if `animID`
 *   actually differs from the current one; returns whether it changed.
 * fn_801DA9E8(animID, flags): the SAME reset logic as fn_801DA994, but
 *   UNCONDITIONAL (no "already this animation" short-circuit) - the variant
 *   fn_801D9C58's enter-state executor uses for every state transition.
 * fn_801DAA24: the real constructor - zeroes all fields, defaults
 *   this->0x10=2 (looping).
 */

extern f32 lbl_804A4DA8;
extern f32 lbl_804A4E68;
extern f32 lbl_804A4EA8;


ASM void fn_801DA7C0(void);
ASM void fn_801DA894(void);
ASM void fn_801DA904(void);
ASM void fn_801DA938(void);
ASM void fn_801DA96C(void);
ASM void fn_801DA994(void);
ASM void fn_801DA9E8(void);
ASM void fn_801DAA24(void);

ASM void fn_801DA7C0(void)
{
    nofralloc
    lwz r0, 0x14(r3)
    clrlwi. r0, r0, 31
    opword  0x408200A8  // bne .L_801DA870
    lwz r5, 0x8(r3)
    lis r4, lbl_804A4EA8@ha
    addi r4, r4, lbl_804A4EA8@l
    addi r0, r5, 0x1
    stw r0, 0x8(r3)
    lwz r5, 0x0(r3)
    lwz r0, 0xc(r3)
    slwi r5, r5, 2
    lwz r6, 0x8(r3)
    lwzx r4, r4, r5
    lbzx r0, r4, r0
    cmpw r6, r0
    opword  0x41800074  // blt .L_801DA870
    li r6, 0x0
    lis r4, lbl_804A4E68@ha
    stw r6, 0x8(r3)
    addi r4, r4, lbl_804A4E68@l
    lwz r5, 0xc(r3)
    addi r0, r5, 0x1
    stw r0, 0xc(r3)
    lwz r5, 0x0(r3)
    lwz r0, 0xc(r3)
    slwi r5, r5, 2
    lwzx r4, r4, r5
    lbzx r0, r4, r0
    cmplwi r0, 0xff
    opword  0x4082003C  // bne .L_801DA870
    lwz r0, 0x10(r3)
    cmpwi r0, 0x0
    opword  0x40820020  // bne .L_801DA860
    lwz r0, 0x14(r3)
    ori r0, r0, 0x1
    stw r0, 0x14(r3)
    lwz r4, 0xc(r3)
    subi r0, r4, 0x1
    stw r0, 0xc(r3)
    opword  0x48000014  // b .L_801DA870
L_801DA860:
    lwz r0, 0x14(r3)
    ori r0, r0, 0x2
    stw r0, 0x14(r3)
    stw r6, 0xc(r3)
L_801DA870:
    lwz r5, 0x0(r3)
    lis r4, lbl_804A4E68@ha
    addi r4, r4, lbl_804A4E68@l
    lwz r0, 0xc(r3)
    slwi r5, r5, 2
    lwzx r4, r4, r5
    lbzx r0, r4, r0
    stw r0, 0x4(r3)
    blr
}

ASM void fn_801DA894(void)
{
    nofralloc
    lwz r0, 0x10(r3)
    li r8, 0x0
    cmpwi r0, 0x2
    opword  0x4082005C  // bne .L_801DA8FC
    lwz r0, 0x14(r3)
    clrlwi. r0, r0, 31
    opword  0x40820050  // bne .L_801DA8FC
    lwz r0, 0x0(r3)
    lis r4, lbl_804A4EA8@ha
    lwz r5, 0x8(r3)
    addi r4, r4, lbl_804A4EA8@l
    slwi r7, r0, 2
    lwz r6, 0xc(r3)
    lwzx r3, r4, r7
    addi r4, r5, 0x1
    lbzx r0, r3, r6
    cmpw r4, r0
    opword  0x40820024  // bne .L_801DA8FC
    lis r3, lbl_804A4E68@ha
    addi r3, r3, lbl_804A4E68@l
    lwzx r0, r3, r7
    add r3, r0, r6
    lbz r0, 0x1(r3)
    cmplwi r0, 0xff
    opword  0x40820008  // bne .L_801DA8FC
    li r8, 0x1
L_801DA8FC:
    mr r3, r8
    blr
}

ASM void fn_801DA904(void)
{
    nofralloc
    lwz r0, 0x4(r3)
    li r3, 0x0
    cmpwi r0, 0x2f
    opword  0x4081000C  // ble .L_801DA91C
    li r0, 0x2f
    opword  0x48000010  // b .L_801DA928
L_801DA91C:
    cmpwi r0, 0x0
    opword  0x40800008  // bge .L_801DA928
    li r0, 0x0
L_801DA928:
    cmpwi r0, 0x1c
    bltlr
    li r3, 0x1
    blr
}

ASM void fn_801DA938(void)
{
    nofralloc
    lwz r0, 0x4(r3)
    cmpwi r0, 0x2f
    opword  0x4081000C  // ble .L_801DA94C
    li r0, 0x2f
    opword  0x48000010  // b .L_801DA958
L_801DA94C:
    cmpwi r0, 0x0
    opword  0x40800008  // bge .L_801DA958
    li r0, 0x0
L_801DA958:
    lis r3, lbl_804A4DA8@ha
    slwi r0, r0, 2
    addi r3, r3, lbl_804A4DA8@l
    lwzx r3, r3, r0
    blr
}

ASM void fn_801DA96C(void)
{
    nofralloc
    lwz r0, 0x4(r3)
    cmpwi r0, 0x2f
    mr r3, r0
    opword  0x4081000C  // ble .L_801DA984
    li r3, 0x2f
    blr
L_801DA984:
    cmpwi r0, 0x0
    bgelr
    li r3, 0x0
    blr
}

ASM void fn_801DA994(void)
{
    nofralloc
    lwz r0, 0x0(r3)
    li r6, 0x0
    cmpw r0, r4
    opword  0x41820040  // beq .L_801DA9E0
    stw r4, 0x0(r3)
    li r0, 0x0
    lis r4, lbl_804A4E68@ha
    li r6, 0x1
    stw r0, 0x8(r3)
    addi r4, r4, lbl_804A4E68@l
    stw r0, 0xc(r3)
    stw r5, 0x10(r3)
    stw r0, 0x14(r3)
    lwz r5, 0x0(r3)
    lwz r0, 0xc(r3)
    slwi r5, r5, 2
    lwzx r4, r4, r5
    lbzx r0, r4, r0
    stw r0, 0x4(r3)
L_801DA9E0:
    mr r3, r6
    blr
}

ASM void fn_801DA9E8(void)
{
    nofralloc
    stw r4, 0x0(r3)
    li r0, 0x0
    lis r4, lbl_804A4E68@ha
    stw r0, 0x8(r3)
    addi r4, r4, lbl_804A4E68@l
    stw r0, 0xc(r3)
    stw r5, 0x10(r3)
    stw r0, 0x14(r3)
    lwz r5, 0x0(r3)
    lwz r0, 0xc(r3)
    slwi r5, r5, 2
    lwzx r4, r4, r5
    lbzx r0, r4, r0
    stw r0, 0x4(r3)
    blr
}

ASM void fn_801DAA24(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x2
    stw r4, 0x0(r3)
    stw r4, 0x4(r3)
    stw r4, 0x8(r3)
    stw r4, 0xc(r3)
    stw r0, 0x10(r3)
    stw r4, 0x14(r3)
    blr
}

