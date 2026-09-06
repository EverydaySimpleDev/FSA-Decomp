#include <wobj.h>
#include <jobj.h>
#include <spline.h>

extern char lbl_8065AFA8[8];
extern char lbl_8025A884[12];
extern char lbl_8065AFB0[4];
extern char lbl_8025A890[16];

extern const f64 lbl_8065FCA8;
extern const f32 lbl_8065FCB0;
extern const f64 lbl_8065FCB8;
extern const f32 lbl_8065FCC0;

//801D2FBC
void WObjUpdateFunc(void* obj, enum_t type, HSD_ObjData* val)
{
    HSD_WObj* wobj;
    Vec3 p;
    HSD_JObj* jp;

    wobj = obj;
    if (wobj != NULL) {
        switch (type) {
        case 4: {
            if (val->fv < lbl_8065FCA8) {
                val->fv = lbl_8065FCB0;
            }
            if (lbl_8065FCB8 < val->fv) {
                val->fv = lbl_8065FCC0;
            }

            ((wobj->aobj) ? ((void)0) : __assert(lbl_8065AFA8, 0x98, lbl_8025A884));
            jp = (HSD_JObj*)wobj->aobj->hsd_obj;
            ((jp) ? ((void)0) : __assert(lbl_8065AFA8, 0x9a, lbl_8065AFB0));
            ((jp->u.spline) ? ((void)0) : __assert(lbl_8065AFA8, 0x9b, lbl_8025A890));

            splArcLengthPoint(&p, jp->u.spline, val->fv);
            HSD_WObjSetPosition(wobj, &p);
            wobj->flags |= 1;
        } break;

        case 5:
            HSD_WObjSetPositionX(wobj, val->fv);
            break;

        case 6:
            HSD_WObjSetPositionY(wobj, val->fv);
            break;

        case 7:
            HSD_WObjSetPositionZ(wobj, val->fv);
            break;
        }
    }
}
