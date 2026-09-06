#include <dolphin/gx/GXTypes.h>

extern struct {
    GXColor ambient;
    GXColor diffuse;
    GXColor specular;
    u8 alpha;
    f32 shininess;
} matstate;

extern const f32 lbl_8065F880;
extern const f32 lbl_8065F884;
extern const f32 lbl_8065F888;

//801AA2A4
void HSD_SetMaterialColor(GXColor ambient, GXColor diffuse, GXColor specular, f32 alpha)
{
    f32 t;

    matstate.ambient = ambient;
    matstate.diffuse = diffuse;
    matstate.specular = specular;

    if (alpha <= lbl_8065F880) {
        t = lbl_8065F880;
    } else if (alpha >= lbl_8065F884) {
        t = lbl_8065F884;
    } else {
        t = alpha;
    }
    matstate.alpha = lbl_8065F888 * t;
}
