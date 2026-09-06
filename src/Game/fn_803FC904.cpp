#include "types.h"

// vtable slot 2 (byte offset 8) - see [[reference_fsa_virtual_dispatch_codegen_trick]].
struct DtorSlot2 {
	virtual void destroy(s32 freeFlag);
};

extern "C" void dtor_80084580(void* this_);
extern void* lbl_804B0F10[];

static inline void DispatchSlot2(char* slot) {
	DtorSlot2* obj = *(DtorSlot2**)slot;
	if (obj != 0) {
		obj->destroy(1);
	}
	*(void**)slot = 0;
}

// fn_803FC904 - actor@lbl_804B0F10: destructor (0x2C0). Same overall
// shape as the sibling fn_803EDF94, different field offsets and single
// order: 5 singles (0x8/0x4/0xc/0x10/0x14), a loop of 4 iterations
// walking FOUR parallel arrays together (0x18-0x24, 0x38-0x44,
// 0x28-0x34, 0x48-0x54), a single (0x60), a 4-element array
// (0x64-0x70, standard vtable-slot-2 dispatch here), 2 more singles
// (0x58/0x5c), and finally a 4-element array (0x78-0x84) using the
// "owned object's own sub-vtable pointer at ITS offset 0x8, method at
// that sub-vtable's offset 0x30" manual dispatch shape (see
// fn_803EDF94 for why this isn't a C++ `virtual` member).
//
// NOTE: this function's own logic is byte-exact. The only residual is
// the same (this_, how) saved-register swap documented in
// fn_803CFFBC.cpp (a confirmed param-register-pairing wall instance).
// Patched post-compile - see config/G4SE01/patches/fn_803FC904.json.
extern "C" void* fn_803FC904(void* this_, s16 how) {
	if (this_ != 0) {
		*(void**)this_ = lbl_804B0F10;
		char* p = (char*)this_;

		DispatchSlot2(p + 0x8);
		DispatchSlot2(p + 0x4);
		DispatchSlot2(p + 0xc);
		DispatchSlot2(p + 0x10);
		DispatchSlot2(p + 0x14);

		for (s32 i = 0; i < 4; i++) {
			DispatchSlot2(p + 0x18 + i * 4);
			DispatchSlot2(p + 0x38 + i * 4);
			DispatchSlot2(p + 0x28 + i * 4);
			DispatchSlot2(p + 0x48 + i * 4);
		}

		DispatchSlot2(p + 0x60);

		for (s32 j = 0; j < 4; j++) {
			DispatchSlot2(p + 0x64 + j * 4);
		}

		DispatchSlot2(p + 0x58);
		DispatchSlot2(p + 0x5c);

		for (s32 k = 0; k < 4; k++) {
			char* slot = p + 0x78 + k * 4;
			void* obj = *(void**)slot;
			if (obj != 0) {
				void** vt2 = *(void***)((char*)obj + 0x8);
				((void (*)(void*, s32))vt2[12])(obj, 1);
			}
			*(void**)slot = 0;
		}

		if (how > 0) {
			dtor_80084580(this_);
		}
	}
	return this_;
}
