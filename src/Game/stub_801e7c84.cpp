#include "types.h"

// fn_801E7C84 - FSPO's no-op update(). Confirmed via extab_801e7c88.s's
// ctor comment: FSPO starts invisible and is consistent with having
// both a no-op update (this function) and a no-op draw.
extern "C" {

void fn_801E7C84(void) {}

}
