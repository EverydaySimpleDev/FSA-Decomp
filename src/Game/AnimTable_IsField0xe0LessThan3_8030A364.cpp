#include "types.h"

extern "C" {

// AnimTable_IsField0xe0LessThan3(table, slot) -> bool: same sentinel-gated shape as
// AnimTable_IsField0xdcLessThan3, different field offset (0xe0). Split out of the
// original extab_80309d24.s animation-controller bundle.
s32 AnimTable_IsField0xe0LessThan3(void* table, s32 slot) {
    if (slot == -999) {
        return 0;
    }
    u8* p = (u8*)table;
    p = p + slot;
    u8 val = p[0xe0];
    return val < 3;
}

}
