#include "types.h"
#include "Dolphin/vi.h"
#include "Dolphin/os.h"

static u32 CurrTvMode;

// DEFERRED (NonMatching): a previous whole-function-ASM version hardcoded a
// jump-table address as a fixed constant, which went stale as the linker
// shifted layout and caused a real boot-crash regression. Reverted to plain
// C (safe, but MWCC compiles this switch as a compare-chain, not a jump
// table, so it doesn't byte-match). See project memory.
//80172A8C
u32 VIGetTvFormat(void)
{
    BOOL level;
    u32 result;

    level = OSDisableInterrupts();
    switch (CurrTvMode) {
    case 0:
    case 1:
    case 2:
    case 3:
        result = 0;
        break;
    case 4:
    case 5:
        result = 1;
        break;
    default:
        result = CurrTvMode;
        break;
    }
    OSRestoreInterrupts(level);
    return result;
}
