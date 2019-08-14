import os
from pathlib import Path
import xml.etree.ElementTree as ET

#file_name = os.path.join( Path(__file__).parent,'Derivatives.Database.sqlproj')
file_name = os.path.join( Path(__file__).parent,'test.sqlproj')
tree = ET.parse(file_name)
root = tree.getroot()

# for item in root.findall('./Build'):
#     print(item)
#lambda node: 
buildNodes = root.findall('./Build')

sortedList = sorted(buildNodes, key=lambda node: node.attrib['Include'])

for item in sortedList:
    print(item.attrib['Include'])

print("End")