#include "Dolphin/gx.h"

extern f32 lbl_8065F380; // 0.0f
extern f32 lbl_8065F398; // 1.0f
extern f32 lbl_8065F3AC; // 0.5f

//80188C68
void GXInitLightDistAttn(GXLightObj* obj, f32 refDist, f32 refBrightness, GXDistAttnFn distFunc)
{
	f32 k0, k1, k2;
	GXLightObjPriv* pObj = (GXLightObjPriv*)obj;

	if (refDist < lbl_8065F380) {
		distFunc = GX_DA_OFF;
	}

	if (refBrightness <= lbl_8065F380 || refBrightness >= lbl_8065F398) {
		distFunc = GX_DA_OFF;
	}

	switch (distFunc) {
	case GX_DA_GENTLE:
		k0 = lbl_8065F398;
		k1 = (lbl_8065F398 - refBrightness) / (refBrightness * refDist);
		k2 = lbl_8065F380;
		break;
	case GX_DA_MEDIUM:
		k0 = lbl_8065F398;
		k1 = lbl_8065F3AC * (lbl_8065F398 - refBrightness) / (refBrightness * refDist);
		k2 = lbl_8065F3AC * (lbl_8065F398 - refBrightness) / (refBrightness * refDist * refDist);
		break;
	case GX_DA_STEEP:
		k0 = lbl_8065F398;
		k1 = lbl_8065F380;
		k2 = (lbl_8065F398 - refBrightness) / (refBrightness * refDist * refDist);
		break;
	case GX_DA_OFF:
	default:
		k0 = lbl_8065F398;
		k1 = lbl_8065F380;
		k2 = lbl_8065F380;
		break;
	}

	pObj->k[0] = k0;
	pObj->k[1] = k1;
	pObj->k[2] = k2;
}
