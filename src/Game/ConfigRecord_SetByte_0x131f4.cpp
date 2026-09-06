#include "types.h"

// ConfigRecord_SetByte_0x131f4/ConfigRecord_SetByte_0x131f3/ConfigRecord_SetByte_0x131f2(unused, value) - three more
// single-GLOBAL-byte setters on the config record, at +0x131f4/
// +0x131f3/+0x131f2 respectively - a small cluster of adjacent
// settings bytes right next to ConfigRecord_SetInstallSettingsByte's +0x131f9. Same unused
// leading parameter as ConfigRecord_SetInstallSettingsByte (retail passes `value` in r4).
extern void* lbl_8053AAF8[2];

extern "C" {

void ConfigRecord_SetByte_0x131f4(void* unused, u8 value) {
	void* mgr = lbl_8053AAF8[0];
	void* world = *(void**)((char*)mgr + 0x4);
	void* record = *(void**)((char*)world + 0xc);
	*(u8*)((char*)record + 0x131f4) = value;
}

void ConfigRecord_SetByte_0x131f3(void* unused, u8 value) {
	void* mgr = lbl_8053AAF8[0];
	void* world = *(void**)((char*)mgr + 0x4);
	void* record = *(void**)((char*)world + 0xc);
	*(u8*)((char*)record + 0x131f3) = value;
}

void ConfigRecord_SetByte_0x131f2(void* unused, u8 value) {
	void* mgr = lbl_8053AAF8[0];
	void* world = *(void**)((char*)mgr + 0x4);
	void* record = *(void**)((char*)world + 0xc);
	*(u8*)((char*)record + 0x131f2) = value;
}

}
