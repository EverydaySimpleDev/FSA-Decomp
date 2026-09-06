#include "types.h"

extern "C" u8 fn_8023077C(void);
extern "C" u8 Player_GetCapabilityFlagByIndex(s32 idx);
extern "C" void* fn_8023E724(s32 idx);
extern void* lbl_8053AB10;
extern "C" void fn_8030C210(void* mgr, void* posPtr);
extern "C" void fn_80230498(s32 idx, void* posPtr, s32 a, s32 b, s32 c, s32 d, s32 e);
extern "C" void fn_80230FD0(s32 idx, s32 code);
extern "C" void fn_80230534(void);

// fn_80104EB0(this): LOSW's results-fanfare method, called once 4-flag
// consensus is reached. If bit 25 of this->0x90 is set, returns true
// immediately (skip-celebration flag). Otherwise a multi-stage
// results/celebration state machine on this->0x24f:
//  - 0: calls fn_8023077C; on true, advances to state 1 with a
//    30-frame (0x1e) countdown in this->0x248.
//  - 1: per-player (4 slots) draws a UI message via fn_8023E724+
//    fn_8030C210 for confirmed players. At countdown 0, starts a
//    SECOND per-player sub-sequence (this->0x24a incremented up to
//    13/0xd): for confirmed players, plays a sound (fn_80230498) and
//    at sub-count==1 calls fn_80230FD0 (arg 0x10001). Resets countdown
//    to 2 each tick; once this->0x24a reaches 13, advances to state 2
//    with a 50-frame (0x32) countdown.
//  - 2: decrements the countdown; at 0, resets this->0x24f/0x24a,
//    calls fn_80230534, and returns true (celebration complete).
//  - 3+: unreachable in practice (state only ever takes 0/1/2), falls
//    straight to the default `return 0` without running any logic.
//
// NOTE: this function's logic is byte-exact and its size is only 4
// bytes short. Retail's state2 body has a provably dead `li 3,0`
// (immediately overwritten by `li 3,1` a few instructions later, r3
// never read in between) that MWCC's optimizer correctly eliminates
// but retail's own build kept - see
// reference_fsa_param_register_pairing_wall_investigation.md. Patched
// post-compile (an inserted instruction, not a substitution) - see
// config/G4SE01/patches/fn_80104EB0.json.
extern "C" u8 fn_80104EB0(void* this_) {
	char* p = (char*)this_;
	if ((*(u32*)(p + 0x90) & 0x40) != 0) {
		return 1;
	}
	s32 state = *(u8*)(p + 0x24f);
	if (state == 1) {
		goto state1;
	}
	if (state >= 1) {
		goto secondCheck;
	}
	if (state >= 0) {
		goto state0;
	}
	goto default0;

secondCheck:
	if (state >= 3) {
		goto default0;
	}
	goto state2;

state0:
	if (!fn_8023077C()) {
		goto default0;
	}
	*(u8*)(p + 0x24f) = *(u8*)(p + 0x24f) + 1;
	*(u16*)(p + 0x248) = 0x1e;
	goto default0;

state1:
	for (s32 i = 0; i < 4; i++) {
		if (Player_GetCapabilityFlagByIndex(i)) {
			void* pos = fn_8023E724(i);
			fn_8030C210(*(void**)((char*)lbl_8053AB10 + 0x24), pos);
		}
	}
	*(u16*)(p + 0x248) = *(u16*)(p + 0x248) - 1;
	if (*(u16*)(p + 0x248) != 0) {
		goto default0;
	}
	*(u16*)(p + 0x24a) = *(u16*)(p + 0x24a) + 1;
	for (s32 i = 0; i < 4; i++) {
		if (Player_GetCapabilityFlagByIndex(i)) {
			void* pos = fn_8023E724(i);
			fn_80230498(i, pos, *(u16*)(p + 0x24a) + 0xdb, 0xff, -0x80, -0x80, 1);
			if (*(u16*)(p + 0x24a) == 1) {
				fn_80230FD0(i, 0x10001);
			}
		}
	}
	*(u16*)(p + 0x248) = 2;
	if (*(u16*)(p + 0x24a) != 0xd) {
		goto default0;
	}
	*(u8*)(p + 0x24f) = *(u8*)(p + 0x24f) + 1;
	*(u16*)(p + 0x248) = 0x32;
	goto default0;

state2:
	*(u16*)(p + 0x248) = *(u16*)(p + 0x248) - 1;
	if (*(u16*)(p + 0x248) != 0) {
		goto default0;
	}
	*(u8*)(p + 0x24f) = 0;
	*(u16*)(p + 0x24a) = 0;
	fn_80230534();
	return 1;

default0:
	return 0;
}
