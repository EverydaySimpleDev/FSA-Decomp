#include "types.h"

// GlobalMgr_SetByte_0x24d(val) - writes a byte into the global manager struct
// (lbl_80529DEC) at +0x24d. Address-only reference (lis/addi, not
// @sda21) - declared as a zero-arg function to dodge MWCC's small-data-
// eligible heuristic, matching the established fix from Slk2_InitVtablePairRecord.
extern "C" void lbl_80529DEC();

extern "C" {

void GlobalMgr_SetByte_0x24d(u8 val) {
	*(u8*)((char*)lbl_80529DEC + 0x24d) = val;
}

// SetTriple_0x24c_0x250_0x254(this, a, b, c) - trivial 3-field setter.
void SetTriple_0x24c_0x250_0x254(void* thisPtr, u32 a, f32 b, u32 c) {
	char* p = (char*)thisPtr;
	*(u32*)(p + 0x250) = a;
	*(f32*)(p + 0x254) = b;
	*(u32*)(p + 0x24c) = c;
}

}
