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

namespace cfg.mail
{
   
    public partial class TbSystemMail
    {
        private readonly Dictionary<int, mail.SystemMail> _dataMap;
        private readonly List<mail.SystemMail> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        public readonly List<int> Indexes;
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
            Indexes = _indexMap.Keys.ToList();
            PostInit();
        }

        public mail.SystemMail this[int key] => Get(key);
        public mail.SystemMail Get(int key)
        {
            mail.SystemMail _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            _v = mail.SystemMail.DeserializeSystemMail(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _buf = null;
            }
            return _v;
        }
        public mail.SystemMail GetOrDefault(int key)
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