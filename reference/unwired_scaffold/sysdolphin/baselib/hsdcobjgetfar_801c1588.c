#include <cobj.h>

extern const float HSD_CObj_804DE478;

//801C1588
float HSD_CObjGetFar(HSD_CObj* cobj)
{
    if (cobj == NULL) {
        return HSD_CObj_804DE478;
    }
    return cobj->far;
}
