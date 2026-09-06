#include "types.h"

extern "C" {

// AnimTable_IsField0xdcLessThan3(table, slot) -> bool: sentinel-gated check of whether
// *(table+slot+0xdc) < 3. Split out of the original extab_80309d24.s
// animation-controller bundle - no evidence of scaled indexing here
// (unlike this bundle's other members), so `table+slot` is left as
// raw byte-pointer arithmetic.
s32 AnimTable_IsField0xdcLessThan3(void* table, s32 slot) {
    if (slot == -999) {
        return 0;
    }
    u8* p = (u8*)table;
    p = p + slot;
    u8 val = p[0xdc];
    return val < 3;
}

}
