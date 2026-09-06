#include <string.h>
#include <baselib/objalloc.h>

extern HSD_ObjAllocData* lbl_8065BA50; // alloc_datas
extern char lbl_8025A690[0x10];        // obj_heap, immediately followed by "objalloc.c" + assert messages
extern char lbl_8065AF60[8];           // "data"

extern s32 HSD_GetNbBits(u32 x);

static inline void removeAll(HSD_ObjAllocData* data)
{
	HSD_ObjAllocData** cur = &lbl_8065BA50;
	while (*cur != NULL) {
		if (*cur == data) {
			*cur = (*cur)->next;
		} else {
			cur = &(*cur)->next;
		}
	}
}

//801D0B5C
void HSD_ObjAllocInit(HSD_ObjAllocData* data, size_t size, u32 align)
{
	char* base = lbl_8025A690;

	((data) ? ((void)0) : __assert(base + 0x10, 0x182, lbl_8065AF60));

	if (data != NULL) {
		removeAll(data);
	} else {
		lbl_8065BA50 = NULL;
	}

	memset(data, 0, sizeof(HSD_ObjAllocData));
	data->num_limit = -1;
	data->heap_limit_size = 0;
	data->heap_limit_num = -1;

	((align <= 32) ? ((void)0) : __assert(base + 0x10, 0x18d, base + 0x1c));
	((HSD_GetNbBits(align) == 1) ? ((void)0) : __assert(base + 0x10, 0x18e, base + 0x28));

	data->align = align;
	data->size = (size + (data->align - 1)) & ~(data->align - 1);
	data->next = lbl_8065BA50;
	lbl_8065BA50 = data;
}
