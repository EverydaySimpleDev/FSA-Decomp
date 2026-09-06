/*
 * fn_8010673C(this): a second constructor/full-reset entry point for
 * the fn_80106040-class - resets the vtable to the SAME lbl_8049CC40
 * used by that class's own base destructor, but does NOT call any
 * dtor_* helper, so this is init, not teardown. Zeroes this->0x230/
 * 0x234 (overwriting whatever fn_8010666C's manager calls previously
 * set - the two constructors are mutually exclusive init paths, not
 * sequential steps). Fills a 16-slot byte array at this->0x238 with
 * sequential indices 0-15 (a different convention than the "same value
 * repeated" 16-slot arrays seen elsewhere - this one is a real index
 * table). Sets this->0x248=-1 (handle sentinel), a large block of
 * default byte/bool fields (0x254-0x270), float pairs (0x280-0x28c),
 * and zeroes counters (0x290-0x2a4). Reads as the class's OTHER,
 * fuller default-initialization path.
 */

.section extab, "a"
.balign 4
.global etb_80005A54
etb_80005A54:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005A54, 8

.section extabindex, "a"
.balign 4
.global eti_80011E90
eti_80011E90:
    .4byte fn_8010673C
    .4byte 0x0000017C
    .4byte etb_80005A54
.size eti_80011E90, 12

.text
.balign 4
.global fn_8010673C

fn_8010673C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 4, lbl_8049CC40@ha
    li 3, 0x0
    addi 4, 4, lbl_8049CC40@l
    li 0, -0x1
    stw 4, 0x0(31)
    stw 3, 0x230(31)
    stw 3, 0x234(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    .4byte 0x48000084 # b .L_801067FC
L_8010677C:
    clrlwi 4, 3, 24
    addi 5, 3, 0x1
    addi 0, 4, 0x238
    addi 7, 3, 0x2
    clrlwi 4, 5, 24
    stbx 3, 31, 0
    addi 0, 4, 0x238
    addi 6, 3, 0x3
    stbx 5, 31, 0
    clrlwi 4, 7, 24
    addi 0, 4, 0x238
    addi 5, 3, 0x4
    stbx 7, 31, 0
    clrlwi 4, 6, 24
    addi 0, 4, 0x238
    addi 7, 3, 0x5
    stbx 6, 31, 0
    clrlwi 4, 5, 24
    addi 0, 4, 0x238
    addi 6, 3, 0x6
    stbx 5, 31, 0
    clrlwi 4, 7, 24
    addi 0, 4, 0x238
    addi 5, 3, 0x7
    clrlwi 4, 6, 24
    stbx 7, 31, 0
    addi 0, 4, 0x238
    addi 3, 3, 0x8
    clrlwi 4, 5, 24
    stbx 6, 31, 0
    addi 0, 4, 0x238
    stbx 5, 31, 0
L_801067FC:
    clrlwi 0, 3, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF78 # blt .L_8010677C
    li 7, -0x1
    li 6, 0x0
    stw 7, 0x248(31)
    li 5, 0x1
    li 4, 0x3
    li 0, 0x2
    stw 6, 0x24c(31)
    mr 3, 31
    .4byte 0xC02292F4 # lfs f1, lbl_8053C294@sda21(r0)
    stw 6, 0x250(31)
    .4byte 0xC00292F8 # lfs f0, lbl_8053C298@sda21(r0)
    stb 6, 0x254(31)
    stb 6, 0x255(31)
    stb 6, 0x256(31)
    stb 5, 0x257(31)
    stb 5, 0x258(31)
    stb 6, 0x259(31)
    stb 6, 0x25a(31)
    stb 6, 0x25b(31)
    stb 6, 0x25c(31)
    stb 6, 0x25d(31)
    stb 5, 0x25e(31)
    stw 4, 0x260(31)
    stb 5, 0x264(31)
    stb 6, 0x265(31)
    stb 6, 0x266(31)
    stw 7, 0x268(31)
    stw 6, 0x26c(31)
    stw 0, 0x270(31)
    stfs 1, 0x280(31)
    stfs 1, 0x284(31)
    stfs 0, 0x288(31)
    stfs 0, 0x28c(31)
    stw 6, 0x290(31)
    stw 6, 0x294(31)
    stw 6, 0x298(31)
    stw 6, 0x29c(31)
    stw 6, 0x2a0(31)
    stw 6, 0x2a4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

