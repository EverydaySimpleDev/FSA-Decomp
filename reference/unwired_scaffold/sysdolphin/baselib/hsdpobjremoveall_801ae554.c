#include <pobj.h>
#include <class.h>

//801AE554
void HSD_PObjRemoveAll(HSD_PObj* pobj)
{
	HSD_PObj* next;

	while (pobj != NULL) {
		next = pobj->next;
		if (pobj != NULL) {
			HSD_CLASS_METHOD(pobj)->release((HSD_Class*)pobj);
			HSD_CLASS_METHOD(pobj)->destroy((HSD_Class*)pobj);
		}
		pobj = next;
	}
}
