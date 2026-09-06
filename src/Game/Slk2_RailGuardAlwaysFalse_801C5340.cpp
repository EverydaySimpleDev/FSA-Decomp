#include "types.h"

// Slk2_RailGuardAlwaysFalse - SLK2 (rail-riding) always-false gate: unconditionally
// returns 0. Called from fn_801C7370's per-frame rail-movement body
// (extab_801c7370.s) as a guard whose "true" branch is confirmed dead
// code given this always-false result.
extern "C" {

int Slk2_RailGuardAlwaysFalse(void) { return 0; }

}
