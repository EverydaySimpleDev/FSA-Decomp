#include "types.h"

// Fused dtk split unit (0x8022B130-0x8022B278) - 13 tiny functions dtk
// cannot cherry-pick individually. A "5 global session-wide boolean
// flags" get/set family: every function loads the CONFIRMED 4-player
// array HEAD pointer (lbl_8053AC90) directly - NOT indexed by player -
// and reads/writes one of 5 byte fields on the manager struct itself
// (+0x6c/0x6d/0x6e/0x6f/0x70), each with a getter (returns 0 if the
// array isn't initialized yet) and true/false setters (no-op if
// uninitialized). IsPoseOverrideEligible (the getter for +0x6c) is CONFIRMED as
// the "pose-override eligibility" check called by fn_802808E8 and
// fn_8024F0E8's pose-substitution logic.
extern void* lbl_8053AC90[2];

extern "C" {

void ClearSessionFlag_0x70(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x70) = 0;
}

void SetSessionFlag_0x70(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x70) = 1;
}

u8 GetSessionFlag_0x6f(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return 0;
	return *(u8*)((char*)mgr + 0x6f);
}

void ClearSessionFlag_0x6f(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x6f) = 0;
}

void SetSessionFlag_0x6f(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x6f) = 1;
}

u8 GetSessionFlag_0x6e(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return 0;
	return *(u8*)((char*)mgr + 0x6e);
}

void ClearSessionFlag_0x6e(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x6e) = 0;
}

void SetSessionFlag_0x6e(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x6e) = 1;
}

u8 GetSessionFlag_0x6d(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return 0;
	return *(u8*)((char*)mgr + 0x6d);
}

void ClearSessionFlag_0x6d(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x6d) = 0;
}

void SetSessionFlag_0x6d(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x6d) = 1;
}

u8 IsPoseOverrideEligible(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return 0;
	return *(u8*)((char*)mgr + 0x6c);
}

void ClearPoseOverrideEligible(void) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return;
	*(u8*)((char*)mgr + 0x6c) = 0;
}

}
