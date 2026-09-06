#include "types.h"

// fn_801C53C4(this) - small boolean gate: true only while this->0x230
// bit13 is set AND this->0x55c (a byte counter, seen elsewhere in the
// SLK2 cluster as a randomized multi-hop count) is <= 20.
extern "C" bool fn_801C53C4(void* thisObj) {
	return ((*(u32*)((char*)thisObj + 0x230) & 0x40000) != 0 && *(u8*)((char*)thisObj + 0x55c) <= 20) ? true : false;
}
