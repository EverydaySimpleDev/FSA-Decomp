#include <types.h>

typedef struct OSBootInfo {
    char pad[0x2C];
    unsigned long consoleType;
} OSBootInfo;

extern OSBootInfo* BootInfo;

// Whole-function asm: retail's real control flow keeps a separate "load
// default" block that falls through to a shared tail via an explicit branch,
// rather than the branchless/bnelr-fused form plain C compiles to here.
//80161478
ASM u32 OSGetConsoleType(void)
{
	nofralloc
	lwz r3, BootInfo
	cmplwi r3, 0
	beq useDefault
	lwz r3, 0x2c(r3)
	cmplwi r3, 0
	opword 0x40820010 // bne done -- written as a raw word: MWCC's assembler
	                   // fuses "bne <label-that-is-just-blr>" into `bnelr`,
	                   // which retail's real build does not do here.
useDefault:
	lis r3, 0x1000
	addi r3, r3, 0x2
	opword 0x48000004 // b done -- retail keeps this explicit jump-to-next-
	                   // instruction rather than falling through
done:
	blr
}
