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

namespace cfg.blueprint
{
   
    public partial class TbClazz
    {
        public static TbClazz Instance { get; private set; }
        private bool _readAll = false;
        private Dictionary<string, blueprint.Clazz> _dataMap;
        private List<blueprint.Clazz> _dataList;
        public Dictionary<string, blueprint.Clazz> DataMap
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
        public List<blueprint.Clazz> DataList
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
        private Dictionary<string,int> _indexMap;
        public List<string> Indexes;
        private System.Func<ByteBuf> _dataLoader;

        private void ReadAll()
        {
            _dataList.Clear();
            foreach(var index in Indexes)
            {
                var v = Get(index);
                _dataMap[index] = v;
                _dataList.Add(v);
            }
        }

        public TbClazz(ByteBuf _buf, string _tbName, System.Func<string,  ByteBuf> _loader)
        {
            Instance = this;
            _dataMap = new Dictionary<string, blueprint.Clazz>();
            _dataList = new List<blueprint.Clazz>();
            _indexMap = new Dictionary<string, int>();
            _dataLoader = new System.Func<ByteBuf>(() => _loader(_tbName));

            for (int n = _buf.ReadSize(); n > 0; --n)
            {
                string key;
                key = _buf.ReadString();
                int index = _buf.ReadInt();
                _indexMap[key] = index;
            }
            Indexes = _indexMap.Keys.ToList();
            PostInit();
        }

        public T GetOrDefaultAs<T>(string key) where T : blueprint.Clazz
        {
            if(_indexMap.TryGetValue(key,out var _))
            {
                return (T)Get(key);
            }
            return default(T);
        }
        public T GetAs<T>(string key) where T : blueprint.Clazz => (T)Get(key);
        public blueprint.Clazz this[string key] => Get(key);
        public blueprint.Clazz Get(string key)
        {
            blueprint.Clazz _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            _v = blueprint.Clazz.DeserializeClazz(_buf);
            _dataMap[_v.Name] = _v;
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _buf = null;
            }
            return _v;
        }
        public blueprint.Clazz GetOrDefault(string key)
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