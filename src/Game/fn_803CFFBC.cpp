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
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AFF60[];
extern u8 lbl_80529DEC[];
extern s32 lbl_8053ADB0;

// fn_803CFFBC - destructor (0x2A8). Tears down a large family of owned
// sub-object slots: 2 singles (0x4/0x8, never cleared - just dispatched),
// then 5 more singles (0x10/0x14/0x18/0x1c/0x20, each cleared after
// dispatch), a 4-element array (0x24-0x30), a single (0x34), a
// 3-element array (0x38-0x40), 2 more singles (0x50/0x54), then an
// unconditional call through a manager sub-object's real virtual slot
// (lbl_80529DEC->0x30, slot1()). Finishes with the standard
// "> 0 means also deallocate" conditional chain to dtor_80084580.
//
// NOTE: this function's own logic is byte-exact. The only residual is
// that MWCC swaps the (this_, how) saved-register assignment vs retail
// (this_ should land in r30/how in r31, matching every other 2-param
// dtor of this shape, but the extra register pressure from this
// function's many owned-slot locals flips it to this_=r31/how=r30) -
// a confirmed instance of the param-register-pairing wall (see
// reference_fsa_param_register_pairing_wall_investigation.md). Patched
// post-compile - see config/G4SE01/patches/fn_803CFFBC.json.
extern "C" void* fn_803CFFBC(void* this_, s16 how) {
	if (this_ != 0) {
		*(void**)this_ = lbl_804AFF60;
		void* mgr = *(void**)(lbl_80529DEC + 0x8);
		fn_80083A68(mgr);

		char* p = (char*)this_;

		DtorSlot2* s0 = *(DtorSlot2**)(p + 0x4);
		if (s0 != 0) {
			s0->destroy(1);
		}

		DtorSlot2* s1 = *(DtorSlot2**)(p + 0x8);
		if (s1 != 0) {
			s1->destroy(1);
		}

		DtorSlot2* s2 = *(DtorSlot2**)(p + 0x10);
		if (s2 != 0) {
			s2->destroy(1);
		}
		*(void**)(p + 0x10) = 0;

		DtorSlot2* s3 = *(DtorSlot2**)(p + 0x14);
		if (s3 != 0) {
			s3->destroy(1);
		}
		*(void**)(p + 0x14) = 0;

		DtorSlot2* s4 = *(DtorSlot2**)(p + 0x18);
		if (s4 != 0) {
			s4->destroy(1);
		}
		*(void**)(p + 0x18) = 0;

		DtorSlot2* s5 = *(DtorSlot2**)(p + 0x1c);
		if (s5 != 0) {
			s5->destroy(1);
		}
		*(void**)(p + 0x1c) = 0;

		DtorSlot2* s6 = *(DtorSlot2**)(p + 0x20);
		if (s6 != 0) {
			s6->destroy(1);
		}
		*(void**)(p + 0x20) = 0;

		for (s32 i = 0; i < 4; i++) {
			char* slot = p + 0x24 + i * 4;
			DtorSlot2* obj = *(DtorSlot2**)slot;
			if (obj != 0) {
				obj->destroy(1);
			}
			*(void**)slot = 0;
		}

		DtorSlot2* s7 = *(DtorSlot2**)(p + 0x34);
		if (s7 != 0) {
			s7->destroy(1);
		}
		*(void**)(p + 0x34) = 0;

		for (s32 i = 0; i < 3; i++) {
			char* slotA = p + 0x38 + i * 4;
			DtorSlot2* objA = *(DtorSlot2**)slotA;
			if (objA != 0) {
				objA->destroy(1);
			}
			*(void**)slotA = 0;

			char* slotB = p + 0x44 + i * 4;
			DtorSlot2* objB = *(DtorSlot2**)slotB;
			if (objB != 0) {
				objB->destroy(1);
			}
			*(void**)slotB = 0;
		}

		DtorSlot2* s8 = *(DtorSlot2**)(p + 0x50);
		if (s8 != 0) {
			s8->destroy(1);
		}
		*(void**)(p + 0x50) = 0;

		DtorSlot2* s9 = *(DtorSlot2**)(p + 0x54);
		if (s9 != 0) {
			s9->destroy(1);
		}
		*(void**)(p + 0x54) = 0;

		void* obj2 = *(void**)(lbl_80529DEC + 0x30);
		((SlotB*)obj2)->slot1();

		lbl_8053ADB0 = 0;
		if (how > 0) {
			dtor_80084580(this_);
		}
	}
	return this_;
}
