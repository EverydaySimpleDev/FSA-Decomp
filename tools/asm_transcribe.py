"""
Mechanically transcribe a dtk auto-disassembly dump into a whole-function-ASM
C file, applying the fix-set established in this project's memory:
  - any branch whose operand is a local label (.L_XXXXXXXX) -> opword
  - any instruction containing @sda21 -> opword
  - symbolic CR field names (crNlt/gt/eq/so) -> numeric bit index
  - fN float registers -> fpN (only matters for non-opword'd instructions)
  - qrN paired-single quantization regs -> bare N (only matters for non-opword'd)

Usage: py tools/asm_transcribe.py <auto_disasm.s> <out.c> [symbols.txt]
"""
import re
import sys

SYMTAB_RE = re.compile(r'^(\S+) = \.\w+:(0x[0-9A-Fa-f]+);')
SUFFIX_RE = re.compile(r'^(.+)_([0-9A-Fa-f]{6,8})$')
# @ha/@h: high 16 bits (adjusted/raw) of an address, used with lis/addis.
# @l: low 16 bits, used with addi/ori/etc and as a load/store offset.
# @sda21: r13/r2-relative small-data offset (always opword'd separately).
SYM_REF_RE = re.compile(r'([A-Za-z_][A-Za-z0-9_]*)@(?:ha|h|l|sda21)\b')


def load_symtab(path):
    """name -> addr, and addr -> name, from a decomp-toolkit symbols.txt."""
    by_name = {}
    by_addr = {}
    with open(path) as f:
        for line in f:
            m = SYMTAB_RE.match(line)
            if m:
                name, addr_s = m.group(1), m.group(2)
                addr = int(addr_s, 16)
                by_name[name] = addr
                by_addr.setdefault(addr, name)
    return by_name, by_addr


def resolve_symbol(name, by_name, by_addr):
    """dtk's disasm dump suffixes scope:local symbol names with "_ADDRESS"
    for disambiguation in the display (e.g. real symbol "AlarmForTimeout" at
    0x804B5878 shows as "AlarmForTimeout_804B5878") - that suffixed form is
    NOT the real symbols.txt name and doesn't exist as a linkable symbol.
    Declaring/referencing it literally creates a phantom duplicate symbol
    instead of resolving to the real one, silently corrupting layout with no
    link error (the true bug behind a long-unsolved corruption this project
    hit - see project_fsa_jkraram_cluster_progress.md bug #8/#9).
    Returns the correct real name to emit, or None if truly unresolvable
    (caller should opword instead of guessing).
    """
    if name in by_name:
        return name
    m = SUFFIX_RE.match(name)
    if m:
        base, addr_hex = m.group(1), m.group(2)
        addr = int(addr_hex, 16)
        if by_name.get(base) == addr:
            return base
        # the suffix might itself be the real address of an unlisted/local
        # symbol dtk invented a display name for - if nothing owns that
        # address at all, we can't safely emit any symbolic reference.
    return None

CR_MAP = {'lt': 0, 'gt': 1, 'eq': 2, 'so': 3}
CRCLR_RE = re.compile(r'^cr(\d+)(lt|gt|eq|so)$')
CR_FIELD_MNEMS = {'crclr', 'crset'}
FREG_RE = re.compile(r'\bf(\d+)\b')
QREG_RE = re.compile(r'\bqr(\d+)\b')

branch_mnems = {'b', 'bl', 'beq', 'bne', 'blt', 'bgt', 'ble', 'bge', 'bdnz', 'bdz'}

# Functions confirmed (via repo-wide grep for "bl NAME") to have zero
# symbolic callers anywhere in the disassembly - genuine orphans, likely
# reached only via computed/table-based jumps rather than a real `bl`.
# Emitting them as independently-named ASM functions gets them silently
# dead-stripped by MWCC's linker (shrinking our object vs retail) since
# nothing appears to reference them; fold them onto the preceding function
# instead, same as a dtk "gap_" filler.
ORPHAN_MERGE_INTO_PRECEDING = {'fn_80065238', 'fn_80065248'}

# Rare/privileged mnemonics MWCC's inline assembler doesn't recognize
# ("unknown assembler instruction mnemonic") even though they're valid PPC -
# always opword these regardless of operand shape.
UNSUPPORTED_MNEMS = {'twui', 'rfi'}

# mfspr/mtspr accept either a numeric SPR or a symbolic name (HID0, GQR0,
# ...), but MWCC only recognizes SOME of the symbolic names as predefined
# constants - others (USDA, USIA, UMMCR0/1, UPMC1-4, WPAR, SDA, ...) hit
# "illegal forward label or undefined symbol". Rather than maintain a table
# of which names MWCC accepts, always opword the whole family.
SPR_MNEMS = {'mfspr', 'mtspr', 'mfsprg', 'mtsprg'}

INSTR_RE = re.compile(r'^/\* ([0-9A-Fa-f]+) ([0-9A-Fa-f]+)\s+([0-9A-Fa-f ]+?)\s*\*/\t(.*)$')
FN_RE = re.compile(r'^\.fn (\S+), (?:global|weak|local)$')
ENDFN_RE = re.compile(r'^\.endfn (\S+)$')
LABEL_RE = re.compile(r'^(\.L_[0-9A-Fa-f]+):$')


CTORS_HDR_RE = re.compile(r'^# (0x[0-9A-Fa-f]+)\.\.(0x[0-9A-Fa-f]+) \| size: 0x4$')
CTORS_BYTE_RE = re.compile(r'^\t\.4byte (\S+)$')


def parse_ctors(lines):
    """Detect a trailing '.section .ctors, "a" / .4byte SYMBOL' block dtk
    emits when a function is registered as a global static initializer."""
    for i, l in enumerate(lines):
        if l.strip() == '.section .ctors, "a"':
            hdr = CTORS_HDR_RE.match(lines[i - 1]) if i > 0 else None
            byte_m = None
            for j in range(i + 1, min(i + 4, len(lines))):
                m = CTORS_BYTE_RE.match(lines[j])
                if m:
                    byte_m = m
                    break
            if hdr and byte_m:
                return hdr.group(1), hdr.group(2), byte_m.group(1)
    return None


def parse(src_path):
    lines = open(src_path).read().splitlines()
    func_order = []
    cur_fn = None
    append_target = None
    func_bodies = {}
    for l in lines:
        fm = FN_RE.match(l)
        if fm:
            name = fm.group(1)
            if (name.startswith('gap_') or name in ORPHAN_MERGE_INTO_PRECEDING) and func_order:
                # dtk names small filler/junk regions between real functions
                # "gap_NN_ADDR_text" - these have no callers, so emitting
                # them as their own standalone function gets them silently
                # dead-stripped by the linker (unreferenced global function),
                # shrinking our object vs retail. Fold their bytes onto the
                # end of the immediately preceding real function instead,
                # which IS referenced and survives.
                cur_fn = name
                append_target = func_order[-1]
            else:
                cur_fn = name
                append_target = name
                func_order.append(cur_fn)
                func_bodies[cur_fn] = []
            continue
        em = ENDFN_RE.match(l)
        if em:
            cur_fn = None
            append_target = None
            continue
        if append_target is None:
            continue
        lm = LABEL_RE.match(l)
        if lm:
            func_bodies[append_target].append(('label', lm.group(1)))
            continue
        im = INSTR_RE.match(l)
        if im:
            addr, off, byts, rest = im.groups()
            byts = byts.replace(' ', '')
            parts = rest.split(None, 1)
            mnem = parts[0]
            operand = parts[1] if len(parts) > 1 else ''
            func_bodies[append_target].append(('instr', addr, byts, mnem, operand))
    return func_order, func_bodies


def fix_crclr_operand(operand):
    m = CRCLR_RE.match(operand.strip())
    if not m:
        return operand
    n = int(m.group(1))
    bit = 4 * n + CR_MAP[m.group(2)]
    return str(bit)


def fix_registers(operand):
    operand = FREG_RE.sub(lambda m: 'fp' + m.group(1), operand)
    operand = QREG_RE.sub(lambda m: m.group(1), operand)
    return operand


def strip_dot(label):
    return label[1:]


def branch_target(operand):
    """The actual branch target is the last comma-separated token - some
    conditional branches specify an explicit CR field first, e.g.
    'bne cr1, .L_800886B8' rather than plain 'bne .L_800886B8'."""
    return operand.rsplit(',', 1)[-1].strip()


def unresolvable_symbols(operand, local_names, by_name, by_addr):
    """Symbol names referenced via @ha/@l/@sda21 that resolve_symbol() can't
    map to a real symbols.txt entry (and aren't one of this file's own
    functions, which don't need a symtab lookup)."""
    bad = []
    for m in SYM_REF_RE.finditer(operand):
        sym = m.group(1)
        if sym in local_names:
            continue
        if resolve_symbol(sym, by_name, by_addr) is None:
            bad.append(sym)
    return bad


def needs_opword(mnem, operand, local_names=frozenset(), by_name=None, by_addr=None):
    """True if this instruction can't be transcribed as symbolic MWCC asm
    and must be emitted as a raw opword from dtk's own resolved bytes."""
    if mnem in UNSUPPORTED_MNEMS or mnem in SPR_MNEMS:
        return True
    if mnem.startswith('.'):
        # dtk emits a raw ".4byte 0x... /* invalid */" directive (not a real
        # mnemonic) when it can't disassemble a word - typically embedded
        # data (jump tables, literal pool constants) misclassified as .text
        # by dtk's function-boundary heuristic. Always opword these; we
        # already have the exact raw bytes regardless of what they represent.
        return True
    if mnem in branch_mnems and branch_target(operand).startswith('.L_'):
        return True
    if '@sda21' in operand:
        return True
    if '"@' in operand or '$' in operand:
        # dtk displays anonymous/disambiguated symbols (symbols.txt names
        # like "@N" or "block$16") suffixed with "_ADDRESS" for readability,
        # but neither the quoted form nor a bare "$" in an identifier is
        # valid MWCC assembler syntax ("unexpected token" / "illegal use of
        # label ... can only use label difference in this context"). We
        # already have the exact resolved bytes, so opword bypasses the
        # naming problem entirely rather than guessing the right
        # bare-identifier syntax.
        return True
    if by_name is not None and unresolvable_symbols(operand, local_names, by_name, by_addr):
        return True
    return False


def rewrite_symbols(operand, local_names, by_name, by_addr):
    """Replace any dtk display name (e.g. a scope:local symbol's
    "NAME_ADDRESS" disambiguated form) with the real symbols.txt name."""
    def sub(m):
        sym = m.group(1)
        if sym in local_names:
            return m.group(0)
        real = resolve_symbol(sym, by_name, by_addr)
        return m.group(0).replace(sym, real, 1) if real else m.group(0)
    return SYM_REF_RE.sub(sub, operand)


def transcribe(src_path, out_path, symbols_path='config/G4SE01/symbols.txt'):
    by_name, by_addr = load_symtab(symbols_path)
    lines = open(src_path).read().splitlines()
    ctors = parse_ctors(lines)
    func_order, func_bodies = parse(src_path)
    local_names = set(func_order)

    call_targets = set()
    data_syms = set()
    for fn in func_order:
        for item in func_bodies[fn]:
            if item[0] != 'instr':
                continue
            _, addr, byts, mnem, operand = item
            if needs_opword(mnem, operand, local_names, by_name, by_addr):
                continue
            if mnem in branch_mnems and operand and not branch_target(operand).startswith('.L_'):
                call_targets.add(branch_target(operand))
            for m in SYM_REF_RE.finditer(operand):
                sym = m.group(1)
                if sym not in local_names:
                    data_syms.add(resolve_symbol(sym, by_name, by_addr))

    external_calls = sorted(c for c in call_targets if c not in local_names)
    # a symbol that's both bl'd AND referenced via @ha/@l is a function pointer
    # taken by address elsewhere - keep it ONLY as extern void X(void), never
    # redeclare it as extern f32 X too (that would be a conflicting redecl).
    data_syms -= set(external_calls)

    out = []
    out.append('#include "types.h"')
    out.append('')
    for d in sorted(data_syms):
        out.append(f'extern f32 {d};')
    out.append('')
    for c in external_calls:
        out.append(f'extern void {c}(void);')
    out.append('')
    for fn in func_order:
        out.append(f'ASM void {fn}(void);')
    out.append('')

    for fn in func_order:
        out.append(f'ASM void {fn}(void)')
        out.append('{')
        out.append('    nofralloc')
        for item in func_bodies[fn]:
            if item[0] == 'label':
                out.append(strip_dot(item[1]) + ':')
                continue
            _, addr, byts, mnem, operand = item
            if needs_opword(mnem, operand, local_names, by_name, by_addr):
                orig = (mnem + ' ' + operand).strip()
                out.append(f'    opword  0x{byts.upper()}  // {orig}')
                continue
            if mnem in CR_FIELD_MNEMS:
                operand = fix_crclr_operand(operand)
            else:
                operand = fix_registers(operand)
                operand = rewrite_symbols(operand, local_names, by_name, by_addr)
            line = mnem if not operand else f'{mnem} {operand}'
            out.append('    ' + line)
        out.append('}')
        out.append('')

    if ctors:
        start, end, sym = ctors
        out.append(f'DECL_SECT(".ctors") void* const g_ctor_{sym} = (void*){sym};')
        out.append('')

    open(out_path, 'w').write('\n'.join(out) + '\n')
    print(f'Wrote {out_path}: {len(func_order)} functions, '
          f'{len(external_calls)} external calls, {len(data_syms)} data syms')
    if external_calls:
        print('  external calls:', ', '.join(external_calls))
    if data_syms:
        print('  data syms:', ', '.join(sorted(data_syms)))
    if ctors:
        start, end, sym = ctors
        print(f'  CTORS ENTRY DETECTED: add to splits.txt -> '
              f'.ctors      start:{start} end:{end}')


if __name__ == '__main__':
    if len(sys.argv) > 3:
        transcribe(sys.argv[1], sys.argv[2], sys.argv[3])
    else:
        transcribe(sys.argv[1], sys.argv[2])
