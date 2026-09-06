#include "Dolphin/gx.h"

//80185DF8
void __GXWriteFifoIntEnable(u32 p1, u32 p2)
{
    GX_SET_REG(gx->cpEnable, p1, 29, 29);
    GX_SET_REG(gx->cpEnable, (u8)p2, 28, 28);
    GX_SET_CP_REG(1, gx->cpEnable);
}
