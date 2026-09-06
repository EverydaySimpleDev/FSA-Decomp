#include <mobj.h>
#include <class.h>

//801BA444
void HSD_MObjRemove(HSD_MObj* mobj)
{
	if (mobj != NULL) {
		HSD_CLASS_METHOD(mobj)->release((HSD_Class*)mobj);
		HSD_CLASS_METHOD(mobj)->destroy((HSD_Class*)mobj);
	}
}
