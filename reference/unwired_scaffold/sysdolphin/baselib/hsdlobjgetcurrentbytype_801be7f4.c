#include <lobj.h>
#include <list.h>

extern HSD_SList* lbl_8065B9BC; // current_lights

//801BE7F4
HSD_LObj* HSD_LObjGetCurrentByType(u16 flags)
{
	u32 type = flags & LOBJ_TYPE_MASK;
	HSD_SList* cur = lbl_8065B9BC;
	while (cur != NULL) {
		HSD_LObj* lobj = cur->data;
		if (type == (lobj->flags & LOBJ_TYPE_MASK)) {
			return lobj;
		}
		cur = cur->next;
	}
	return NULL;
}
