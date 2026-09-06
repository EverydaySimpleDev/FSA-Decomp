#include "Dolphin/gx.h"

//80188D48
void GXInitLightDir(GXLightObj* obj, f32 nX, f32 nY, f32 nZ)
{
    GXLightObjPriv* pObj = (GXLightObjPriv*)obj;
    pObj->ldir[0] = -nX;
    pObj->ldir[1] = -nY;
    pObj->ldir[2] = -nZ;
}
