#include <dolphin/gx/GXTypes.h>

extern struct {
    GXColorS10 a;
    int c;
} TevReg[4];

//801B8E28
void _HSD_StateInvalidateTevRegister(void)
{
    int i;
    for (i = 0; i < 4; i++) {
        TevReg[i].c = 0;
    }
}
