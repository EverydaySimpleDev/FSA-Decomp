#include "types.h"

// Slk2_ResetBlock0x0(this): trivial single zero at +0x0 - the RESET/init half
// of a pair sharing one 0xb8-byte block. Embedded by SLK2 at its own
// +0x524. The UPDATE half, fn_802157B8, dispatches through a jump table
// and stays raw asm in Dolphin/os/extab_802157b8.s.
extern "C" {

void Slk2_ResetBlock0x0(void* thisPtr) {
	*(u32*)((char*)thisPtr + 0x0) = 0;
}

}
