#include "types.h"

// vtable slot 2 (byte offset 8) - see [[reference_fsa_virtual_dispatch_codegen_trick]].
struct DtorSlot2 {
	virtual void destroy(s32 freeFlag);
};

// manager sub-object with 2 virtual slots (dummy v0 at offset 8, real
// slot1 at offset 0xc) - same shape as fn_803A87A8's SlotB.
struct SlotB {
	virtual void v0();
	virtual void slot1();
};

extern "C" void fn_80083A68(void* p);
extern "C" void fn_80427D94(void* handle);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804B0688[];
extern u8 lbl_80529DEC[];
extern s32 lbl_8053ADD0;

static inline void DispatchSlot2(char* slot) {
	DtorSlot2* obj = *(DtorSlot2**)slot;
	if (obj != 0) {
		obj->destroy(1);
	}
	*(void**)slot = 0;
}

// fn_803DFC6C - actor@lbl_804B0688: destructor (0x2D4). If this->0xa0
// == 2 (a special "attached handle" state), force-releases the handle
// at this->0x64 via fn_80427D94 and resets the state byte. Then tears
// down the standard owned-sub-object family: singles at 0x60/0x64/0x4,
// a single+7-element-array pair (0x8 then 0x14-0x2c), 2 more
// single+2-element-array pairs (0x30 then 0x34-0x38, 0x40 then
// 0x44-0x48), a bare 2-element array (0x50-0x54, no preceding single),
// 2 more singles (0x58/0x10), then an unconditional call through a
// manager sub-object's real virtual slot (lbl_80529DEC->0x2c, slot1())
// before the standard "> 0 means also deallocate" conditional chain to
// dtor_80084580.
//
// NOTE: byte-exact except the (this_, how) saved-register swap
// documented in fn_803CFFBC.cpp (a confirmed param-register-pairing
// wall instance). Patched post-compile - see
// config/G4SE01/patches/fn_803DFC6C.json.
extern "C" void* fn_803DFC6C(void* this_, s16 how) {
	if (this_ != 0) {
		*(void**)this_ = lbl_804B0688;
		void* mgr = *(void**)(lbl_80529DEC + 0x8);
		fn_80083A68(mgr);

		char* t = (char*)this_;

		if (*(u8*)(t + 0xa0) == 2) {
			fn_80427D94(*(void**)(t + 0x64));
			*(u8*)(t + 0xa0) = 0;
		}

		DispatchSlot2(t + 0x60);
		DispatchSlot2(t + 0x64);
		DispatchSlot2(t + 0x4);

		DispatchSlot2(t + 0x8);
		for (s32 i = 0; i < 7; i++) {
			DispatchSlot2(t + 0x14 + i * 4);
		}

		DispatchSlot2(t + 0x30);
		for (s32 j = 0; j < 2; j++) {
			DispatchSlot2(t + 0x34 + j * 4);
		}

		DispatchSlot2(t + 0x40);
		for (s32 k = 0; k < 2; k++) {
			DispatchSlot2(t + 0x44 + k * 4);
		}

		for (s32 m = 0; m < 2; m++) {
			DispatchSlot2(t + 0x50 + m * 4);
		}

		DispatchSlot2(t + 0x58);
		DispatchSlot2(t + 0x10);

		void* obj2 = *(void**)(lbl_80529DEC + 0x2c);
		((SlotB*)obj2)->slot1();

		lbl_8053ADD0 = 0;
		if (how > 0) {
			dtor_80084580(this_);
		}
	}
	return this_;
}
