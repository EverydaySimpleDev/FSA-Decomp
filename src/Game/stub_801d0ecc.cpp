#include "types.h"

// fn_801D0ECC - universal shared-actor-default hook: empty body, no
// arguments. Appears at the same relative vtable slot across dozens of
// unrelated actor classes in data_80498528.s (consistently right
// before fn_801CECEC); the specific method this slot represents (which
// virtual call it answers) is not confirmed.
extern "C" {

void fn_801D0ECC(void) {}

}
