#include <types.h>

typedef void (*AXFXHookFunc)(void);

extern AXFXHookFunc lbl_8065B4A0;
extern AXFXHookFunc lbl_8065B4A4;

//80168670
void AXFXSetHooks(AXFXHookFunc hook1, AXFXHookFunc hook2)
{
    lbl_8065B4A0 = hook1;
    lbl_8065B4A4 = hook2;
}

//8016867C
void AXFXGetHooks(AXFXHookFunc* out1, AXFXHookFunc* out2)
{
    *out1 = lbl_8065B4A0;
    *out2 = lbl_8065B4A4;
}
