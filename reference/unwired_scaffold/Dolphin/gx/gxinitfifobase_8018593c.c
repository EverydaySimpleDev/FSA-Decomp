#include "Dolphin/gx.h"
#include "Dolphin/os.h"

//8018593C
void GXInitFifoBase(GXFifoObj* fifo, void* base, u32 size)
{
    GXFifoObjPriv* pFifo = (GXFifoObjPriv*)fifo;
    pFifo->base          = base;
    pFifo->end           = (char*)base + (size - 4);
    pFifo->size          = size;
    pFifo->rwDistance    = 0;
    GXInitFifoLimits(fifo, size - 0x4000, OSRoundDown32B(size / 2));
    GXInitFifoPtrs(fifo, base, base);
}
