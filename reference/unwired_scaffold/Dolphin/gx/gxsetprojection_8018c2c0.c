#include "Dolphin/gx.h"
#include "Dolphin/GX/GXHardware.h"

//8018C2C0
void GXSetProjection(const Mtx44 proj, GXProjectionType type)
{
	gx->projType = type;

	gx->projMtx[0] = proj[0][0];
	gx->projMtx[2] = proj[1][1];
	gx->projMtx[4] = proj[2][2];
	gx->projMtx[5] = proj[2][3];

	if (type == GX_ORTHOGRAPHIC) {
		gx->projMtx[1] = proj[0][3];
		gx->projMtx[3] = proj[1][3];
	} else {
		gx->projMtx[1] = proj[0][2];
		gx->projMtx[3] = proj[1][2];
	}

	{
		register const f32* src;
		register volatile void* dst;
		register f32 ps_0, ps_1, ps_2;

		GX_XF_LOAD_REGS(6, GX_XF_REG_PROJECTIONA);

		src = gx->projMtx;
		dst = (volatile void*)GXFIFO_ADDR;
#ifdef __MWERKS__ // clang-format off
		asm {
			psq_l  ps_0,  0(src), 0, 0
			psq_l  ps_1,  8(src), 0, 0
			psq_l  ps_2, 16(src), 0, 0
			psq_st ps_0,  0(dst), 0, 0
			psq_st ps_1,  0(dst), 0, 0
			psq_st ps_2,  0(dst), 0, 0
		}
#endif // clang-format on

		GX_WRITE_U32(gx->projType);
	}

	gx->bpSentNot = GX_TRUE;
}
