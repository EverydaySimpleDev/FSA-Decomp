#include <id.h>

extern HSD_ObjAllocData hsd_iddata;

//801D2C88
void HSD_IDInitAllocData(void)
{
    HSD_ObjAllocInit(&hsd_iddata, sizeof(IDEntry), 4);
}
