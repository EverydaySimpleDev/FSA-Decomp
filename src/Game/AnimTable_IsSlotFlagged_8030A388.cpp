#include "types.h"

extern "C" {

extern u8 lbl_8053AD38[8];

// AnimTable_IsSlotFlagged(table, slot) -> bool: sentinel-gated check of whether
// lbl_8053AD38[slot] is nonzero (no `table` deref at all). Split out
// of the original extab_80309d24.s animation-controller bundle.
s32 AnimTable_IsSlotFlagged(void* table, s32 slot) {
    if (slot == -999) {
        return 0;
    }
    return lbl_8053AD38[slot] != 0;
}

}
