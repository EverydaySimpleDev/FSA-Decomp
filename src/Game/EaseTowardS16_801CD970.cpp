#include "types.h"

// EaseTowardS16(value, target, step) - a "ease toward value, one step at
// a time" primitive (16-bit integer variant; a float sibling
// fn_801CD9F0 remains raw asm, split out separately - see
// extab_801cd9f0.s). Moves *value toward target by up to |step| per
// call, snapping exactly onto target if that would overshoot. Returns
// 0 once *value == target, 1 while still approaching - a "keep
// calling me until I return 0" easing primitive.
//
// Two fixes over the initial literal transliteration: (1) update
// `diff` IN PLACE (`diff -= step;`) rather than introducing a second
// `diff2` local - retail reuses the same register for the updated
// value, and a separate local gets its own fresh register instead.
// (2) the final `(*value != target) ? 1 : 0` needs the established
// "default value + if-override" phrasing, not a bare comparison,
// to avoid MWCC's branchless synthesis for a lone `!=` test.
extern "C" s32 EaseTowardS16(s16* value, s16 target, s16 step) {
	s16 diff = target - *value;
	if (step < 0) {
		step = -step;
	}
	if (diff > 0) {
		diff -= step;
		if (diff > 0) {
			*value = target - diff;
		} else {
			*value = target;
		}
	} else {
		diff += step;
		if (diff < 0) {
			*value = target - diff;
		} else {
			*value = target;
		}
	}
	s32 result = 1;
	if (*value == target) {
		result = 0;
	}
	return result;
}
