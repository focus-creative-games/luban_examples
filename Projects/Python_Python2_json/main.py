import json 
import gen.Types

def loader(f):
    return json.load(open('../GenerateDatas/json/' + f + ".json", 'r'), encoding="utf-8")

tables = gen.Types.Tables(loader)

print(tables)

r = tables.TbFullTypes.getDataList()[0].__dict__
print(r)
