//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.test
{
   
    public partial class TbExcelFromJsonMultiRow
    {
        private readonly Dictionary<int, test.ExcelFromJsonMultiRow> _dataMap;
        private readonly List<test.ExcelFromJsonMultiRow> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;
        
        public TbExcelFromJsonMultiRow(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<int, test.ExcelFromJsonMultiRow>();
            _dataList = new List<test.ExcelFromJsonMultiRow>();
            _indexMap = new Dictionary<int, int>();
            _dataLoader = new System.Func<ByteBuf>(() => _loader(_tbName));
            
            for (int n = _buf.ReadSize(); n > 0; --n)
            {
                int key;
                key = _buf.ReadInt();
                int index = _buf.ReadInt();
                _indexMap[key] = index;
            }
            
            PostInit();
        }

        public Dictionary<int, test.ExcelFromJsonMultiRow> DataMap => _dataMap;
        public List<test.ExcelFromJsonMultiRow> DataList => _dataList;

        public test.ExcelFromJsonMultiRow GetOrDefault(int key) => Get(key) ?? null;
        public test.ExcelFromJsonMultiRow this[int key] => Get(key);
        public test.ExcelFromJsonMultiRow Get(int key)
        {
            test.ExcelFromJsonMultiRow _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            int index = _indexMap[key];
            var _buf = _dataLoader();
            _buf.ReaderIndex = index;
            _v = test.ExcelFromJsonMultiRow.DeserializeExcelFromJsonMultiRow(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
            return _v;
        }

        public void Resolve(Dictionary<string, object> _tables)
        {
            foreach(var v in _dataList)
            {
                v.Resolve(_tables);
            }
            PostResolve();
        }

        public void TranslateText(System.Func<string, string, string> translator)
        {
            foreach(var v in _dataList)
            {
                v.TranslateText(translator);
            }
        }
    
        partial void PostInit();
        partial void PostResolve();
    }
}