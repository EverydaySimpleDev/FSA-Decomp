#include "Dolphin/gx.h"
#include "Dolphin/GX/GXHardware.h"

//80188A84
void GXClearBoundingBox(void)
{
	GX_BP_LOAD_REG(0x550003FF);
	GX_BP_LOAD_REG(0x560003FF);
	gx->bpSentNot = GX_FALSE;
}
