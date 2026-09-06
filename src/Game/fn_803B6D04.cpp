#include "types.h"

// vtable slot 2 (byte offset 8) - see [[reference_fsa_virtual_dispatch_codegen_trick]].
struct DtorSlot2 {
	virtual void destroy(s32 freeFlag);
};

extern "C" void* fn_8013C824(void);
extern "C" void fn_800EC240(void* a, void* b);
extern "C" void fn_80083A68(void* p);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF9A0[];
extern u8 lbl_80529DEC[];
extern s32 lbl_8053ADA0;

static inline void DispatchSlot2(char* slot) {
	DtorSlot2* obj = *(DtorSlot2**)slot;
	if (obj != 0) {
		obj->destroy(1);
	}
	*(void**)slot = 0;
}

static inline void ForceMarkKept(char* slot) {
	void* handle = *(void**)slot;
	if (handle != 0) {
		*(u32*)((char*)handle + 0xf4) |= 1;
		*(s32*)((char*)handle + 0x24) = 1;
		*(void**)slot = 0;
	}
}

// fn_803B6D04 - destructor (0x2D4). First walks a 30-element handle
// array (this->0x1c8, 4-byte stride) via the confirmed fn_8013C824()->
// 0xc + fn_800EC240 release pair (same shape as Tlwp_dtor_801B609C.cpp
// and fn_803D8D74). Then, over 4 iterations of a 4-byte-strided base,
// force-marks FOUR parallel handle slots per iteration as "kept" (sets
// bit 0 of handle->0xf4, handle->0x24=1) - offsets 0x1a8/0x188/0x198/
// 0x1b8 (+ the iteration's own 4-byte offset). Only THEN installs the
// manager-notify call (lbl_80529DEC->0x8 + fn_80083A68) - unlike most
// sibling dtors, that call sits AFTER these first 2 passes, not right
// after the vtable install. Finishes with the standard owned-sub-object
// teardown family: a 3-element two-parallel-array loop (0x4-0xc,
// 0x10-0x18), a single (0x20), a single+3-element-array pair (0x1c
// then 0x24-0x2c), a single+4-element-array pair (0x170 then
// 0x174-0x180, using the "owned object's own sub-vtable pointer at ITS
// offset 0x8, method at that sub-vtable's offset 0x30" manual dispatch
// shape from fn_803EDF94), and a final single (0x184, same manual
// dispatch shape) before the "> 0 means also deallocate" conditional
// chain to dtor_80084580.
//
// NOTE: byte-exact except the (this_, how) saved-register swap
// documented in fn_803CFFBC.cpp (a confirmed param-register-pairing
// wall instance, this time cascading through the whole function since
// this_ is referenced so many times). Patched post-compile - see
// config/G4SE01/patches/fn_803B6D04.json.
extern "C" void* fn_803B6D04(void* this_, s16 how) {
	if (this_ != 0) {
		*(void**)this_ = lbl_804AF9A0;
		char* p = (char*)this_;

		for (s32 i = 0; i < 0x1e; i++) {
			if (*(void**)(p + 0x1c8)) {
				void* base = fn_8013C824();
				void* a = *(void**)((char*)base + 0xc);
				fn_800EC240(a, *(void**)(p + 0x1c8));
				*(void**)(p + 0x1c8) = 0;
			}
			p += 4;
		}

		char* q = (char*)this_;
		for (s32 j = 0; j < 4; j++) {
			ForceMarkKept(q + 0x1a8);
			ForceMarkKept(q + 0x188);
			ForceMarkKept(q + 0x198);
			ForceMarkKept(q + 0x1b8);
			q += 4;
		}

		void* mgr = *(void**)(lbl_80529DEC + 0x8);
		fn_80083A68(mgr);

		char* t = (char*)this_;
		for (s32 k = 0; k < 3; k++) {
			DispatchSlot2(t + 0x4 + k * 4);
			DispatchSlot2(t + 0x10 + k * 4);
		}

		DispatchSlot2(t + 0x20);

		DispatchSlot2(t + 0x1c);
		for (s32 m = 0; m < 3; m++) {
			DispatchSlot2(t + 0x24 + m * 4);
		}

		DispatchSlot2(t + 0x170);
		for (s32 n = 0; n < 4; n++) {
			char* slot = t + 0x174 + n * 4;
			void* obj = *(void**)slot;
			if (obj != 0) {
				void** vt2 = *(void***)((char*)obj + 0x8);
				((void (*)(void*, s32))vt2[12])(obj, 1);
			}
			*(void**)slot = 0;
		}

		{
			void* obj = *(void**)(t + 0x184);
			if (obj != 0) {
				void** vt2 = *(void***)((char*)obj + 0x8);
				((void (*)(void*, s32))vt2[12])(obj, 1);
			}
		}

		*(void**)(t + 0x184) = 0;
		lbl_8053ADA0 = 0;
		if (how > 0) {
			dtor_80084580(this_);
		}
	}
	return this_;
}
