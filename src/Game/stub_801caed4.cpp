#include "types.h"

// fn_801CAED4(this, value) - a small distinctness test: returns false
// if this->0x560 equals either the sentinel 4 or the passed `value`,
// else returns true. Used to filter a sentinel/self value out of some
// index comparison; the exact caller and purpose of this->0x560 was
// not traced further this session.
//
// Cracked via zeldaret/tww's dMap_c::isEnableDispMap() (src/d/d_map.cpp),
// which uses the identical "return <bool-typed && chain>;" idiom and
// compiles to the same preload-then-beqlr/bnelr compact shape. The key
// was declaring the return type as `bool` (not `s32`) - MWCC emits a
// truncating clrlwi tail for an s32-typed && chain, but none for a
// bool-typed one, matching retail exactly.
extern "C" bool fn_801CAED4(void* thisObj, s32 value) {
	s32 v = *(s32*)((char*)thisObj + 0x560);
	return v != 4 && v != value;
}
