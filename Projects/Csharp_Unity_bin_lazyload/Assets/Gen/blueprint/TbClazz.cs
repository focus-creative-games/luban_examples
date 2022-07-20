//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.blueprint
{
   
    public partial class TbClazz
    {
        private readonly Dictionary<string, blueprint.Clazz> _dataMap;
        private readonly List<blueprint.Clazz> _dataList;
        private readonly Dictionary<string,int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;

        public TbClazz(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
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

            PostInit();
        }

        public Dictionary<string, blueprint.Clazz> DataMap => _dataMap;
        public List<blueprint.Clazz> DataList => _dataList;

        public T GetOrDefaultAs<T>(string key) where T : blueprint.Clazz => (T)Get(key) ?? null;
        public T GetAs<T>(string key) where T : blueprint.Clazz => (T)Get(key);
        public blueprint.Clazz GetOrDefault(string key) => Get(key) ?? null;
        public blueprint.Clazz this[string key] => Get(key);
        public blueprint.Clazz Get(string key)
        {
            blueprint.Clazz _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            int index = _indexMap[key];
            var _buf = _dataLoader();
            _buf.ReaderIndex = index;
            _v = blueprint.Clazz.DeserializeClazz(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Name, _v);
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