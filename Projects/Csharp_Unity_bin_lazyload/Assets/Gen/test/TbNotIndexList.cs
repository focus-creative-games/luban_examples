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

namespace cfg.test
{
   
    public partial class TbNotIndexList
    {
        public static TbNotIndexList Instance { get; private set; }
        private bool _readAllList = false;
        private List<test.NotIndexList> _dataList;
        public List<test.NotIndexList> DataList
        {
            get
            {
                if(!_readAllList)
                {
                    ReadAllList();
                    _readAllList = true;
                }
                return _dataList;
            }
        }
        private System.Func<ByteBuf> _dataLoader;

        private bool _readAll = false;
        private Dictionary<int,int> _indexMap;
        public List<int> Indexes;
        private Dictionary<int, test.NotIndexList> _dataMap;
        private Dictionary<int, test.NotIndexList> DataMap
        {
            get
            {
                if(!_readAll)
                {
                    ReadAllList();
                }
                return _dataMap;
            }
        }
        private void ReadAllList()
        {
            _dataList.Clear();
            foreach(var index in Indexes)
            {
                var v = Get(index);
                _dataList.Add(v);
            }
        }
        public TbNotIndexList(ByteBuf _buf, string _tbName, System.Func<string,  ByteBuf> _loader)
        {
            Instance = this;
            _dataList = new List<test.NotIndexList>();
            _dataLoader = new System.Func<ByteBuf>(()=> _loader(_tbName));
            _indexMap = new Dictionary<int,int>();
            _dataMap = new Dictionary<int, test.NotIndexList>();
            int size = _buf.ReadSize();
            for(int i = 0; i < size; i++)
            {
                _indexMap.Add(i,_buf.ReadInt());
            }
            Indexes = _indexMap.Keys.ToList();
        }



        public test.NotIndexList this[int index] => Get(index);
        public test.NotIndexList Get(int index)
        {
            test.NotIndexList _v;
            if(_dataMap.TryGetValue(index, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[index]);
            _v = test.NotIndexList.DeserializeNotIndexList(_buf);
            _dataMap[index] = _v;
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _buf = null;
            }
            return _v;
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