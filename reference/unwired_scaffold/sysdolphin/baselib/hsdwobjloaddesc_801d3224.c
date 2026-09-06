#include <wobj.h>
#include <class.h>

extern char lbl_8065AFA8[8];
extern char lbl_8065AFB4[8];

//801D3224
HSD_WObj* HSD_WObjLoadDesc(HSD_WObjDesc* desc)
{
    if (desc != NULL) {
        HSD_WObj* wobj;
        HSD_ClassInfo* info;
        if (desc->class_name == NULL || !(info = hsdSearchClassInfo(desc->class_name))) {
            wobj = HSD_WObjAlloc();
        } else {
            wobj = hsdNew(info);
            ((wobj) ? ((void)0) : __assert(lbl_8065AFA8, 0x104, lbl_8065AFB4));
        }
        HSD_WOBJ_METHOD(wobj)->load(wobj, desc);
        return wobj;
    }
    return NULL;
}
