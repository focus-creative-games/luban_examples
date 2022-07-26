//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace cfg.test
{
   
    public partial class TbDemoGroup
    {
        private readonly Dictionary<int, test.DemoGroup> _dataMap;
        private readonly List<test.DemoGroup> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        public readonly List<int> Indexes;
        private readonly System.Func<ByteBuf> _dataLoader;

        public TbDemoGroup(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<int, test.DemoGroup>();
            _dataList = new List<test.DemoGroup>();
            _indexMap = new Dictionary<int, int>();
            _dataLoader = new System.Func<ByteBuf>(() => _loader(_tbName));

            for (int n = _buf.ReadSize(); n > 0; --n)
            {
                int key;
                key = _buf.ReadInt();
                int index = _buf.ReadInt();
                _indexMap[key] = index;
            }
            Indexes = _indexMap.Keys.ToList();
            PostInit();
        }

        public test.DemoGroup this[int key] => Get(key);
        public test.DemoGroup Get(int key)
        {
            test.DemoGroup _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            _v = test.DemoGroup.DeserializeDemoGroup(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _buf = null;
            }
            return _v;
        }
        public test.DemoGroup GetOrDefault(int key)
        {
            if(_indexMap.TryGetValue(key,out var _))
            {
                return Get(key);
            }
            return null;
        }
        private ByteBuf _buf = null;
        
        private void ResetByteBuf(int readerInex = 0)
        {
            if( _buf == null)
            {
                _buf = _dataLoader();
            }
            _buf.ReaderIndex = readerInex;
        }
    
        private Dictionary<string, object> tables;
        public void CacheTables(Dictionary<string, object> _tables)
        {
            tables = _tables;
        }
        partial void PostInit();
    }
} 