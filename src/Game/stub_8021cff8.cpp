#include "types.h"

// fn_8021CFF8(this) - boolean gate: this->0x564==3 AND this->0x59e==0.
// fn_8021D020(this) - fused sibling: boolean gate comparing a
// countdown (this->0x244 - this->0x568) against a remaining-hop
// budget this->0x108. Both are small SLK2 rail-state predicates.
extern "C" {

s32 fn_8021CFF8(void* thisObj) {
	s32 result = 0;
	if (*(s32*)((char*)thisObj + 0x564) == 3 && *(u16*)((char*)thisObj + 0x59e) == 0) {
		result = 1;
	}
	return result;
}

s32 fn_8021D020(void* thisObj) {
	s32 result = 0;
	s32 countdown = *(s32*)((char*)thisObj + 0x244) - *(s32*)((char*)thisObj + 0x568);
	if (*(s32*)((char*)thisObj + 0x108) <= countdown) {
		result = 1;
	}
	return result;
}

}
