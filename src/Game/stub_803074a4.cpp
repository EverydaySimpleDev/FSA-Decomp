#include "types.h"

// fn_803074A4(a, b) - a range-dispatch classifier: returns a small
// integer code (-1, 0, 1, 2, 3, or 4) based on which named range `b`
// falls in, with the applicable range set selected by `a`.
extern "C" s32 fn_803074A4(s32 a, s32 b) {
	if (a == 2) {
		if (b >= 0x39 && b < 0x45) {
			return 4;
		}
		if (b >= 0x0 && b < 0x25) {
			return -1;
		}
		if (b >= 0x200) {
			return 1;
		}
		return 0;
	} else {
		if (a == 0 || a == 1) {
			if ((b >= 0xc0 && b < 0xd3) || (b >= 0x155 && b < 0x158)) {
				return 3;
			}
			if (b >= 0x37 && b < 0x41) {
				return 2;
			}
			if (b >= 0x3cd && b < 0x3ce) {
				return -1;
			}
			if (b >= 0x2a3 && b < 0x2aa) {
				return 4;
			}
			if (b >= 0x34c && b < 0x37c) {
				return 4;
			}
			if (a == 1) {
				return 1;
			}
			return 0;
		} else {
			return 0;
		}
	}
}
