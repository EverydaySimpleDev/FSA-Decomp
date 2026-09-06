#include <wobj.h>
#include <jobj.h>

//801D3304
void HSD_WObjSetPositionX(HSD_WObj* wobj, f32 val)
{
    HSD_JObj* jp;

    if (wobj != NULL) {
        if ((wobj->flags & 1) != 0) {
            if (wobj->aobj != NULL && wobj->aobj->hsd_obj != NULL) {
                jp = (HSD_JObj*)wobj->aobj->hsd_obj;
                HSD_JObjSetupMatrix((HSD_JObj*)wobj->aobj->hsd_obj);
                PSMTXMultVec(jp->mtx, (Vec*)&wobj->pos, (Vec*)&wobj->pos);
            }
            wobj->flags &= 0xFFFFFFFE;
        }
        wobj->pos.x = val;
        wobj->flags |= 0x2;
    }
}
