#include "Dolphin/gx.h"

extern GXFifoObj* GPFifo;

//80185F60
GXFifoObj* GXGetGPFifo(void)
{
    return GPFifo;
}
