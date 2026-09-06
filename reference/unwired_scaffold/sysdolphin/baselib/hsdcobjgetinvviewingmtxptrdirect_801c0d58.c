#include <cobj.h>
#include <mtx.h>
#include <Dolphin/mtx.h>

//801C0D58
MtxPtr HSD_CObjGetInvViewingMtxPtrDirect(HSD_CObj* cobj)
{
	if (cobj->flags & (1 << 31)) {
		if (cobj->proj_mtx == NULL) {
			cobj->proj_mtx = HSD_MtxAlloc();
		}
		PSMTXInverse(cobj->view_mtx, *cobj->proj_mtx);
		HSD_CObjClearFlags(cobj, (1 << 31));
	}
	return *cobj->proj_mtx;
}
