#include "types.h"
#include "Dolphin/os.h"

// The 4 trivial Arena boundary get/set accessors, real Dolphin SDK
// functions confirmed via zeldaret/tww's src/dolphin/os/OSAlloc.c.
// Split out of the original OSInitAlloc/OSCreateHeap/OSGetArenaHi/
// OSGetArenaLo/OSSetArenaHi/OSSetArenaLo dtk bundle - the first 2
// (more complex loop) functions remain raw asm, see
// Dolphin/os/extab_80040b90.s for why.
extern "C" void* OSGetArenaHi(void) {
	return __OSArenaHi;
}

extern "C" void* OSGetArenaLo(void) {
	return __OSArenaLo;
}

extern "C" void OSSetArenaHi(void* addr) {
	__OSArenaHi = addr;
}

extern "C" void OSSetArenaLo(void* addr) {
	__OSArenaLo = addr;
}
