import json
import sys
import os
sys.path.append(os.path.abspath('gen'))

import gen.schema as schema

def loader(f):
    return json.load(open('../GenerateDatas/json/' + f + ".json", 'r', encoding="utf-8"))

tables = schema.cfg_Tables(loader)

print(tables)

r = tables.TbFullTypes.getDataList()[0].__dict__
print(r)

print(tables.TbMultiUnionIndexList.get(1,1, "ab1").__dict__)

print(tables.TbMultiIndexList.get_by_id1(1).__dict__)
print(tables.TbMultiIndexList.get_by_id2(1).__dict__)
print(tables.TbMultiIndexList.get_by_id3("ab1").__dict__)

print(tables.TbGlobalConfig.getData().__dict__)

