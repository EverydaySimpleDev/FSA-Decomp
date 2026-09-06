#include <wobj.h>
#include <class.h>

extern HSD_ClassInfo* default_class;
extern char lbl_8065AFA8[8];
extern char lbl_8065AFB4[8];

//801D3668
HSD_WObj* HSD_WObjAlloc(void)
{
    HSD_WObj* wobj = (HSD_WObj*)hsdNew(default_class ? default_class : &hsdWObj.parent.parent);
    ((wobj) ? ((void)0) : __assert(lbl_8065AFA8, 0x257, lbl_8065AFB4));
    return wobj;
}
