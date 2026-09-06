#include <types.h>
#include "Dolphin/db.h"
#include "Dolphin/OS/OSContext.h"
#include "Dolphin/OS/OSException.h"
#include "Dolphin/OS/OSUtil.h"

extern void __OSSaveFPUContext(void);
extern void __OSLoadFPUContext(void);

//80163D88
ASM static void OSSwitchFPUContext(register __OSException exception, register OSContext* context)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mfmsr   r5
    ori     r5, r5, 0x2000
    mtmsr   r5
    isync
    lwz     r5, OS_CONTEXT_SRR1(context)
    ori     r5, r5, 0x2000
    mtsrr1  r5
    addis   r3, r0, OS_CACHED_REGION_PREFIX
    lwz     r5, 0x00D8(r3)
    stw     context, 0x00D8(r3)
    cmpw    r5, r4
    beq     _restoreAndExit
    cmpwi   r5, 0x0
    beq     _loadNewFPUContext
    bl      __OSSaveFPUContext
_loadNewFPUContext:
    bl      __OSLoadFPUContext
_restoreAndExit:
    lwz     r3, OS_CONTEXT_CR(context)
    mtcr    r3
    lwz     r3, OS_CONTEXT_LR(context)
    mtlr    r3
    lwz     r3, OS_CONTEXT_SRR0(context)
    mtsrr0  r3
    lwz     r3, OS_CONTEXT_CTR(context)
    mtctr   r3
    lwz     r3, OS_CONTEXT_XER(context)
    mtxer   r3
    lhz     r3, context->state
    rlwinm  r3, r3, 0, 31, 29
    sth     r3, context->state
    lwz     r5, OS_CONTEXT_R5(context)
    lwz     r3, OS_CONTEXT_R3(context)
    lwz     r4, OS_CONTEXT_R4(context)
    rfi
#endif // clang-format on
}

// The DBPrintf format string retail references here (true address 0x8023041C)
// is an anonymous already-known literal (dtk auto-names it "@74") with no
// usable symbol -- every technique tried to reference it by name failed (see
// project memory). Sidestepped entirely by loading the ABSOLUTE fixed address
// as a plain compile-time integer constant via lis/addi, exactly like the
// OS_CACHED_REGION_PREFIX hardware-address idiom above -- this needs no
// relocation/symbol at all, since the string's address never moves.
//80163E0C
ASM void __OSContextInit(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lis     r3, OSSwitchFPUContext@ha
    addi    r4, r3, OSSwitchFPUContext@l
    li      r3, 0x7
    bl      __OSSetExceptionHandler
    li      r0, 0x0
    crclr   6
    lis     r4, 0x8000
    lis     r3, 0x8049
    stw     r0, 0xd8(r4)
    addi    r3, r3, 0x5c64
    bl      DBPrintf
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
