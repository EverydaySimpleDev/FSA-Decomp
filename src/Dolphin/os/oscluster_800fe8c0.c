#include "types.h"

extern f32 jumptable_8049C7C8;
extern f32 lbl_80463AA0;

/* fn_800FE8C0(this): confirms the "byte-sequence event script" idiom
 * already documented for fn_800FA6B0 (the rupee-container's event-
 * script player) is a RECURRING GENERIC MWCC/engine convention, not
 * unique to that one class - this is a completely independent
 * implementation (own jumptable `jumptable_8049C7C8`, own byte-tables
 * rooted at `lbl_80463AA0`) for whatever NEW, unidentified class owns
 * this function, confirming the genuine translation-unit boundary
 * predicted by the preceding __sinit marker (fn_800FE69C).
 *
 * Same skeleton as fn_800FA6B0: `this->0x0` selects an opcode (0-9,
 * dispatched via the jumptable); a state-change on `this->0x0`
 * vs a cached `this->0x4` resets the per-opcode step counter
 * (`this->0xd`) and running frame-counter (`this->0x10`). Each
 * opcode handler looks up a per-step duration from its own small
 * table (byte or 12-byte-stride table, keyed by `this->0xc`) and
 * combines it with `this->0xd` to select both a duration
 * (`this->0x8`) and a base pointer (`r4`) into a step-descriptor
 * table. The shared tail compares the running frame-counter against
 * the step descriptor's first byte; on match, advances to the next
 * step, and checks the step descriptor's SECOND byte for sentinel
 * `0xFF` (loop the whole sequence back to step 0) or `0xFE` (rewind
 * one step and set flag bit `0x20` in `this->0x14` - a "hold/end"
 * signal). No extab content of its own, landed via the ordinary
 * ASM/nofralloc convention.
 */

ASM void fn_800FE8C0(void);

ASM void fn_800FE8C0(void)
{
    nofralloc
    lwz r4, 0x0(r3)
    lis r5, lbl_80463AA0@ha
    lwz r0, 0x4(r3)
    addi r7, r5, lbl_80463AA0@l
    cmpw r4, r0
    opword  0x41820020  // beq .L_800FE8F4
    stw r4, 0x4(r3)
    li r0, 0x0
    stw r0, 0x10(r3)
    stb r0, 0xd(r3)
    lwz r0, 0x14(r3)
    rlwinm r0, r0, 0, 27, 25
    stw r0, 0x14(r3)
L_800FE8F4:
    lwz r0, 0x0(r3)
    li r4, 0x0
    cmplwi r0, 0x9
    opword  0x41810210  // bgt .L_800FEB10
    lis r5, jumptable_8049C7C8@ha
    slwi r0, r0, 2
    addi r5, r5, jumptable_8049C7C8@l
    lwzx r0, r5, r0
    mtctr r0
    bctr
    lbz r0, 0xc(r3)
    addi r5, r7, 0x0
    opword  0x38829140  // li r4, lbl_8053C0E0@sda21
    extsb r0, r0
    slwi r0, r0, 2
    lwzx r0, r5, r0
    stw r0, 0x8(r3)
    lbz r5, 0xd(r3)
    lwz r0, 0x8(r3)
    add r4, r4, r5
    add r0, r0, r5
    stw r0, 0x8(r3)
    opword  0x480001C4  // b .L_800FEB10
    lbz r0, 0xc(r3)
    addi r5, r7, 0x10
    addi r4, r7, 0x20
    extsb r0, r0
    slwi r0, r0, 2
    lwzx r0, r5, r0
    stw r0, 0x8(r3)
    lbz r5, 0xd(r3)
    lwz r0, 0x8(r3)
    add r4, r4, r5
    add r0, r0, r5
    stw r0, 0x8(r3)
    opword  0x48000190  // b .L_800FEB10
    lbz r0, 0xc(r3)
    addi r5, r7, 0x2c
    opword  0x38829144  // li r4, lbl_8053C0E4@sda21
    extsb r0, r0
    slwi r0, r0, 2
    lwzx r0, r5, r0
    stw r0, 0x8(r3)
    lbz r5, 0xd(r3)
    lwz r0, 0x8(r3)
    add r4, r4, r5
    add r0, r0, r5
    stw r0, 0x8(r3)
    opword  0x4800015C  // b .L_800FEB10
    lbz r0, 0xc(r3)
    addi r5, r7, 0x3c
    opword  0x3882914C  // li r4, lbl_8053C0EC@sda21
    extsb r0, r0
    slwi r0, r0, 2
    lwzx r0, r5, r0
    stw r0, 0x8(r3)
    lbz r5, 0xd(r3)
    lwz r0, 0x8(r3)
    add r4, r4, r5
    add r0, r0, r5
    stw r0, 0x8(r3)
    opword  0x48000128  // b .L_800FEB10
    lbz r0, 0xc(r3)
    addi r6, r7, 0x4c
    addi r5, r7, 0x68
    addi r4, r7, 0x5c
    extsb r0, r0
    slwi r0, r0, 2
    lwzx r0, r6, r0
    stw r0, 0x8(r3)
    lbz r7, 0xd(r3)
    lwz r6, 0x8(r3)
    lbzx r0, r5, r7
    add r4, r4, r7
    add r0, r6, r0
    stw r0, 0x8(r3)
    opword  0x480000EC  // b .L_800FEB10
    lbz r0, 0xc(r3)
    addi r5, r7, 0x74
    opword  0x38829154  // li r4, lbl_8053C0F4@sda21
    extsb r0, r0
    slwi r0, r0, 2
    lwzx r0, r5, r0
    stw r0, 0x8(r3)
    lbz r5, 0xd(r3)
    lwz r0, 0x8(r3)
    add r4, r4, r5
    add r0, r0, r5
    stw r0, 0x8(r3)
    opword  0x480000B8  // b .L_800FEB10
    lbz r6, 0xc(r3)
    addi r5, r7, 0x84
    lbz r0, 0xd(r3)
    addi r4, r7, 0xb4
    extsb r6, r6
    mulli r6, r6, 0xc
    add r0, r6, r0
    lbzx r5, r5, r0
    addi r0, r5, 0x8f
    stw r0, 0x8(r3)
    lbz r0, 0xd(r3)
    add r4, r4, r0
    opword  0x48000084  // b .L_800FEB10
    li r0, 0x36a
    opword  0x38A29164  // li r5, lbl_8053C104@sda21
    stw r0, 0x8(r3)
    opword  0x3882915C  // li r4, lbl_8053C0FC@sda21
    lbz r7, 0xd(r3)
    lwz r6, 0x8(r3)
    lbzx r0, r5, r7
    add r4, r4, r7
    add r0, r6, r0
    stw r0, 0x8(r3)
    opword  0x48000058  // b .L_800FEB10
    li r0, 0xe6
    opword  0x38829168  // li r4, lbl_8053C108@sda21
    stw r0, 0x8(r3)
    lbz r5, 0xd(r3)
    lwz r0, 0x8(r3)
    add r4, r4, r5
    add r0, r0, r5
    stw r0, 0x8(r3)
    opword  0x48000034  // b .L_800FEB10
    lbz r0, 0xc(r3)
    addi r5, r7, 0xc4
    opword  0x3882916C  // li r4, lbl_8053C10C@sda21
    extsb r0, r0
    slwi r0, r0, 2
    lwzx r0, r5, r0
    stw r0, 0x8(r3)
    lbz r5, 0xd(r3)
    lwz r0, 0x8(r3)
    add r4, r4, r5
    add r0, r0, r5
    stw r0, 0x8(r3)
L_800FEB10:
    lwz r5, 0x10(r3)
    lbz r0, 0x0(r4)
    cmpw r5, r0
    opword  0x4082004C  // bne .L_800FEB68
    li r6, 0x0
    stw r6, 0x10(r3)
    lbz r5, 0xd(r3)
    addi r0, r5, 0x1
    stb r0, 0xd(r3)
    lbz r0, 0x1(r4)
    cmplwi r0, 0xff
    opword  0x4082000C  // bne .L_800FEB48
    stb r6, 0xd(r3)
    opword  0x48000024  // b .L_800FEB68
L_800FEB48:
    cmplwi r0, 0xfe
    opword  0x4082001C  // bne .L_800FEB68
    lbz r4, 0xd(r3)
    subi r0, r4, 0x1
    stb r0, 0xd(r3)
    lwz r0, 0x14(r3)
    ori r0, r0, 0x20
    stw r0, 0x14(r3)
L_800FEB68:
    lwz r4, 0x10(r3)
    addi r0, r4, 0x1
    stw r0, 0x10(r3)
    blr
}

