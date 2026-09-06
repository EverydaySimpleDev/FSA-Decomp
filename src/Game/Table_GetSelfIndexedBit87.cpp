#include "types.h"

// Table_GetSelfIndexedBit87(void) - same lbl_8050EC80 global table as
// Table_GetSelfIndexedByte86 (Game/stub_803b8c74.cpp): reads row 0's own
// selfIndex to find its row, then returns bit 0 of the byte at +0x87.
struct EC80Row {
	u8 pad0[0x10];
	u32 selfIndex; // 0x10
	u8 pad1[0x87 - 0x14];
	u8 field87; // 0x87
	u8 pad2[0xc8 - 0x88];
};

extern "C" {

extern EC80Row lbl_8050EC80[16];

u8 Table_GetSelfIndexedBit87(void) {
	u32 idx = lbl_8050EC80[0].selfIndex;
	return lbl_8050EC80[idx].field87 & 1;
}

}
