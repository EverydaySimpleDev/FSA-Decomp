.section extab, "a"
.balign 4
.global etb_80006124
etb_80006124:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006124, 8

.section extabindex, "a"
.balign 4
.global eti_8001267C
eti_8001267C:
    .4byte fn_8011CC2C
    .4byte 0x00000078
    .4byte etb_80006124
.size eti_8001267C, 12

# fn_8011CC2C - "DMLK" real constructor. Calls the shared base
# fn_8010E074 (see project_fsa_dispatcher_mass_landing.md), installs
# its own vtable lbl_8049DB90, plus its own direct inline field
# defaults: 0x230=0x1, 0x231=0x0, 0x234=0x0, 0x238=0x0, 0x23c=0x0, 0x240=0x0, 0x244=float from lbl_8053C7D8, 0x248=float from lbl_8053C7D8, 0x254=float from lbl_8053C7D8, 0x250=float from lbl_8053C7D8, 0x25c=float from lbl_8053C7D8, 0x258=float from lbl_8053C7D8. Identified via the fn_801F9484 dispatcher sweep
# (see reference_fsa_full_dispatch_sweep.md).
.text
.balign 4
.global fn_8011CC2C

fn_8011CC2C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049DB90@ha
    li 4, 0x1
    addi 3, 3, lbl_8049DB90@l
    li 0, 0x0
    stw 3, 0x0(31)
    mr 3, 31
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    stb 4, 0x230(31)
    stb 0, 0x231(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stfs 0, 0x244(31)
    stfs 0, 0x248(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x258(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

