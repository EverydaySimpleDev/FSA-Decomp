#include <pobj.h>
#include <class.h>

//801AEA6C
void HSD_PObjAddAnimAll(HSD_PObj* pobj, HSD_ShapeAnim* shapeanim)
{
	HSD_PObj* po;
	HSD_ShapeAnim* sa;

	if (pobj == NULL || shapeanim == NULL) {
		return;
	}

	for (po = pobj, sa = shapeanim; po != NULL; po = po->next, sa = next_p(sa)) {
		if (po != NULL) {
			if (po->aobj) {
				HSD_AObjRemove(po->aobj);
			}
			po->aobj = HSD_AObjLoadDesc(sa->aobjdesc);
		}
	}
}
