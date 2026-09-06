#include <lobj.h>
#include <Dolphin/vec.h>

extern Vec3 lbl_8020FA88; // default position (0,0,0)
extern Vec3 lbl_8020FA94; // default interest (0,0,0)
extern f32 lbl_8065FA30;  // 0.0f
extern f32 lbl_8065FA34;  // 1.0f
extern f64 lbl_8065FA40;  // FLT_MIN epsilon

//801BD3F8
void HSD_LObjGetLightVector(HSD_LObj* lobj, Vec3* dir)
{
	Vec3 position = lbl_8020FA88;
	Vec3 interest = lbl_8020FA94;
	s32 isZero;

	if (lobj == NULL) {
		return;
	}

	HSD_LObjGetPosition(lobj, &position);
	HSD_LObjGetInterest(lobj, &interest);

	PSVECSubtract((Vec*)&interest, (Vec*)&position, (Vec*)dir);

	if (dir == NULL) {
		isZero = -1;
	} else if ((f64)__fabsf(dir->x) <= lbl_8065FA40 && (f64)__fabsf(dir->y) <= lbl_8065FA40 &&
	           (f64)__fabsf(dir->z) <= lbl_8065FA40) {
		isZero = -1;
	} else {
		PSVECNormalize((Vec*)dir, (Vec*)dir);
		isZero = 0;
	}

	if (isZero) {
		f32 zero = lbl_8065FA30;
		dir->x = zero;
		dir->y = zero;
		dir->z = lbl_8065FA34;
	}
}
