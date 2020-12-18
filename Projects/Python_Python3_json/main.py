import json 
import gen.Types

def loader(f):
    return json.load(open('config_data/' + f, 'r'))

tables = gen.Types.Tables(loader)

print(tables)

r = tables.TbItem.getDataList()[0]
print(dir(r))
