#include <baselib/objalloc.h>

//801D0B34
void HSD_ObjFree(HSD_ObjAllocData* data, void* obj)
{
	HSD_ObjAllocLink* link = obj;
	link->next = data->freehead;
	data->freehead = link;
	data->free += 1;
	data->used -= 1;
}
