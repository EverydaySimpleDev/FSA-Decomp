#include "Dolphin/gx.h"

//80188D64
void GXInitLightColor(GXLightObj* obj, GXColor color)
{
    GXLightObjPriv* pObj = (GXLightObjPriv*)obj;
    pObj->color = color;
}
