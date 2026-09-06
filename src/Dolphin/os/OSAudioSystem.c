#include <types.h>

extern void* OSGetArenaHi(void);
extern void* memcpy(void* dst, const void* src, u32 n);
extern void DCFlushRange(void* addr, u32 nBytes);
extern s64 OSGetTick(void);
extern u8 DSPInitCode[0x80];

// Whole-function asm: retail uses 7 saved nonvolatile registers (r25-r31,
// via stmw) for this function's DSP-init bookkeeping; plain C only needed
// r31, a much bigger register-allocation gap than the usual prologue-order
// residual, so transliterated directly from the real disassembly rather
// than attempting a plain-C rewrite.
//800EC444
ASM void __OSInitAudioSystem(void)
{
	nofralloc
	mflr r0
	stw r0, 0x4(r1)
	stwu r1, -0x30(r1)
	stmw r25, 0x14(r1)
	bl OSGetArenaHi
	lis r4, 0x8100
	li r5, 0x80
	subi r3, r3, 0x80
	bl memcpy
	lis r3, DSPInitCode@ha
	addi r4, r3, DSPInitCode@l
	lis r3, 0x8100
	li r5, 0x80
	bl memcpy
	lis r3, 0x8100
	li r4, 0x80
	bl DCFlushRange
	lis r3, 0xcc00
	addi r3, r3, 0x5000
	li r0, 0x43
	sth r0, 0x12(r3)
	addi r31, r3, 0xa
	li r0, 0x8ac
	sth r0, 0xa(r3)
	lhz r0, 0xa(r3)
	ori r0, r0, 0x1
	sth r0, 0xa(r3)
waitFifoReady1:
	lhz r0, 0x0(r31)
	clrlwi. r0, r0, 31
	bne waitFifoReady1
	li r0, 0x0
	lis r4, 0xcc00
	sth r0, 0x5000(r4)
waitDspBusy1:
	addi r30, r4, 0x5000
	lhzu r3, 0x4(r30)
	addi r29, r4, 0x5000
	lhzu r0, 0x6(r29)
	rlwimi r0, r3, 16, 0, 15
	clrrwi. r0, r0, 31
	bne waitDspBusy1
	lis r3, 0xcc00
	lis r0, 0x100
	addi r27, r3, 0x5000
	stwu r0, 0x20(r27)
	li r0, 0x0
	addi r26, r3, 0x5000
	stwu r0, 0x24(r26)
	li r0, 0x20
	addi r25, r3, 0x5000
	stwu r0, 0x28(r25)
	lhz r3, 0x0(r31)
	b fifoIntFlagCheck1
fifoIntFlagLoop1:
	lhz r3, 0x0(r31)
fifoIntFlagCheck1:
	rlwinm. r0, r3, 0, 26, 26
	beq fifoIntFlagLoop1
	sth r3, 0x0(r31)
	bl OSGetTick
	mr r28, r3
delayLoop1:
	bl OSGetTick
	subf r0, r28, r3
	cmpwi r0, 0x892
	blt delayLoop1
	lis r0, 0x100
	stw r0, 0x0(r27)
	li r3, 0x0
	li r0, 0x20
	stw r3, 0x0(r26)
	stw r0, 0x0(r25)
	lhz r3, 0x0(r31)
	b fifoIntFlagCheck2
fifoIntFlagLoop2:
	lhz r3, 0x0(r31)
fifoIntFlagCheck2:
	rlwinm. r0, r3, 0, 26, 26
	beq fifoIntFlagLoop2
	sth r3, 0x0(r31)
	lhz r0, 0x0(r31)
	rlwinm r0, r0, 0, 21, 19
	sth r0, 0x0(r31)
waitBit10Set:
	lhz r0, 0x0(r31)
	rlwinm. r0, r0, 0, 21, 21
	bne waitBit10Set
	lhz r0, 0x0(r31)
	rlwinm r0, r0, 0, 30, 28
	sth r0, 0x0(r31)
	lhz r0, 0x0(r30)
	b bit16Check
bit16Loop:
	lhz r0, 0x0(r30)
bit16Check:
	clrlwi r5, r0, 16
	rlwinm. r0, r0, 0, 16, 16
	beq bit16Loop
	lhz r0, 0x0(r31)
	lhz r4, 0x0(r29)
	ori r0, r0, 0x4
	sth r0, 0x0(r31)
	li r0, 0x8ac
	sth r0, 0x0(r31)
	lhz r0, 0x0(r31)
	ori r0, r0, 0x1
	sth r0, 0x0(r31)
waitFifoReady2:
	lhz r0, 0x0(r31)
	clrlwi. r0, r0, 31
	bne waitFifoReady2
	bl OSGetArenaHi
	subi r4, r3, 0x80
	lis r3, 0x8100
	li r5, 0x80
	bl memcpy
	lmw r25, 0x14(r1)
	lwz r0, 0x34(r1)
	addi r1, r1, 0x30
	mtlr r0
	blr
}

// Whole-function asm: same register-allocation-gap class as
// __OSInitAudioSystem above.
//800EC600
ASM void __OSStopAudioSystem(void)
{
	nofralloc
	mflr r0
	lis r3, 0xcc00
	stw r0, 0x4(r1)
	li r0, 0x804
	stwu r1, -0x10(r1)
	stw r31, 0xc(r1)
	addi r31, r3, 0x5000
	addi r3, r3, 0x5000
	stw r30, 0x8(r1)
	sth r0, 0xa(r31)
	lhz r0, 0x36(r3)
	rlwinm r0, r0, 0, 17, 15
	sth r0, 0x36(r3)
	lhzu r0, 0xa(r31)
	b bit21Check1
bit21Loop1:
	lhz r0, 0x0(r31)
bit21Check1:
	rlwinm. r0, r0, 0, 21, 21
	bne bit21Loop1
	lhz r0, 0x0(r31)
	b bit22Check1
bit22Loop1:
	lhz r0, 0x0(r31)
bit22Check1:
	rlwinm. r0, r0, 0, 22, 22
	bne bit22Loop1
	li r0, 0x8ac
	lis r3, 0xcc00
	sth r0, 0x0(r31)
	li r0, 0x0
	sth r0, 0x5000(r3)
	addi r4, r3, 0x5000
waitDspBusy2:
	lhz r3, 0x4(r4)
	lhz r0, 0x6(r4)
	rlwimi r0, r3, 16, 0, 15
	clrrwi. r0, r0, 31
	bne waitDspBusy2
	bl OSGetTick
	mr r30, r3
delayLoop2:
	bl OSGetTick
	subf r0, r30, r3
	cmpwi r0, 0x2c
	blt delayLoop2
	lhz r0, 0x0(r31)
	ori r0, r0, 0x1
	sth r0, 0x0(r31)
	lhz r0, 0x0(r31)
	b fifoIntFlagCheck3
fifoIntFlagLoop3:
	lhz r0, 0x0(r31)
fifoIntFlagCheck3:
	clrlwi. r0, r0, 31
	bne fifoIntFlagLoop3
	lwz r0, 0x14(r1)
	lwz r31, 0xc(r1)
	lwz r30, 0x8(r1)
	addi r1, r1, 0x10
	mtlr r0
	blr
}
