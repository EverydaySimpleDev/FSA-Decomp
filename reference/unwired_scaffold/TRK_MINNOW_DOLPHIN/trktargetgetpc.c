#include "TRK_MINNOW_DOLPHIN/ppc/Generic/targimpl.h"

//8014DCFC
u32 TRKTargetGetPC(void) { return gTRKCPUState.Default.PC; }
