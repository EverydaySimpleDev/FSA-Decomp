#include "Dolphin/os.h"
#include "Dolphin/hw_regs.h"

// forward declarations.
static BOOL OnReset(BOOL final);
extern void __OSUnhandledException(__OSException exception, OSContext* context, u32 dsisr, u32 dar);

// Local reset function information.
static OSResetFunctionInfo ResetFunctionInfo = { OnReset, OS_RESET_PRIO_MEM };

// useful macros.
#define TRUNC(n, a) (((u32)(n)) & ~((a)-1))
#define ROUND(n, a) (((u32)(n) + (a)-1) & ~((a)-1))

/**
 * @note Address: N/A
 * @note Size: 0xC
 */
static u32 OSGetPhysicalMemSize() { return *(u32*)(OSPhysicalToCached(0x28)); }

/**
 * @note Address: N/A
 * @note Size: 0xC
 */
static u32 OSGetConsoleSimulatedMemSize() { return *(u32*)(OSPhysicalToCached(0xF0)); }

/**
 * @note Address: 0x800EF794
 * @note Size: 0x3C
 */
//80043194
ASM static BOOL OnReset(register BOOL final)
{
    nofralloc
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    beq     _skip
    lis     r3, 0xcc00
    li      r0, 0xff
    sth     r0, 0x4010(r3)
    lis     r3, 0xf000
    bl      __OSMaskInterrupts
_skip:
    li      r3, 0x1
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

//800431D0
ASM static void MEMIntrruptHandler(register __OSInterrupt interrupt, register OSContext* context)
{
    nofralloc
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(r1)
    addi    r8, r3, 0x4000
    li      r0, 0x0
    stwu    r1, -0x8(r1)
    lhz     r7, 0x4024(r3)
    lis     r3, __OSErrorTable@ha
    lhz     r6, 0x22(r8)
    addi    r3, r3, __OSErrorTable@l
    lhz     r5, 0x1e(r8)
    rlwimi  r6, r7, 16, 6, 15
    sth     r0, 0x20(r8)
    lwz     r12, 0x3c(r3)
    cmplwi  r12, 0x0
    beq     _unhandled
    mtlr    r12
    li      r3, 0xf
    crclr   4*cr1+eq
    blrl
    b       _done
_unhandled:
    li      r3, 0xf
    bl      __OSUnhandledException
_done:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

/**
 * @note Address: 0x800EF83C
 * @note Size: 0xC4
 */
//8004323C
ASM void OSProtectRange(register u32 channel, register void* addr, register u32 numBytes, register u32 control)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stmw    r26, 0x18(r1)
    addi    r26, r3, 0x0
    cmplwi  r26, 0x4
    bge     _done
    add     r3, r4, r5
    addi    r0, r3, 0x3ff
    clrrwi  r27, r4, 10
    clrrwi  r29, r0, 10
    addi    r3, r27, 0x0
    clrlwi  r31, r6, 30
    subf    r4, r27, r29
    bl      DCFlushRange
    bl      OSDisableInterrupts
    lis     r0, 0x8000
    srw     r30, r0, r26
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      __OSMaskInterrupts
    lis     r3, 0xcc00
    addi    r5, r3, 0x4000
    slwi    r3, r26, 2
    extrwi  r0, r27, 16, 6
    sthx    r0, r5, r3
    extrwi  r4, r29, 16, 6
    add     r3, r5, r3
    sth     r4, 0x2(r3)
    addi    r4, r5, 0x10
    slwi    r6, r26, 1
    li      r0, 0x3
    lhz     r5, 0x10(r5)
    slw     r3, r0, r6
    slw     r0, r31, r6
    andc    r5, r5, r3
    or      r5, r5, r0
    cmplwi  r31, 0x3
    sth     r5, 0x0(r4)
    beq     _skip_unmask
    mr      r3, r30
    bl      __OSUnmaskInterrupts
_skip_unmask:
    mr      r3, r28
    bl      OSRestoreInterrupts
_done:
    lmw     r26, 0x18(r1)
    lwz     r0, 0x34(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}

/**
 * @note Address: 0x800EF900
 * @note Size: 0x80
 */
ASM static void Config24MB()
{
#ifdef __MWERKS__ // clang-format off
	nofralloc

	addi    r7,r0,0

	addis   r4,r0,0x00000002@ha
	addi    r4,r4,0x00000002@l
	addis   r3,r0,0x800001ff@ha
	addi    r3,r3,0x800001ff@l

	addis   r6,r0,0x01000002@ha
	addi    r6,r6,0x01000002@l
	addis   r5,r0,0x810000ff@ha
	addi    r5,r5,0x810000ff@l

	isync

	mtspr   dbat0u,r7
	mtspr   dbat0l,r4
	mtspr   dbat0u,r3
	isync

	mtspr   ibat0u,r7
	mtspr   ibat0l,r4
	mtspr   ibat0u,r3
	isync

	mtspr   dbat2u,r7
	mtspr   dbat2l,r6
	mtspr   dbat2u,r5
	isync

	mtspr   ibat2u,r7
	mtspr   ibat2l,r6
	mtspr   ibat2u,r5
	isync

	mfmsr   r3
	ori     r3, r3, 0x30
	mtsrr1  r3

	mflr    r3
	mtsrr0  r3
	rfi
#endif // clang-format on
}

/**
 * @note Address: 0x800EF980
 * @note Size: 0x80
 */
ASM static void Config48MB()
{
#ifdef __MWERKS__ // clang-format off
	nofralloc

	addi    r7,r0,0x0000

	addis   r4,r0,0x00000002@ha
	addi    r4,r4,0x00000002@l
	addis   r3,r0,0x800003ff@ha
	addi    r3,r3,0x800003ff@l

	addis   r6,r0,0x02000002@ha
	addi    r6,r6,0x02000002@l
	addis   r5,r0,0x820001ff@ha
	addi    r5,r5,0x820001ff@l

	isync

	mtspr   dbat0u,r7
	mtspr   dbat0l,r4
	mtspr   dbat0u,r3
	isync

	mtspr   ibat0u,r7
	mtspr   ibat0l,r4
	mtspr   ibat0u,r3
	isync

	mtspr   dbat2u,r7
	mtspr   dbat2l,r6
	mtspr   dbat2u,r5
	isync

	mtspr   ibat2u,r7
	mtspr   ibat2l,r6
	mtspr   ibat2u,r5
	isync

	mfmsr   r3
	ori     r3, r3, 0x30
	mtsrr1  r3

	mflr    r3
	mtsrr0  r3
	rfi
#endif // clang-format on
}

/**
 * @note Address: 0x800EFA00
 * @note Size: 0x18
 */
ASM static void RealMode(register u32 addr)
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
	clrlwi r3, r3, 2
	mtsrr0 r3
	mfmsr r3
	rlwinm r3, r3, 0, 28, 25
	mtsrr1 r3
	rfi
#endif // clang-format on
}

/**
 * @note Address: 0x800EFA18
 * @note Size: 0x118
 */
//80043418
ASM void __OSInitMemoryProtection(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x50(r1)
    stmw    r27, 0x3c(r1)
    lis     r27, 0x8000
    lwz     r31, 0xf0(r27)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    addi    r28, r4, 0x4000
    li      r0, 0x0
    sth     r0, 0x20(r28)
    li      r0, 0xff
    mr      r30, r3
    sth     r0, 0x10(r28)
    lis     r3, 0xf000
    bl      __OSMaskInterrupts
    lis     r3, MEMIntrruptHandler@ha
    addi    r29, r3, MEMIntrruptHandler@l
    mr      r4, r29
    li      r3, 0x0
    bl      __OSSetInterruptHandler
    mr      r4, r29
    li      r3, 0x1
    bl      __OSSetInterruptHandler
    mr      r4, r29
    li      r3, 0x2
    bl      __OSSetInterruptHandler
    mr      r4, r29
    li      r3, 0x3
    bl      __OSSetInterruptHandler
    mr      r4, r29
    li      r3, 0x4
    bl      __OSSetInterruptHandler
    lis     r3, ResetFunctionInfo@ha
    addi    r3, r3, ResetFunctionInfo@l
    bl      OSRegisterResetFunction
    lwz     r3, 0xf0(r27)
    lwz     r0, 0x28(r27)
    cmplw   r3, r0
    bge     _skip1
    addis   r0, r3, 0xfe80
    cmplwi  r0, 0x0
    bne     _skip1
    lis     r3, 0x8180
    lis     r4, 0x180
    bl      DCInvalidateRange
    li      r0, 0x2
    sth     r0, 0x28(r28)
_skip1:
    lis     r0, 0x180
    cmplw   r31, r0
    bgt     _elseif
    lis     r3, Config24MB@ha
    addi    r3, r3, Config24MB@l
    bl      RealMode
    b       _endif
_elseif:
    lis     r0, 0x300
    cmplw   r31, r0
    bgt     _endif
    lis     r3, Config48MB@ha
    addi    r3, r3, Config48MB@l
    bl      RealMode
_endif:
    lis     r3, 0x800
    bl      __OSUnmaskInterrupts
    mr      r3, r30
    bl      OSRestoreInterrupts
    lmw     r27, 0x3c(r1)
    lwz     r0, 0x54(r1)
    addi    r1, r1, 0x50
    mtlr    r0
    blr
}
