#include <types.h>

typedef struct _HSD_MemFuncs {
	void* (*alloc)(u32 size);
	void (*free)(void* ptr);
	void* unk08;
	void* unk0C;
	void* unk10;
} HSD_MemFuncs;

extern HSD_MemFuncs lbl_8064CA70;

//801D426C
void* HSD_Alloc(u32 size)
{
	return lbl_8064CA70.alloc(size);
}
