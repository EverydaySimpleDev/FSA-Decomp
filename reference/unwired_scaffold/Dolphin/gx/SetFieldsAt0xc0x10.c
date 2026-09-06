#include "Dolphin/gx.h"

//80185A18
void GXInitFifoLimits(GXFifoObj* fifo, u32 hiWaterMark, u32 loWaterMark)
{
    GXFifoObjPriv* pFifo = (GXFifoObjPriv*)fifo;
    pFifo->highWatermark = hiWaterMark;
    pFifo->lowWatermark  = loWaterMark;
}
