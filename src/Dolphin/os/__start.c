#include <Dolphin/__start.h>

#pragma section code_type ".init"
//800051ec
// Whole-function asm: retail's real prologue/epilogue shape (save LR + a
// small -8 frame allocated AFTER the register save, using the OLD stack
// pointer for the LR save) differs from what every MWCC version/optimization
// level tried produces from the equivalent C (which allocates the frame
// first, then saves at the new stack pointer). Same "not reachable from
// source shape" prologue-ordering class documented repeatedly in the sibling
// Chibi-Robo decomp (e.g. DVDLowWaitMotorStopped) - transliterated directly.
ASM void __check_pad3(void)
{
	nofralloc
	mflr r0
	lis r3, Pad3Button@ha
	stw r0, 0x4(r1)
	stwu r1, -0x8(r1)
	lhz r0, Pad3Button@l(r3)
	andi. r0, r0, 0xeef
	cmpwi r0, 0xeef
	bne skip
	li r3, 0
	li r4, 0
	li r5, 0
	bl OSResetSystem
skip:
	lwz r0, 0xc(r1)
	addi r1, r1, 8
	mtlr r0
	blr
}
//8000522c
void __set_debug_bba(void) { Debug_BBA = 1;  }
//80005238
u8 __get_debug_bba(void) { return Debug_BBA; }
//80005240
WEAKFUNC ASM void __start(void)
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
	bl __init_registers
	bl __init_hardware
	li r0, -1
	stwu r1, -8(r1)
	stw r0, 4(r1)
	stw r0, 0(r1)
	bl __init_data
	li r0, 0
	lis r6, EXCEPTIONMASK_ADDR@ha
	addi r6, r6, EXCEPTIONMASK_ADDR@l
	stw r0, 0(r6)
	lis r6, BOOTINFO2_ADDR@ha
	addi r6, r6, BOOTINFO2_ADDR@l
	lwz r6, 0(r6)

_check_TRK:
	cmplwi r6, 0
	beq _load_lomem_debug_flag
	lwz r7, OS_BI2_DEBUGFLAG_OFFSET(r6)
	b _check_debug_flag

_load_lomem_debug_flag:
	lis r5, ARENAHI_ADDR@ha
	addi r5, r5, ARENAHI_ADDR@l
	lwz r5, 0(r5)
	cmplwi r5, 0
	beq _goto_main
	lis r7, DEBUGFLAG_ADDR@ha
	addi r7, r7, DEBUGFLAG_ADDR@l
	lwz r7, 0(r7)

_check_debug_flag:
	li r5, 0
	cmplwi r7, 2
	beq _goto_inittrk
	cmplwi r7, 3
	li r5, 1
	beq _goto_inittrk
	cmplwi r7, 4
	bne _goto_main
	li r5, 2
	bl __set_debug_bba
	b _goto_main

_goto_inittrk:
	lis r6, InitMetroTRK@ha
	addi r6, r6, InitMetroTRK@l
	mtlr r6
	blrl

_goto_main:
	lis r6, BOOTINFO2_ADDR@ha
	addi r6, r6, BOOTINFO2_ADDR@l
	lwz r5, 0(r6)
	cmplwi r5, 0
	beq+ _no_args
	lwz r6, 8(r5)
	cmplwi r6, 0
	beq+ _no_args
	add r6, r5, r6
	lwz r14, 0(r6)
	cmplwi r14, 0
	beq _no_args
	addi r15, r6, 4
	mtctr r14

_loop:
	addi r6, r6, 4
	lwz r7, 0(r6)
	add r7, r7, r5
	stw r7, 0(r6)
	bdnz _loop
	lis r5, ARENAHI_ADDR@ha
	addi r5, r5, ARENAHI_ADDR@l
	rlwinm r7, r15, 0, 0, 0x1a
	stw r7, 0(r5)
	b _end_of_parseargs

_no_args:
	li r14, 0
	li r15, 0

_end_of_parseargs:
	bl DBInit
	bl OSInit
	lis r4, DVD_DEVICECODE_ADDR@ha
	addi r4, r4, DVD_DEVICECODE_ADDR@l
	lhz r3, 0(r4)
	andi. r5, r3, 0x8000
	beq _check_pad3
	andi. r3, r3, 0x7fff
	cmplwi r3, 1
	bne _skip_crc

_check_pad3:
	bl __check_pad3

_skip_crc:
	bl __get_debug_bba
	cmplwi r3, 1
	bne _goto_skip_init_bba
	bl InitMetroTRK_BBA

_goto_skip_init_bba:
	bl __init_user
	mr r3, r14
	mr r4, r15
	bl main
	b exit
#endif // clang-format on
}
//8000539c
ASM static void __init_registers(void)
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
	li r0, 0
	li r3, 0
	li r4, 0
	li r5, 0
	li r6, 0
	li r7, 0
	li r8, 0
	li r9, 0
	li r10, 0
	li r11, 0
	li r12, 0
	li r14, 0
	li r15, 0
	li r16, 0
	li r17, 0
	li r18, 0
	li r19, 0
	li r20, 0
	li r21, 0
	li r22, 0
	li r23, 0
	li r24, 0
	li r25, 0
	li r26, 0
	li r27, 0
	li r28, 0
	li r29, 0
	li r30, 0
	li r31, 0
	lis r1,  _stack_addr@h
	ori r1, r1,  _stack_addr@l
	lis r2, _SDA2_BASE_@h
	ori r2, r2, _SDA2_BASE_@l
	lis r13, _SDA_BASE_@h
	ori r13, r13, _SDA_BASE_@l
	blr
#endif // clang-format on
}

DECL_SECT(".init") extern __rom_copy_info _rom_copy_info[];
DECL_SECT(".init") extern __bss_init_info _bss_init_info[];

extern void* memcpy(void* dst, const void* src, u32 n);
extern void* memset(void* dst, int val, u32 n);
extern void __flush_cache(void* addr, u32 nBytes);

//8000542c
// Whole-function asm: MWCC's -O4 peephole/scheduler collapses this function's
// two "goto middle of loop" jumps down to a single branch and reorders the
// prologue, landing 0x10 bytes short of retail's real (unoptimized-looking)
// layout. Retail keeps both redundant jumps and saves LR/GPRs before
// allocating the frame. Transliterated directly from retail disassembly
// rather than chasing a compiler-flag combination that reproduces it -
// see the "whole-function asm" technique used throughout the sibling
// Chibi-Robo decomp for this exact class of scheduling/branch residual.
ASM void __init_data(void)
{
	nofralloc
	mflr r0
	stw r0, 0x4(r1)
	stwu r1, -0x18(r1)
	stw r31, 0x14(r1)
	stw r30, 0x10(r1)
	stw r29, 0xc(r1)
	lis r3, _rom_copy_info@ha
	addi r0, r3, _rom_copy_info@l
	mr r29, r0
	opword 0x48000004
	opword 0x48000004
romLoopCheck:
	lwz r30, 0x8(r29)
	cmplwi r30, 0
	beq bssInit
	lwz r4, 0x0(r29)
	lwz r31, 0x4(r29)
	beq romLoopNext
	cmplw r31, r4
	beq romLoopNext
	mr r3, r31
	mr r5, r30
	bl memcpy
	mr r3, r31
	mr r4, r30
	bl __flush_cache
romLoopNext:
	addi r29, r29, 0xc
	b romLoopCheck
bssInit:
	lis r3, _bss_init_info@ha
	addi r0, r3, _bss_init_info@l
	mr r29, r0
	opword 0x48000004
	opword 0x48000004
bssLoopCheck:
	lwz r5, 0x4(r29)
	cmplwi r5, 0
	beq done
	lwz r3, 0x0(r29)
	beq bssLoopNext
	li r4, 0
	bl memset
bssLoopNext:
	addi r29, r29, 0x8
	b bssLoopCheck
done:
	lwz r0, 0x1c(r1)
	lwz r31, 0x14(r1)
	lwz r30, 0x10(r1)
	lwz r29, 0xc(r1)
	addi r1, r1, 0x18
	mtlr r0
	blr
}
//end 80005450