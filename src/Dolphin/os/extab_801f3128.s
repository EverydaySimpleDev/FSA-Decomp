# Fresh-gap-hunt batch 23 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.text
.balign 4
.global fn_801F3128
.global fn_801F317C
.global fn_801F31C4

fn_801F3128:
    lfs 1, 0x6c(3)
    lfs 4, 0x10(3)
    lfs 0, 0x64(3)
    lfs 2, 0x68(3)
    fadds 3, 1, 4
    lfs 7, 0xc(3)
    fadds 1, 0, 4
    lfs 6, 0x14(3)
    lfs 0, 0x60(3)
    fadds 4, 2, 7
    fsubs 5, 3, 6
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    fadds 0, 0, 7
    fsubs 3, 1, 6
    fsubs 1, 0, 4
    fsubs 0, 3, 5
    fmadds 1, 2, 1, 4
    fmadds 0, 2, 0, 5
    stfs 1, 0x0(4)
    stfs 0, 0x4(4)
    blr

fn_801F317C:
    lfs 5, 0x10(3)
    lfs 1, 0x74(3)
    lfs 7, 0xc(3)
    lfs 0, 0x70(3)
    fadds 1, 1, 5
    lfs 6, 0x14(3)
    fadds 0, 0, 7
    lfs 3, 0x7c(3)
    lfs 2, 0x78(3)
    fsubs 4, 1, 6
    fadds 1, 3, 5
    stfs 0, 0x0(4)
    fadds 0, 2, 7
    stfs 4, 0x4(4)
    fsubs 1, 1, 6
    stfs 0, 0x8(4)
    stfs 1, 0xc(4)
    blr

fn_801F31C4:
    lfs 5, 0x10(3)
    lfs 1, 0x64(3)
    lfs 7, 0xc(3)
    lfs 0, 0x60(3)
    fadds 1, 1, 5
    lfs 6, 0x14(3)
    fadds 0, 0, 7
    lfs 3, 0x6c(3)
    lfs 2, 0x68(3)
    fsubs 4, 1, 6
    fadds 1, 3, 5
    stfs 0, 0x0(4)
    fadds 0, 2, 7
    stfs 4, 0x4(4)
    fsubs 1, 1, 6
    stfs 0, 0x8(4)
    stfs 1, 0xc(4)
    blr

