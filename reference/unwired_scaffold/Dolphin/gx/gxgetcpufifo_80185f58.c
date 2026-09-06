#include "Dolphin/gx.h"

extern GXFifoObj* CPUFifo;

//80185F58
GXFifoObj* GXGetCPUFifo(void)
{
    return CPUFifo;
}
