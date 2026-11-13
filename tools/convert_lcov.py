import xml.etree.ElementTree as ET
from datetime import datetime

files = {}
current_file = None

with open('coverage/lcov.info') as f:
    for line in f:
        line = line.strip()
        if line.startswith('SF:'):
            current_file = line[3:]
            files[current_file] = {}
        elif line.startswith('DA:') and current_file:
            parts = line[3:].split(',')
            try:
                line_num = int(parts[0])
                hits = int(parts[1])
                files[current_file][line_num] = hits
            except (ValueError, IndexError):
                pass
        elif line == 'end_of_record':
            current_file = None

root = ET.Element('coverage')
root.set('line-rate', '0')
root.set('branch-rate', '0')
root.set('timestamp', str(int(datetime.now().timestamp())))
root.set('version', '1.0')
root.set('branches', '0')
root.set('complexity', '0')

sources = ET.SubElement(root, 'sources')
source = ET.SubElement(sources, 'source')
source.text = '.'

packages = ET.SubElement(root, 'packages')
package = ET.SubElement(packages, 'package')
package.set('name', 'flutter')
package.set('line-rate', '0')
package.set('branch-rate', '0')
package.set('complexity', '0')

classes = ET.SubElement(package, 'classes')

total_lines = 0
total_hits = 0

for file_path, lines_data in files.items():
    class_elem = ET.SubElement(classes, 'class')
    class_elem.set('name', file_path.replace('/', '.'))
    class_elem.set('filename', file_path)
    class_elem.set('line-rate', '0')
    class_elem.set('branch-rate', '0')
    class_elem.set('complexity', '0')

    class_lines = ET.SubElement(class_elem, 'lines')
    file_total = 0
    file_hits = 0

    for line_num, hits in sorted(lines_data.items()):
        line_elem = ET.SubElement(class_lines, 'line')
        line_elem.set('number', str(line_num))
        line_elem.set('hits', str(hits))
        line_elem.set('branch', 'false')
        file_total += 1
        if hits > 0:
            file_hits += 1

    total_lines += file_total
    total_hits += file_hits

    if file_total > 0:
        class_elem.set('line-rate', f'{file_hits / file_total:.6f}')

if total_lines > 0:
    rate = total_hits / total_lines
    root.set('line-rate', f'{rate:.6f}')
    package.set('line-rate', f'{rate:.6f}')

ET.ElementTree(root).write('coverage/cobertura-coverage.xml', xml_declaration=True, encoding='UTF-8')
