
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

public sealed partial class UeBlackboard : ai.Decorator
{
    public UeBlackboard(JToken _buf)  : base(_buf) 
    {
        JObject _obj = _buf as JObject;
        NotifyObserver = (ai.ENotifyObserverMode)(int)_obj.GetValue("notify_observer");
        BlackboardKey = (string)_obj.GetValue("blackboard_key");
        KeyQuery = ai.KeyQueryOperator.DeserializeKeyQueryOperator(_obj.GetValue("key_query"));
    }

    public static UeBlackboard DeserializeUeBlackboard(JToken _buf)
    {
        return new ai.UeBlackboard(_buf);
    }

    public readonly ai.ENotifyObserverMode NotifyObserver;
    public readonly string BlackboardKey;
    public readonly ai.KeyQueryOperator KeyQuery;


    public const int __ID__ = -315297507;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
        KeyQuery?.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + Id + ","
        + "nodeName:" + NodeName + ","
        + "flowAbortMode:" + FlowAbortMode + ","
        + "notifyObserver:" + NotifyObserver + ","
        + "blackboardKey:" + BlackboardKey + ","
        + "keyQuery:" + KeyQuery + ","
        + "}";
    }
}
}

