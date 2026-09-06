#include "types.h"

// 4 small FourCC-and-field predicates, all sharing the pattern
// "is this actor a specific FourCC, with a further field/range check".
//
// fn_801CC8E4: true iff this->0x1a0 (FourCC) == 'BMTY' and this->0x230 != 3.
// fn_801CC910/fn_801CC960/fn_801CC9B0: true iff this->0x1a0 == 'RUPY'
// (the already-confirmed Rupee actor, see project_fsa_rupy_actor_progress.md)
// AND a derived "type" value falls in a specific range (8-11, 4-7, or
// >=0 respectively) - the type value is this->0x94 itself when it's
// 0 or 3 (special-cased), else defaults to -1, else the low byte of
// this->0x90 (spawnParam).
//
// Cracked via the established default-then-override recipe (nested,
// for the RUPY trio's inner type-derivation), matching retail's WORD
// read + mask for the this->0x90 byte extraction (not a direct byte
// load - the s32-vs-u8 type-matches-load-width rule), and declaring
// the default value's local BEFORE the loaded value's local to match
// retail's register assignment (typeVal->r0, v94->r4) - the reverse
// of the "obvious" declaration order, discovered this batch.
extern "C" s32 fn_801CC8E4(void* thisObj) {
	char* p = (char*)thisObj;
	s32 result = 0;
	if (*(u32*)(p + 0x1a0) == 0x424D5459 && *(s32*)(p + 0x230) != 3) {
		result = 1;
	}
	return result;
}

extern "C" s32 fn_801CC910(void* thisObj) {
	char* p = (char*)thisObj;
	s32 result = 0;
	if (*(u32*)(p + 0x1a0) == 0x52555059) {
		s32 typeVal = -1;
		u16 v94 = *(u16*)(p + 0x94);
		if (v94 == 0 || v94 == 3) {
			typeVal = *(u32*)(p + 0x90) & 0xff;
		}
		if (typeVal >= 8 && typeVal <= 0xb) {
			result = 1;
		}
	}
	return result;
}

extern "C" s32 fn_801CC960(void* thisObj) {
	char* p = (char*)thisObj;
	s32 result = 0;
	if (*(u32*)(p + 0x1a0) == 0x52555059) {
		s32 typeVal = -1;
		u16 v94 = *(u16*)(p + 0x94);
		if (v94 == 0 || v94 == 3) {
			typeVal = *(u32*)(p + 0x90) & 0xff;
		}
		if (typeVal >= 4 && typeVal <= 7) {
			result = 1;
		}
	}
	return result;
}

extern "C" s32 fn_801CC9B0(void* thisObj) {
	char* p = (char*)thisObj;
	s32 result = 0;
	if (*(u32*)(p + 0x1a0) == 0x52555059) {
		s32 typeVal = -1;
		u16 v94 = *(u16*)(p + 0x94);
		if (v94 == 0 || v94 == 3) {
			typeVal = *(u32*)(p + 0x90) & 0xff;
		}
		if (typeVal >= 0) {
			result = 1;
		}
	}
	return result;
}
