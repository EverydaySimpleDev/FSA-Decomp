#include <types.h>

extern void MWTRACE(int type, ...);
extern u32 fn_8018D40C(u32 count);
extern u32 fn_8018D414(void* buf, u32 count);
extern int fn_801507FC(void* state, void* buf, u32 count);
extern u32 fn_80150954(void* state);
extern int fn_801506F4(void* state, void* data, u32 length);
extern char lbl_8020D824[0x28];
extern char lbl_8020D84C[0x30];
extern char lbl_805C9358[0x20];
extern int lbl_8065B380[2];

//8015054C
int ddh_cc_read(u8* data, u32 length)
{
    char* channelState;
    char buf[0x800];
    u32 count;
    u32 available;
    u32 errorCode = 0;

    if (lbl_8065B380[0] == 0) {
        return -0x2711;
    }

    MWTRACE(1, lbl_8020D824, length, length);

    channelState = lbl_805C9358;

    while ((available = fn_80150954(channelState)) < length) {
        errorCode = 0;
        count = fn_8018D40C(available);
        if (count == 0) {
            continue;
        }
        errorCode = fn_8018D414(buf, count);
        if (errorCode != 0) {
            continue;
        }
        fn_801507FC(channelState, buf, count);
    }

    if (errorCode == 0) {
        fn_801506F4(channelState, data, length);
    } else {
        MWTRACE(8, lbl_8020D84C, errorCode);
    }

    return errorCode;
}
