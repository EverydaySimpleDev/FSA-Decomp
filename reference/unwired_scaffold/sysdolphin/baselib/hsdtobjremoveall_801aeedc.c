#include <tobj.h>
#include <class.h>

//801AEEDC
void HSD_TObjRemoveAll(HSD_TObj* tobj)
{
	HSD_TObj* next;

	while (tobj != NULL) {
		next = tobj->next;
		if (tobj != NULL) {
			HSD_CLASS_METHOD(tobj)->release((HSD_Class*)tobj);
			HSD_CLASS_METHOD(tobj)->destroy((HSD_Class*)tobj);
		}
		tobj = next;
	}
}
