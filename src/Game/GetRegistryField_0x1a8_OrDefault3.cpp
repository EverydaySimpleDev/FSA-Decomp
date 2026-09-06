#include "types.h"

// referenced by the PTMF table (lbl_804AFB90) alongside fn_803CE370.
extern "C" {
extern void* lbl_8053ADB0[2]; // real symbol size is 0x8 bytes (2 words) per symbols.txt

void* GetRegistryField_0x1a8_OrDefault3(void) {
	void* g = lbl_8053ADB0[0];
	if (g != 0) {
		return *(void**)((char*)g + 0x1a8);
	}
	return (void*)3;
}
}
