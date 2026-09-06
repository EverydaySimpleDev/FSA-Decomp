#include "Dolphin/gx.h"

//80188D38
void GXInitLightPos(GXLightObj* obj, f32 x, f32 y, f32 z)
{
    GXLightObjPriv* pObj = (GXLightObjPriv*)obj;
    pObj->lpos[0] = x;
    pObj->lpos[1] = y;
    pObj->lpos[2] = z;
}
