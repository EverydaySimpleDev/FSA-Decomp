#include "Dolphin/gx.h"
#include "Dolphin/GX/GXFifo.h"

//80187154
void GXInvalidateVtxCache(void) { GX_WRITE_U8(GX_FIFO_CMD_INVAL_VTX); }
