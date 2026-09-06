#include <wobj.h>
#include <jobj.h>

//801D3580
void HSD_WObjGetPosition(HSD_WObj* wobj, Vec3* vec)
{
    HSD_JObj* jp;

    if (wobj == NULL || vec == NULL) {
        return;
    }
    if ((wobj->flags & 1) != 0) {
        if (wobj->aobj != NULL && wobj->aobj->hsd_obj != NULL) {
            jp = (HSD_JObj*)wobj->aobj->hsd_obj;
            HSD_JObjSetupMatrix((HSD_JObj*)wobj->aobj->hsd_obj);
            PSMTXMultVec(jp->mtx, (Vec*)&wobj->pos, (Vec*)&wobj->pos);
        }
        wobj->flags &= 0xFFFFFFFE;
    }
    *vec = wobj->pos;
}
