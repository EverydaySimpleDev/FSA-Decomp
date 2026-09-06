#include "Dolphin/gx.h"

//80185DC4
void __GXFifoLink(u8 link)
{
    u32 b;
    if (link) {
        b = 1;
    } else {
        b = 0;
    }
    GX_SET_REG(gx->cpEnable, b, 27, 27);
    GX_SET_CP_REG(1, gx->cpEnable);
}
