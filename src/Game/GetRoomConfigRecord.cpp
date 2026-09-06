#include "types.h"

// GetRoomConfigRecord() - returns `(*lbl_8053AAF8)->0x4->0xc` - a "level/room
// CONFIG record" pointer hanging off the confirmed World/PlayField
// manager. ConfigRecord_SetInstallSettingsByte(unused, value) - the SETTER for the config
// record's `+0x131f9` byte, the same field NAVI's setParams reads as
// a "per-installation settings byte". Takes an unused leading param
// (retail passes `value` in r4/second-arg position, not r3) - likely a
// generic (owner, value) setter callback signature shared with the
// other single-byte setters below.
extern void* lbl_8053AAF8[2];

extern "C" {

void* GetRoomConfigRecord(void) {
	void* mgr = lbl_8053AAF8[0];
	void* world = *(void**)((char*)mgr + 0x4);
	return *(void**)((char*)world + 0xc);
}

void ConfigRecord_SetInstallSettingsByte(void* unused, u8 value) {
	void* mgr = lbl_8053AAF8[0];
	void* world = *(void**)((char*)mgr + 0x4);
	void* record = *(void**)((char*)world + 0xc);
	*(u8*)((char*)record + 0x131f9) = value;
}

}
