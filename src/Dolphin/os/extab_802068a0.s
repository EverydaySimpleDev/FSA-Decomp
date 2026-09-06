/*
 * NEW ACTOR (vtable lbl_804A5A30). qsort comparator used by
 * fn_802063FC: orders two candidates by squared distance from a
 * reference point (lbl_8053AC60), for the nearest-of-batch search.
 */
.text
.balign 4
.global fn_802068A0

fn_802068A0:
    lwz 6, 0x0(3)
    .4byte 0x38AD90A0 # li r5, lbl_8053AC60@sda21
    lwz 4, 0x0(4)
    li 3, 0x0
    lfs 1, 0x10(6)
    lfs 3, 0x4(5)
    lfs 0, 0x10(4)
    fsubs 2, 1, 3
    lfs 1, 0xc(6)
    .4byte 0xC0AD90A0 # lfs f5, lbl_8053AC60@sda21(r0)
    fsubs 4, 0, 3
    lfs 0, 0xc(4)
    fsubs 1, 1, 5
    fsubs 0, 0, 5
    fmuls 2, 2, 2
    fmuls 3, 1, 1
    fmuls 1, 0, 0
    fmuls 0, 4, 4
    fadds 2, 3, 2
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_80206900
    li 3, -0x1
    blr
L_80206900:
    blelr
    li 3, 0x1
    blr

