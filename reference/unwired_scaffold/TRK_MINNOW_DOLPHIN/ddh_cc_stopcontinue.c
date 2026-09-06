#include <types.h>

extern void fn_8018D428(void);
extern void fn_8018D424(void);

//80150468
int ddh_cc_pre_continue(void)
{
    fn_8018D428();
    return 0;
}

//80150444
int ddh_cc_post_stop(void)
{
    fn_8018D424();
    return 0;
}
