#include "types.h"

// fn_801CECEC - universal shared-actor-default hook: unconditionally
// returns 0, no arguments. Appears at the same relative vtable slot
// across dozens of unrelated actor classes in data_80498528.s
// (consistently right after fn_801D0ECC); the specific method this
// slot represents (which virtual call it answers) is not confirmed.
extern "C" {

int fn_801CECEC(void) { return 0; }

}
