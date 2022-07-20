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
   
    public partial class TbTestString
    {
        private readonly Dictionary<int, test.TestString> _dataMap;
        private readonly List<test.TestString> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;

        public TbTestString(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<int, test.TestString>();
            _dataList = new List<test.TestString>();
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

        public Dictionary<int, test.TestString> DataMap => _dataMap;
        public List<test.TestString> DataList => _dataList;

        public test.TestString GetOrDefault(int key) => Get(key) ?? null;
        public test.TestString this[int key] => Get(key);
        public test.TestString Get(int key)
        {
            test.TestString _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            _v = test.TestString.DeserializeTestString(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
            return _v;
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
        partial void PostInit();
    }
} 