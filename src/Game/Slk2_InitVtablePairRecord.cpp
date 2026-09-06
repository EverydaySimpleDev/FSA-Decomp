#include "types.h"

// Slk2_InitVtablePairRecord(this) - initializes a small record with TWO pointer-typed
// fields (+0x4, +0x1c) - each is installed with an interposed value
// (lbl_8049C178) that's IMMEDIATELY overwritten by a second, final value
// (lbl_804A64A8) - the same base-overridden-by-derived double-install
// pattern documented in project_fsa_multiple_inheritance_pattern.md,
// applied to two separate pointer slots within this one record rather
// than the record's own primary vtable. Also zeroes +0x0/+0x14/+0x18/
// +0x2c/+0x34 and sets +0x30=-1. Embedded by SLK2 at its own +0x4ec.
// Declared as functions (not data objects) so MWCC never treats these
// address-only references as small-data-relative - the actual symbols
// live in plain .data (vtables), not .sdata/.sbss, and a bare `extern
// void*` scalar declaration triggers MWCC's small-data-eligible
// heuristic regardless of the real section (same class of bug as the
// "large-bss-struct declared as bare scalar" case in
// project_fsa_phase4_kickoff.md's second batch).
extern "C" void lbl_8049C178();
extern "C" void lbl_804A64A8();

extern "C" {

void Slk2_InitVtablePairRecord(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u32*)(p + 0x0) = 0;
	*(void**)(p + 0x4) = (void*)lbl_8049C178;
	*(void**)(p + 0x4) = (void*)lbl_804A64A8;
	*(u8*)(p + 0x14) = 0;
	*(u32*)(p + 0x18) = 0;
	*(void**)(p + 0x1c) = (void*)lbl_8049C178;
	*(void**)(p + 0x1c) = (void*)lbl_804A64A8;
	*(u8*)(p + 0x2c) = 0;
	*(s32*)(p + 0x30) = -1;
	*(u32*)(p + 0x34) = 0;
}

}
