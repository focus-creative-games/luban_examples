
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using Newtonsoft.Json.Linq;



namespace cfg.test
{

public sealed partial class DateTimeRange : Luban.BeanBase
{
    public DateTimeRange(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        StartTime = (long)_obj.GetValue("start_time");
        EndTime = (long)_obj.GetValue("end_time");
    }

    public static DateTimeRange DeserializeDateTimeRange(JToken _buf)
    {
        return new test.DateTimeRange(_buf);
    }

    public readonly long StartTime;
    public readonly long EndTime;


    public const int __ID__ = 495315430;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "startTime:" + StartTime + ","
        + "endTime:" + EndTime + ","
        + "}";
    }
}
}

