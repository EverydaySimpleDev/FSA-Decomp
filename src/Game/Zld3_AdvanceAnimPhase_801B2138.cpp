#include "types.h"

extern "C" s32 lbl_804A35A0[3];

// Zld3_AdvanceAnimPhase(this, param) - ZLD3 cluster shared private helper (called
// from both update() and setParams). On a phase change (param !=
// this->0x254) resets the sub-state machine, then dispatches on
// this->0x250 through a 5-case switch:
//   case 0: this->0x24c = this->0x98 << 3
//   case 1: this->0x24c = (this->0x98<<3) + this->0x240; this->0x234=5;
//           this->0x240 = (this->0x240+1) & 0x7 (wraparound counter)
//   case 2: this->0x24c = 2
//   case 3: looks up this->0x24c from a 3-entry table (lbl_804A35A0) by
//           this->0x240, sets this->0x234=8 (or 0x28 on the first entry),
//           advances this->0x240, and once past entry 2 resets to
//           this->0x250=4 (falls into case 4 next call)
//   case 4: a nested switch cycles this->0x98 (0->2->1->3->0), then
//           advances this->0x240 until a 2-count threshold resets
//           this->0x259/0x250/0x254 back to the idle state
extern "C" void Zld3_AdvanceAnimPhase(void* thisObj, s32 param) {
	char* p = (char*)thisObj;
	if (*(s32*)(p + 0x254) != param) {
		*(s32*)(p + 0x254) = param;
		*(u8*)(p + 0x259) = 0;
		*(s32*)(p + 0x234) = 0;
		*(s32*)(p + 0x240) = 0;
	}
	if (*(s32*)(p + 0x234) != 0) {
		return;
	}
	switch (*(s32*)(p + 0x250)) {
	case 0:
		*(s32*)(p + 0x24c) = *(s32*)(p + 0x98) << 3;
		return;
	case 1:
		*(s32*)(p + 0x24c) = (*(s32*)(p + 0x98) << 3) + *(s32*)(p + 0x240);
		*(s32*)(p + 0x234) = 5;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) & 0x7;
		return;
	case 2:
		*(s32*)(p + 0x24c) = 2;
		return;
	case 3:
		*(s32*)(p + 0x24c) = lbl_804A35A0[*(s32*)(p + 0x240)];
		*(s32*)(p + 0x234) = 8;
		if (*(s32*)(p + 0x240) == 0) {
			*(s32*)(p + 0x234) = 0x28;
		}
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		if (*(s32*)(p + 0x240) > 2) {
			*(s32*)(p + 0x240) = 0;
			*(s32*)(p + 0x250) = 4;
			*(s32*)(p + 0x254) = *(s32*)(p + 0x250);
		}
		return;
	case 4:
		switch (*(s32*)(p + 0x98)) {
		case 0:
			*(s32*)(p + 0x98) = 2;
			break;
		case 1:
			*(s32*)(p + 0x98) = 3;
			break;
		case 2:
			*(s32*)(p + 0x98) = 1;
			break;
		case 3:
			*(s32*)(p + 0x98) = 0;
			break;
		default:
			break;
		}
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		*(s32*)(p + 0x234) = 5;
		if (*(s32*)(p + 0x240) >= 2) {
			*(s32*)(p + 0x240) = 0;
			*(u8*)(p + 0x259) = 1;
			*(s32*)(p + 0x250) = 0;
			*(s32*)(p + 0x254) = *(s32*)(p + 0x250);
		}
		*(s32*)(p + 0x24c) = *(s32*)(p + 0x98) << 3;
		return;
	default:
		return;
	}
}
