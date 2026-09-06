#include "Dolphin/gx.h"
#include "Dolphin/GX/GXHardware.h"

//80187F94
void GXSetCullMode(GXCullMode mode)
{
	// swaps GX_CULL_FRONT(1)<->GX_CULL_BACK(2), leaves NONE(0)/ALL(3) unchanged;
	// written to match retail's branchless bit-swap exactly (a `switch` compiles to a compare chain here)
	mode = (GXCullMode)__rlwimi((mode >> 1) & 1, mode, 1, 30, 30);

	GX_SET_REG(gx->genMode, mode, 16, 17);
	gx->dirtyState |= 4;
}
