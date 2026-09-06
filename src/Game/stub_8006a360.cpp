#include "types.h"

extern "C" {

// 3 trivial no-op critical-region hooks (real critical-region handling
// is done elsewhere via OSDisable/EnableScheduler - these are stubs).
// Split out of the original extab_8006a268.s stdio-internals file.
void __end_critical_region(void) {}
void __begin_critical_region(void) {}
void __kill_critical_regions(void) {}

}
