#include <types.h>

extern void MWTRACE(int type, ...);
extern void fn_8018D404(int param1, int param2);
extern int fn_80150904(void* state, void* buffer, int size);
extern char lbl_8020D87C[0x14];
extern char lbl_8020D890[0x18];
extern char lbl_805C9358[0x20];
extern char lbl_805C8B58[0x800];

//8015066C
int ddh_cc_initialize(int param1, int param2)
{
    MWTRACE(1, lbl_8020D87C);
    fn_8018D404(param1, param2);
    MWTRACE(1, lbl_8020D890);
    fn_80150904(lbl_805C9358, lbl_805C8B58, 0x800);
    return 0;
}
