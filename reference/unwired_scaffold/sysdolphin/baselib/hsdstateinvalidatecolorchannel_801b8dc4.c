#include <string.h>
#include <types.h>

extern int prev_ch[48];
extern int invalid_prev_ch[48];
extern struct {
    int unk0, unk4;
} prev_amb_invalid, prev_mat_invalid;
extern int prev_num_chans;

//801B8DC4
void _HSD_StateInvalidateColorChannel(void)
{
    memcpy(&prev_ch, &invalid_prev_ch, sizeof(prev_ch));
    prev_mat_invalid.unk0 = 1;
    prev_mat_invalid.unk4 = 1;
    prev_amb_invalid.unk0 = 1;
    prev_amb_invalid.unk4 = 1;
    prev_num_chans = -1;
}
