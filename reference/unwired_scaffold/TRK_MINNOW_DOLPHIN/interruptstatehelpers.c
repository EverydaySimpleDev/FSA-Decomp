#include <types.h>
#include "Dolphin/OS/OSInterrupt.h"

// NOTE: declaration order here does not match address order. MWCC apparently
// does not always emit functions in source-declaration order for this file;
// empirically, this exact declaration order is what reproduces the correct
// byte layout (verified via dtk elf disasm obj-vs-src). Reordering to match
// ascending addresses (CF8, D1C, D4C) was tried and broke the match -- don't
// "clean this up" without re-verifying against build/GGTE01/obj/... first.

//80150D4C
void fn_80150D4C(void)
{
}

//80150D1C
void fn_80150D1C(BOOL* state)
{
    *state = OSDisableInterrupts();
}

//80150CF8
void fn_80150CF8(BOOL* state)
{
    OSRestoreInterrupts(*state);
}
