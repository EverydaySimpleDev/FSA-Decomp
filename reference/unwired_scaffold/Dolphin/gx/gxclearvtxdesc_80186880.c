#include "Dolphin/gx.h"

//80186880
void GXClearVtxDesc(void)
{
    gx->vcdLo = 0;
    GX_SET_REG(gx->vcdLo, GX_DIRECT, GX_CP_VCD_LO_POS_ST, GX_CP_VCD_LO_POS_END);
    gx->vcdHi = 0;
    gx->hasNrms = FALSE;
    gx->hasBiNrms = FALSE;
    gx->dirtyState |= GX_DIRTY_VCD;
}
