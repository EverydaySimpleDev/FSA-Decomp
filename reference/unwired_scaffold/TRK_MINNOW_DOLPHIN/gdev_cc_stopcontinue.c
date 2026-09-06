#include <types.h>

extern void fn_8015CF44(void);
extern void fn_8015CF48(void);

//80150A14
int gdev_cc_pre_continue(void)
{
    fn_8015CF44();
    return 0;
}

//801509F0
int gdev_cc_post_stop(void)
{
    fn_8015CF48();
    return 0;
}
