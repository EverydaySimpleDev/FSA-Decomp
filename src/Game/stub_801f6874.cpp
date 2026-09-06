#include "types.h"

// fn_801F6874 - a tiny 4-entry table lookup: takes a small value (used
// elsewhere with SLR1's this->0x98 "variant/mode" field), masks it to
// its low 2 bits, and returns a halfword from lbl_8053F800 (4 entries).
// The caller further sign-extends and scales this result into an index
// for the shared wave table lbl_8052EBC0 - so this is a small
// per-variant "base angle/phase offset" lookup, not a value used
// directly.
extern "C" {

extern u16 lbl_8053F800[4];

u16 fn_801F6874(s32 value) {
	return lbl_8053F800[value & 3];
}

}
