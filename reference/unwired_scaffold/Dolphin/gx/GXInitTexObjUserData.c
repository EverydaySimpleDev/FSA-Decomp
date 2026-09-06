#include <types.h>

//800B1B0C
void fn_800B1B0C(char* field, int val)
{
    *(int*)(field + 0x24) = val;
}

//800B1B14
void fn_800B1B14(char* field, int val)
{
    *(int*)(field + 4) = val;
}

//800B1B1C
void GXInitTexObjUserData(void* obj, void* data)
{
    *(void**)((char*)obj + 4) = data;
}
