#include <dolphin/gx/GXTypes.h>

extern struct {
    GXColor ambient;
    GXColor diffuse;
    GXColor specular;
    u8 alpha;
    f32 shininess;
} matstate;

//801AA294
void HSD_SetMaterialShininess(f32 shininess)
{
    matstate.shininess = shininess;
}
