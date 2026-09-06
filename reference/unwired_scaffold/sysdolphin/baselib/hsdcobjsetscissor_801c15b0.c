#include <cobj.h>

//801C15B0
void HSD_CObjSetScissor(HSD_CObj* cobj, struct Scissor* scissor)
{
    if (cobj == NULL) {
        return;
    }
    cobj->scissor = *scissor;
}
