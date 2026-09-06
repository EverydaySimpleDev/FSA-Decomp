#include <baselib/objalloc.h>

extern objheap lbl_8025A690;

//801D0684
void HSD_ObjSetHeap(u32 size, void* ptr)
{
	lbl_8025A690.curr = (u32)ptr;
	lbl_8025A690.top = (u32)ptr;
	lbl_8025A690.remain = size;
	lbl_8025A690.size = size;
}
