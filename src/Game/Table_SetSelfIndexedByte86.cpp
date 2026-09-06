#include "types.h"

// Table_SetSelfIndexedByte86(val) / Table_GetSelfIndexedByte86() - setter/getter for a byte field at
// +0x86 in a global table (lbl_8050EC80, stride 0xc8), indexed by a
// value read from the table's own +0x10 word (row 0's self-index, not
// an incoming argument).
//
// Retry using real typed-array `[]` syntax (per zeldaret/tww's idiom
// for indexed table access) instead of the manual char*+idx*stride
// arithmetic that failed here previously - see project_fsa_phase4_kickoff.md,
// eighteenth batch, for the confirmed root cause (MWCC's indexed-vs-
// base+immediate addressing choice depends on how the address is
// expressed in source, not the underlying computation).
struct EC80Row {
	u8 pad0[0x10];
	u32 selfIndex; // 0x10
	u8 pad1[0x86 - 0x14];
	u8 field86; // 0x86
	u8 pad2[0xc8 - 0x87];
};

extern EC80Row lbl_8050EC80[16];

extern "C" {

void Table_SetSelfIndexedByte86(u8 val) {
	u32 idx = lbl_8050EC80[0].selfIndex;
	lbl_8050EC80[idx].field86 = val;
}

u8 Table_GetSelfIndexedByte86(void) {
	u32 idx = lbl_8050EC80[0].selfIndex;
	return lbl_8050EC80[idx].field86;
}

}
