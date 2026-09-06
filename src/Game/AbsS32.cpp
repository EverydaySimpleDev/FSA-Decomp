#include "types.h"

// AbsS32 - integer absolute value (classic branchless abs idiom).
extern "C" s32 AbsS32(s32 x) {
	return (x < 0) ? -x : x;
}
