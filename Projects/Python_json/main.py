import json
import sys
import os
sys.path.append(os.path.abspath('gen'))

import schema

def loader(f):
    return json.load(open('../GenerateDatas/json/' + f + ".json", 'r', encoding="utf-8"))

tables = schema.cfg_Tables(loader)

print(tables)

r = tables.TbFullTypes.getDataList()[0].__dict__
print(r)
