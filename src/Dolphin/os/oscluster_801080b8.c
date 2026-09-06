#include "types.h"

/*
 * fn_801080B8 (0x801080B8-0x801080E8, 0x30/48 bytes) - a small float accessor for the
 * fn_80107360-class, grouped under a no-extab dump (no exception table of its own).
 * Returns one of two easing constants based on this->0x4 (a type index, matching the
 * "type<8" gating used elsewhere by this class family) and this->0x26a (the 0/1 flag byte
 * set by fn_80107F38's setup()):
 *   if (this->0x4 == 0 || this->0x26a != 0) return lbl_8053C2F8;
 *   else                                    return lbl_8053C314;
 * Not yet cross-referenced against a specific caller; likely an "ease target" lookup used
 * by fn_80107660's state-2/state-4 interpolation blocks (which read the same lbl_8053C2F8
 * constant directly in a few places), but no confirmed call site yet.
 */



ASM void fn_801080B8(void);

ASM void fn_801080B8(void)
{
    nofralloc
    lwz r0, 0x4(r3)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_801080CC
    opword  0xC0229358  // lfs f1, lbl_8053C2F8@sda21(r0)
    blr
L_801080CC:
    lbz r0, 0x26a(r3)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_801080E0
    opword  0xC0229358  // lfs f1, lbl_8053C2F8@sda21(r0)
    blr
L_801080E0:
    opword  0xC0229374  // lfs f1, lbl_8053C314@sda21(r0)
    blr
}

