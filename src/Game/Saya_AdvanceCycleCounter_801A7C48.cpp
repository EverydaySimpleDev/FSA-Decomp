#include "types.h"

// SAYA cluster, part 17/18. Private cycle-counter helper called from
// fn_801A68DC - advances a wraparound counter (this->0x240) and, on
// specific values, records a state snapshot (this->0x250/0x254/0x234).
//
// A 6-way switch on this->0x250, where case 0 and case 5 share one
// block (the switch-shared-tail idiom, see project_fsa_phase4_kickoff.md).
// The shared block ends with a genuinely redundant re-check
// (`if (this->0x250 != 5) return; if (this->0x250 == 4) return;` -
// the second check can never be true given the first, since nothing
// modifies this->0x250 in between) that retail's own compiled output
// has too - kept honestly as-written rather than simplified away,
// since simplifying it would change the logic even though it happens
// to be unreachable in this specific call context; most likely a
// remnant of a shared helper checked against multiple possible
// "settled" states from other call sites. All `this->0x240` reads are
// written as separate fresh dereferences (never cached across
// statements) matching retail's own repeated-reload style, per this
// project's established this-relative-repeated-read rule. Landed
// clean on the first attempt.
extern "C" void Saya_AdvanceCycleCounter(void* thisObj) {
	char* p = (char*)thisObj;
	if (*(s32*)(p + 0x234) != 0) return;
	s32 state = *(s32*)(p + 0x250);
	switch (state) {
	case 0:
	case 5:
		*(s32*)(p + 0x254) = *(s32*)(p + 0x240) + 2;
		*(s32*)(p + 0x234) = 8;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) & 7;
		if (*(s32*)(p + 0x240) < 4) return;
		if (*(s32*)(p + 0x250) != 5) return;
		if (*(s32*)(p + 0x250) == 4) return;
		*(s32*)(p + 0x250) = 4;
		*(s32*)(p + 0x234) = 0;
		*(s32*)(p + 0x240) = 0;
		return;
	case 1:
		*(s32*)(p + 0x254) = *(s32*)(p + 0x240) + 0xc;
		*(s32*)(p + 0x234) = 8;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) & 3;
		return;
	case 2:
		*(s32*)(p + 0x254) = 0xd - *(s32*)(p + 0x240);
		*(s32*)(p + 0x234) = 8;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) & 3;
		if (*(s32*)(p + 0x240) != 0) return;
		*(s32*)(p + 0x250) = 0;
		return;
	case 3:
		*(s32*)(p + 0x254) = *(s32*)(p + 0x240) + 0xa;
		*(s32*)(p + 0x234) = 8;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) & 3;
		if (*(s32*)(p + 0x240) != 0) return;
		*(s32*)(p + 0x250) = 1;
		return;
	case 4:
		*(s32*)(p + 0x254) = *(s32*)(p + 0x240);
		*(s32*)(p + 0x234) = 0xf;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) + 1;
		*(s32*)(p + 0x240) = *(s32*)(p + 0x240) & 1;
		return;
	}
}
