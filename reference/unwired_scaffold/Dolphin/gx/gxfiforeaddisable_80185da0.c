#include "Dolphin/gx.h"

//80185DA0
void __GXFifoReadDisable(void)
{
    GX_SET_REG(gx->cpEnable, GX_FALSE, 31, 31);
    GX_SET_CP_REG(1, gx->cpEnable);
}
