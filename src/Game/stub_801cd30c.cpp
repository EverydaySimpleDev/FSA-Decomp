#include "types.h"

// fn_801CD30C(val) / fn_801CD354(val) - small value classifiers,
// remapping a 0-3 input code to a different 0-3 output code (any other
// input, including negatives, defaults to 0). Both are the "default
// result set unconditionally, switch overrides on a match" idiom.
extern "C" s32 fn_801CD30C(s32 val) {
	s32 result = 0;
	switch (val) {
	case 0:
		result = 3;
		break;
	case 1:
		result = 2;
		break;
	case 3:
		result = 1;
		break;
	default:
		break;
	}
	return result;
}

extern "C" s32 fn_801CD354(s32 val) {
	s32 result = 0;
	switch (val) {
	case 0:
		result = 1;
		break;
	case 2:
		result = 3;
		break;
	case 3:
		result = 2;
		break;
	default:
		break;
	}
	return result;
}
