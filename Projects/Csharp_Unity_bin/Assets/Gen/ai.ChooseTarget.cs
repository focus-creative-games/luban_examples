
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
public sealed partial class ChooseTarget : ai.Service
{
    public ChooseTarget(ByteBuf _buf)  : base(_buf) 
    {
        RESULT_TARGET_KEY = _buf.ReadString();
    }

    public static ChooseTarget DeserializeChooseTarget(ByteBuf _buf)
    {
        return new ai.ChooseTarget(_buf);
    }

    public readonly string RESULT_TARGET_KEY;
   
    public const int __ID__ = 1601247918;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + ID + ","
        + "node_name:" + NODE_NAME + ","
        + "result_target_key:" + RESULT_TARGET_KEY + ","
        + "}";
    }
}

}

