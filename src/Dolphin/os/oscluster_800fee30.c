#include "types.h"

/*
 * fn_800FEE30/34/38: three consecutive no-op virtual stub overrides (empty
 * function bodies compiling to a lone `blr`), immediately following the
 * fn_800FEDD0 base-destructor for the new class discovered past the
 * fn_800FEBAC __sinit boundary. No extab/extabindex of their own.
 */

void fn_800FEE30(void) {}

void fn_800FEE34(void) {}

void fn_800FEE38(void) {}
