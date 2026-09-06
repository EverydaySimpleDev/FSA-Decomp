#include <types.h>

extern void MWTRACE(int type, ...);
extern void fn_8015D328(int param1, int param2);
extern int fn_80150904(void* state, void* buffer, int size);
extern char lbl_8020D95C[0x14];
extern char lbl_8020D970[0x18];
extern char lbl_805C9878[0x20];
extern char lbl_805C9378[0x500];

//80150C20
int gdev_cc_initialize(int param1, int param2)
{
    MWTRACE(1, lbl_8020D95C);
    fn_8015D328(param1, param2);
    MWTRACE(1, lbl_8020D970);
    fn_80150904(lbl_805C9878, lbl_805C9378, 0x500);
    return 0;
}
