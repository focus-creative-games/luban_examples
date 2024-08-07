
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;


namespace cfg.ai
{
public sealed partial class UeBlackboard : ai.Decorator
{
    public UeBlackboard(ByteBuf _buf)  : base(_buf) 
    {
        NOTIFY_OBSERVER = (ai.ENotifyObserverMode)_buf.ReadInt();
        BLACKBOARD_KEY = _buf.ReadString();
        KEY_QUERY = ai.KeyQueryOperator.DeserializeKeyQueryOperator(_buf);
    }

    public static UeBlackboard DeserializeUeBlackboard(ByteBuf _buf)
    {
        return new ai.UeBlackboard(_buf);
    }

    public readonly ai.ENotifyObserverMode NOTIFY_OBSERVER;
    public readonly string BLACKBOARD_KEY;
    public readonly ai.KeyQueryOperator KEY_QUERY;
   
    public const int __ID__ = -315297507;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
        KEY_QUERY?.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + ID + ","
        + "node_name:" + NODE_NAME + ","
        + "flow_abort_mode:" + FLOW_ABORT_MODE + ","
        + "notify_observer:" + NOTIFY_OBSERVER + ","
        + "blackboard_key:" + BLACKBOARD_KEY + ","
        + "key_query:" + KEY_QUERY + ","
        + "}";
    }
}

}

