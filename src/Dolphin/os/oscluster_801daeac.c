#include "types.h"

/* fn_801DAEAC/fn_801DAF14: the remove/add pair for the ID-list array
 * fn_801DAE24 (extab_801dae24.s) iterates (this+0x8, up to 30 entries,
 * count at this->0x80) - fn_801DAEAC removes a matching ID (compacting the
 * array, decrementing the count), fn_801DAF14 appends one (bounds-checked
 * against the 30-slot max, incrementing the count).
 *
 * fn_801DAF3C/fn_801DAF44: trivial setters for a small 2-int-plus-counter
 * record (this->0x4 and this->0x0 respectively) - the SAME shape as the
 * CONFIRMED fn_801DAC6C global singleton (oscluster_801dac6c.c). fn_801DAF44
 * is the exact setter fn_801DA124's constructor uses to store this->0x198
 * into that singleton's ->0x0 slot.
 *
 * fn_801DAF4C: the generic RESET for that 2-int-plus-counter record shape
 * (->0x0/0x4 = -1 sentinels, ->0x80 = 0, ->0x84 halfword = 0) - BYTE-
 * IDENTICAL to the body fn_801DAC6C inlines for its own lazy-init of
 * `lbl_804C92D0`, confirming this is a genuinely reusable record-reset
 * primitive, not something specific to that one singleton.
 */

ASM void fn_801DAEAC(void);
ASM void fn_801DAF14(void);
ASM void fn_801DAF3C(void);
ASM void fn_801DAF44(void);
ASM void fn_801DAF4C(void);

ASM void fn_801DAEAC(void)
{
    nofralloc
    lwz r0, 0x80(r3)
    addi r7, r3, 0x8
    li r6, 0x0
    cmpwi r0, 0x0
    blelr
    mr r5, r6
    opword  0x48000030  // b .L_801DAEF4
L_801DAEC8:
    clrlwi. r0, r6, 24
    opword  0x40820018  // bne .L_801DAEE4
    lwz r0, 0x0(r7)
    cmpw r4, r0
    opword  0x40820014  // bne .L_801DAEEC
    li r6, 0x1
    opword  0x4800000C  // b .L_801DAEEC
L_801DAEE4:
    lwz r0, 0x0(r7)
    stw r0, -0x4(r7)
L_801DAEEC:
    addi r5, r5, 0x1
    addi r7, r7, 0x4
L_801DAEF4:
    lwz r8, 0x80(r3)
    cmpw r5, r8
    opword  0x4180FFCC  // blt .L_801DAEC8
    clrlwi. r0, r6, 24
    beqlr
    subi r0, r8, 0x1
    stw r0, 0x80(r3)
    blr
}

ASM void fn_801DAF14(void)
{
    nofralloc
    lwz r0, 0x80(r3)
    cmpwi r0, 0x1e
    bgelr
    slwi r0, r0, 2
    add r5, r3, r0
    stw r4, 0x8(r5)
    lwz r4, 0x80(r3)
    addi r0, r4, 0x1
    stw r0, 0x80(r3)
    blr
}

ASM void fn_801DAF3C(void)
{
    nofralloc
    stw r4, 0x4(r3)
    blr
}

ASM void fn_801DAF44(void)
{
    nofralloc
    stw r4, 0x0(r3)
    blr
}

ASM void fn_801DAF4C(void)
{
    nofralloc
    li r4, -0x1
    li r0, 0x0
    stw r4, 0x0(r3)
    stw r4, 0x4(r3)
    stw r0, 0x80(r3)
    sth r0, 0x84(r3)
    blr
}

