#include <baselib/state.h>

extern struct {
    int mask;
    void (*func)(void);
} invalidate_funcs[];

//801A9F7C
void HSD_StateInvalidate(int mask)
{
    int i;
    for (i = 0; invalidate_funcs[i].mask != HSD_STATE_NONE; i++) {
        if (mask & invalidate_funcs[i].mask) {
            invalidate_funcs[i].func();
        }
    }
}
