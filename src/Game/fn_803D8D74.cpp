#include "types.h"

// vtable slot 2 (byte offset 8) - see [[reference_fsa_virtual_dispatch_codegen_trick]].
struct DtorSlot2 {
	virtual void destroy(s32 freeFlag);
};

extern "C" void fn_80083A68(void* p);
extern "C" void* fn_8013C824(void);
extern "C" void fn_800EC240(void* a, void* b);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804B03D8[];
extern u8 lbl_80529DEC[];
extern s32 lbl_8053ADC0;

// fn_803D8D74 - actor@lbl_804B03D8: destructor (0x2A8). If this->0x4c
// holds a live sound/effect handle, force-marks it kept (sets bit 0 of
// handle->0xf4, handle->0x24=1) and clears the slot. Then walks 2
// adjoining handle slots (this->0x50/0x54) via the confirmed
// fn_8013C824()->0xc + fn_800EC240 release pair (same shape as
// Tlwp_dtor_801B609C.cpp). Finishes with the standard owned-sub-object
// teardown family: singles at 0x4/0x8/0x1c/0x20, a 2-element array
// (0x24-0x28), a single (0x2c), a 4-element array (0x34-0x40) reusing
// the SAME base as the single at 0x30 (loop starts right after it), a
// single (0x44), 2 more singles (0x10/0x18), then the standard
// "> 0 means also deallocate" conditional chain to dtor_80084580.
//
// NOTE: this function's own logic is byte-exact. The only residual is
// the same (this_, how) saved-register swap documented in
// fn_803CFFBC.cpp (a confirmed param-register-pairing wall instance).
// Patched post-compile - see config/G4SE01/patches/fn_803D8D74.json.
extern "C" void* fn_803D8D74(void* this_, s16 how) {
	if (this_ != 0) {
		*(void**)this_ = lbl_804B03D8;
		void* mgr = *(void**)(lbl_80529DEC + 0x8);
		fn_80083A68(mgr);

		char* t = (char*)this_;

		void* handle = *(void**)(t + 0x4c);
		if (handle != 0) {
			*(u32*)((char*)handle + 0xf4) |= 1;
			*(s32*)((char*)handle + 0x24) = 1;
			*(void**)(t + 0x4c) = 0;
		}

		char* p = t + 0x4;
		s32 i = 1;
		do {
			if (*(void**)(p + 0x4c)) {
				void* base = fn_8013C824();
				void* a = *(void**)((char*)base + 0xc);
				fn_800EC240(a, *(void**)(p + 0x4c));
				*(void**)(p + 0x4c) = 0;
			}
			i++;
			p += 4;
		} while (i < 3);

		DtorSlot2* s0 = *(DtorSlot2**)(t + 0x4);
		if (s0 != 0) {
			s0->destroy(1);
		}
		*(void**)(t + 0x4) = 0;

		DtorSlot2* s1 = *(DtorSlot2**)(t + 0x8);
		if (s1 != 0) {
			s1->destroy(1);
		}
		*(void**)(t + 0x8) = 0;

		DtorSlot2* s2 = *(DtorSlot2**)(t + 0x1c);
		if (s2 != 0) {
			s2->destroy(1);
		}
		*(void**)(t + 0x1c) = 0;

		DtorSlot2* s3 = *(DtorSlot2**)(t + 0x20);
		if (s3 != 0) {
			s3->destroy(1);
		}
		*(void**)(t + 0x20) = 0;

		for (s32 j = 0; j < 2; j++) {
			char* slot = t + 0x24 + j * 4;
			DtorSlot2* obj = *(DtorSlot2**)slot;
			if (obj != 0) {
				obj->destroy(1);
			}
			*(void**)slot = 0;
		}

		DtorSlot2* s4 = *(DtorSlot2**)(t + 0x2c);
		if (s4 != 0) {
			s4->destroy(1);
		}
		*(void**)(t + 0x2c) = 0;

		DtorSlot2* s5 = *(DtorSlot2**)(t + 0x30);
		if (s5 != 0) {
			s5->destroy(1);
		}
		*(void**)(t + 0x30) = 0;

		for (s32 j = 0; j < 4; j++) {
			char* slot = t + 0x34 + j * 4;
			DtorSlot2* obj = *(DtorSlot2**)slot;
			if (obj != 0) {
				obj->destroy(1);
			}
			*(void**)slot = 0;
		}

		DtorSlot2* s6 = *(DtorSlot2**)(t + 0x44);
		if (s6 != 0) {
			s6->destroy(1);
		}
		*(void**)(t + 0x44) = 0;

		DtorSlot2* s7 = *(DtorSlot2**)(t + 0x10);
		if (s7 != 0) {
			s7->destroy(1);
		}
		*(void**)(t + 0x10) = 0;

		DtorSlot2* s8 = *(DtorSlot2**)(t + 0x18);
		if (s8 != 0) {
			s8->destroy(1);
		}
		*(void**)(t + 0x18) = 0;

		lbl_8053ADC0 = 0;
		if (how > 0) {
			dtor_80084580(this_);
		}
	}
	return this_;
}
