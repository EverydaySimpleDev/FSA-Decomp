#include "Dolphin/gx.h"
#include "Dolphin/GX/GXHardware.h"

//80185F68
void GXSetVtxDesc(GXAttr attr, GXAttrType type)
{
	switch (attr) {
	case GX_VA_PNMTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_POSMTXIDX_ST, GX_CP_VCD_LO_POSMTXIDX_END);
		break;
	case GX_VA_TEX0MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX0MTXIDX_ST, GX_CP_VCD_LO_TEX0MTXIDX_END);
		break;
	case GX_VA_TEX1MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX1MTXIDX_ST, GX_CP_VCD_LO_TEX1MTXIDX_END);
		break;
	case GX_VA_TEX2MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX2MTXIDX_ST, GX_CP_VCD_LO_TEX2MTXIDX_END);
		break;
	case GX_VA_TEX3MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX3MTXIDX_ST, GX_CP_VCD_LO_TEX3MTXIDX_END);
		break;
	case GX_VA_TEX4MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX4MTXIDX_ST, GX_CP_VCD_LO_TEX4MTXIDX_END);
		break;
	case GX_VA_TEX5MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX5MTXIDX_ST, GX_CP_VCD_LO_TEX5MTXIDX_END);
		break;
	case GX_VA_TEX6MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX6MTXIDX_ST, GX_CP_VCD_LO_TEX6MTXIDX_END);
		break;
	case GX_VA_TEX7MTXIDX:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_TEX7MTXIDX_ST, GX_CP_VCD_LO_TEX7MTXIDX_END);
		break;
	case GX_VA_POS:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_POS_ST, GX_CP_VCD_LO_POS_END);
		break;
	case GX_VA_NRM:
		if (type != GX_NONE) {
			gx->hasNrms   = TRUE;
			gx->hasBiNrms = FALSE;
			gx->nrmType   = type;
		} else {
			gx->hasNrms = FALSE;
		}
		break;
	case GX_VA_NBT:
		if (type != GX_NONE) {
			gx->hasBiNrms = TRUE;
			gx->hasNrms   = FALSE;
			gx->nrmType   = type;
		} else {
			gx->hasBiNrms = FALSE;
		}
		break;
	case GX_VA_CLR0:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_CLRDIF_ST, GX_CP_VCD_LO_CLRDIF_END);
		break;
	case GX_VA_CLR1:
		GX_SET_REG(gx->vcdLo, type, GX_CP_VCD_LO_CLRSPEC_ST, GX_CP_VCD_LO_CLRSPEC_END);
		break;
	case GX_VA_TEX0:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX0COORD_ST, GX_CP_VCD_HI_TEX0COORD_END);
		break;
	case GX_VA_TEX1:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX1COORD_ST, GX_CP_VCD_HI_TEX1COORD_END);
		break;
	case GX_VA_TEX2:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX2COORD_ST, GX_CP_VCD_HI_TEX2COORD_END);
		break;
	case GX_VA_TEX3:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX3COORD_ST, GX_CP_VCD_HI_TEX3COORD_END);
		break;
	case GX_VA_TEX4:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX4COORD_ST, GX_CP_VCD_HI_TEX4COORD_END);
		break;
	case GX_VA_TEX5:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX5COORD_ST, GX_CP_VCD_HI_TEX5COORD_END);
		break;
	case GX_VA_TEX6:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX6COORD_ST, GX_CP_VCD_HI_TEX6COORD_END);
		break;
	case GX_VA_TEX7:
		GX_SET_REG(gx->vcdHi, type, GX_CP_VCD_HI_TEX7COORD_ST, GX_CP_VCD_HI_TEX7COORD_END);
		break;
	}

	if (gx->hasNrms || gx->hasBiNrms) {
		GX_SET_REG(gx->vcdLo, gx->nrmType, GX_CP_VCD_LO_NRM_ST, GX_CP_VCD_LO_NRM_END);
	} else {
		GX_SET_REG(gx->vcdLo, GX_NONE, GX_CP_VCD_LO_NRM_ST, GX_CP_VCD_LO_NRM_END);
	}

	gx->dirtyState |= GX_DIRTY_VCD;
}
