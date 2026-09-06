#include "Dolphin/gx.h"

//80188ABC
void GXInitLightAttn(GXLightObj* obj, f32 a0, f32 a1, f32 a2, f32 k0, f32 k1, f32 k2)
{
    GXLightObjPriv* pObj = (GXLightObjPriv*)obj;
    pObj->a[0] = a0;
    pObj->a[1] = a1;
    pObj->a[2] = a2;

    pObj->k[0] = k0;
    pObj->k[1] = k1;
    pObj->k[2] = k2;
}
