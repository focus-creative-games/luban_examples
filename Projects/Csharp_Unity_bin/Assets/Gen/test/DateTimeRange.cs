
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

public sealed class DateTimeRange :  Bright.Config.BeanBase 
{
    public DateTimeRange(ByteBuf _buf) 
    {
        StartTime = _buf.ReadInt();
        EndTime = _buf.ReadInt();
    }

    public static DateTimeRange DeserializeDateTimeRange(ByteBuf _buf)
    {
        return new test.DateTimeRange(_buf);
    }

    public int StartTime { get; private set; }
    public long StartTime_Millis => StartTime * 1000L;
    public int EndTime { get; private set; }
    public long EndTime_Millis => EndTime * 1000L;

    public const int __ID__ = 495315430;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
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
    }

}
