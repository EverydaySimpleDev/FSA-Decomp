import re
from pathlib import Path

FSA_NAMED = Path(r"C:\Users\Tinte\AppData\Local\Temp\claude\d--Archipelago-Dev-Four-Swords-Adventures-Modding-Decomp\9d9e0621-3567-4fd9-81b3-9193cc524e64\scratchpad\fsa_named_symbols.txt")
CBR_SYMBOLS = Path(r"D:\Archipelago\Dev\Chibi-Robo-Randomizer\Decomp\cbr_decomp\decomp_dtk_main\config\GGTE01\symbols.txt")
CBR_SPLITS = Path(r"D:\Archipelago\Dev\Chibi-Robo-Randomizer\Decomp\cbr_decomp\decomp_dtk_main\config\GGTE01\splits.txt")

sym_line_re = re.compile(r'^([^\s=]+)\s*=\s*([\.\w]+):0x([0-9a-fA-F]+);\s*//\s*(.*)$')

# FSA (dtk ground truth, authoritative addresses)
fsa_syms = {}
with open(FSA_NAMED, encoding='utf-8', errors='replace') as f:
    for line in f:
        m = sym_line_re.match(line.strip())
        if not m:
            continue
        name, section, addr, attrs = m.groups()
        size_m = re.search(r'size:0x([0-9a-fA-F]+)', attrs)
        if not size_m:
            continue
        fsa_syms[name] = {'section': section, 'addr': int(addr, 16), 'size': int(size_m.group(1), 16)}

print(f"FSA named (dtk ground truth) symbols: {len(fsa_syms)}")

# cbr (ground truth for that project)
cbr_syms = {}
with open(CBR_SYMBOLS, encoding='utf-8', errors='replace') as f:
    for line in f:
        m = sym_line_re.match(line.strip())
        if not m:
            continue
        name, section, addr, attrs = m.groups()
        size_m = re.search(r'size:0x([0-9a-fA-F]+)', attrs)
        type_m = re.search(r'type:(\w+)', attrs)
        cbr_syms[name] = {
            'section': section,
            'addr': int(addr, 16),
            'size': int(size_m.group(1), 16) if size_m else 0,
            'type': type_m.group(1) if type_m else None,
        }
print(f"cbr_decomp symbols: {len(cbr_syms)}")

# cbr splits -> file mapping
splits = []
cur_file = None
section_re = re.compile(r'^(\S+)\s+start:0x([0-9a-fA-F]+)\s+end:0x([0-9a-fA-F]+)')
with open(CBR_SPLITS, encoding='utf-8', errors='replace') as f:
    for raw in f:
        line = raw.rstrip('\n')
        if not line.strip():
            continue
        if not line.startswith('\t') and not line.startswith('    ') and line.strip().endswith(':'):
            cur_file = line.strip().rstrip(':')
            continue
        sm = section_re.match(line.strip())
        if sm and cur_file:
            section, start, end = sm.groups()
            splits.append((cur_file, section, int(start, 16), int(end, 16)))

def find_file_for(section, addr):
    for file, sec, start, end in splits:
        if sec == section and start <= addr < end:
            return file
    return None

matches = []
for name, fsa in fsa_syms.items():
    if name in cbr_syms:
        c = cbr_syms[name]
        file = find_file_for(c['section'], c['addr'])
        matches.append({
            'name': name, 'fsa_addr': fsa['addr'], 'fsa_size': fsa['size'], 'fsa_section': fsa['section'],
            'cbr_addr': c['addr'], 'cbr_size': c['size'], 'cbr_file': file,
        })

print(f"\nName matches: {len(matches)}")
with_file = [m for m in matches if m['cbr_file']]
size_match = [m for m in with_file if m['fsa_size'] == m['cbr_size']]
print(f"with cbr file: {len(with_file)}, exact size match: {len(size_match)}")

out = Path(r"C:\Users\Tinte\AppData\Local\Temp\claude\d--Archipelago-Dev-Four-Swords-Adventures-Modding-Decomp\9d9e0621-3567-4fd9-81b3-9193cc524e64\scratchpad\crossref2_results.txt")
with open(out, 'w', encoding='utf-8') as f:
    f.write(f"Name matches: {len(matches)}, with file: {len(with_file)}, exact size match: {len(size_match)}\n\n")
    for m in sorted(size_match, key=lambda x: x['fsa_addr']):
        f.write(f"{m['name']:<30} fsa={m['fsa_section']}:0x{m['fsa_addr']:08X} size=0x{m['fsa_size']:X}  <- {m['cbr_file']}\n")
print("wrote", out)
