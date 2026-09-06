"""
Convert a dtk auto-disasm dump into a raw GNU-AS .s file (NOT the MWCC .c
ASM-block format tools/asm_transcribe.py produces) - for functions in the
extab-heavy region that need their own hand-supplied extab/extabindex
content (see project_fsa_extab_bug_resolved.md for why plain .c files can't
supply that content).

Fix-set applied (GNU-AS specific, distinct from the MWCC one):
  - any branch whose operand is a local label (.L_XXXXXXXX) -> raw .4byte
  - any instruction containing @sda21 -> raw .4byte
  - GPR/FPR operands: strip the leading r/f prefix dtk's dump uses (this
    binutils build has no register-name aliases loaded - bare numbers only)
  - extab/extabindex header blocks -> .global + explicit .size (required
    fix from project_fsa_extab_bug_resolved.md)

Usage: py dump_to_gnuas.py <auto_disasm.s> <out.s>
"""
import re
import sys

INSTR_RE = re.compile(r'^/\* ([0-9A-Fa-f]+) ([0-9A-Fa-f]+)\s+([0-9A-Fa-f ]+?)\s*\*/\t(.*)$')
FN_RE = re.compile(r'^\.fn (\S+), (?:global|weak|local)$')
ENDFN_RE = re.compile(r'^\.endfn (\S+)$')
LABEL_RE = re.compile(r'^(\.L_[0-9A-Fa-f]+):$')
# Bare zero-size boundary markers (e.g. gTRKInterruptVectorTable, __OSDBINTSTART) -
# dtk emits these both between .fn/.endfn blocks (marking a function-boundary
# address) and mid-function (marking an internal label at a specific offset).
# Earlier hand-fixes (round with the MetroTRK vector table, 8003F960's
# __OSDBINTSTART/etc family) patched individual files after the fact; this is
# the permanent fix - see project_fsa_fresh_gap_hunt_2026_08_25.md.
SYM_RE = re.compile(r'^\.sym (\S+), (?:global|weak|local)$')
branch_mnems = {'b', 'bl', 'beq', 'bne', 'blt', 'bgt', 'ble', 'bge', 'bdnz', 'bdz'}

EXTAB_HDR_RE = re.compile(r'^# (0x[0-9A-Fa-f]+)\.\.(0x[0-9A-Fa-f]+) \| size: (0x[0-9A-Fa-f]+)$')
OBJ_RE = re.compile(r'^\.obj "@(\w+)", (local|global)$')
BYTE_RE = re.compile(r'^\t\.4byte (\S+)$')


def branch_target(operand):
    return operand.rsplit(',', 1)[-1].strip()


CR_BIT_OFFSET = {'lt': 0, 'gt': 1, 'eq': 2, 'so': 3}


def strip_reg_prefixes(operand):
    # GPRs: r0-r31 -> bare number. FPRs: f0-f31 -> bare number.
    # Quantization regs (psq_l/psq_st): qr0-qr7 -> bare number - GNU AS has
    # no register-name alias for these either, and unlike GPRs/FPRs a
    # leftover "qr0" doesn't even error as "unrecognized opcode" - it errors
    # later as "unsupported relocation against qr0" (parsed as an undefined
    # symbol), same underlying cause as the f0/r0 case.
    # CR-field bit aliases (cr0lt/cr1eq/etc, seen as crclr/crset/mfcr operands
    # in dtk dumps): GNU AS has no alias for these either - same "unsupported
    # relocation against crNxx" failure, fixed the same way (bare bit number
    # 0-31, field N's sub-bit at N*4+{lt:0,gt:1,eq:2,so:3}).
    # Word-boundary guarded so lbl_/fn_ symbol names are never touched.
    operand = re.sub(r'\bqr([0-7])\b', r'\1', operand)
    # GQR0-7 (mtspr/mfspr operand): same "unsupported relocation" failure as
    # qr0-7 - GNU AS has no register-name alias, translate to the raw SPR
    # number (GQR0=912 .. GQR7=919); verified byte-identical to retail via
    # direct assembly+compare (mtspr GQR2,r3 and mtspr 914,r3 both encode to
    # 0x7C72E3A6).
    operand = re.sub(r'\bGQR([0-7])\b', lambda m: str(912 + int(m.group(1))), operand)
    # Other named SPRs (mtspr/mfspr operand): same failure class as GQR0-7 -
    # GNU AS has no register-name alias for ANY of these named SPRs, only
    # bare numbers. Every value below was decoded directly from real retail
    # opcode bytes (not looked up from a reference table) via the PowerPC
    # spr-field bit-swap formula spr = ((opcode>>11)&0x1F)*32 +
    # ((opcode>>16)&0x1F), then cross-checked for internal consistency
    # (every occurrence of a given name across the whole dump must decode to
    # the same number) - GQR2's value (914) was independently verified
    # byte-identical via direct assembly+compare first, establishing the
    # formula, before trusting it for the rest.
    named_sprs = {
        'DABR': 1013, 'DMA_L': 923, 'DMA_U': 922, 'HID0': 1008, 'HID1': 1009,
        'HID2': 920, 'IABR': 1010, 'ICTC': 1019, 'L2CR': 1017, 'MMCR0': 952,
        'MMCR1': 956, 'PMC1': 953, 'PMC2': 954, 'PMC3': 957, 'PMC4': 958,
        'PVR': 287, 'SIA': 955, 'THRM1': 1020, 'THRM2': 1021, 'THRM3': 1022,
        'USDA': 943, 'SDA': 959, 'UMMCR0': 936, 'UMMCR1': 940, 'UPMC1': 937,
        'UPMC2': 938, 'UPMC3': 941, 'UPMC4': 942, 'USIA': 939, 'WPAR': 921,
    }
    operand = re.sub(r'\b(' + '|'.join(named_sprs) + r')\b',
                      lambda m: str(named_sprs[m.group(1)]), operand)
    operand = re.sub(r'\bcr([0-7])(lt|gt|eq|so)\b',
                      lambda m: str(int(m.group(1)) * 4 + CR_BIT_OFFSET[m.group(2)]), operand)
    operand = re.sub(r'\br([0-9]|[12][0-9]|3[01])\b', r'\1', operand)
    operand = re.sub(r'\bf([0-9]|[12][0-9]|3[01])\b', r'\1', operand)
    return operand


def parse_extab_section(lines, i, section_name):
    """Parse a '.section extab/extabindex, "a"' block starting at line i.
    A block may contain MULTIPLE '.obj "@name", local' ... '.endobj' entries
    (dtk emits one per fused function that needs exception data) - every
    entry must be preserved individually, since a later entry's own
    '.4byte "@etb_X"' cross-reference can point at ANY earlier object, not
    just the first (the eti-to-etb mapping is not necessarily in address
    order). Returns (objects, next_i) where objects is a list of
    (hdr_or_None, obj_name, [raw .4byte value strings], is_global).

    is_global matters: a 'global'-scoped object is referenced by OTHER
    translation units under its literal dtk-internal name '@name' (the '@'
    is part of the symbol, quoted in GNU AS). Stripping the '@' is safe for
    the overwhelming majority of 'local' objects (nothing outside the
    current file ever references those) but breaks linking for the rare
    'global' one - the emitted symbol must keep the exact '"@name"' form so
    external references (e.g. an auto-generated *_data.o rodata object)
    still resolve."""
    objects = []
    obj_name = None
    is_global = False
    values = []
    hdr = None
    j = i
    while j < len(lines):
        line = lines[j]
        if line.strip().startswith('.section '):
            break
        for k in range(max(0, j - 3), j):
            m = EXTAB_HDR_RE.match(lines[k])
            if m:
                hdr = m
        m = OBJ_RE.match(line)
        if m:
            obj_name = m.group(1)
            is_global = (m.group(2) == 'global')
            values = []
            j += 1
            continue
        bm = BYTE_RE.match(line)
        if bm:
            values.append(bm.group(1))
            j += 1
            continue
        if line.startswith('.endobj'):
            if obj_name is not None:
                objects.append((hdr, obj_name, values, is_global))
            obj_name = None
            is_global = False
            values = []
            j += 1
            continue
        j += 1
    return objects, j


def convert(src_path, out_path):
    lines = open(src_path).read().splitlines()
    out = []
    extab_info = []
    extabindex_info = []
    ctors_info = []
    i = 0
    while i < len(lines):
        l = lines[i]
        if l.strip() == '.section extab, "a"':
            objects, i = parse_extab_section(lines, i + 2, 'extab')
            extab_info.extend(objects)
            continue
        if l.strip() == '.section extabindex, "a"':
            objects, i = parse_extab_section(lines, i + 2, 'extabindex')
            extabindex_info.extend(objects)
            continue
        if l.strip() == '.section .ctors, "a"':
            # trailing single .4byte fn_XXX ctor entry
            for j in range(i + 1, min(i + 5, len(lines))):
                bm = BYTE_RE.match(lines[j])
                if bm:
                    ctors_info.append(bm.group(1))
                    break
        i += 1

    func_order = []
    cur_fn = None
    func_bodies = {}
    extra_globals = []
    pending_syms = []
    for l in lines:
        fm = FN_RE.match(l)
        if fm:
            cur_fn = fm.group(1)
            func_order.append(cur_fn)
            func_bodies[cur_fn] = []
            for name in pending_syms:
                func_bodies[cur_fn].append(('sym', name))
                extra_globals.append(name)
            pending_syms = []
            continue
        em = ENDFN_RE.match(l)
        if em:
            cur_fn = None
            continue
        sm = SYM_RE.match(l)
        if sm:
            if cur_fn is None:
                # Between functions - a zero-size marker at the address the
                # NEXT .fn block starts at, so attach it as a leading item
                # once that .fn line is reached (see above).
                pending_syms.append(sm.group(1))
            else:
                # Mid-function - a zero-size marker at the current offset.
                func_bodies[cur_fn].append(('sym', sm.group(1)))
                extra_globals.append(sm.group(1))
            continue
        if cur_fn is None:
            continue
        lm = LABEL_RE.match(l)
        if lm:
            func_bodies[cur_fn].append(('label', lm.group(1)))
            continue
        im = INSTR_RE.match(l)
        if im:
            addr, off, byts, rest = im.groups()
            byts = byts.replace(' ', '')
            parts = rest.split(None, 1)
            mnem = parts[0]
            operand = parts[1] if len(parts) > 1 else ''
            func_bodies[cur_fn].append(('instr', addr, byts, mnem, operand))

    # Global-scoped objects keep dtk's literal '@name' symbol (quoted, since
    # '@' isn't a normal identifier char) - other translation units resolve
    # them under that exact name. Local ones drop the '@' as before (never
    # referenced outside this file, and hundreds of existing landings rely
    # on the plain form).
    global_names = {obj_name for hdr, obj_name, values, is_global in (extab_info + extabindex_info) if is_global}

    def emit_name(name):
        return f'"@{name}"' if name in global_names else name

    if extab_info:
        out.append('.section extab, "a"')
        out.append('.balign 4')
        for hdr, obj_name, values, is_global in extab_info:
            label = emit_name(obj_name)
            out.append(f'.global {label}')
            out.append(f'{label}:')
            for v in values:
                out.append(f'    .4byte {v}')
            out.append(f'.size {label}, {len(values) * 4}')
            out.append('')

    if extabindex_info:
        out.append('.section extabindex, "a"')
        out.append('.balign 4')
        for hdr, obj_name, values, is_global in extabindex_info:
            label = emit_name(obj_name)
            out.append(f'.global {label}')
            out.append(f'{label}:')
            for v in values:
                bare = v.strip('"@')
                v = f'"@{bare}"' if bare in global_names else bare
                out.append(f'    .4byte {v}')
            out.append(f'.size {label}, {len(values) * 4}')
            out.append('')

    out.append('.text')
    out.append('.balign 4')
    for fn in func_order:
        out.append(f'.global {fn}')
    for name in extra_globals:
        out.append(f'.global {name}')
    out.append('')

    uses_paired_single = False
    for fn in func_order:
        out.append(f'{fn}:')
        for item in func_bodies[fn]:
            if item[0] == 'label':
                out.append(item[1][1:] + ':')
                continue
            if item[0] == 'sym':
                out.append(item[1] + ':')
                continue
            _, addr, byts, mnem, operand = item
            if mnem.startswith('psq_') or mnem.startswith('ps_'):
                uses_paired_single = True
            needs_raw = (
                (mnem in branch_mnems and branch_target(operand).startswith('.L_'))
                or '@sda21' in operand
            )
            if needs_raw:
                orig = (mnem + ' ' + operand).strip()
                out.append(f'    .4byte 0x{byts.upper()} # {orig}')
                continue
            operand = strip_reg_prefixes(operand)
            line = mnem if not operand else f'{mnem} {operand}'
            out.append('    ' + line)
        out.append('')

    if ctors_info:
        out.append('.section .ctors, "a"')
        out.append('.balign 4')
        for c in ctors_info:
            out.append(f'    .4byte {c}')
        out.append('')

    open(out_path, 'w').write('\n'.join(out) + '\n')
    print(f'Wrote {out_path}: {len(func_order)} functions')
    if extab_info:
        print(f'  extab: {", ".join(o[1] for o in extab_info)}')
    if extabindex_info:
        print(f'  extabindex: {", ".join(o[1] for o in extabindex_info)}')
    if ctors_info:
        print(f'  ctors: {", ".join(ctors_info)}')
    if extra_globals:
        print(f'  sym markers preserved: {", ".join(extra_globals)}')
    if pending_syms:
        print(f'  WARNING: trailing .sym marker(s) with no following .fn, DROPPED: {", ".join(pending_syms)}')
    if uses_paired_single:
        print('  NOTE: uses psq_l/psq_st - add "-mgekko" to this Object()\'s '
              'cflags in configure.py or GNU AS will reject the mnemonic '
              '(plain -W is not enough, see project_fsa_extab_bug_resolved.md)')


if __name__ == '__main__':
    convert(sys.argv[1], sys.argv[2])
