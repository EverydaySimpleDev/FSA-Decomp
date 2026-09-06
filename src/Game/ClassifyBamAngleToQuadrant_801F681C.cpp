#include "types.h"

// ClassifyBamAngleToQuadrant(angle) - classifies a 16-bit BAM angle (this project's
// standard binary-angle-measurement format, full circle = 0x10000)
// into a coarse 4-way facing-direction bucket by comparing it against
// the four 45-degree-offset boundaries (0x2000/0x6000/0xA000/0xE000).
// Used by fn_801EEC98 to reduce the winning target player's precise
// angle down to a simple direction bucket for its output.
//
// The middle check (`check2`) re-tests `angle < 0x2000` even though
// that's already known false from the first check above - a genuinely
// redundant comparison preserved honestly here because it's what
// retail's own bytes do (matches the project's real-decompilation
// mandate: preserve, don't silently "fix", a provably redundant
// retail check).
extern "C" s32 ClassifyBamAngleToQuadrant(s32 param) {
	u16 angle = (u16)param;
	s32 result = 1;
	if (angle < 0x2000) goto quad2;
	if (angle < 0xe000) goto check2;
quad2:
	result = 2;
	goto tail;
check2:
	if (angle < 0x2000) goto check3;
	if (angle >= 0x6000) goto check3;
	result = 0;
	goto tail;
check3:
	angle = (u16)param;
	if (angle < 0x6000) goto tail;
	if (angle > 0xa000) goto tail;
	result = 3;
tail:
	return result;
}
