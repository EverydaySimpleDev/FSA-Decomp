#include <types.h>
#include "Dolphin/os.h"
#include "Dolphin/OS/OSContext.h"
#include "Dolphin/OS/OSInterrupt.h"

extern char* __cvt_fp2unsigned(f64 val);
extern char lbl_80495AB0[0x1B4];

//80163AE0
ASM void OSDumpContext(OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x2f8(r1)
    stmw    r25, 0x2dc(r1)
    mr      r28, r3
    lis     r3, lbl_80495AB0@ha
    crclr   6
    addi    r31, r3, lbl_80495AB0@l
    mr      r3, r31
    mr      r4, r28
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 2
    add     r27, r28, r0
    opword  0x48000004
    opword  0x48000004
    opword  0x48000004
L3:
    lwz     r8, 0x40(r27)
    mr      r4, r25
    lwz     r5, 0x0(r27)
    addi    r3, r31, 0x44
    crclr   6
    mr      r6, r5
    mr      r9, r8
    addi    r7, r25, 0x10
    bl      OSReport
    addi    r27, r27, 0x4
    addi    r25, r25, 0x1
    cmplwi  r25, 0x10
    blt     L3
    lwz     r4, 0x84(r28)
    addi    r3, r31, 0x74
    lwz     r5, 0x80(r28)
    crclr   6
    bl      OSReport
    lwz     r4, 0x198(r28)
    addi    r3, r31, 0xa4
    lwz     r5, 0x19c(r28)
    crclr   6
    bl      OSReport
    addi    r3, r31, 0xd4
    crclr   6
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 2
    add     r27, r28, r0
    opword  0x48000004
    opword  0x48000004
    opword  0x48000004
L6:
    lwz     r5, 0x1a4(r27)
    mr      r4, r25
    lwz     r7, 0x1b4(r27)
    addi    r3, r31, 0xe8
    addi    r6, r25, 0x4
    crclr   6
    bl      OSReport
    addi    r27, r27, 0x4
    addi    r25, r25, 0x1
    cmplwi  r25, 0x4
    blt     L6
    lhz     r0, 0x1a2(r28)
    clrlwi  r0, r0, 31
    cmplwi  r0, 0x0
    beq     L10
    bl      OSDisableInterrupts
    lis     r6, 0x8000
    lwz     r0, 0xd4(r6)
    li      r5, 0x0
    addi    r4, r1, 0x10
    sth     r5, 0x1b0(r1)
    mr      r30, r0
    mr      r29, r3
    sth     r5, 0x1b2(r1)
    lwz     r0, 0xd8(r6)
    cmplw   r4, r0
    bne     L7
    stw     r5, 0xd8(r6)
L7:
    addi    r3, r1, 0x10
    bl      OSSetCurrentContext
    addi    r3, r31, 0x10c
    crclr   6
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 3
    add     r26, r28, r0
    opword  0x48000004
    opword  0x48000004
    opword  0x48000004
L8:
    lfd     f1, 0x98(r26)
    bl      __cvt_fp2unsigned
    mr      r27, r3
    lfd     f1, 0x90(r26)
    bl      __cvt_fp2unsigned
    mr      r5, r3
    crclr   6
    mr      r4, r25
    mr      r7, r27
    addi    r3, r31, 0x120
    addi    r6, r25, 0x1
    bl      OSReport
    addi    r26, r26, 0x10
    addi    r25, r25, 0x2
    cmplwi  r25, 0x20
    blt     L8
    addi    r3, r31, 0x13c
    crclr   6
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 3
    add     r26, r28, r0
    opword  0x48000004
    opword  0x48000004
    opword  0x48000004
L9:
    lfd     f1, 0x1d0(r26)
    bl      __cvt_fp2unsigned
    mr      r27, r3
    lfd     f1, 0x1c8(r26)
    bl      __cvt_fp2unsigned
    mr      r5, r3
    crclr   6
    mr      r4, r25
    mr      r7, r27
    addi    r3, r31, 0x150
    addi    r6, r25, 0x1
    bl      OSReport
    addi    r26, r26, 0x10
    addi    r25, r25, 0x2
    cmplwi  r25, 0x20
    blt     L9
    li      r5, 0x0
    sth     r5, 0x1b0(r1)
    lis     r3, 0x8000
    addi    r4, r1, 0x10
    sth     r5, 0x1b2(r1)
    lwz     r0, 0xd8(r3)
    cmplw   r4, r0
    bne     L11
    stw     r5, 0xd8(r3)
L11:
    mr      r3, r30
    bl      OSSetCurrentContext
    mr      r3, r29
    bl      OSRestoreInterrupts
L10:
    addi    r3, r31, 0x170
    crclr   6
    bl      OSReport
    lwz     r25, 0x4(r28)
    li      r26, 0x0
    opword  0x48000004
    opword  0x48000004
    b       L14
L13:
    lwz     r5, 0x0(r25)
    mr      r4, r25
    lwz     r6, 0x4(r25)
    addi    r3, r31, 0x198
    crclr   6
    bl      OSReport
    lwz     r25, 0x0(r25)
L14:
    cmplwi  r25, 0x0
    beq     L15
    addis   r0, r25, 0x1
    cmplwi  r0, 0xffff
    beq     L15
    cmplwi  r26, 0x10
    addi    r26, r26, 0x1
    blt     L13
L15:
    lmw     r25, 0x2dc(r1)
    lwz     r0, 0x2fc(r1)
    addi    r1, r1, 0x2f8
    mtlr    r0
    blr
}
