
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using Newtonsoft.Json.Linq;



namespace cfg.ai
{

public sealed partial class UeTimeLimit : ai.Decorator
{
    public UeTimeLimit(JToken _buf)  : base(_buf) 
    {
        JObject _obj = _buf as JObject;
        LimitTime = (float)_obj.GetValue("limit_time");
    }

    public static UeTimeLimit DeserializeUeTimeLimit(JToken _buf)
    {
        return new ai.UeTimeLimit(_buf);
    }

    public readonly float LimitTime;


    public const int __ID__ = 338469720;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + Id + ","
        + "nodeName:" + NodeName + ","
        + "flowAbortMode:" + FlowAbortMode + ","
        + "limitTime:" + LimitTime + ","
        + "}";
    }
}
}

