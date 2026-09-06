#include <types.h>

extern int fn_8018D40C(int param);
extern int fn_8018D414(void* buf, int count);
extern int fn_801507FC(void* state, void* buf, int count);
extern char lbl_805C9358[0x20];

//801503D4
int ddh_cc_peek(int param)
{
    char buf[0x800];
    int count = fn_8018D40C(param);
    if (count <= 0) {
        return 0;
    }
    if (fn_8018D414(buf, count) == 0) {
        fn_801507FC(lbl_805C9358, buf, count);
    } else {
        return -0x2719;
    }
    return count;
}
