#include "types.h"

extern "C" void fn_801F0E34(void* target, u32 effectId, s32 flag);
extern "C" void fn_801CB538(s32 fourCC, void* posPtr, s32 arg3, s32 arg4);
extern "C" void* GetRoomConfigRecord(void);
extern "C" u8 fn_801F2A10(void* this_, s32 p2, s32 p3, s32 p4, s32 p5);
extern "C" u8 fn_801F2B7C(void* this_, s32 p2, s32 ownerId, s32 p4);
extern "C" void fn_801CE4BC(void* this_);

// fn_801D2E70(this) - per-frame update() for "ClassX" (see
// project_fsa_multiple_inheritance_pattern.md). While the byte countdown
// at this->0x2a8 (a grace period) is nonzero, decrements it; once it
// hits 0 for the first time, plays a sound cue (effect 0x400d1) and clears this->0x11c
// (the "active" flag). Once the grace period has already expired,
// fetches a bounding-box config record (GetRoomConfigRecord()->0xcc or
// ->0xdc depending on this->0x4<8) and tests this->0xc/0x10 (position)
// against it: outside -> clear the active flag; inside -> try
// fn_801F2A10, and on failure fn_801F2B7C, adjusting state accordingly.
// Tail: if still active, integrates position by velocity
// (this->0x3c/0x40/0x44), then unconditionally calls fn_801CE4BC(this).
//
// NOTE: this function's logic is byte-exact and its SIZE matches
// exactly. The ONLY residual is the scheduler-internal float
// register-role wall: retail loads posX into f2 and the first bounds
// float into f0, MWCC always assigns f3/f2 instead (see
// reference_fsa_param_register_pairing_wall_investigation.md and the
// fn_80204DAC investigation for the broader wall class this belongs
// to). Patched post-compile - see config/G4SE01/patches/fn_801D2E70.json.
extern "C" void fn_801D2E70(register void* this_) {
	char* p = (char*)this_;
	if (*(u8*)(p + 0x2a8) != 0) {
		*(u8*)(p + 0x2a8) = *(u8*)(p + 0x2a8) - 1;
		if (*(u8*)(p + 0x2a8) != 0) {
			goto tail;
		}
		fn_801F0E34(this_, 0x400d1, 0);
		fn_801CB538(*(s32*)(p + 0x4), p + 0xc, 0, 0);
		*(u8*)(p + 0x11c) = 0;
	} else {
		s32 type = *(s32*)(p + 0x4);
		char* cfg = (char*)GetRoomConfigRecord();
		char* bounds = (type < 8) ? (cfg + 0xcc) : (cfg + 0xdc);
		u8 flag = 0;
		if (*(f32*)(p + 0xc) >= *(f32*)(bounds + 0) &&
		    *(f32*)(p + 0x10) >= *(f32*)(bounds + 4) &&
		    *(f32*)(p + 0xc) < *(f32*)(bounds + 8) &&
		    *(f32*)(p + 0x10) < *(f32*)(bounds + 0xc)) {
			flag = 1;
		}
		if (!flag) {
			*(u8*)(p + 0x11c) = 0;
		} else {
			if (fn_801F2A10(this_, -1, *(s32*)(p + 0x98), 0, 0)) {
				*(u8*)(p + 0x2a8) = 2;
			} else {
				if (fn_801F2B7C(this_, *(s32*)(p + 0x114), -1, 1)) {
					*(u8*)(p + 0x11c) = 0;
				}
			}
		}
	}
tail:
	if (*(u8*)(p + 0x11c) != 0) {
		// paired-single position += velocity (matching retail's
		// psq_l/ps_add/psq_st exactly) - MWCC never auto-vectorizes
		// separate scalar float += statements into ps ops.
		asm {
			psq_l f1, 0xc(this_), 0, 0
			psq_l f0, 0x3c(this_), 0, 0
			ps_add f0, f1, f0
			psq_st f0, 0xc(this_), 0, 0
			psq_l f1, 0x14(this_), 1, 0
			psq_l f0, 0x44(this_), 1, 0
			ps_add f0, f1, f0
			psq_st f0, 0x14(this_), 1, 0
		}
	}
	fn_801CE4BC(this_);
}
