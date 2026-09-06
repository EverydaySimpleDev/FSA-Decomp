#include "types.h"

// fn_80134DC0(this) - a byte-flag toggle: this->0x86 = !this->0x86.
ASM void fn_80134DC0(void);

ASM void fn_80134DC0(void)
{
    nofralloc
    lbz r0, 0x86(r3)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80134DD8
    li r0, 0x1
    stb r0, 0x86(r3)
    blr
L_80134DD8:
    li r0, 0x0
    stb r0, 0x86(r3)
    blr
}

