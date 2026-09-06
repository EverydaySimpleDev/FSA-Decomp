#include "types.h"

// fn_801F714C(shortPtr, target, divisor, maxStep) - integer/angle "ease
// toward" helper: delta = (target - *shortPtr) / divisor (word divide,
// sign-extended through 16 bits at each step, matching 16-bit angle
// arithmetic), then clamps that delta to +/-maxStep before adding it
// to *shortPtr.
extern "C" void fn_801F714C(void* shortPtr, s32 target, s32 divisor, s32 maxStep) {
	u16 current = *(u16*)shortPtr;
	s32 divisorMasked = divisor & 0xffff;
	s32 maxStepMasked = maxStep & 0xffff;
	s16 delta = (s16)(target - current);
	s32 rawDiv = delta / divisorMasked;
	s16 clampedDelta = (s16)rawDiv;
	if (clampedDelta > maxStepMasked) {
		*(u16*)shortPtr = current + maxStep;
		return;
	}
	if (clampedDelta < -maxStepMasked) {
		*(u16*)shortPtr = current - maxStep;
		return;
	}
	*(u16*)shortPtr = current + (u16)clampedDelta;
}
