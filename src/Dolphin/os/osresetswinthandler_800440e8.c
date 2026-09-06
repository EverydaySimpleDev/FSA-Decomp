#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/hw_regs.h"

extern OSResetCallback ResetCallback;
extern BOOL Down;
extern BOOL LastState;
extern OSTime HoldUp;
extern u32 HoldUp_lo;
extern OSTime HoldDown;
extern u32 HoldDown_lo;

extern OSTime __OSGetSystemTime(void);
extern void __div2i(void);

//800440E8
ASM void __OSResetSWInterruptHandler(register __OSInterrupt interrupt, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    stw     r30, 0x20(r1)
    stw     r29, 0x1c(r1)
    bl      __OSGetSystemTime
    lis     r5, 0x8000
    stw     r4, HoldDown_lo
    lwz     r0, 0xf8(r5)
    lis     r4, 0x431c
    subi    r4, r4, 0x217d
    stw     r3, HoldDown
    srwi    r0, r0, 2
    mulhwu  r0, r4, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0x64
    srwi    r29, r0, 3
    li      r30, 0x0
    lis     r31, 0xcc00
L_80044138:
    bl      __OSGetSystemTime
    lwz     r6, HoldDown_lo
    xoris   r5, r30, 0x8000
    lwz     r0, HoldDown
    subfc   r4, r6, r4
    subfe   r0, r0, r3
    xoris   r3, r0, 0x8000
    subfc   r0, r29, r4
    subfe   r5, r5, r3
    subfe   r5, r3, r3
    neg.    r5, r5
    beq     L_80044174
    lwz     r0, 0x3000(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq     L_80044138
L_80044174:
    lis     r3, 0xcc00
    lwz     r0, 0x3000(r3)
    rlwinm. r0, r0, 0, 15, 15
    bne     L_800441B4
    li      r0, 0x1
    stw     r0, Down
    li      r3, 0x200
    stw     r0, LastState
    bl      __OSMaskInterrupts
    lwz     r12, ResetCallback
    cmplwi  r12, 0x0
    beq     L_800441B4
    li      r0, 0x0
    mtlr    r12
    stw     r0, ResetCallback
    blrl
L_800441B4:
    li      r0, 0x2
    lis     r3, 0xcc00
    stw     r0, 0x3000(r3)
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//800441DC
ASM BOOL OSGetResetButtonState(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    stw     r29, 0xc(r1)
    bl      OSDisableInterrupts
    mr      r30, r3
    bl      __OSGetSystemTime
    lis     r5, 0xcc00
    lwz     r0, 0x3000(r5)
    rlwinm. r0, r0, 0, 15, 15
    bne     L_800442E8
    lwz     r0, Down
    cmpwi   r0, 0x0
    bne     L_80044258
    lwz     r0, HoldUp
    li      r6, 0x0
    lwz     r5, HoldUp_lo
    li      r7, 0x1
    xor     r0, r0, r6
    xor     r5, r5, r6
    stw     r7, Down
    or.     r0, r5, r0
    beq     L_80044244
    b       L_80044248
L_80044244:
    mr      r7, r6
L_80044248:
    stw     r4, HoldDown_lo
    mr      r29, r7
    stw     r3, HoldDown
    b       L_8004439C
L_80044258:
    lwz     r0, HoldUp
    li      r9, 0x0
    lwz     r5, HoldUp_lo
    li      r10, 0x1
    xor     r0, r0, r9
    xor     r5, r5, r9
    or.     r0, r5, r0
    bne     L_800442CC
    lis     r6, 0x8000
    lwz     r5, HoldDown_lo
    lwz     r7, 0xf8(r6)
    lis     r6, 0x431c
    subi    r8, r6, 0x217d
    lwz     r0, HoldDown
    srwi    r6, r7, 2
    mulhwu  r6, r8, r6
    srwi    r6, r6, 15
    mulli   r6, r6, 0x64
    subfc   r7, r5, r4
    subfe   r0, r0, r3
    srwi    r8, r6, 3
    xoris   r5, r0, 0x8000
    xoris   r6, r9, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    bne     L_800442CC
    mr      r10, r9
L_800442CC:
    cmpwi   r10, 0x0
    beq     L_800442DC
    li      r0, 0x1
    b       L_800442E0
L_800442DC:
    li      r0, 0x0
L_800442E0:
    mr      r29, r0
    b       L_8004439C
L_800442E8:
    lwz     r0, Down
    cmpwi   r0, 0x0
    beq     L_80044324
    lwz     r5, LastState
    li      r0, 0x0
    stw     r0, Down
    cmpwi   r5, 0x0
    addi    r29, r5, 0x0
    beq     L_80044318
    stw     r4, HoldUp_lo
    stw     r3, HoldUp
    b       L_8004439C
L_80044318:
    stw     r0, HoldUp_lo
    stw     r0, HoldUp
    b       L_8004439C
L_80044324:
    lwz     r6, HoldUp
    li      r8, 0x0
    lwz     r7, HoldUp_lo
    xor     r0, r6, r8
    xor     r5, r7, r8
    or.     r0, r5, r0
    beq     L_8004438C
    lis     r5, 0x8000
    lwz     r0, 0xf8(r5)
    lis     r5, 0x1062
    addi    r5, r5, 0x4dd3
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    srwi    r0, r0, 6
    mulli   r0, r0, 0x28
    subfc   r7, r7, r4
    subfe   r5, r6, r3
    xoris   r6, r5, 0x8000
    xoris   r5, r8, 0x8000
    subfc   r0, r0, r7
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq     L_8004438C
    li      r29, 0x1
    b       L_8004439C
L_8004438C:
    li      r0, 0x0
    stw     r0, HoldUp_lo
    li      r29, 0x0
    stw     r0, HoldUp
L_8004439C:
    lis     r5, 0x8000
    stw     r29, LastState
    lbz     r0, 0x30e3(r5)
    clrlwi. r0, r0, 27
    beq     L_8004444C
    mulli   r10, r0, 0x3c
    lwz     r0, 0xf8(r5)
    lwz     r9, __OSStartTime+0x4
    lwz     r8, __OSStartTime
    srwi    r6, r0, 2
    srawi   r0, r10, 31
    mullw   r7, r0, r6
    mulhwu  r0, r10, r6
    mullw   r5, r10, r6
    addc    r9, r9, r5
    li      r31, 0x0
    add     r7, r7, r0
    mullw   r0, r10, r31
    add     r0, r7, r0
    adde    r8, r8, r0
    xoris   r7, r8, 0x8000
    xoris   r5, r3, 0x8000
    subfc   r0, r4, r9
    subfe   r5, r5, r7
    subfe   r5, r7, r7
    neg.    r5, r5
    beq     L_8004444C
    subfc   r4, r9, r4
    subfe   r3, r8, r3
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x2
    bl      __div2i
    li      r0, 0x1
    and     r4, r4, r0
    and     r0, r3, r31
    xor     r3, r4, r31
    xor     r0, r0, r31
    or.     r0, r3, r0
    bne     L_80044448
    li      r29, 0x1
    b       L_8004444C
L_80044448:
    li      r29, 0x0
L_8004444C:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    lwz     r29, 0xc(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80044474
ASM BOOL OSGetResetSwitchState(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      OSGetResetButtonState
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
