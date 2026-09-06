#include "types.h"

// Bfin_UpdateGlobalState - BFIN: vtable-slot function (0x3C). If this->0x240 != 0xff,
// writes it into the global manager object's (lbl_8053AED0) +0x256
// field. If this->0x230 == 6, sets the global registry's (lbl_8053ADC8)
// +0x20/+0x21 fields to 1/3.
extern void* lbl_8053AED0;
extern void* lbl_8053ADC8[2];

extern "C" {

void Bfin_UpdateGlobalState(void* thisPtr) {
	char* p = (char*)thisPtr;
	u8 val = *(u8*)(p + 0x240);
	if (val != 0xff) {
		void* obj = lbl_8053AED0;
		*(u8*)((char*)obj + 0x256) = val;
	}
	if (*(s32*)(p + 0x230) != 6) return;
	void* obj2 = lbl_8053ADC8[0];
	*(u8*)((char*)obj2 + 0x20) = 1;
	void* obj3 = lbl_8053ADC8[0];
	*(u8*)((char*)obj3 + 0x21) = 3;
}

}
