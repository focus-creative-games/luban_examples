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

namespace cfg.l10n
{
   
    public partial class TbL10NDemo
    {
        private readonly Dictionary<int, l10n.L10NDemo> _dataMap;
        private readonly List<l10n.L10NDemo> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        public readonly List<int> Indexes;
        private readonly System.Func<ByteBuf> _dataLoader;

        public TbL10NDemo(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<int, l10n.L10NDemo>();
            _dataList = new List<l10n.L10NDemo>();
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

        public l10n.L10NDemo this[int key] => Get(key);
        public l10n.L10NDemo Get(int key)
        {
            l10n.L10NDemo _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            _v = l10n.L10NDemo.DeserializeL10NDemo(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _buf = null;
            }
            return _v;
        }
        public l10n.L10NDemo GetOrDefault(int key)
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