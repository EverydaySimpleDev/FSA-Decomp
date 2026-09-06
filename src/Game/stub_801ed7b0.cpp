#include "types.h"

// fn_801ED7B0(this) -> bool: checks a 4-field record against a
// specific MAGIC signature (active==1, cnt==0x1c20, x==0x77, y==0x63) -
// a validity/"is this the fully-populated sentinel state" query.
extern "C" s32 fn_801ED7B0(void* thisObj) {
	s32 result = 0;
	if (*(u8*)((char*)thisObj + 0x0) == 1 &&
	    *(s32*)((char*)thisObj + 0x4) == 0x1c20 &&
	    *(u8*)((char*)thisObj + 0x8) == 0x77 &&
	    *(u8*)((char*)thisObj + 0x9) == 0x63) {
		result = 1;
	}
	return result;
}
