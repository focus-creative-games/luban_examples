//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.common
{

public sealed partial class DateTimeRange :  Bright.Config.BeanBase 
{
    public DateTimeRange(ByteBuf _buf) 
    {
        if(_buf.ReadBool()){ StartTime = ExternalTypeUtil.NewDatetime(_buf.ReadInt()); } else { StartTime = null; }
        if(_buf.ReadBool()){ EndTime = ExternalTypeUtil.NewDatetime(_buf.ReadInt()); } else { EndTime = null; }
        PostInit();
    }

    public static DateTimeRange DeserializeDateTimeRange(ByteBuf _buf)
    {
        return new common.DateTimeRange(_buf);
    }

    public System.DateTime? StartTime { get; private set; }
    public System.DateTime? EndTime { get; private set; }

    public const int __ID__ = 1642200959;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        PostResolve();
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "StartTime:" + StartTime + ","
        + "EndTime:" + EndTime + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}
