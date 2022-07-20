//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.l10n
{
   
    public partial class TbL10NDemo
    {
        private readonly Dictionary<int, l10n.L10NDemo> _dataMap;
        private readonly List<l10n.L10NDemo> _dataList;
        private readonly Dictionary<int,int> _indexMap;
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

            PostInit();
        }

        public Dictionary<int, l10n.L10NDemo> DataMap => _dataMap;
        public List<l10n.L10NDemo> DataList => _dataList;

        public l10n.L10NDemo GetOrDefault(int key) => Get(key) ?? null;
        public l10n.L10NDemo this[int key] => Get(key);
        public l10n.L10NDemo Get(int key)
        {
            l10n.L10NDemo _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            int index = _indexMap[key];
            var _buf = _dataLoader();
            _buf.ReaderIndex = index;
            _v = l10n.L10NDemo.DeserializeL10NDemo(_buf);
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