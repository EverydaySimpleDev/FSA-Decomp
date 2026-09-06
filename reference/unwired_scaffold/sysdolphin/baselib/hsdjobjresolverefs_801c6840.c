#include <jobj.h>
#include <id.h>

extern char lbl_8065AED8[8]; // "jobj.c"
extern char lbl_80259F18[0x54]; // hsdJObj (used here only as a base for nearby string offsets)

//801C6840
void HSD_JObjResolveRefs(HSD_JObj* jobj, HSD_Joint* joint)
{
	char* base = lbl_80259F18;

	if (jobj == NULL || joint == NULL) {
		return;
	}

	HSD_RObjResolveRefsAll(jobj->robj, joint->robjdesc);
	if (!!(jobj->flags & JOBJ_INSTANCE)) {
		HSD_JObjUnref(jobj->child);
		jobj->child = HSD_IDGetDataFromTable(NULL, (u32)joint->child, NULL);
		((jobj->child) ? ((void)0) : __assert(lbl_8065AED8, 0x45f, base + 0x1d4));
		{
			HSD_JObj* child = jobj->child;
			if (child != NULL) {
				HSD_OBJ(child)->ref_count++;
				((HSD_OBJ(child)->ref_count != HSD_OBJ_NOREF)
					 ? ((void)0)
					 : __assert(base + 0x1e0, 0x5d, base + 0x1ec));
			}
		}
	}
	if (union_type_dobj(jobj)) {
		HSD_DObjResolveRefsAll(jobj->u.dobj, joint->u.dobjdesc);
	}
}
