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
   
    public partial class TbNotIndexList
    {
        private readonly List<test.NotIndexList> _dataList;
        private System.Func<ByteBuf> _dataLoader;

        private Dictionary<int,int> _indexMap;
        private readonly Dictionary<int, test.NotIndexList> _dataMap;

        public TbNotIndexList(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataList = new List<test.NotIndexList>();
            _dataLoader = new System.Func<ByteBuf>(()=>_loader(_tbName));
            _indexMap = new Dictionary<int,int>();
            _dataMap = new Dictionary<int, test.NotIndexList>();
            int size = _buf.ReadSize();
            for(int i = 0; i < size; i++)
            {
                _indexMap.Add(i,_buf.ReadInt());
            }
        }



        private bool _readAll = false;
        public List<test.NotIndexList> DataList => GetAllDatas();
        private List<test.NotIndexList> GetAllDatas()
        {
            if(_readAll)
            {
                return _dataList;
            }
            ResetByteBuf();
            _dataList.Clear();
            for(int i = _buf.ReadSize(); i > 0; i--)
            {
                test.NotIndexList _v;
                _v = test.NotIndexList.DeserializeNotIndexList(_buf);
                _dataList.Add(_v);
                _dataMap[i] = _v;
            }
            _readAll = true;
            return _dataList;
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