#include "types.h"

// actor@lbl_804AF860: small accessor (0x1c). Returns a field from the global lbl_8053AD98 registry, or 4 if unset.
extern "C" {
extern void* lbl_8053AD98[2]; // real symbol size is 0x8 bytes (2 words) per symbols.txt

void* GetRegistryField_0xc_OrDefault4(void) {
	void* g = lbl_8053AD98[0];
	if (g != 0) {
		return *(void**)((char*)g + 0xc);
	}
	return (void*)4;
}
}
