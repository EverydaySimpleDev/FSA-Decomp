#include "types.h"

// fn_803944C8 - leading helper for a ~60.9KB composite entity (ctor
// fn_803973E8, FourCC unknown) built from 4 embedded sub-objects with
// heavy strcat/strlen/strcpy usage, suggestive of a text/string-
// formatting system (debug overlay, stat display, or dialogue
// construction) - never given a full semantic decomposition, so the
// specific meaning of the fields below isn't confirmed. Mechanically:
// sets a flag byte (this->0x3b1) on the incoming object, then writes 3
// caller-supplied values into fields (0x48/0xea/0xeb) of the global
// singleton pointed to by lbl_8053AD78[0] (a 2-pointer .sbss object).
// Each use re-dereferences the global explicitly, matching retail's
// own reload-per-store pattern (see project_fsa_phase4_kickoff.md's
// "repeated named external global" rule).
extern "C" {

extern void* lbl_8053AD78[2];

void fn_803944C8(void* thisObj, u32 val48, u8 valEA, u8 valEB) {
	*(u8*)((char*)thisObj + 0x3b1) = 1;
	*(u32*)((char*)lbl_8053AD78[0] + 0x48) = val48;
	*(u8*)((char*)lbl_8053AD78[0] + 0xea) = valEA;
	*(u8*)((char*)lbl_8053AD78[0] + 0xeb) = valEB;
}

}
