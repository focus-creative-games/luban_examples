
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.mail;

import bright.serialization.*;


public final class TbSystemMail
{
    private final java.util.HashMap<Integer, cfg.mail.SystemMail> _dataMap;
    private final java.util.ArrayList<cfg.mail.SystemMail> _dataList;
    
    public TbSystemMail(ByteBuf _buf)
    {
        _dataMap = new java.util.HashMap<Integer, cfg.mail.SystemMail>();
        _dataList = new java.util.ArrayList<cfg.mail.SystemMail>();
        
        for(int n = _buf.readSize() ; n > 0 ; --n)
        {
            cfg.mail.SystemMail _v;
            _v = cfg.mail.SystemMail.deserializeSystemMail(_buf);
            _dataList.add(_v);
            _dataMap.put(_v.id, _v);
        }
    }

    public java.util.HashMap<Integer, cfg.mail.SystemMail> getDataMap() { return _dataMap; }
    public java.util.ArrayList<cfg.mail.SystemMail> getDataList() { return _dataList; }

    public cfg.mail.SystemMail get(int key) { return _dataMap.get(key); }

    public void resolve(java.util.HashMap<String, Object> _tables)
    {
        for(cfg.mail.SystemMail v : _dataList)
        {
            v.resolve(_tables);
        }
    }

}