#include <baselib/objalloc.h>

extern objheap lbl_8025A690;    // obj_heap
extern char lbl_8025A6A0[0x38]; // "objalloc.c" + assert messages
extern char lbl_8065AF60[8];    // "data"

extern void* HSD_Alloc(u32 size, u32 align, u32 clear);

//801D0794
s32 HSD_ObjAllocAddFree(HSD_ObjAllocData* data, u32 num)
{
	u32 pool_end;
	u32 pool_size;
	u8* pool_start;

	((data) ? ((void)0) : __assert(lbl_8025A6A0, 0xee, lbl_8065AF60));
	pool_size = data->size * num;
	if (lbl_8025A690.top != 0) {
		pool_end = lbl_8025A690.top + lbl_8025A690.size;
		pool_start = (u8*)((lbl_8025A690.curr + (data->align - 1)) & ~(data->align - 1));
		if ((u32)pool_start > pool_end) {
			return 0;
		}
		if (pool_end - (u32)pool_start < pool_size) {
			pool_size = pool_end - (u32)pool_start - (pool_end - (u32)pool_start) % data->size;
		}
		num = pool_size / data->size;
		if (num == 0) {
			return 0;
		}
		lbl_8025A690.curr = (u32)pool_start + pool_size;
		lbl_8025A690.remain = pool_end - lbl_8025A690.curr;
	} else {
		pool_start = HSD_Alloc(pool_size, data->align, 1);
		if (pool_start == 0) {
			return 0;
		}
	}

	{
		int i;
		for (i = 0; (unsigned)i < num - 1; i++) {
			*(void**)(pool_start + data->size * i) = (void*)(pool_start + data->size * (i + 1));
		}
		*(void**)(pool_start + data->size * i) = data->freehead;
	}

	data->freehead = (HSD_ObjAllocLink*)pool_start;
	data->free += num;
	return num;
}
