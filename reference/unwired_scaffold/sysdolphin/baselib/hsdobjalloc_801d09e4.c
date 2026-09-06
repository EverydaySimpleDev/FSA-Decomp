#include <baselib/objalloc.h>

extern objheap lbl_8025A690; // obj_heap
extern int HSD_GetHeap(void);

//801D09E4
void* HSD_ObjAlloc(HSD_ObjAllocData* data)
{
	HSD_ObjAllocLink* cur;
	u32 size;

	if (data->num_limit_flag && data->used >= data->num_limit) {
		return NULL;
	}
	if (data->heap_limit_flag) {
		if (data->heap_limit_num == (u32)-1) {
			if (lbl_8025A690.top != 0) {
				size = lbl_8025A690.remain;
			} else {
				size = (u32)HSD_GetHeap();
			}
			if (size <= data->heap_limit_size) {
				data->heap_limit_num = data->used + data->free;
			}
		} else {
			if (lbl_8025A690.top != 0) {
				size = lbl_8025A690.remain;
			} else {
				size = (u32)HSD_GetHeap();
			}
			if (size > data->heap_limit_size) {
				data->heap_limit_num = -1;
			}
		}
		if (data->used >= data->heap_limit_num) {
			return NULL;
		}
	}
	if (data->free == 0) {
		HSD_ObjAllocAddFree(data, 1);
		if (data->free == 0) {
			return NULL;
		}
	}
	cur = data->freehead;
	data->freehead = cur->next;
	data->used += 1;
	data->free -= 1;
	if (data->used > data->peak) {
		data->peak = data->used;
	}
	return cur;
}
