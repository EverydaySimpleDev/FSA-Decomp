#include "Dolphin/gx.h"
#include "Dolphin/GX/GXHardware.h"

//80187FBC
void GXSetCoPlanar(GXBool enable)
{
	GX_SET_REG(gx->genMode, enable, 12, 12);
	GX_BP_LOAD_REG(0xFE080000);
	GX_BP_LOAD_REG(gx->genMode);
}
