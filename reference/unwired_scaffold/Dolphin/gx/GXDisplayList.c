#include "Dolphin/gx.h"

// DEFERRED: not byte-exact -- addi-vs-mr register-copy opcode choice
// (unfixable via source restructuring). See project memory.
/**
 * @note Address: 0x8018C0DC
 * @note Size: 0x70
 */
void GXCallDisplayList(void* dl, u32 byteCnt)
{
	if (gx->dirtyState) {
		__GXSetDirtyState();
	}
	if (GX_CHECK_FLUSH()) {
		__GXSendFlushPrim();
	}
	GX_WRITE_U8(GX_FIFO_CMD_CALL_DL);
	GX_WRITE_U32((u32)dl);
	GX_WRITE_U32(byteCnt);
}
