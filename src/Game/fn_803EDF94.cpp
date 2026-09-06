#include "types.h"

// vtable slot 2 (byte offset 8) - see [[reference_fsa_virtual_dispatch_codegen_trick]].
struct DtorSlot2 {
	virtual void destroy(s32 freeFlag);
};

extern "C" void dtor_80084580(void* this_);
extern void* lbl_804B0B00[];

static inline void DispatchSlot2(char* slot) {
	DtorSlot2* obj = *(DtorSlot2**)slot;
	if (obj != 0) {
		obj->destroy(1);
	}
	*(void**)slot = 0;
}

// fn_803EDF94 - actor@lbl_804B0B00: destructor (0x2C0). Tears down 5
// singles (0x4/0x8/0xc/0x10/0x14, standard vtable-slot-2 dispatch),
// then a loop of 4 iterations walking FOUR parallel arrays together
// (0x18-0x24, 0x28-0x34, 0x38-0x44, 0x48-0x54, in that literal order),
// then a single (0x64), a 4-element array (0x68-0x74), 2 more singles
// (0x5c/0x60), and finally a 4-element array (0x7c-0x88) whose slots
// use a DIFFERENT dispatch shape - each owned object's OWN "sub-vtable"
// pointer lives at ITS OWN offset 0x8 (not 0x0), with the real method
// at that sub-vtable's offset 0x30 - a plain data-field indirection,
// not a `this`-adjusting virtual call, so it's written as a manual
// function-pointer dispatch rather than a C++ `virtual` member.
//
// NOTE: this function's own logic is byte-exact. The only residual is
// the same (this_, how) saved-register swap documented in
// fn_803CFFBC.cpp (a confirmed param-register-pairing wall instance).
// Patched post-compile - see config/G4SE01/patches/fn_803EDF94.json.
extern "C" void* fn_803EDF94(void* this_, s16 how) {
	if (this_ != 0) {
		*(void**)this_ = lbl_804B0B00;
		char* p = (char*)this_;

		DispatchSlot2(p + 0x4);
		DispatchSlot2(p + 0x8);
		DispatchSlot2(p + 0xc);
		DispatchSlot2(p + 0x10);
		DispatchSlot2(p + 0x14);

		for (s32 i = 0; i < 4; i++) {
			DispatchSlot2(p + 0x18 + i * 4);
			DispatchSlot2(p + 0x38 + i * 4);
			DispatchSlot2(p + 0x28 + i * 4);
			DispatchSlot2(p + 0x48 + i * 4);
		}

		DispatchSlot2(p + 0x64);

		for (s32 j = 0; j < 4; j++) {
			DispatchSlot2(p + 0x68 + j * 4);
		}

		DispatchSlot2(p + 0x5c);
		DispatchSlot2(p + 0x60);

		for (s32 k = 0; k < 4; k++) {
			char* slot = p + 0x7c + k * 4;
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
