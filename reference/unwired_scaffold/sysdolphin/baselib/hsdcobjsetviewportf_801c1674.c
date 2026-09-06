#include <cobj.h>

//801C1674
void HSD_CObjSetViewportf(HSD_CObj* cobj, struct Viewport* viewport)
{
    if (cobj == NULL) {
        return;
    }
    cobj->viewport = *viewport;
}
