//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.item
{
   
    public partial class TbItemFunc
    {
        private readonly Dictionary<item.EMinorType, item.ItemFunction> _dataMap;
        private readonly List<item.ItemFunction> _dataList;
        private readonly Dictionary<item.EMinorType,int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;
        
        public TbItemFunc(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<item.EMinorType, item.ItemFunction>();
            _dataList = new List<item.ItemFunction>();
            _indexMap = new Dictionary<item.EMinorType, int>();
            _dataLoader = new System.Func<ByteBuf>(() => _loader(_tbName));
            
            for (int n = _buf.ReadSize(); n > 0; --n)
            {
                item.EMinorType key;
                key = (item.EMinorType)_buf.ReadInt();
                int index = _buf.ReadInt();
                _indexMap[key] = index;
            }
            
            PostInit();
        }

        public Dictionary<item.EMinorType, item.ItemFunction> DataMap => _dataMap;
        public List<item.ItemFunction> DataList => _dataList;

        public item.ItemFunction GetOrDefault(item.EMinorType key) => Get(key) ?? null;
        public item.ItemFunction this[item.EMinorType key] => Get(key);
        public item.ItemFunction Get(item.EMinorType key)
        {
            item.ItemFunction _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            int index = _indexMap[key];
            var _buf = _dataLoader();
            _buf.ReaderIndex = index;
            _v = item.ItemFunction.DeserializeItemFunction(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.MinorType, _v);
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