#include <jobj.h>
#include <dolphin/os.h>

extern char lbl_80259F18[0x54]; // hsdJObj (used here only as a base for nearby string offsets)
extern char lbl_8065AED8[8]; // "jobj.c"

static inline void UpdateParentTrspBits(HSD_JObj* jobj, HSD_JObj* child)
{
	u32 flags = (child->flags | (child->flags << 10)) & JOBJ_ROOT_MASK;
	while (jobj != NULL) {
		if (!(flags & ~jobj->flags)) {
			break;
		}
		jobj->flags |= flags;
		jobj = jobj->parent;
	}
}

//801C6EC8
void HSD_JObjAddChild(HSD_JObj* jobj, HSD_JObj* child)
{
	HSD_JObj* last;
	char* base = lbl_80259F18;

	if (jobj == NULL || child == NULL) {
		return;
	}
	if (child->parent != NULL) {
		OSReport(base + 0x250);
		__assert(lbl_8065AED8, 0x549, base + 0x26c);
	}
	if (child->next != NULL) {
		OSReport(base + 0x284);
		__assert(lbl_8065AED8, 0x54a, base + 0x23c);
	}
	if (jobj->child == NULL) {
		jobj->child = child;
	} else {
		((!(jobj->flags & JOBJ_INSTANCE)) ? ((void)0)
										   : __assert(lbl_8065AED8, 0x550, base + 0x2a4));
		last = jobj->child;
		while (last->next != NULL) {
			((last != child) ? ((void)0) : __assert(lbl_8065AED8, 0x553, base + 0x2c4));
			last = last->next;
		}
		last->next = child;
	}
	child->parent = jobj;
	UpdateParentTrspBits(jobj, child);
}
