#include "Dolphin/gx.h"

//80185E28
void __GXWriteFifoIntReset(u32 p1, u32 p2)
{
    GX_SET_REG(gx->cpClr, p1, 31, 31);
    GX_SET_REG(gx->cpClr, (u8)p2, 30, 30);
    GX_SET_CP_REG(2, gx->cpClr);
}
