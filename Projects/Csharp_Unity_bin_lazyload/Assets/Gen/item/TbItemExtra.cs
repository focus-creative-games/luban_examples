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

namespace cfg.item
{
   
    public partial class TbItemExtra
    {
        public static TbItemExtra Instance { get; private set; }
        private bool _readAll = false;
        private Dictionary<int, item.ItemExtra> _dataMap;
        private List<item.ItemExtra> _dataList;
        public Dictionary<int, item.ItemExtra> DataMap
        {
            get
            {
                if(!_readAll)
                {
                    ReadAll();
                    _readAll = true;
                }
                return _dataMap;
            }
        }
        public List<item.ItemExtra> DataList
        {
            get
            {
                if(!_readAll)
                {
                    ReadAll();
                    _readAll = true;
                }
                return _dataList;
            }
        }
        private Dictionary<int,int> _indexMap;
        public List<int> Indexes;
        private System.Func<ByteBuf> _dataLoader;

        private void ReadAll()
        {
            _dataMap.Clear();
            _dataList.Clear();
            foreach(var index in Indexes)
            {
                var v = Get(index);
                _dataMap[index] = v;
                _dataList.Add(v);
            }
        }

        public TbItemExtra(ByteBuf _buf, string _tbName, System.Func<string,  ByteBuf> _loader)
        {
            Instance = this;
            _dataMap = new Dictionary<int, item.ItemExtra>();
            _dataList = new List<item.ItemExtra>();
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

        public T GetOrDefaultAs<T>(int key) where T : item.ItemExtra
        {
            if(_indexMap.TryGetValue(key,out var _))
            {
                return (T)Get(key);
            }
            return default(T);
        }
        public T GetAs<T>(int key) where T : item.ItemExtra => (T)Get(key);
        public item.ItemExtra this[int key] => Get(key);
        public item.ItemExtra Get(int key)
        {
            item.ItemExtra _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            _v = item.ItemExtra.DeserializeItemExtra(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _buf = null;
            }
            return _v;
        }
        public item.ItemExtra GetOrDefault(int key)
        {
            if(_indexMap.TryGetValue(key,out var _))
            {
                return Get(key);
            }
            return null;
        }
        
        private void ResetByteBuf(int readerInex = 0)
        {
            if( _buf == null)
            {
                    if (_buf == null)
            {
                _buf = _dataLoader();
            }
            }
            _buf.ReaderIndex = readerInex;
        }
    
        private ByteBuf _buf = null;
        private Dictionary<string, object> tables;
        public void CacheTables(Dictionary<string, object> _tables)
        {
            tables = _tables;
        }
        partial void PostInit();
    }
} 