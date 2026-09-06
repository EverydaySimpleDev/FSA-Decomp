#include <cobj.h>

//801C16A0
void HSD_CObjSetViewportfx4(HSD_CObj* cobj, float left, float right, float top,
                            float bottom)
{
    if (cobj == NULL) {
        return;
    }
    cobj->viewport.left = left;
    cobj->viewport.right = right;
    cobj->viewport.top = top;
    cobj->viewport.bottom = bottom;
}
