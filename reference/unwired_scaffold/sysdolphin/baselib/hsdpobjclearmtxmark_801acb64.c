#include <types.h>

typedef struct _MtxMark {
	void* obj;
	u32 mark;
} MtxMark;

extern MtxMark lbl_8064A4F0[2];

//801ACB64
void HSD_PObjClearMtxMark(void* obj, u32 mark)
{
	int i;

	for (i = 0; i < 2; i++) {
		lbl_8064A4F0[i].obj = obj;
		lbl_8064A4F0[i].mark = mark;
	}
}
