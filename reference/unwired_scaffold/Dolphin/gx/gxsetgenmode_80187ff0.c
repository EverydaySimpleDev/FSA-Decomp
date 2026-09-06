#include "Dolphin/gx.h"
#include "Dolphin/GX/GXHardware.h"

//80187FF0
void __GXSetGenMode(void)
{
	GX_BP_LOAD_REG(gx->genMode);
	gx->bpSentNot = GX_FALSE;
}
