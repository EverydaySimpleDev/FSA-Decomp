#include <types.h>

// NOTE: declaration order here does not match address order -- MWCC does not
// always emit functions in source-declaration order for this file (same
// quirk documented for interruptstatehelpers.c). fn_80150160 must be declared
// FIRST to reproduce the correct byte layout; verified via dtk elf disasm
// obj-vs-src. Don't "clean this up" without re-verifying first.

extern u8 lbl_805C8B50;

//80150160
void fn_80150160(u8 value)
{
    lbl_805C8B50 = value;
}

//80150150
u8 fn_80150150(void)
{
    return lbl_805C8B50;
}
