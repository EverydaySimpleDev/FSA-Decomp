#include <wobj.h>

//801D32BC
void HSD_WObjSetPosition(HSD_WObj* wobj, Vec3* pos)
{
    if (wobj == NULL || pos == NULL) {
        return;
    }

    wobj->pos = *pos;
    wobj->flags |= 0x2;
    wobj->flags &= 0xFFFFFFFE;
}
