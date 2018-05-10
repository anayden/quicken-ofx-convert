from sys import argv
import lxml.etree as ET

dom = ET.parse(argv[1])
xslt = ET.parse("./tinkoff.xslt")
transform = ET.XSLT(xslt)
newdom = transform(dom)

print(ET.tostring(newdom, encoding='utf-8').decode('utf-8'))
