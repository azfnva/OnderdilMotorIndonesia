import sys
from xml.sax.saxutils import quoteattr

lcov_path, out_path = sys.argv[1], sys.argv[2]
files, current = {}, None

with open(lcov_path) as f:
    for line in f:
        line = line.strip()
        if line.startswith('SF:'):
            current = line[3:].replace('\\', '/')
            files[current] = {}
        elif line.startswith('DA:') and current:
            parts = line[3:].split(',')
            try:
                num = int(parts[0])
                hits = int(parts[1])
                files[current][num] = hits > 0
            except (ValueError, IndexError):
                pass
        elif line == 'end_of_record':
            current = None

with open(out_path, 'w') as out:
    out.write('<coverage version="1">\n')
    for path, lines in files.items():
        out.write(f'  <file path={quoteattr(path)}>\n')
        for n, covered in sorted(lines.items()):
            out.write(f'    <lineToCover lineNumber="{n}" covered="{str(covered).lower()}"/>\n')
        out.write('  </file>\n')
    out.write('</coverage>\n')
