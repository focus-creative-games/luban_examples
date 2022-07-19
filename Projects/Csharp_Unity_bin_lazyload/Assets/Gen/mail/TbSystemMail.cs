//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.mail
{
   
    public partial class TbSystemMail
    {
        private readonly Dictionary<int, mail.SystemMail> _dataMap;
        private readonly List<mail.SystemMail> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;
        
        public TbSystemMail(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<int, mail.SystemMail>();
            _dataList = new List<mail.SystemMail>();
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

        public Dictionary<int, mail.SystemMail> DataMap => _dataMap;
        public List<mail.SystemMail> DataList => _dataList;

        public mail.SystemMail GetOrDefault(int key) => Get(key) ?? null;
        public mail.SystemMail this[int key] => Get(key);
        public mail.SystemMail Get(int key)
        {
            mail.SystemMail _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            int index = _indexMap[key];
            var _buf = _dataLoader();
            _buf.ReaderIndex = index;
            _v = mail.SystemMail.DeserializeSystemMail(_buf);
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