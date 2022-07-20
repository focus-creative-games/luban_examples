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
   
    public partial class TbTestExternalType
    {
        private readonly Dictionary<int, test.TestExternalType> _dataMap;
        private readonly List<test.TestExternalType> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;

        public TbTestExternalType(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<int, test.TestExternalType>();
            _dataList = new List<test.TestExternalType>();
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

        public Dictionary<int, test.TestExternalType> DataMap => _dataMap;
        public List<test.TestExternalType> DataList => _dataList;

        public test.TestExternalType GetOrDefault(int key) => Get(key) ?? null;
        public test.TestExternalType this[int key] => Get(key);
        public test.TestExternalType Get(int key)
        {
            test.TestExternalType _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            _v = test.TestExternalType.DeserializeTestExternalType(_buf);
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