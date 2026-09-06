#include <types.h>

extern "C" void MWTRACE(int type, ...);
extern "C" char lbl_8020D564[8];
extern "C" char lbl_8020D56C[4];

extern "C" void OutputData(u8* data, int length)
{
    int i;
    for (i = 0; i < length; i++) {
        MWTRACE(8, lbl_8020D564, data[i]);
        if ((i % 16) == 15) {
            MWTRACE(8, lbl_8020D56C);
        }
    }
    MWTRACE(8, lbl_8020D56C);
}
