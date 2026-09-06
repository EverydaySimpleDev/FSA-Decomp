#include "types.h"

// SetGlobalCueFlag - global cue-flag setter: stores the incoming byte to
// lbl_8053AB60 (an 8-byte .sbss object, element 0 written here).
extern "C" {

extern u8 lbl_8053AB60[8];

void SetGlobalCueFlag(u8 val) {
	lbl_8053AB60[0] = val;
}

}
