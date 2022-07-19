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
   
    public partial class TbFullTypes
    {
        private readonly Dictionary<int, test.DemoType2> _dataMap;
        private readonly List<test.DemoType2> _dataList;
        private readonly Dictionary<int,int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;
        
        public TbFullTypes(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<int, test.DemoType2>();
            _dataList = new List<test.DemoType2>();
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

        public Dictionary<int, test.DemoType2> DataMap => _dataMap;
        public List<test.DemoType2> DataList => _dataList;

        public test.DemoType2 GetOrDefault(int key) => Get(key) ?? null;
        public test.DemoType2 this[int key] => Get(key);
        public test.DemoType2 Get(int key)
        {
            test.DemoType2 _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            int index = _indexMap[key];
            var _buf = _dataLoader();
            _buf.ReaderIndex = index;
            _v = test.DemoType2.DeserializeDemoType2(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.X4, _v);
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