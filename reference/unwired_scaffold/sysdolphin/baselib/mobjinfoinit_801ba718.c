#include <mobj.h>

extern HSD_MObjInfo lbl_80259550; // hsdMObj (used as base for nearby string offsets too)
extern HSD_ClassInfo lbl_8025AB00; // hsdClass

extern void MObjRelease(HSD_Class* o);
extern void MObjAmnesia(HSD_ClassInfo* info);
extern int MObjLoad(HSD_MObj* mobj, HSD_MObjDesc* desc);
extern void MObjSetupTev(HSD_MObj* mobj, HSD_TObj* tobj, u32 rendermode);
extern void MObjUpdateFunc(void* obj, enum_t type, HSD_ObjData* val);

//801BA718
void MObjInfoInit(void)
{
	char* base = (char*)&lbl_80259550;

	hsdInitClassInfo(HSD_CLASS_INFO(base), &lbl_8025AB00, base + 0x148, base + 0x160,
					 sizeof(HSD_MObjInfo), sizeof(HSD_MObj));

	HSD_CLASS_INFO(base)->release = MObjRelease;
	HSD_CLASS_INFO(base)->amnesia = MObjAmnesia;
	HSD_MOBJ_INFO(base)->setup = HSD_MObjSetup;
	HSD_MOBJ_INFO(base)->unset = HSD_MObjUnset;
	HSD_MOBJ_INFO(base)->load = MObjLoad;
	HSD_MOBJ_INFO(base)->make_texp = MObjMakeTExp;
	HSD_MOBJ_INFO(base)->setup_tev = MObjSetupTev;
	HSD_MOBJ_INFO(base)->update_func = MObjUpdateFunc;
}
