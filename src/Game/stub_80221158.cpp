#include "types.h"

// fn_80221158 - universal shared-actor-default hook: unconditionally
// returns 0, no arguments. Referenced only from actor vtable listings
// in data_80498528.s; the specific method this slot represents (which
// virtual call it answers) is not confirmed.
extern "C" {

int fn_80221158(void) { return 0; }

}
