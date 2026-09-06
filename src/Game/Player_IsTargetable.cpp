#include "types.h"

// Fused dtk split unit (0x802413F0-0x80241498) - 5 functions dtk cannot
// cherry-pick individually.
//
// Player_IsTargetable(this) - a compound "is this player in a targetable state"
// predicate: requires this->0xc80!=0 AND this->0xcee==0 AND
// this->0x1215==0 AND this->0xca0!=0, then returns whether this->0xce9
// is nonzero.
//
// Player_SetField_0xc80(this, val) - setter for the SAME this->0xc80 field
// Player_IsTargetable checks first.
//
// Player_GetModeSubStructPtr(this) - returns &this->0x2f4 if this->0xd64==1, else
// &this->0x8 - a mode-selected sub-struct pointer.
//
// Player_CheckField1240Eq14(this) - returns 1 if this->0x1240==0xe(14), else 0.
//
// Player_SetFlag_0xb7b(this) - sets this->0xb7b=1 (unrelated flag setter).
extern "C" {

BOOL Player_IsTargetable(void* thisPtr) {
	char* p = (char*)thisPtr;
	if (*(u8*)(p + 0xc80) == 0) return 0;
	if (*(u8*)(p + 0xcee) != 0) return 0;
	if (*(u8*)(p + 0x1215) != 0) return 0;
	if (*(u8*)(p + 0xca0) == 0) return 0;
	return *(u8*)(p + 0xce9) != 0;
}

void Player_SetField_0xc80(void* thisPtr, u8 val) {
	*(u8*)((char*)thisPtr + 0xc80) = val;
}

void* Player_GetModeSubStructPtr(void* thisPtr) {
	char* p = (char*)thisPtr;
	if (*(u8*)(p + 0xd64) == 1) {
		return p + 0x2f4;
	}
	return p + 0x8;
}

// Kept as raw nofralloc asm: natural `== 0xe` and `(0xe - x) == 0` C++
// forms both compiled to a near-identical but not byte-exact rlwinm mask
// (retail's srwi keeps bits 5-31; MWCC's natural lowering here instead
// kept bits 24-31) - a subtle canonicalization choice not achievable by
// rephrasing the comparison alone.
ASM BOOL Player_CheckField1240Eq14(void* thisPtr)
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
	lwz     r0, 0x1240(r3)
	subfic  r0, r0, 0xe
	cntlzw  r0, r0
	srwi    r3, r0, 5
	blr
#endif // clang-format on
}

void Player_SetFlag_0xb7b(void* thisPtr) {
	*(u8*)((char*)thisPtr + 0xb7b) = 1;
}

}
